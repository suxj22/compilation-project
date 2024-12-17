from Parser.generated.CParser import CParser
from Parser.generated.CVisitor import CVisitor
from llvmlite import ir,binding
from Generator.SymbolTable import SymbolTable
from Generator.SemanticError import SemanticError
from antlr4.tree.Tree import TerminalNodeImpl  

# 定义一些LLVM类型作为示例，可根据需求扩展
int64 = ir.IntType(64)
int32 = ir.IntType(32)
int8 = ir.IntType(8)
int1 = ir.IntType(1)
void = ir.VoidType()
double = ir.DoubleType()

class Visitor(CVisitor):
    def __init__(self):
        super().__init__()
        self.Module = ir.Module(name="my_module")
        self.Module.triple = "aarch64-apple-macosx14.0.0" 
        self.Module.data_layout = "e-m:o-i64:64-i128:128-n32:64-S128"
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
    
    def visitStdFunction(self, ctx: CParser.StdFunctionContext):
        """
        stdFunction
            : strlenFunction
            | atoiFunction
            | printfFunction
            | scanfFunction
            | getsFunction
        """
        return self.visit(ctx.getChild(0))

    def visitStrlenFunction(self, ctx: CParser.StrlenFunctionContext):
        """
        strlen
            : 'strlen' LEFT_PAREN Identifier RIGHT_PAREN
        """
        strlen = None
        if 'strlen' in self.Funs:
            strlen = self.Funs['strlen']
        else:
            strlenType = ir.FunctionType(int32, [ir.PointerType(int8)], var_arg=False)
            strlen = ir.Function(self.Module, strlenType, name="strlen")
            self.Funs['strlen'] = strlen

        print("visitStrlenFunction", ctx.getText())
        builder = self.Builders[-1]
        name = ctx.Identifier().getText()  
        print("Identifier name:", name)  
        identifier = self.SymbolTable.get_item(name)  
        if identifier is None:  
            print(f"Variable {name} not found in symbol table")  
            raise SemanticError(f"Undefined identifier: {name}")  
        
        int8_ptr = ir.PointerType(int8)  
        if identifier.type == int8_ptr:  
            ptr = identifier  
        else:  
            ptr = builder.bitcast(identifier, int8_ptr)  
        retname = builder.call(strlen, [ptr])  
        return retname 
    
    def visitAtoiFunction(self, ctx: CParser.AtoiFunctionContext):
        """
        atoi
            : 'atoi' LEFT_PAREN Identifier RIGHT_PAREN
        """
        atoi = None
        if 'atoi' in self.Funs:
            atoi = self.Funs['atoi']
        else:
            atoiType = ir.FunctionType(int32, [ir.PointerType(int8)], var_arg=False)
            atoi = ir.Function(self.Module, atoiType, name="atoi")
            self.Funs['atoi'] = atoi
        
        builder = self.Builders[-1]
        name = ctx.Identifier().getText()
        print("Identifier name:", name)
        
        identifier = self.SymbolTable.get_item(name)  
        if identifier is None:  
            print(f"Variable {name} not found in symbol table")  
            raise SemanticError(f"Undefined identifier: {name}")  
    
        print("identifier", identifier)  
    
        ptr_value = identifier  
        if isinstance(ptr_value.type, ir.PointerType):  
            if ptr_value.type.pointee == ir.IntType(8):  
                ptr = ptr_value  
            else:  
                int8_ptr = ir.PointerType(ir.IntType(8))  
                ptr = builder.bitcast(ptr_value, int8_ptr)  
        else:  
            zero = ir.Constant(ir.IntType(32), 0)  
            ptr = builder.gep(ptr_value, [zero, zero], inbounds=True)  
            int8_ptr = ir.PointerType(ir.IntType(8))  
            ptr = builder.bitcast(ptr, int8_ptr)  
    
        ret_value = builder.call(atoi, [ptr])  
        return ret_value  
    def visitPrintfFunction(self, ctx: CParser.PrintfFunctionContext):
        """
        printf
            : 'printf' LEFT_PAREN StringLiteral (COMMA expression)* RIGHT_PAREN
        """
        printf = None
        if 'printf' in self.Funs:
            printf = self.Funs['printf']
        else:
            printfType = ir.FunctionType(int32, [ir.PointerType(int8)], var_arg=True)
            printf = ir.Function(self.Module, printfType, name="printf")
            self.Funs['printf'] = printf
        
        builder = self.Builders[-1]
        print("visitPrintfFunction", ctx.getText())
        string_literals = ctx.StringLiteral()  
        string_content = ''  
    
        if isinstance(string_literals, list):  
            for string_node in string_literals:  
                string_text = string_node.getText()  
                content = string_text[1:-1]  
                content_unescaped = bytes(content, "utf-8").decode("unicode_escape")  
                string_content += content_unescaped  
        elif isinstance(string_literals, TerminalNodeImpl):  
            string_text = string_literals.getText()  
            content = string_text[1:-1]  
            string_content = bytes(content, "utf-8").decode("unicode_escape")  
        else:  
            raise Exception("No StringLiteral found in printf")  
    
        format_str_ptr = self.create_string_constant(string_content)  
    
        args = [format_str_ptr]  
    
        expr_list = ctx.expression()  
        for expr_ctx in expr_list:  
            arg_value = self.visit(expr_ctx)  
            if isinstance(arg_value, dict):  
                arg_value = arg_value['name']  
            args.append(arg_value)  
    
        ret_value = builder.call(printf, args)  
        return ret_value 
    
    def create_string_constant(self, string_content):  
        """  
        Helper method to create a global string constant and return a pointer to it.  
        """  
        builder = self.Builders[-1]  
        str_len = len(string_content) + 1
        str_type = ir.ArrayType(int8, str_len)  
        str_const = ir.Constant(str_type, bytearray(string_content + '\0', 'utf-8'))  

        if(self.Constants == 0):
            name = ".str"
        else:
            name = ".str." + str(self.Constants)
        self.Constants += 1
        
        str_global = ir.GlobalVariable(self.Module, str_type, name=name)  
        str_global.linkage = 'private'  
        str_global.global_constant = True  
        str_global.initializer = str_const  
        str_global.align = 1  
        zero = ir.Constant(ir.IntType(32), 0)  
        string_ptr = builder.gep(str_global, [zero, zero], inbounds=True)  
        return string_ptr 
    
    def visitScanfFunction(self, ctx: CParser.ScanfFunctionContext):
        """
        scanf
            : 'scanf' LEFT_PAREN (StringLiteral | Identifier) (COMMA addressOfVariable)* RIGHT_PAREN
        """
        scanf = None
        if 'scanf' in self.Funs:
            scanf = self.Funs['scanf']
        else:
            scanfType = ir.FunctionType(int32, [ir.PointerType(int8)], var_arg=True)
            scanf = ir.Function(self.Module, scanfType, name="scanf")
            self.Funs['scanf'] = scanf
        
        builder = self.Builders[-1]
        print("visitScanfFunction", ctx.getText())
        args = []  
    
        if ctx.StringLiteral():  
            string_node = ctx.StringLiteral()  
            string_text = string_node.getText()  
            content = string_text[1:-1]  
            content_unescaped = bytes(content, "utf-8").decode("unicode_escape")  
            format_str_ptr = self.create_string_constant(content_unescaped)  
            args.append(format_str_ptr)  
        elif ctx.Identifier():  
            name = ctx.Identifier().getText()  
            identifier = self.SymbolTable.get_item(name)  
            if identifier is None:  
                raise SemanticError(f"Undefined identifier: {name}")  
            if isinstance(identifier.type, ir.PointerType) and identifier.type.pointee == ir.IntType(8):  
                ptr = identifier  
            else:  
                ptr = builder.bitcast(identifier, ir.PointerType(ir.IntType(8)))  
            args.append(ptr)  
        else:  
            raise Exception("Expected StringLiteral or Identifier in scanf")  
    
        # addressOfVariable   
        address_list = ctx.addressOfVariable()  
        for address_ctx in address_list:  
            var_name = address_ctx.Identifier().getText()  
            variable = self.SymbolTable.get_item(var_name)  
            if variable is None:  
                raise SemanticError(f"Undefined variable: {var_name}")  
            args.append(variable)  
    
        ret_value = builder.call(scanf, args)  
        return ret_value  
        
    def visitGetsFunction(self, ctx: CParser.GetsFunctionContext):
        """
        gets
            : 'gets' LEFT_PAREN Identifier RIGHT_PAREN
        """
        gets = None
        if 'gets' in self.Funs:
            gets = self.Funs['gets']
        else:
            getsType = ir.FunctionType(ir.PointerType(int8), [ir.PointerType(int8)], var_arg=False)
            gets = ir.Function(self.Module, getsType, name="gets")
            self.Funs['gets'] = gets
        
        builder = self.Builders[-1]
        name = ctx.getChild(2).getText()
        print("Identifier name:", name)

        identifier = self.SymbolTable.get_item(name)
        if identifier is None:
            print(f"Variable {name} not found in symbol table")
            raise SemanticError(f"Undefined identifier: {name}")

        print("identifier", identifier)
        print("identifier type:", identifier.type)  

        ptr_value = identifier  
        int8_ptr_type = ir.PointerType(int8)  
    
        if isinstance(ptr_value.type, ir.PointerType):  
            if ptr_value.type.pointee == int8:  
                ptr = ptr_value  
            else:  
                ptr = builder.bitcast(ptr_value, int8_ptr_type)  
        elif isinstance(ptr_value.type, ir.ArrayType):  
            zero = ir.Constant(ir.IntType(32), 0)  
            ptr = builder.gep(ptr_value, [zero, zero], inbounds=True)  
            ptr = builder.bitcast(ptr, int8_ptr_type)  
        else:  
            raise ValueError(f"Variable '{name}' of unsupported type '{ptr_value.type}' for gets")  
    
        ret_value = builder.call(gets, [ptr]) 
        return ret_value
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
        for arg, arg_name in zip(ir_func.args, arg_names):
            print(f"\nProcessing parameter: {arg_name}")

            # 设置参数名
            arg.name = arg_name

            # 为参数创建 alloca
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
        base_type = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())

        # 处理带有初始化列表的声明
        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                declarator = init_d.declarator()
                name = self.getIdentifierFromDeclarator(declarator)
                if name is None:
                    continue

                # 解析指针层级
                var_type = self.getTypeFromDeclarator(declarator, base_type)

                builder = self.Builders[-1]
                var_alloca = builder.alloca(var_type, name=name)
                self.SymbolTable.add_item(name, var_alloca)
                print(f"Added variable {name} of type {var_type} to symbol table")

                if init_d.initializer():
                    val = self.visitInitializer(init_d.initializer())
                    print(f"Initializer value: {val}")
                    # 确保初始化值的类型与变量类型匹配
                    if val.type != var_type:
                        if isinstance(var_type, ir.PointerType) and isinstance(val.type, ir.PointerType):
                            # 指针类型匹配，通常无需转换
                            pass
                        elif isinstance(var_type, ir.IntType) and isinstance(val.type, ir.IntType):
                            # 整数类型转换
                            if val.type.width < var_type.width:
                                val = builder.sext(val, var_type)  # 符号扩展
                            elif val.type.width > var_type.width:
                                val = builder.trunc(val, var_type)  # 截断
                        else:
                            raise SemanticError(f"Type mismatch: cannot store {val.type} to {var_type}")
                    builder.store(val, var_alloca)
        # 处理没有初始化列表的声明
        elif ctx.declarationSpecifiers():
            # 尝试从声明符中获取标识符
            for init_d in ctx.declaratorList().declarator():
                name = self.getIdentifierFromDeclarator(init_d)
                if name:
                    declarator = init_d
                    var_type = self.getTypeFromDeclarator(declarator, base_type)

                    builder = self.Builders[-1]
                    var_alloca = builder.alloca(var_type, name=name)
                    self.SymbolTable.add_item(name, var_alloca)
                    print(f"Added variable {name} of type {var_type} to symbol table")
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
            print("Assignment expression:", ctx.getText())
            # unaryExpression assignmentOperator assignmentExpression
            lhs_ptr = self.visitUnaryExpression(ctx.unaryExpression())
            rhs_val = self.visitAssignmentExpression(ctx.assignmentExpression())
            op = ctx.assignmentOperator().getText()
            builder = self.Builders[-1]

            if op == '=':
                # 确保 rhs_val 是 i32 类型
                if isinstance(rhs_val.type, ir.IntType) and isinstance(lhs_ptr.type.pointee, ir.IntType):
                    if rhs_val.type.width != lhs_ptr.type.pointee.width:
                        rhs_val = builder.sext(rhs_val, lhs_ptr.type.pointee) if rhs_val.type.width < lhs_ptr.type.pointee.width else builder.trunc(rhs_val, lhs_ptr.type.pointee)

                # if rhs_val.type != lhs_ptr.type.pointee:
                #     if isinstance(lhs_ptr.type.pointee, ir.IntType) and isinstance(rhs_val.type, ir.IntType):
                #         rhs_val = builder.sext(rhs_val, lhs_ptr.type.pointee) if rhs_val.type.width < lhs_ptr.type.pointee.width else builder.trunc(rhs_val, lhs_ptr.type.pointee)
                #     else:
                #         # 其他类型转换，根据需要处理
                #         pass
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
            print("Conditional expression:", ctx.getText())
            print("Conditional expression:", ctx)
            return self.visitConditionalExpression(ctx.conditionalExpression())
            # return self.castToBoolForExpr(self.visitConditionalExpression(ctx.conditionalExpression()))

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
        # TODO: 完善传入参数是字符串的情况
        i = 1
        while i < len(ctx.children):
            token = ctx.children[i].getText()
            if token == '(':
                # 函数调用
                # val应为函数
                print(f"Function call: {val.name}")
                args = []
                # argumentExpressionList?
                if isinstance(ctx.children[i+1], CParser.ArgumentExpressionListContext):
                    for a in ctx.children[i+1].assignmentExpression():
                        print(a.getText())
                        
                        args.append(self.visitAssignmentExpression(a))
                        print(f"Argument: {args[-1]}")
                    i += 2 # 跳过argumentExpressionList和')'
                else:
                    i += 1 # 仅')'
                print(args)
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
            : stdFunction
            | Identifier
            | Constant
            | CharacterConstant
            | StringLiteral
            | LEFT_PAREN expression RIGHT_PAREN
        """
        builder = self.Builders[-1]
        if ctx.stdFunction():
            return self.visitStdFunction(ctx.stdFunction())
        elif ctx.Identifier():
            name = ctx.Identifier().getText().strip('"')
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
            return self.visitConstant(ctx.Constant())
        elif ctx.CharacterConstant():
            return self.visitCharacterConstant(ctx.CharacterConstant())
        elif ctx.StringLiteral():
            return self.visitStringLiteral(ctx.StringLiteral())
        elif ctx.LEFT_PAREN():
            return self.visitExpression(ctx.expression())
        else:
            print("Unknown primary expression")  # 调试输出
            print(ctx.getText())  # 调试输出
            raise ValueError("Unknown primary expression")
        return None
    
    def visitConstant(self, ctx):
        """处理常量值"""
        val = ctx.getText()
        try:
            # 直接返回整数常量，不需要额外的布尔转换
            return ir.Constant(int32, int(val))
        except ValueError:
            try:
                return ir.Constant(double, float(val))
            except ValueError:
                raise SemanticError(f"Invalid constant: {val}")
    def visitCharacterConstant(self, ctx):
        char_text = ctx.getText()[1:-1]  # 去掉引号
        if len(char_text) == 1 and char_text not in '\\':
            return ir.Constant(int8, ord(char_text))
        elif len(char_text) == 2 and char_text[0] == '\\':
            escape_chars = {
                'b': '\b',  # 退格
                't': '\t',  # 水平制表
                'n': '\n',  # 换行
                'f': '\f',  # 换页
                'r': '\r',  # 回车
                '"': '"',   # 双引号
                '\'': "'",  # 单引号
                '\\': '\\', # 反斜杠
            }
            escaped_char = escape_chars.get(char_text[1])
            if escaped_char is not None:
                return ir.Constant(int8, ord(escaped_char))
            else:
                raise ValueError(f"Unknown escape sequence: {char_text}")
        else:
            raise ValueError(f"Invalid character constant: {char_text}")
    def visitStringLiteral(self, ctx):
        string_text = ctx.getText()[1:-1]  
        string_value = bytes(string_text, "utf-8").decode("unicode_escape")  
        
        str_len = len(string_value) + 1  # Include null terminator  
        str_type = ir.ArrayType(int8, str_len)  
        str_const = ir.Constant(str_type, bytearray(string_value + '\0', 'utf-8'))  
        
        if(self.Constants == 0):
            name = ".str"
        else:
            name = ".str." + str(self.Constants)
        self.Constants += 1
    
        str_global = ir.GlobalVariable(self.Module, str_type, name=name)  
        str_global.linkage = 'private'  
        str_global.global_constant = True  
        str_global.initializer = str_const  
        str_global.align = 1  
    
        zero = ir.Constant(ir.IntType(32), 0) 
        builder = self.Builders[-1]   
        string_ptr = builder.gep(str_global, [zero, zero], inbounds=True)  
        return string_ptr  
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

    # def visitSelectionStatement(self, ctx: CParser.SelectionStatementContext):
    #     """
    #     selectionStatement
    #         : IF LEFT_PAREN expression RIGHT_PAREN statement (ELSE statement)?
    #     """
    #     builder = self.Builders[-1]
    #     cond_val = self.visitExpression(ctx.expression())
    #     cond_val = self.castToBoolForCondition(cond_val)

    #     then_bb = builder.function.append_basic_block('if_then')
    #     else_bb = builder.function.append_basic_block('if_else')
    #     merge_bb = builder.function.append_basic_block('if_merge')

    #     has_else = ctx.ELSE() is not None
    #     builder.cbranch(cond_val, then_bb, else_bb if has_else else merge_bb)

    #     # then
    #     builder.position_at_end(then_bb)
    #     self.visitStatement(ctx.statement(0))
    #     # 如果then块没有终止（比如return），则添加跳转到merge块
    #     if not builder.block.is_terminated:
    #         builder.branch(merge_bb)

    #     # else
    #     if has_else:
    #         builder.position_at_end(else_bb)
    #         self.visitStatement(ctx.statement(1))
    #         # 如果else块没有终止，则添加跳转到merge块
    #         if not builder.block.is_terminated:
    #             builder.branch(merge_bb)
    #     else:
    #         # 如果没有else分支，将else块连接到merge块
    #         builder.position_at_end(else_bb)
    #         builder.branch(merge_bb)

    #     # 只有当merge块可能被使用时才定位到它
    #     if not builder.block.is_terminated:
    #         builder.position_at_end(merge_bb)
    #     return
    # def visitSelectionStatement(self, ctx: CParser.SelectionStatementContext):
    #     """
    #     selectionStatement
    #         : IF LEFT_PAREN expression RIGHT_PAREN statement (ELSE statement)?
    #     """
    #     print("visitSelectionStatement")
    #     builder = self.Builders[-1]
    #     cond_val = self.visitExpression(ctx.expression())
    #     cond_val = self.castToBoolForCondition(cond_val)  # 使用i1类型

    #     # 创建基本块
    #     then_bb = builder.function.append_basic_block('if_then')
    #     else_bb = builder.function.append_basic_block('if_else')
        
    #     # 条件分支
    #     builder.cbranch(cond_val, then_bb, else_bb)

    #     # 处理then块
    #     builder.position_at_end(then_bb)
    #     self.visitStatement(ctx.statement(0))
    #     then_has_terminator = builder.block.is_terminated

    #     # 处理else块
    #     builder.position_at_end(else_bb)
    #     self.visitStatement(ctx.statement(1) if ctx.ELSE() else None)
    #     else_has_terminator = builder.block.is_terminated

    #     # 如果两个分支都有终止指令（比如return），就不需要merge块
    #     if not (then_has_terminator and else_has_terminator):
    #         # 创建merge块
    #         merge_bb = builder.function.append_basic_block('if_merge')
            
    #         # 如果then块没有终止指令，添加跳转到merge块
    #         if not then_has_terminator:
    #             builder.position_at_end(then_bb)
    #             builder.branch(merge_bb)
                
    #         # 如果else块没有终止指令，添加跳转到merge块
    #         if not else_has_terminator:
    #             builder.position_at_end(else_bb)
    #             builder.branch(merge_bb)
                
    #         # 继续在merge块中生成代码
    #         builder.position_at_end(merge_bb)

    #     return   
    
    def visitSelectionStatement(self, ctx: CParser.SelectionStatementContext):
        builder = self.Builders[-1]
        cond_val = self.visitExpression(ctx.expression())
        cond_val = self.castToBoolForCondition(cond_val)  # 使用 i1 类型

        # 创建基本块
        then_bb = builder.function.append_basic_block('if_then')
        
        if ctx.ELSE():
            else_bb = builder.function.append_basic_block('if_else')
            builder.cbranch(cond_val, then_bb, else_bb)
        else:
            end_bb = builder.function.append_basic_block('if_end')
            builder.cbranch(cond_val, then_bb, end_bb)

        # 处理then块
        builder.position_at_end(then_bb)
        self.visitStatement(ctx.statement(0))
        # 记录then块的终止状态和terminator
        then_has_terminator = builder.block.is_terminated
        then_terminator = builder.block.terminator if then_has_terminator else None

        # 如果有else分支
        if ctx.ELSE():
            builder.position_at_end(else_bb)
            self.visitStatement(ctx.statement(1))
            else_has_terminator = builder.block.is_terminated
            else_terminator = builder.block.terminator if else_has_terminator else None

            # 当两个分支都不需要合并时，无需创建merge块
            # 否则尝试创建merge块
            if not (then_has_terminator and else_has_terminator):
                # 检查是否需要合并
                needs_merge = False

                # 如果then或else没有terminator，肯定需要合并
                if not then_has_terminator or not else_has_terminator:
                    needs_merge = True
                else:
                    # 如果两者都有terminator，但terminator是普通branch（不是return或unreachable之类的）
                    # 则仍需要merge块
                    if ((then_terminator and isinstance(then_terminator, ir.Branch)) or
                        (else_terminator and isinstance(else_terminator, ir.Branch))):
                        needs_merge = True

                if needs_merge:
                    merge_bb = builder.function.append_basic_block('if_merge')
                    if not then_has_terminator:
                        # 回到then_bb末尾补上branch
                        builder.position_at_end(then_bb)
                        if builder.block.terminator is None:
                            builder.branch(merge_bb)
                    if not else_has_terminator:
                        builder.position_at_end(else_bb)
                        if builder.block.terminator is None:
                            builder.branch(merge_bb)
                    builder.position_at_end(merge_bb)

        else:
            # 没有else分支时，如果then块没有terminator，需要跳转到end_bb
            if not then_has_terminator:
                builder.position_at_end(then_bb)
                if builder.block.terminator is None:
                    builder.branch(end_bb)
            
            builder.position_at_end(end_bb)

        return
    # 辅助函数
    def getTypeFromDeclarationSpecifiers(self, ctx):
        # 简化，只根据出现的类型关键字进行判断
        if ctx is None:
            return int32
        specifiers = ctx.declarationSpecifier()
        types = [s.getText() for s in specifiers if s.typeSpecifier()]
        if 'void' in types:
            print("Found void type")
            return void
        elif 'int' in types:
            print("Found int type")
            return int32
        elif 'char' in types:
            print("Found char type")
            return int8
        elif 'double' in types:
            print("Found double type")
            return double
        
        # 根据需求扩展char、double等类型
        print("Unknown type, using int32")
        return int32

    def getFunctionInfoFromDeclarator(self, ctx, ret_type):
        """从 declarator 中提取函数名与参数列表"""
        print("\n=== Getting Function Info ===")
        print(f"Raw declarator text: {ctx.getText()}")

        direct_decl = ctx.directDeclarator()
        if not direct_decl:
            print("No direct declarator found")
            return None, None, []

        print(f"Direct declarator text: {direct_decl.getText()}")

        # 获取函数名
        func_name = self._get_function_name(direct_decl)
        if not func_name:
            print("Could not find function name")
            return None, None, []

        print(f"Function name: {func_name}")

        # 获取参数列表
        arg_names = []
        arg_types = []

        # 查找参数列表
        param_list_ctx = self._find_parameter_list(direct_decl)
        if param_list_ctx:
            print("Found parameter list, processing parameters...")
            for param_decl in param_list_ctx.parameterDeclaration():
                # 获取参数的基本类型
                param_base_type = self.getTypeFromDeclarationSpecifiers(param_decl.declarationSpecifiers())

                # 获取参数的声明符
                param_declarator = param_decl.declarator()
                param_type = self.getTypeFromDeclarator(param_declarator, param_base_type)

                # 获取参数名
                param_name = self._get_identifier_from_declarator(param_declarator)

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

    def getIdentifierFromDeclarator(self, declarator):
        # 简化：直接从 directDeclarator 获取 Identifier
        d = declarator.directDeclarator()
        name = self.getIdentifierFromDirectDeclarator(d)
        if name:
            return name  # 移除 strip('"')，除非确实需要
        return None

    def getIdentifierFromDirectDeclarator(self, dctx):
        if dctx.Identifier():
            return dctx.Identifier().getText()
        else:
            for c in dctx.getChildren():
                if isinstance(c, CParser.DirectDeclaratorContext):
                    return self.getIdentifierFromDirectDeclarator(c)
        return None


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
        # 如果已经是i1类型，直接返回
        if isinstance(val.type, ir.IntType) and val.type.width == 1:
            return val
        # 否则进行比较
        return builder.icmp_signed('!=', val, ir.Constant(val.type, 0))
        # zero = ir.Constant(val.type, 0)
        # cmp = builder.icmp_signed('!=', val, zero)
        # return cmp  # 返回i1类型

    def castToBoolForExpr(self, val):
        """
        将任意整数类型转为i32布尔，用于表达式赋值。
        """
        builder = self.Builders[-1]
        if isinstance(val.type, ir.IntType) and val.type.width != 32:
            return builder.zext(val, int32)
        return val
        # zero = ir.Constant(val.type, 0)
        # cmp = builder.icmp_signed('!=', val, zero)
        # cmp = builder.zext(cmp, int32)  # 扩展为i32
        # return cmp
    def getPointer(self, val):
        """
        返回变量的地址（指针）。
        """
        # 假设 val 是变量名，此时 visitPrimaryExpression 返回的是地址
        return val
    
    # ——————————————————循环部分————————————————————
    # def visitIterationStatement(self, ctx: CParser.IterationStatementContext):
    #     """
    #     iterationStatement
    #         : WHILE LEFT_PAREN expression RIGHT_PAREN statement
    #         | DO statement WHILE LEFT_PAREN expression RIGHT_PAREN SEMI
    #         | FOR LEFT_PAREN forCondition RIGHT_PAREN statement
    #     """
    #     builder = self.Builders[-1]
    #     func = builder.function

    #     if ctx.WHILE():
    #         # while(expr) stmt
    #         cond_bb = func.append_basic_block('while_cond')
    #         body_bb = func.append_basic_block('while_body')
    #         end_bb = func.append_basic_block('while_end')

    #         # 先跳转到cond块
    #         builder.branch(cond_bb)
    #         builder.position_at_end(cond_bb)

    #         # 计算条件表达式
    #         cond_val = self.visitExpression(ctx.expression())
    #         cond_val_i1 = self.castToBoolForCondition(cond_val)
    #         builder.cbranch(cond_val_i1, body_bb, end_bb)

    #         # 压栈当前循环信息（break和continue跳转点）
    #         self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

    #         # 处理循环体
    #         builder.position_at_end(body_bb)
    #         self.visitStatement(ctx.statement())

    #         # 如果循环体没有终止指令，则跳转回条件判断
    #         if not builder.block.is_terminated:
    #             builder.branch(cond_bb)

    #         # 出栈
    #         self.loop_stack.pop()

    #         builder.position_at_end(end_bb)

    #     elif ctx.DO():
    #         # do stmt while(expr);
    #         body_bb = func.append_basic_block('do_body')
    #         cond_bb = func.append_basic_block('do_cond')
    #         end_bb = func.append_basic_block('do_end')

    #         # 先跳转到body块
    #         builder.branch(body_bb)
    #         builder.position_at_end(body_bb)

    #         # 压栈循环信息
    #         self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

    #         # 执行循环体
    #         self.visitStatement(ctx.statement())

    #         # 如果body没有终止，跳到cond
    #         if not builder.block.is_terminated:
    #             builder.branch(cond_bb)

    #         builder.position_at_end(cond_bb)

    #         # 条件检查
    #         cond_val = self.visitExpression(ctx.expression())
    #         cond_val_i1 = self.castToBoolForCondition(cond_val)
    #         builder.cbranch(cond_val_i1, body_bb, end_bb)

    #         # 出栈
    #         self.loop_stack.pop()

    #         builder.position_at_end(end_bb)

    #     elif ctx.FOR():
    #         # Create basic blocks for the for loop
    #         init_bb = func.append_basic_block('for_init')
    #         cond_bb = func.append_basic_block('for_cond')
    #         body_bb = func.append_basic_block('for_body')
    #         inc_bb = func.append_basic_block('for_inc')
    #         end_bb = func.append_basic_block('for_end')

    #         # Branch to initialization
    #         builder.branch(init_bb)
    #         builder.position_at_end(init_bb)

    #         # Handle for condition components
    #         for_cond = ctx.forCondition()
            
    #         # Initialize
    #         if isinstance(for_cond.getChild(0), CParser.ForDeclarationContext):
    #             # Handle declaration-style initialization
    #             self.visitForDeclaration(for_cond.forDeclaration())
    #         elif for_cond.expression(0):
    #             # Handle expression-style initialization
    #             self.visitExpression(for_cond.expression(0))

    #         # Branch to condition check
    #         builder.branch(cond_bb)
    #         builder.position_at_end(cond_bb)

    #         # Condition check
    #         if for_cond.expression(1):  # Second expression is the condition
    #             cond_val = self.visitExpression(for_cond.expression(1))
    #             cond_val = self.castToBoolForCondition(cond_val)
    #             builder.cbranch(cond_val, body_bb, end_bb)
    #         else:
    #             # If no condition is provided, it's treated as always true
    #             builder.branch(body_bb)

    #         # Push loop information for break/continue
    #         self.loop_stack.append({'break': end_bb, 'continue': inc_bb})

    #         # Loop body
    #         builder.position_at_end(body_bb)
    #         self.visitStatement(ctx.statement())
    #         if not builder.block.is_terminated:
    #             builder.branch(inc_bb)

    #         # Increment/update
    #         builder.position_at_end(inc_bb)
    #         if for_cond.expression(2):  # Third expression is the increment
    #             self.visitExpression(for_cond.expression(2))
    #         builder.branch(cond_bb)

    #         # Pop loop information
    #         self.loop_stack.pop()

    #         # Position at end block
    #         builder.position_at_end(end_bb)

    #     return
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

            # 处理循环体 - 为循环体创建新的作用域
            builder.position_at_end(body_bb)
            self.SymbolTable.enter_scope()  # 进入新的作用域
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()   # 退出作用域

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

            # 执行循环体 - 为循环体创建新的作用域
            self.SymbolTable.enter_scope()  # 进入新的作用域
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()   # 退出作用域

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
            # 获取for循环的条件部分
            for_cond = ctx.forCondition()
            
            # 创建基本块
            init_bb = func.append_basic_block('for_init')
            cond_bb = func.append_basic_block('for_cond')
            body_bb = func.append_basic_block('for_body')
            inc_bb = func.append_basic_block('for_inc')
            end_bb = func.append_basic_block('for_end')

            # 跳转到初始化块
            builder.branch(init_bb)
            builder.position_at_end(init_bb)

            # 为整个for循环创建作用域
            # forCondition
            #: (forDeclaration | expression?) SEMI expression? SEMI expression?
            # ;
            self.SymbolTable.enter_scope()
            # import pdb; pdb.set_trace()
            init_expr = for_cond.forDeclaration()
            cond_expr = None
            inc_expr = None
            # for (? ; expr ; expr )
            if len(for_cond.expression()) == 2:
                cond_expr = for_cond.expression(0)
                inc_expr = for_cond.expression(1)
            elif len(for_cond.expression()) == 1:
                # 获取forCondition的子节点数量
                child_len = len(for_cond.children)
                if for_cond.getChild(child_len - 1).getText() != ';':
                    # for(?; ; expr)
                    inc_expr = for_cond.expression(0)
                else:
                    # for(?; expr; )
                    cond_expr = for_cond.expression(0)
            
            # 处理初始化
            if init_expr:
                self.visitForDeclaration(init_expr)

            # 跳转到条件检查
            builder.branch(cond_bb)
            builder.position_at_end(cond_bb)

            # 条件检查 - 使用 for_cond.expression(0) 作为条件
            if cond_expr:  # 第一个表达式是条件判断
                cond_val = self.visitExpression(cond_expr)
                cond_val = self.castToBoolForCondition(cond_val)
                builder.cbranch(cond_val, body_bb, end_bb)
            else:
                # 如果没有条件，默认为真
                builder.branch(body_bb)

            # Push loop information for break/continue
            self.loop_stack.append({'break': end_bb, 'continue': inc_bb})

            # 处理循环体
            builder.position_at_end(body_bb)

            # 为循环体创建新的作用域
            self.SymbolTable.enter_scope()
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()

            # 如果循环体没有终止指令，则跳转到递增块
            if not builder.block.is_terminated:
                builder.branch(inc_bb)

            # 处理递增部分
            builder.position_at_end(inc_bb)
            if inc_expr:  # 第二个表达式是递增
                self.visitExpression(inc_expr)
            builder.branch(cond_bb)

            # 清理
            self.loop_stack.pop()
            self.SymbolTable.exit_scope()

            # 继续在结束块
            builder.position_at_end(end_bb)

            return

    def visitForDeclaration(self, ctx: CParser.ForDeclarationContext):
        """处理for循环的声明部分"""
        if not ctx:
            return
            
        t = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())
        
        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                name = self.getIdentifierFromDeclarator(init_d.declarator())
                if name:
                    builder = self.Builders[-1]
                    var_alloca = builder.alloca(t, name=name)
                    self.SymbolTable.add_item(name, var_alloca)
                    
                    if init_d.initializer():
                        init_val = self.visitInitializer(init_d.initializer())
                        if isinstance(init_val.type, ir.IntType) and isinstance(var_alloca.type.pointee, ir.IntType):
                            if init_val.type.width != var_alloca.type.pointee.width:
                                init_val = builder.sext(init_val, var_alloca.type.pointee) if init_val.type.width < var_alloca.type.pointee.width else builder.trunc(init_val, var_alloca.type.pointee)
                        builder.store(init_val, var_alloca)
        return
    # 增加对于指针的解析
    def getTypeFromDeclarator(self, declarator_ctx, base_type):
        """
        解析 declarator 以确定指针层级，并返回最终的 LLVM 类型。
        """
        type_ = base_type
        current = declarator_ctx

        while current:
            pointer_ctx = current.pointer()
            if pointer_ctx:
                # 统计 '*' 的数量
                # 在标准语法中，每个 '*' 对应一个 PointerContext
                type_ = ir.PointerType(type_)
                # 继续遍历下一个指针（如果有）
                if hasattr(pointer_ctx, 'pointer') and callable(getattr(pointer_ctx, 'pointer')):
                    current = pointer_ctx.pointer()
                else:
                    break
            else:
                break

        return type_
