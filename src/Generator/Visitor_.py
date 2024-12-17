from Parser.generated.CParser import CParser
from Parser.generated.CVisitor import CVisitor
from llvmlite import ir, binding
from Generator.SymbolTable import SymbolTable
from Generator.SemanticError import SemanticError
from antlr4.tree.Tree import TerminalNodeImpl

# Define some LLVM types
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
        self.loop_stack = []

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
        """Handle function definitions"""
        # Get return type
        ret_type = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())

        # Get function information
        func_name, func_type, arg_names = self.getFunctionInfoFromDeclarator(ctx.declarator(), ret_type)
        if not func_name:
            raise SemanticError("Could not extract function name")

        # Create function
        ir_func = ir.Function(self.Module, func_type, name=func_name)
        self.Funs[func_name] = ir_func

        # Create entry block
        entry_block = ir_func.append_basic_block('entry')
        builder = ir.IRBuilder(entry_block)
        self.Builders.append(builder)
        self.Blocks.append(entry_block)

        # Enter function scope
        self.SymbolTable.enter_scope()

        # Handle function parameters
        for arg, arg_name in zip(ir_func.args, arg_names):
            arg.name = arg_name
            arg_alloca = builder.alloca(arg.type, name=f"{arg_name}_addr")
            builder.store(arg, arg_alloca)
            self.SymbolTable.add_item(arg_name, arg_alloca)

        # Visit function body
        self.visitCompoundStatement(ctx.compoundStatement())

        # Handle return statements
        if not builder.block.is_terminated:
            if ret_type == void:
                builder.ret_void()
            else:
                raise SemanticError(f"Function {func_name} must return a value of type {ret_type}")

        # Exit scope
        self.SymbolTable.exit_scope()
        self.Builders.pop()
        self.Blocks.pop()
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

        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                declarator = init_d.declarator()
                name = self.getIdentifierFromDeclarator(declarator)
                if name is None:
                    continue

                # Parse pointer levels
                var_type = self.getTypeFromDeclarator(declarator, base_type)

                builder = self.Builders[-1]
                var_alloca = builder.alloca(var_type, name=name)
                self.SymbolTable.add_item(name, var_alloca)

                if init_d.initializer():
                    val = self.visitInitializer(init_d.initializer())
                    # Ensure the initializer value's type matches the variable type
                    if val.type != var_alloca.type.pointee:
                        if isinstance(var_alloca.type.pointee, ir.IntType) and isinstance(val.type, ir.IntType):
                            if val.type.width < var_alloca.type.pointee.width:
                                val = builder.sext(val, var_alloca.type.pointee)  # Sign extend
                            elif val.type.width > var_alloca.type.pointee.width:
                                val = builder.trunc(val, var_alloca.type.pointee)  # Truncate
                        else:
                            raise SemanticError(f"Type mismatch: cannot store {val.type} to {var_alloca.type.pointee}")
                    builder.store(val, var_alloca)
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
            # Handle array initializers
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
                builder.store(rhs_val, lhs_ptr)
                return rhs_val
            else:
                # Compound assignment
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
            return self.visitConditionalExpression(ctx.conditionalExpression())

    def visitConditionalExpression(self, ctx: CParser.ConditionalExpressionContext):
        """
        conditionalExpression
            : logicalOrExpression (QUESTION expression COLON conditionalExpression)?
        """
        if ctx.QUESTION():
            # condition ? expr1 : expr2
            cond_val = self.visitLogicalOrExpression(ctx.logicalOrExpression())
            cond_val = self.castToBoolForCondition(cond_val)  # Convert to i1

            builder = self.Builders[-1]
            then_bb = builder.function.append_basic_block('cond_then')
            else_bb = builder.function.append_basic_block('cond_else')
            merge_bb = builder.function.append_basic_block('cond_merge')

            builder.cbranch(cond_val, then_bb, else_bb)

            # then
            builder.position_at_end(then_bb)
            then_val = self.visitExpression(ctx.expression())
            builder.branch(merge_bb)
            then_bb = builder.block  # Update block

            # else
            builder.position_at_end(else_bb)
            else_val = self.visitConditionalExpression(ctx.conditionalExpression())
            builder.branch(merge_bb)
            else_bb = builder.block

            # merge
            builder.position_at_end(merge_bb)
            phi = builder.phi(then_val.type)
            phi.add_incoming(then_val, then_bb)
            phi.add_incoming(else_val, else_bb)
            return phi
        else:
            return self.visitLogicalOrExpression(ctx.logicalOrExpression())

    def visitLogicalOrExpression(self, ctx: CParser.LogicalOrExpressionContext):
        """
        logicalOrExpression
            : logicalAndExpression (OR_OR logicalAndExpression)*
        """
        val = self.visitLogicalAndExpression(ctx.logicalAndExpression(0))
        builder = self.Builders[-1]
        for i in range(1, len(ctx.logicalAndExpression())):
            rhs = self.visitLogicalAndExpression(ctx.logicalAndExpression(i))
            val = builder.or_(val, rhs)
        return val

    def visitLogicalAndExpression(self, ctx: CParser.LogicalAndExpressionContext):
        """
        logicalAndExpression
            : equalityExpression (AND_AND equalityExpression)*
        """
        val = self.visitEqualityExpression(ctx.equalityExpression(0))
        builder = self.Builders[-1]
        for i in range(1, len(ctx.equalityExpression())):
            rhs = self.visitEqualityExpression(ctx.equalityExpression(i))
            val = builder.and_(val, rhs)
        return val

    def visitEqualityExpression(self, ctx: CParser.EqualityExpressionContext):
        builder = self.Builders[-1]

        # First relationalExpression
        val = self.visitRelationalExpression(ctx.relationalExpression(0))

        # Handle (EQUAL | NOT_EQUAL) relationalExpression
        for i in range(1, len(ctx.relationalExpression())):
            op = ctx.getChild(2 * i - 1).getText()
            rhs = self.visitRelationalExpression(ctx.relationalExpression(i))

            if op == '==':
                val = builder.icmp_signed('==', val, rhs)
            elif op == '!=':
                val = builder.icmp_signed('!=', val, rhs)
            else:
                raise SemanticError(f"Unknown equality operator {op}")

            val = builder.zext(val, int32)

        return val

    def visitRelationalExpression(self, ctx: CParser.RelationalExpressionContext):
        builder = self.Builders[-1]

        # First additiveExpression
        val = self.visitAdditiveExpression(ctx.additiveExpression(0))

        # Handle (LT | GT | LE | GE) additiveExpression
        for i in range(1, len(ctx.additiveExpression())):
            op = ctx.getChild(2 * i - 1).getText()
            rhs = self.visitAdditiveExpression(ctx.additiveExpression(i))

            if op == '<':
                val = builder.icmp_signed('<', val, rhs)
            elif op == '>':
                val = builder.icmp_signed('>', val, rhs)
            elif op == '<=':
                val = builder.icmp_signed('<=', val, rhs)
            elif op == '>=':
                val = builder.icmp_signed('>=', val, rhs)
            else:
                raise SemanticError(f"Unknown relational operator {op}")

            val = builder.zext(val, int32)

        return val

    def visitAdditiveExpression(self, ctx: CParser.AdditiveExpressionContext):
        exps = ctx.multiplicativeExpression()
        builder = self.Builders[-1]

        val = self.visitMultiplicativeExpression(exps[0])

        for i in range(1, len(exps)):
            op = ctx.getChild(2 * i - 1).getText()
            rhs = self.visitMultiplicativeExpression(exps[i])

            if op == '+':
                val = builder.add(val, rhs)
            elif op == '-':
                val = builder.sub(val, rhs)
            else:
                raise SemanticError(f"Unknown additive operator {op}")
        return val

    def visitMultiplicativeExpression(self, ctx: CParser.MultiplicativeExpressionContext):
        unaries = ctx.unaryExpression()
        builder = self.Builders[-1]
        val = self.visitUnaryExpression(unaries[0])

        for i in range(1, len(unaries)):
            op = ctx.getChild(2 * i - 1).getText()
            rhs = self.visitUnaryExpression(unaries[i])

            if op == '*':
                val = builder.mul(val, rhs)
            elif op == '/':
                val = builder.sdiv(val, rhs)
            elif op == '%':
                val = builder.srem(val, rhs)
            else:
                raise SemanticError(f"Unknown multiplicative operator {op}")

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
            if op == '!':
                zero = ir.Constant(val.type, 0)
                val = builder.icmp_signed('==', val, zero)
            elif op == '-':
                val = builder.neg(val)
            elif op == '&':
                return self.getPointer(val)
            elif op == '*':
                val = builder.load(val)
            elif op == '~':
                val = builder.not_(val)
            return val
        else:
            if ctx.PLUS_PLUS():
                ptr = self.visitPostfixExpression(ctx.postfixExpression())
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
                new_val = builder.add(old_val, one)
                builder.store(new_val, ptr)
                return new_val
            elif ctx.MINUS_MINUS():
                ptr = self.visitPostfixExpression(ctx.postfixExpression())
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
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

        i = 1
        while i < len(ctx.children):
            token = ctx.children[i].getText()
            if token == '(':
                # Function call
                args = []
                if isinstance(ctx.children[i + 1], CParser.ArgumentExpressionListContext):
                    for a in ctx.children[i + 1].assignmentExpression():
                        args.append(self.visitAssignmentExpression(a))
                    i += 2  # Skip argumentExpressionList and ')'
                else:
                    i += 1  # Only ')'
                val = builder.call(val, args)

            elif token == '++':
                # Post-increment
                ptr = val
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
                new_val = builder.add(old_val, one)
                builder.store(new_val, ptr)
                val = old_val
            elif token == '--':
                ptr = val
                old_val = builder.load(ptr)
                one = ir.Constant(old_val.type, 1)
                new_val = builder.sub(old_val, one)
                builder.store(new_val, ptr)
                val = old_val
            i += 1
        return val

    def visitPrimaryExpression(self, ctx: CParser.PrimaryExpressionContext):
        """
        primaryExpression
            : Identifier
            | Constant
            | StringLiteral
            | LEFT_PAREN expression RIGHT_PAREN
        """
        if ctx.Identifier():
            name = ctx.Identifier().getText().strip('"')
            # Look up variable in symbol table
            var_addr = self.SymbolTable.get_item(name)
            if var_addr is not None:
                return var_addr

            # Check if it's a function name
            if name in self.Funs:
                return self.Funs[name]

            raise SemanticError(f"Undefined identifier: {name}")

        elif ctx.Constant():
            return self.visitConstant(ctx.Constant())
        elif ctx.StringLiteral():
            return self.visitStringLiteral(ctx.StringLiteral())
        elif ctx.LEFT_PAREN():
            return self.visitExpression(ctx.expression())
        else:
            raise SemanticError("Unknown primary expression")

    def visitConstant(self, ctx):
        """Handle constants"""
        val = ctx.getText()
        try:
            return ir.Constant(int32, int(val))
        except ValueError:
            try:
                return ir.Constant(double, float(val))
            except ValueError:
                raise SemanticError(f"Invalid constant: {val}")

    def visitStringLiteral(self, ctx):
        string_text = ctx.getText()[1:-1]  # Remove quotes
        string_value = bytes(string_text, "utf-8").decode("unicode_escape")

        str_len = len(string_value) + 1  # Include null terminator
        str_type = ir.ArrayType(int8, str_len)
        str_const = ir.Constant(str_type, bytearray(string_value + '\0', 'utf-8'))

        name = f".str.{self.Constants}" if self.Constants else ".str"
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
        return vals[-1] if vals else None

    def visitStatement(self, ctx: CParser.StatementContext):
        child = ctx.getChild(0)
        if isinstance(child, CParser.SelectionStatementContext):
            return self.visitSelectionStatement(child)
        elif isinstance(child, CParser.ExpressionStatementContext):
            return self.visitExpressionStatement(child)
        elif isinstance(child, CParser.JumpStatementContext):
            return self.visitJumpStatement(child)
        elif isinstance(child, CParser.CompoundStatementContext):
            return self.visitCompoundStatement(child)
        elif isinstance(child, CParser.IterationStatementContext):
            return self.visitIterationStatement(child)
        # Handle other statement types...

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
        cond_val = self.castToBoolForCondition(cond_val)

        then_bb = builder.function.append_basic_block('if_then')
        else_bb = builder.function.append_basic_block('if_else') if ctx.ELSE() else None
        end_bb = builder.function.append_basic_block('if_end')

        if else_bb:
            builder.cbranch(cond_val, then_bb, else_bb)
        else:
            builder.cbranch(cond_val, then_bb, end_bb)

        # Then block
        builder.position_at_end(then_bb)
        self.visitStatement(ctx.statement(0))
        if not builder.block.is_terminated:
            builder.branch(end_bb)

        # Else block
        if else_bb:
            builder.position_at_end(else_bb)
            self.visitStatement(ctx.statement(1))
            if not builder.block.is_terminated:
                builder.branch(end_bb)

        # End block
        builder.position_at_end(end_bb)
        return

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

            # Jump to condition block
            builder.branch(cond_bb)
            builder.position_at_end(cond_bb)

            # Evaluate condition
            cond_val = self.visitExpression(ctx.expression())
            cond_val = self.castToBoolForCondition(cond_val)
            builder.cbranch(cond_val, body_bb, end_bb)

            # Push loop info
            self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

            # Loop body
            builder.position_at_end(body_bb)
            self.SymbolTable.enter_scope()
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()

            if not builder.block.is_terminated:
                builder.branch(cond_bb)

            # Pop loop info
            self.loop_stack.pop()

            # End block
            builder.position_at_end(end_bb)

        elif ctx.DO():
            # do stmt while(expr);
            body_bb = func.append_basic_block('do_body')
            cond_bb = func.append_basic_block('do_cond')
            end_bb = func.append_basic_block('do_end')

            # Jump to body block
            builder.branch(body_bb)
            builder.position_at_end(body_bb)

            # Push loop info
            self.loop_stack.append({'break': end_bb, 'continue': cond_bb})

            # Loop body
            self.SymbolTable.enter_scope()
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()

            if not builder.block.is_terminated:
                builder.branch(cond_bb)

            # Condition check
            builder.position_at_end(cond_bb)
            cond_val = self.visitExpression(ctx.expression())
            cond_val = self.castToBoolForCondition(cond_val)
            builder.cbranch(cond_val, body_bb, end_bb)

            # Pop loop info
            self.loop_stack.pop()

            # End block
            builder.position_at_end(end_bb)

        elif ctx.FOR():
            for_cond = ctx.forCondition()

            # Create basic blocks
            init_bb = func.append_basic_block('for_init')
            cond_bb = func.append_basic_block('for_cond')
            body_bb = func.append_basic_block('for_body')
            inc_bb = func.append_basic_block('for_inc')
            end_bb = func.append_basic_block('for_end')

            # Initialization
            builder.branch(init_bb)
            builder.position_at_end(init_bb)

            self.SymbolTable.enter_scope()
            if for_cond.forDeclaration():
                self.visitForDeclaration(for_cond.forDeclaration())
            elif for_cond.expression(0):
                self.visitExpression(for_cond.expression(0))

            builder.branch(cond_bb)
            builder.position_at_end(cond_bb)

            # Condition
            cond_expr = None
            inc_expr = None
            exprs = for_cond.expression()
            if len(exprs) == 2:
                cond_expr = exprs[0]
                inc_expr = exprs[1]
            elif len(exprs) == 1:
                if for_cond.getChild(2).getText() == ';':
                    cond_expr = exprs[0]
                else:
                    inc_expr = exprs[0]

            if cond_expr:
                cond_val = self.visitExpression(cond_expr)
                cond_val = self.castToBoolForCondition(cond_val)
                builder.cbranch(cond_val, body_bb, end_bb)
            else:
                builder.branch(body_bb)

            # Push loop info
            self.loop_stack.append({'break': end_bb, 'continue': inc_bb})

            # Loop body
            builder.position_at_end(body_bb)
            self.SymbolTable.enter_scope()
            self.visitStatement(ctx.statement())
            self.SymbolTable.exit_scope()

            if not builder.block.is_terminated:
                builder.branch(inc_bb)

            # Increment
            builder.position_at_end(inc_bb)
            if inc_expr:
                self.visitExpression(inc_expr)
            builder.branch(cond_bb)

            # Pop loop info
            self.loop_stack.pop()
            self.SymbolTable.exit_scope()

            # End block
            builder.position_at_end(end_bb)

        return

    def visitForDeclaration(self, ctx: CParser.ForDeclarationContext):
        """Handle the declaration part of a for loop"""
        if not ctx:
            return

        base_type = self.getTypeFromDeclarationSpecifiers(ctx.declarationSpecifiers())

        if ctx.initDeclaratorList():
            for init_d in ctx.initDeclaratorList().initDeclarator():
                name = self.getIdentifierFromDeclarator(init_d.declarator())
                if name:
                    var_type = self.getTypeFromDeclarator(init_d.declarator(), base_type)
                    builder = self.Builders[-1]
                    var_alloca = builder.alloca(var_type, name=name)
                    self.SymbolTable.add_item(name, var_alloca)

                    if init_d.initializer():
                        init_val = self.visitInitializer(init_d.initializer())
                        if init_val.type != var_alloca.type.pointee:
                            if isinstance(init_val.type, ir.IntType) and isinstance(var_alloca.type.pointee, ir.IntType):
                                if init_val.type.width < var_alloca.type.pointee.width:
                                    init_val = builder.sext(init_val, var_alloca.type.pointee)
                                elif init_val.type.width > var_alloca.type.pointee.width:
                                    init_val = builder.trunc(init_val, var_alloca.type.pointee)
                            else:
                                pass
                        builder.store(init_val, var_alloca)
        return

    def visitJumpStatement(self, ctx: CParser.JumpStatementContext):
        """
        jumpStatement
            : (CONTINUE | BREAK | RETURN expression? | GOTO Identifier) SEMI
        """
        builder = self.Builders[-1]

        if ctx.RETURN():
            if ctx.expression():
                return_value = self.visitExpression(ctx.expression())
                builder.ret(return_value)
            else:
                builder.ret_void()
        elif ctx.CONTINUE():
            if not self.loop_stack:
                raise SemanticError("Continue statement not within a loop")
            loop_continue_bb = self.loop_stack[-1]['continue']
            builder.branch(loop_continue_bb)
        elif ctx.BREAK():
            if not self.loop_stack:
                raise SemanticError("Break statement not within a loop")
            loop_break_bb = self.loop_stack[-1]['break']
            builder.branch(loop_break_bb)
        elif ctx.GOTO():
            # Handle goto if necessary
            pass
        return

    def castToBoolForCondition(self, val):
        """
        Convert any integer type to i1 for condition checking.
        """
        builder = self.Builders[-1]
        if isinstance(val.type, ir.IntType) and val.type.width == 1:
            return val
        zero = ir.Constant(val.type, 0)
        cmp = builder.icmp_signed('!=', val, zero)
        return cmp  # Returns i1 type

    def getTypeFromDeclarationSpecifiers(self, ctx):
        if ctx is None:
            return int32  # Default to int32 if no specifiers
        types = []
        for specifier in ctx.declarationSpecifier():
            if specifier.typeSpecifier():
                types.append(specifier.typeSpecifier().getText())
        if 'void' in types:
            return void
        elif 'int' in types:
            return int32
        elif 'char' in types:
            return int8
        elif 'double' in types:
            return double
        else:
            return int32  # Default

    def getFunctionInfoFromDeclarator(self, ctx, ret_type):
        """Extract function name, type, and argument names from declarator"""
        direct_decl = ctx.directDeclarator()
        if not direct_decl:
            return None, None, []

        # Get function name
        func_name = self._get_function_name(direct_decl)
        if not func_name:
            return None, None, []

        # Get parameter list
        arg_types = []
        arg_names = []

        param_list = self._find_parameter_list(direct_decl)
        if param_list:
            for param_decl in param_list.parameterDeclaration():
                param_base_type = self.getTypeFromDeclarationSpecifiers(param_decl.declarationSpecifiers())
                param_declarator = param_decl.declarator()
                param_type = self.getTypeFromDeclarator(param_declarator, param_base_type)
                param_name = self.getIdentifierFromDeclarator(param_declarator)
                arg_types.append(param_type)
                arg_names.append(param_name)
        # Create function type
        func_type = ir.FunctionType(ret_type, arg_types)
        return func_name, func_type, arg_names

    def _get_function_name(self, direct_decl):
        """Recursively get the function name from directDeclarator"""
        if direct_decl.Identifier():
            return direct_decl.Identifier().getText()
        elif direct_decl.directDeclarator():
            return self._get_function_name(direct_decl.directDeclarator())
        else:
            return None

    def _find_parameter_list(self, direct_decl):
        """Recursively find the parameter list in directDeclarator"""
        if direct_decl.parameterTypeList():
            return direct_decl.parameterTypeList().parameterList()
        elif direct_decl.directDeclarator():
            return self._find_parameter_list(direct_decl.directDeclarator())
        else:
            return None

    def getIdentifierFromDeclarator(self, declarator):
        # Simplify: directly get Identifier from directDeclarator
        d = declarator.directDeclarator()
        return self.getIdentifierFromDirectDeclarator(d)

    def getIdentifierFromDirectDeclarator(self, dctx):
        if dctx.Identifier():
            return dctx.Identifier().getText()
        else:
            for c in dctx.getChildren():
                if isinstance(c, CParser.DirectDeclaratorContext):
                    return self.getIdentifierFromDirectDeclarator(c)
        return None

    def getTypeFromDeclarator(self, declarator_ctx, base_type):
        """
        Parse declarator to determine pointer levels and return the LLVM type.
        """
        type_ = base_type
        pointer_ctx = declarator_ctx.pointer()
        while pointer_ctx:
            type_ = ir.PointerType(type_)
            pointer_ctx = pointer_ctx.pointer()
        return type_

    def getPointer(self, val):
        """
        Return the address (pointer) of a variable.
        """
        return val
