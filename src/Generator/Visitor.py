from Parser.generated.CParser import CParser
from Parser.generated.CVisitor import CVisitor
from llvmlite import ir
from Generator.SymbolTable import SymbolTable
from Generator.SemanticError import SemanticError

# 定义一些LLVM类型作为示例，可根据需求扩展
int32 = ir.IntType(32)
int8 = ir.IntType(8)
int1 = ir.IntType(1)
void = ir.VoidType()
double = ir.DoubleType()

class Visitor(CVisitor):
    def __init__(self):
        super().__init__()
        self.Module = ir.Module(name="my_module")
        self.Module.triple = "x86_64-pc-linux-gnu"
        self.Module.data_layout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
        self.Blocks = []
        self.Builders = []
        self.SymbolTable = SymbolTable()
        self.Funs = {}
        self.Constants = 0
        self.loop_stack = []  # 存储循环的基本块信息

    def save(self, filename):
        with open(filename, "w") as f:
            f.write(str(self.Module))

    def visitCompilationUnit(self, ctx: CParser.CompilationUnitContext):
        """
        compilationUnit : translationUnit? EOF ;
        """
        if ctx.translationUnit():
            self.visit(ctx.translationUnit())
        return

    def visitTranslationUnit(self, ctx: CParser.TranslationUnitContext):
        """
        translationUnit
            : (functionDefinition | declaration)+
        """
        for child in ctx.children:
            if isinstance(child, CParser.FunctionDefinitionContext):
                self.visitFunctionDefinition(child)
            elif isinstance(child, CParser.DeclarationContext):
                self.visitDeclaration(child)
        return
    
    def visitFunctionDefinition(self, ctx: CParser.FunctionDefinitionContext):
        """处理函数定义"""
        print("\n=== Starting Function Definition ===")
        print(f"Function definition text: {ctx.getText()}")
        
        # 获取返回类型
        ret_type = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())
        print(f"Return type: {ret_type}")
        
        # 获取函数信息
        func_name, func_type, arg_names = self.getFunctionInfoFromDeclarator(ctx.declarator(), ret_type)
        if not func_name:
            print("Error: Could not extract function name")
            return
            
        print(f"Function name: {func_name}")
        print(f"Argument names: {arg_names}")
        
        # 创建函数
        ir_func = ir.Function(self.Module, func_type, name=func_name)
        self.Funs[func_name] = ir_func
        
        # 创建入口块
        entry_block = ir_func.append_basic_block('entry')
        builder = ir.IRBuilder(entry_block)
        self.Builders.append(builder)
        self.Blocks.append(builder.block)
        
        # 进入函数作用域
        self.SymbolTable.enter_scope()
        print("\nBefore adding parameters:")
        self.SymbolTable.print_scopes()
        
        # 处理函数参数
        for i, (arg, arg_name) in enumerate(zip(ir_func.args, arg_names)):
            print(f"\nProcessing parameter {i}: {arg_name}")
            
            # 设置参数名
            arg.name = arg_name
            
            # 为参数创建alloca
            arg_alloca = builder.alloca(arg.type, name=f"{arg_name}_addr")
            builder.store(arg, arg_alloca)
            
            # 将参数添加到符号表
            self.SymbolTable.add_item(arg_name, arg_alloca)
            print(f"Added {arg_name} to symbol table")
        
        print("\nAfter adding parameters:")
        self.SymbolTable.print_scopes()
        
        # 访问函数体
        self.visitCompoundStatement(ctx.compoundStatement())
        
        # 处理返回语句
        if not builder.block.terminator:
            if ret_type == void:
                builder.ret_void()
            else:
                raise SemanticError(f"Function {func_name} must return a value of type {ret_type}")
        
        # 退出作用域
        self.SymbolTable.exit_scope()
        self.Builders.pop()
        self.Blocks.pop()
        
        print("=== Finished Function Definition ===\n")
        return

    def visitCompoundStatement(self, ctx: CParser.CompoundStatementContext):
        """
        compoundStatement
            : LEFT_BRACE (declaration | statement)* RIGHT_BRACE
        """
        self.SymbolTable.enter_scope()
        for child in ctx.children:
            if isinstance(child, CParser.DeclarationContext):
                self.visitDeclaration(child)
            elif isinstance(child, CParser.StatementContext):
                self.visitStatement(child)
        self.SymbolTable.exit_scope()
        return

    def visitDeclaration(self, ctx: CParser.DeclarationContext):
        """
        declaration
            : declarationSpecifiers initDeclaratorList? SEMI
        """
        t = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())

        # 处理带有初始化列表的声明
        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                name = self.getIdentifierFromDeclarator(init_d.declarator())
                if name is None:
                    continue 
                builder = self.Builders[-1]
                var_alloca = builder.alloca(t, name=name)
                self.SymbolTable.add_item(name, var_alloca)
                print(f"Added variable {name} to symbol table")  # 调试输出
                if init_d.initializer():
                    val = self.visitInitializer(init_d.initializer())
                    # 如果 val 是布尔表达式，确保是 i32 类型
                    if isinstance(val.type, ir.IntType) and val.type.width == 1:
                        val = self.castToBoolForExpr(val)
                    builder.store(val, var_alloca)
        # 处理没有初始化列表的声明
        elif ctx.declarationSpecifiers():
            # 尝试从声明符中获取标识符
            name = None

            for decl_spec in ctx.declarationSpecifiers().declarationSpecifier():
                if decl_spec.typeSpecifier() and decl_spec.typeSpecifier().typedefName():
                    name = decl_spec.typeSpecifier().typedefName().Identifier().getText()
                    break
            if name is not None:
                builder = self.Builders[-1]
                var_alloca = builder.alloca(t, name=name)
                self.SymbolTable.add_item(name, var_alloca)
                print(f"Added variable {name} to symbol table")  # 调试输出
        return
    def visitInitializer(self, ctx: CParser.InitializerContext):
        """
        initializer
            : assignmentExpression
            | LEFT_BRACE initializerList? COMMA? RIGHT_BRACE
        """
        if ctx.assignmentExpression():
            return self.visitAssignmentExpression(ctx.assignmentExpression())
        elif ctx.LEFT_BRACE():
            # 处理数组初始化器
            if ctx.initializerList():
                values = []
                for init in ctx.initializerList().initializer():
                    val = self.visitInitializer(init)
                    if val is not None:
                        values.append(val)
                return values
        return None

    def visitAssignmentExpression(self, ctx: CParser.AssignmentExpressionContext):
        """
        assignmentExpression
            : conditionalExpression
            | unaryExpression assignmentOperator assignmentExpression
        """
        if ctx.assignmentOperator():
            # unaryExpression assignmentOperator assignmentExpression
            lhs_ptr = self.visitUnaryExpression(ctx.unaryExpression())
            rhs_val = self.visitAssignmentExpression(ctx.assignmentExpression())
            op = ctx.assignmentOperator().getText()
            builder = self.Builders[-1]

            if op == '=':
                # 确保 rhs_val 是 i32 类型
                if rhs_val.type != lhs_ptr.type.pointee:
                    if isinstance(lhs_ptr.type.pointee, ir.IntType) and isinstance(rhs_val.type, ir.IntType):
                        rhs_val = builder.sext(rhs_val, lhs_ptr.type.pointee) if rhs_val.type.width < lhs_ptr.type.pointee.width else builder.trunc(rhs_val, lhs_ptr.type.pointee)
                    else:
                        # 其他类型转换，根据需要处理
                        pass
                builder.store(rhs_val, lhs_ptr)
                return rhs_val
            else:
                # compound assignment
                old_val = builder.load(lhs_ptr)
                if op == '+=':
                    new_val = builder.add(old_val, rhs_val)
                elif op == '-=':
                    new_val = builder.sub(old_val, rhs_val)
                elif op == '*=':
                    new_val = builder.mul(old_val, rhs_val)
                elif op == '/=':
                    new_val = builder.sdiv(old_val, rhs_val)
                elif op == '%=':
                    new_val = builder.srem(old_val, rhs_val)
                else:
                    new_val = rhs_val
                builder.store(new_val, lhs_ptr)
                return new_val
        else:
            return self.castToBoolForExpr(self.visitConditionalExpression(ctx.conditionalExpression()))

    def visitConditionalExpression(self, ctx: CParser.ConditionalExpressionContext):
        """
        conditionalExpression
            : logicalOrExpression (QUESTION expression COLON conditionalExpression)?
        """
        builder = self.Builders[-1]
        if ctx.QUESTION():
            # condition ? expr1 : expr2
            cond_val = self.visitLogicalOrExpression(ctx.logicalOrExpression())
            cond_val_i1 = self.castToBoolForCondition(cond_val)  # 转换为 i1

            then_bb = builder.function.append_basic_block('then')
            else_bb = builder.function.append_basic_block('else')
            merge_bb = builder.function.append_basic_block('cond_merge')

            builder.cbranch(cond_val_i1, then_bb, else_bb)

            # then
            builder.position_at_end(then_bb)
            then_val = self.visitExpression(ctx.expression())
            then_val = self.castToBoolForExpr(then_val) if isinstance(then_val.type, ir.IntType) and then_val.type.width == 1 else then_val
            builder.branch(merge_bb)

            # else
            builder.position_at_end(else_bb)
            else_val = self.visitConditionalExpression(ctx.conditionalExpression())
            else_val = self.castToBoolForExpr(else_val) if isinstance(else_val.type, ir.IntType) and else_val.type.width == 1 else else_val
            builder.branch(merge_bb)

            # merge
            builder.position_at_end(merge_bb)
            phi = builder.phi(int32)
            phi.add_incoming(then_val, then_bb)
            phi.add_incoming(else_val, else_bb)
            return phi
        else:
            return self.castToBoolForExpr(self.visitLogicalOrExpression(ctx.logicalOrExpression()))
    
    def visitLogicalOrExpression(self, ctx: CParser.LogicalOrExpressionContext):
        """
        logicalOrExpression
            : logicalAndExpression (OR_OR logicalAndExpression)*
        """
        builder = self.Builders[-1]
        val = self.visitLogicalAndExpression(ctx.logicalAndExpression(0))
        for i in range(1, len(ctx.logicalAndExpression())):
            rhs = self.visitLogicalAndExpression(ctx.logicalAndExpression(i))
            # 使用 castToBoolForExpr 确保都是 i32 类型
            l = self.castToBoolForExpr(val)
            r = self.castToBoolForExpr(rhs)
            val = builder.or_(l, r)
        return val

    def visitLogicalAndExpression(self, ctx: CParser.LogicalAndExpressionContext):
        """
        logicalAndExpression
            : equalityExpression (AND_AND equalityExpression)*
        """
        builder = self.Builders[-1]
        val = self.visitEqualityExpression(ctx.equalityExpression(0))
        for i in range(1, len(ctx.equalityExpression())):
            rhs = self.visitEqualityExpression(ctx.equalityExpression(i))
            # 使用 castToBoolForExpr 确保都是 i32 类型
            l = self.castToBoolForExpr(val)
            r = self.castToBoolForExpr(rhs)
            bool_val = builder.and_(l, r)
            val = builder.zext(bool_val, int32)
        return val
    def visitEqualityExpression(self, ctx: CParser.EqualityExpressionContext):
        builder = self.Builders[-1]

        # 第一个relationalExpression
        val = self.visitRelationalExpression(ctx.relationalExpression(0))

        # 后面紧跟零个或多个 (EQUAL | NOT_EQUAL) relationalExpression
        count = len(ctx.relationalExpression())
        for i in range(1, count):
            # 操作符的节点在子节点中排列为: relationalExpression op relationalExpression op ...
            # 所以操作符位置可以通过固定的方式计算。因为结构是：
            # relationalExpression ( (EQUAL|NOT_EQUAL) relationalExpression )*
            # 第i个relationalExpression的操作符位置大约是 2*i-1
            op_node = ctx.getChild(2*i - 1)
            op = op_node.getText()

            rhs = self.visitRelationalExpression(ctx.relationalExpression(i))

            if op == '==':
                val = builder.icmp_signed('==', val, rhs)
            else:
                val = builder.icmp_signed('!=', val, rhs)

            # 扩展成int32
            val = builder.zext(val, int32)

        return val

    def visitRelationalExpression(self, ctx: CParser.RelationalExpressionContext):
        builder = self.Builders[-1]

        # 首先获取第一个additiveExpression
        val = self.visitAdditiveExpression(ctx.additiveExpression(0))

        count = len(ctx.additiveExpression())
        for i in range(1, count):
            # 操作符在两个additiveExpression之间
            op_node = ctx.getChild(2*i - 1)
            op = op_node.getText()
            rhs = self.visitAdditiveExpression(ctx.additiveExpression(i))

            if op == '<':
                val = builder.icmp_signed('<', val, rhs)
            elif op == '>':
                val = builder.icmp_signed('>', val, rhs)
            elif op == '<=':
                val = builder.icmp_signed('<=', val, rhs)
            elif op == '>=':
                val = builder.icmp_signed('>=', val, rhs)

            val = builder.zext(val, int32)

        return val
    def ensure_value(self, val):
        # 修改1：如果val是指针类型，则load出其值
        if isinstance(val.type, ir.PointerType):
            builder = self.Builders[-1]
            val = builder.load(val)
        return val
    
    def visitAdditiveExpression(self, ctx: CParser.AdditiveExpressionContext):
        exps = ctx.multiplicativeExpression()
        builder = self.Builders[-1]

        # 第一个表达式
        val = self.visitMultiplicativeExpression(exps[0])
        val = self.ensure_value(val)

        # 后续的表达式与操作符（操作符在子节点中穿插）
        for i in range(1, len(exps)):
            op_node = ctx.getChild(2*i - 1)
            op = op_node.getText()

            rhs = self.visitMultiplicativeExpression(exps[i])
            rhs = self.ensure_value(rhs)

            if op == '+':
                val = builder.add(val, rhs)
            elif op == '-':
                val = builder.sub(val, rhs)
        return val

    def visitMultiplicativeExpression(self, ctx: CParser.MultiplicativeExpressionContext):
        unaries = ctx.unaryExpression()
        builder = self.Builders[-1]
        val = self.visitUnaryExpression(unaries[0])
        val = self.ensure_value(val)

        # (STAR | DIV | MOD) unaryExpression 的重复
        for i in range(1, len(unaries)):
            op_node = ctx.getChild(2*i - 1)
            op = op_node.getText()
            rhs = self.visitUnaryExpression(unaries[i])
            rhs = self.ensure_value(rhs)

            if op == '*':
                val = builder.mul(val, rhs)
            elif op == '/':
                val = builder.sdiv(val, rhs)
            elif op == '%':
                val = builder.srem(val, rhs)

        return val
    
    def visitUnaryExpression(self, ctx: CParser.UnaryExpressionContext):
        """
        unaryExpression
            : (PLUS_PLUS | MINUS_MINUS)? (postfixExpression | unaryOperator unaryExpression)
        """
        builder = self.Builders[-1]
        if ctx.unaryOperator():
            op = ctx.unaryOperator().getText()
            val = self.visitUnaryExpression(ctx.unaryExpression())
            val = self.ensure_value(val)
            # 对一元运算进行处理
            if op == '!':
                # 将结果转换为 i32
                val = self.castToBoolForExpr(val)
            elif op == '-':
                val = builder.neg(val)
            elif op == '&':
                # 返回变量的地址，不需要转换
                return self.getPointer(val)
            elif op == '*':
                # 解引用指针
                if isinstance(val.type, ir.PointerType):
                    val = builder.load(val, name="dereferenced")
                else:
                    raise SemanticError("* operator applied to a non-pointer")
            elif op == '~':
                val = builder.not_(val)
            return val
        else:
            # prefix ++/--
            if ctx.PLUS_PLUS():
                ptr = self.visitPostfixExpression(ctx.postfixExpression())
                old_val = builder.load(ptr)
                one = ir.Constant(int32, 1)
                new_val = builder.add(old_val, one)
                builder.store(new_val, ptr)
                return new_val
            elif ctx.MINUS_MINUS():
                ptr = self.visitPostfixExpression(ctx.postfixExpression())
                old_val = builder.load(ptr)
                one = ir.Constant(int32, 1)
                new_val = builder.sub(old_val, one)
                builder.store(new_val, ptr)
                return new_val
            else:
                return self.visitPostfixExpression(ctx.postfixExpression())

    def visitPostfixExpression(self, ctx: CParser.PostfixExpressionContext):
        """
        postfixExpression
            : primaryExpression ( ... postfix ops ...)
        """
        val = self.visitPrimaryExpression(ctx.primaryExpression())
        builder = self.Builders[-1]

        # 处理函数调用、数组访问、postfix ++/--等
        # 简化只演示函数调用
        i = 1
        while i < len(ctx.children):
            token = ctx.children[i].getText()
            if token == '(':
                # 函数调用
                # val应为函数
                args = []
                # argumentExpressionList?
                if isinstance(ctx.children[i+1], CParser.ArgumentExpressionListContext):
                    for a in ctx.children[i+1].assignmentExpression():
                        args.append(self.visitAssignmentExpression(a))
                    i += 2 # 跳过argumentExpressionList和')'
                else:
                    i += 1 # 仅')'
                val = builder.call(val, args)
            elif token == '++':
                # 后置自增
                ptr = val
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
                new_val = builder.add(old_val, one)
                builder.store(new_val, ptr)
                # 后置返回旧值
                val = old_val
            elif token == '--':
                ptr = val
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
                new_val = builder.sub(old_val, one)
                builder.store(new_val, ptr)
                val = old_val
            # 可扩展数组访问、结构体访问等
            i += 1
        return val
    
    def visitPrimaryExpression(self, ctx: CParser.PrimaryExpressionContext):
        """
        primaryExpression
            : Identifier
            | Constant
            | CharacterConstant
            | StringLiteral
            | LEFT_PAREN expression RIGHT_PAREN
        """
        builder = self.Builders[-1]
        if ctx.Identifier():
            name = ctx.Identifier().getText()
            print(f"Looking for identifier: {name}")  # 调试输出
            self.SymbolTable.print_scopes()  # 调试输出
            
            # 从符号表中查找变量
            var_addr = self.SymbolTable.get_item(name)
            if var_addr is not None:
                # 返回变量的地址，用于 & 操作符
                return var_addr
            
            # 检查是否是函数名
            if name in self.Funs:
                print(f"Found function {name}")  # 调试输出
                return self.Funs[name]
            
            print(f"Variable {name} not found in symbol table")  # 调试输出
            raise SemanticError(f"Undefined identifier: {name}")
        
        elif ctx.Constant():
            val = ctx.Constant().getText()
            try:
                # 尝试将值解析为整数
                return ir.Constant(int32, int(val))
            except ValueError:
                try:
                    # 如果不是整数，尝试解析为浮点数
                    return ir.Constant(double, float(val))
                except ValueError:
                    raise SemanticError(f"Invalid constant: {val}")
        
        elif ctx.LEFT_PAREN():
            return self.visitExpression(ctx.expression())
        
        return None

    def visitExpression(self, ctx: CParser.ExpressionContext):
        """
        expression
            : assignmentExpression (COMMA assignmentExpression)*
        """
        vals = [self.visitAssignmentExpression(a) for a in ctx.assignmentExpression()]
        return self.castToBoolForExpr(vals[-1]) if vals else None

    def visitStatement(self, ctx: CParser.StatementContext):
        # 选择、循环、跳转、表达式语句等的处理
        # 根据子节点类型判断
        child = ctx.getChild(0)
        if isinstance(child, CParser.SelectionStatementContext):
            return self.visitSelectionStatement(child)
        elif isinstance(child, CParser.ExpressionStatementContext):
            return self.visitExpressionStatement(child)
        elif isinstance(child, CParser.JumpStatementContext):
            return self.visitJumpStatement(child)
        elif isinstance(child, CParser.CompoundStatementContext):
            return self.visitCompoundStatement(child)
        elif isinstance(child, CParser.LabeledStatementContext):
            # 可以根据需要处理标签语句
            return
        elif isinstance(child, CParser.IterationStatementContext):
            return self.visitIterationStatement(child)
        # 其他语句类型的处理...

    def visitExpressionStatement(self, ctx: CParser.ExpressionStatementContext):
        """
        expressionStatement
            : expression? SEMI
        """
        if ctx.expression():
            self.visitExpression(ctx.expression())
        return

    def visitSelectionStatement(self, ctx: CParser.SelectionStatementContext):
        """
        selectionStatement
            : IF LEFT_PAREN expression RIGHT_PAREN statement (ELSE statement)?
        """
        builder = self.Builders[-1]
        cond_val = self.visitExpression(ctx.expression())
        cond_val = self.castToBool(cond_val)

        then_bb = builder.function.append_basic_block('if_then')
        else_bb = builder.function.append_basic_block('if_else')
        merge_bb = builder.function.append_basic_block('if_merge')

        has_else = ctx.ELSE() is not None
        builder.cbranch(cond_val, then_bb, else_bb if has_else else merge_bb)

        # then
        builder.position_at_end(then_bb)
        self.visitStatement(ctx.statement(0))
        # 如果then块没有终止（比如return），则添加跳转到merge块
        if not builder.block.is_terminated:
            builder.branch(merge_bb)

        # else
        if has_else:
            builder.position_at_end(else_bb)
            self.visitStatement(ctx.statement(1))
            # 如果else块没有终止，则添加跳转到merge块
            if not builder.block.is_terminated:
                builder.branch(merge_bb)
        else:
            # 如果没有else分支，将else块连接到merge块
            builder.position_at_end(else_bb)
            builder.branch(merge_bb)

        # 只有当merge块可能被使用时才定位到它
        if not builder.block.is_terminated:
            builder.position_at_end(merge_bb)
        return

    # 辅助函数
    def getTypeFromDeclarationSpecifiers(self, ctx):
        # 简化，只根据出现的类型关键字进行判断
        if ctx is None:
            return int32
        specifiers = ctx.declarationSpecifier()
        types = [s.getText() for s in specifiers if s.typeSpecifier()]
        if 'void' in types:
            return void
        elif 'int' in types:
            return int32
        # 根据需求扩展char、double等类型
        return int32

    def getFunctionInfoFromDeclarator(self, ctx, ret_type):
        """从declarator中提取函数名与参数列表"""
        print("\n=== Getting Function Info ===")
        print(f"Raw declarator text: {ctx.getText()}")
        
        direct_decl = ctx.directDeclarator()
        if not direct_decl:
            print("No direct declarator found")
            return None, None, []
        
        print(f"Direct declarator text: {direct_decl.getText()}")
        
        # 递归获取函数名
        func_name = self._get_function_name(direct_decl)
        if not func_name:
            print("Could not find function name")
            return None, None, []
            
        print(f"Function name: {func_name}")
        
        # 获取参数列表
        arg_names = []
        arg_types = []
        
        # 遍历所有子节点寻找参数列表
        param_list_ctx = self._find_parameter_list(direct_decl)
        if param_list_ctx:
            print("Found parameter list, processing parameters...")
            for param_decl in param_list_ctx.parameterDeclaration():
                # 获取参数类型
                param_type = self.getTypeFromDeclarationSpecifiers(param_decl.declarationSpecifiers())
                # 获取参数名
                param_name = self._get_identifier_from_declarator(param_decl.declarator())
                
                print(f"Found parameter: {param_name} of type {param_type}")
                if param_name:
                    arg_names.append(param_name)
                    arg_types.append(param_type)
        
        # 创建函数类型
        func_type = ir.FunctionType(ret_type, arg_types)
        print(f"Created function type: {func_type}")
        print(f"Parameter names: {arg_names}")
        
        return func_name, func_type, arg_names

    def _get_function_name(self, direct_decl):
        """递归获取函数名"""
        print("Looking for function name in:", direct_decl.getText())
        
        # 如果当前节点有标识符，直接返回
        if hasattr(direct_decl, 'Identifier') and direct_decl.Identifier():
            return direct_decl.Identifier().getText()
            
        # 递归检查每个子节点
        for child in direct_decl.children:
            if isinstance(child, CParser.DirectDeclaratorContext):
                name = self._get_function_name(child)
                if name:
                    return name
        return None

    def _find_parameter_list(self, direct_decl):
        """在直接声明器中查找参数列表"""
        print("Looking for parameter list in:", direct_decl.getText())
        
        # 检查是否直接包含参数列表
        for child in direct_decl.children:
            if isinstance(child, CParser.ParameterTypeListContext):
                return child.parameterList()
                
        # 查找括号后的参数列表
        for i, child in enumerate(direct_decl.children):
            if child.getText() == '(' and i + 1 < len(direct_decl.children):
                next_child = direct_decl.children[i + 1]
                if isinstance(next_child, CParser.ParameterTypeListContext):
                    return next_child.parameterList()
                    
        # 递归检查子节点
        for child in direct_decl.children:
            if isinstance(child, CParser.DirectDeclaratorContext):
                param_list = self._find_parameter_list(child)
                if param_list:
                    return param_list
                    
        return None

    def _get_identifier_from_declarator(self, declarator):
        """从声明器中获取标识符"""
        if not declarator:
            return None
            
        direct_decl = declarator.directDeclarator()
        if not direct_decl:
            return None
            
        return self._get_function_name(direct_decl)  # 复用函数名获取逻辑

    def getIdentifierFromDeclarator(self, ctx):
        # 简化：直接从directDeclarator获取Identifier
        d = ctx.directDeclarator()
        return self.getIdentifierFromDirectDeclarator(d)

    def getIdentifierFromDirectDeclarator(self, dctx):
        if dctx.Identifier():
            return dctx.Identifier().getText()
        else:
            for c in dctx.getChildren():
                if isinstance(c, CParser.DirectDeclaratorContext):
                    return self.getIdentifierFromDirectDeclarator(c)
        return None

    def castToBool(self, val):
        # 将任意整数类型转为i1布尔
        builder = self.Builders[-1]
        zero = ir.Constant(val.type, 0)
        cmp = builder.icmp_signed('!=', val, zero)
        cmp = builder.zext(cmp, int32)
        return cmp

    def visitJumpStatement(self, ctx: CParser.JumpStatementContext):
        """
        jumpStatement
            : (CONTINUE | BREAK | RETURN expression? | GOTO Identifier) SEMI
        """
        builder = self.Builders[-1]
        
        if ctx.RETURN():
            # 获取当前函数的返回类型
            current_func = builder.function
            ret_type = current_func.function_type.return_type
            
            if ctx.expression():
                return_value = self.visitExpression(ctx.expression())
                # 确保返回值类型与函数返回类型一致
                if return_value.type != ret_type:
                    if isinstance(ret_type, ir.IntType) and isinstance(return_value.type, ir.IntType):
                        return_value = builder.sext(return_value, ret_type) if return_value.type.width < ret_type.width else builder.trunc(return_value, ret_type)
                    else:
                        # 其他类型转换，根据需要处理
                        pass
                builder.ret(return_value)
            else:
                # 没有返回值,生成 void return
                builder.ret_void()
        elif ctx.CONTINUE():
            # 处理 continue
            if not self.loop_stack:
                raise SemanticError("Continue statement not within a loop")
            loop_continue_bb = self.loop_stack[-1]['continue']
            builder.branch(loop_continue_bb)
        elif ctx.BREAK():
            # 处理 break
            if not self.loop_stack:
                raise SemanticError("Break statement not within a loop")
            loop_break_bb = self.loop_stack[-1]['break']
            builder.branch(loop_break_bb)
        elif ctx.GOTO():
            # 处理 goto
            label_name = ctx.Identifier().getText()
            if label_name not in self.Funs:
                raise SemanticError(f"Goto label {label_name} not found")
            label_bb = self.Funs[label_name].append_basic_block(label_name)
            builder.branch(label_bb)
        return
    def castToBoolForCondition(self, val):
        """
        将任意整数类型转为i1布尔，用于条件判断。
        """
        builder = self.Builders[-1]
        zero = ir.Constant(val.type, 0)
        cmp = builder.icmp_signed('!=', val, zero)
        return cmp  # 返回i1类型

    def castToBoolForExpr(self, val):
        """
        将任意整数类型转为i32布尔，用于表达式赋值。
        """
        builder = self.Builders[-1]
        zero = ir.Constant(val.type, 0)
        cmp = builder.icmp_signed('!=', val, zero)
        cmp = builder.zext(cmp, int32)  # 扩展为i32
        return cmp
    def getPointer(self, val):
        """
        返回变量的地址（指针）。
        """
        # 假设 val 是变量名，此时 visitPrimaryExpression 返回的是地址
        return val
    
    # ——————————————————循环部分————————————————————
    def visitIterationStatement(self, ctx: CParser.IterationStatementContext):
        """
        iterationStatement
            : WHILE LEFT_PAREN expression RIGHT_PAREN statement
            | DO statement WHILE LEFT_PAREN expression RIGHT_PAREN SEMI
            | FOR LEFT_PAREN forCondition RIGHT_PAREN statement
        """
        builder = self.Builders[-1]
        func = builder.function

        if ctx.WHILE():
            # while(expr) stmt
            cond_bb = func.append_basic_block('while_cond')
            body_bb = func.append_basic_block('while_body')
            end_bb = func.append_basic_block('while_end')

            # 先跳转到cond块
            builder.branch(cond_bb)
            builder.position_at_end(cond_bb)

            # 计算条件表达式
            cond_val = self.visitExpression(ctx.expression())
            cond_val_i1 = self.castToBoolForCondition(cond_val)
            builder.cbranch(cond_val_i1, body_bb, end_bb)

            # 压栈当前循环信息（break和continue跳转点）
            self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

            # 处理循环体
            builder.position_at_end(body_bb)
            self.visitStatement(ctx.statement())

            # 如果循环体没有终止指令，则跳转回条件判断
            if not builder.block.is_terminated:
                builder.branch(cond_bb)

            # 出栈
            self.loop_stack.pop()

            builder.position_at_end(end_bb)

        elif ctx.DO():
            # do stmt while(expr);
            body_bb = func.append_basic_block('do_body')
            cond_bb = func.append_basic_block('do_cond')
            end_bb = func.append_basic_block('do_end')

            # 先跳转到body块
            builder.branch(body_bb)
            builder.position_at_end(body_bb)

            # 压栈循环信息
            self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

            # 执行循环体
            self.visitStatement(ctx.statement())

            # 如果body没有终止，跳到cond
            if not builder.block.is_terminated:
                builder.branch(cond_bb)

            builder.position_at_end(cond_bb)

            # 条件检查
            cond_val = self.visitExpression(ctx.expression())
            cond_val_i1 = self.castToBoolForCondition(cond_val)
            builder.cbranch(cond_val_i1, body_bb, end_bb)

            # 出栈
            self.loop_stack.pop()

            builder.position_at_end(end_bb)

        elif ctx.FOR():
            # for( forCondition ) stmt
            # forCondition : (forDeclaration | expression?) SEMI expression? SEMI expression?
            init_bb = builder.block
            cond_bb = func.append_basic_block('for_cond')
            body_bb = func.append_basic_block('for_body')
            incr_bb = func.append_basic_block('for_incr')
            end_bb = func.append_basic_block('for_end')

            # 解析forCondition
            init_expr, cond_expr, incr_expr = self.visitForCondition(ctx.forCondition())

            # 执行初始化（在当前块中）
            if init_expr is not None:
                # init_expr可能是一个语句结果或None
                pass

            # 跳转到条件块
            builder.branch(cond_bb)
            builder.position_at_end(cond_bb)

            # 计算条件表达式，如果没有条件表达式则视为true
            if cond_expr is not None:
                cond_val = cond_expr
                cond_val = self.castToBoolForCondition(cond_val)
            else:
                # 无条件表达式则永远为真
                cond_val = ir.Constant(ir.IntType(1), 1)

            builder.cbranch(cond_val, body_bb, end_bb)

            # 压栈循环信息
            self.loop_stack.append({'break': end_bb, 'continue': incr_bb})

            # 处理循环体
            builder.position_at_end(body_bb)
            self.visitStatement(ctx.statement())

            # 如果循环体没终止，跳到增量块
            if not builder.block.is_terminated:
                builder.branch(incr_bb)

            # 增量块
            builder.position_at_end(incr_bb)
            if incr_expr is not None:
                # 执行增量表达式
                _ = incr_expr
            # 增量完跳转cond
            builder.branch(cond_bb)

            # 出栈
            self.loop_stack.pop()

            # 最终块
            builder.position_at_end(end_bb)


    def visitForCondition(self, ctx: CParser.ForConditionContext):
        """
        forCondition
            : (forDeclaration | expression?) SEMI expression? SEMI expression?
        """
        # 解析for三个部分: init, cond, incr
        init_expr = None
        cond_expr = None
        incr_expr = None

        builder = self.Builders[-1]

        # 第一部分：forDeclaration 或 expression?
        # ctx的子结构是: (forDeclaration|expression?) SEMI expression? SEMI expression?
        # grammar中 forCondition定义:
        # forCondition
        #   : (forDeclaration | expression?) SEMI expression? SEMI expression?
        #
        # 如果第一个部分是 forDeclaration 则 ctx.forDeclaration() 存在
        # 否则就看看ctx.expression(0)
        if ctx.forDeclaration():
            # 执行变量声明（可能有初始化）
            self.visitForDeclaration(ctx.forDeclaration())
            # 没有显式返回值（init_expr可以设为None）
        else:
            if ctx.expression(0):
                init_expr = self.visitExpression(ctx.expression(0))

        # 第二部分： expression? (条件表达式)
        # forCondition 中的第二个 expression是索引1
        # 判断是否存在ctx.expression(1)
        semi_count = 0
        if ctx.SEMI():
            semi_count = len(ctx.SEMI())

        # 条件表达式在语法上是 (forDeclaration|expr?) SEMI expression? SEMI expression?
        # 如果有forDeclaration，则条件表达式是 expression(0)
        # 如果没有forDeclaration，则条件表达式是 expression(1)

        # 分情况：
        # 已经判断过第一个部分，如果是forDeclaration:
        #     init_expr = None
        #     条件表达式在 expression(0)
        # 如果是expression?:
        #     init_expr在expression(0)
        #     条件表达式在expression(1)
        expr_indices = []
        if ctx.expression():
            expr_indices = list(range(len(ctx.expression())))

        if ctx.forDeclaration():
            # forDeclaration后面是 SEMI expression? SEMI expression?
            # 条件表达式应该在expression(0)
            if len(expr_indices) > 0:
                cond_expr = self.visitExpression(ctx.expression(0))
            # 增量表达式在expression(1)
            if len(expr_indices) > 1:
                incr_expr = self.visitExpression(ctx.expression(1))
        else:
            # 没有forDeclaration
            # init_expr 在expression(0)
            # 条件表达式在expression(1)
            # 增量表达式在expression(2)
            if len(expr_indices) > 1:
                cond_expr = self.visitExpression(ctx.expression(1))
            if len(expr_indices) > 2:
                incr_expr = self.visitExpression(ctx.expression(2))

        return init_expr, cond_expr, incr_expr

    def visitForDeclaration(self, ctx: CParser.ForDeclarationContext):
        """
        forDeclaration
            : declarationSpecifiers initDeclaratorList?
        """
        # 相当于与普通declaration相似的处理
        # 直接调用visitDeclaration类似逻辑
        # 不同点是这里并不需要SEMICOLON, 因为在forCondition中已经有
        t = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())

        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                name = self.getIdentifierFromDeclarator(init_d.declarator())
                if name is None:
                    continue
                builder = self.Builders[-1]
                var_alloca = builder.alloca(t, name=name)
                self.SymbolTable.add_item(name, var_alloca)
                if init_d.initializer():
                    val = self.visitInitializer(init_d.initializer())
                    # 如果 val 是布尔表达式，确保是 i32 类型
                    if isinstance(val.type, ir.IntType) and val.type.width == 1:
                        val = self.castToBoolForExpr(val)
                    builder.store(val, var_alloca)
        else:
            # 没有initDeclaratorList，仅声明类型？
            # for中较少出现这种无名声明，如果出现，可以忽略或仅为类型占位
            pass
        return