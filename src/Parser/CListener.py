# Generated from C.g4 by ANTLR 4.10
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .CParser import CParser
else:
    from CParser import CParser

# This class defines a complete listener for a parse tree produced by CParser.
class CListener(ParseTreeListener):

    # Enter a parse tree produced by CParser#compilationUnit.
    def enterCompilationUnit(self, ctx:CParser.CompilationUnitContext):
        pass

    # Exit a parse tree produced by CParser#compilationUnit.
    def exitCompilationUnit(self, ctx:CParser.CompilationUnitContext):
        pass


    # Enter a parse tree produced by CParser#functionDefinition.
    def enterFunctionDefinition(self, ctx:CParser.FunctionDefinitionContext):
        pass

    # Exit a parse tree produced by CParser#functionDefinition.
    def exitFunctionDefinition(self, ctx:CParser.FunctionDefinitionContext):
        pass


    # Enter a parse tree produced by CParser#declaration.
    def enterDeclaration(self, ctx:CParser.DeclarationContext):
        pass

    # Exit a parse tree produced by CParser#declaration.
    def exitDeclaration(self, ctx:CParser.DeclarationContext):
        pass


    # Enter a parse tree produced by CParser#declarationSpecifiers.
    def enterDeclarationSpecifiers(self, ctx:CParser.DeclarationSpecifiersContext):
        pass

    # Exit a parse tree produced by CParser#declarationSpecifiers.
    def exitDeclarationSpecifiers(self, ctx:CParser.DeclarationSpecifiersContext):
        pass


    # Enter a parse tree produced by CParser#typeSpecifier.
    def enterTypeSpecifier(self, ctx:CParser.TypeSpecifierContext):
        pass

    # Exit a parse tree produced by CParser#typeSpecifier.
    def exitTypeSpecifier(self, ctx:CParser.TypeSpecifierContext):
        pass


    # Enter a parse tree produced by CParser#structSpecifier.
    def enterStructSpecifier(self, ctx:CParser.StructSpecifierContext):
        pass

    # Exit a parse tree produced by CParser#structSpecifier.
    def exitStructSpecifier(self, ctx:CParser.StructSpecifierContext):
        pass


    # Enter a parse tree produced by CParser#structDeclarationList.
    def enterStructDeclarationList(self, ctx:CParser.StructDeclarationListContext):
        pass

    # Exit a parse tree produced by CParser#structDeclarationList.
    def exitStructDeclarationList(self, ctx:CParser.StructDeclarationListContext):
        pass


    # Enter a parse tree produced by CParser#structDeclaration.
    def enterStructDeclaration(self, ctx:CParser.StructDeclarationContext):
        pass

    # Exit a parse tree produced by CParser#structDeclaration.
    def exitStructDeclaration(self, ctx:CParser.StructDeclarationContext):
        pass


    # Enter a parse tree produced by CParser#storageClassSpecifier.
    def enterStorageClassSpecifier(self, ctx:CParser.StorageClassSpecifierContext):
        pass

    # Exit a parse tree produced by CParser#storageClassSpecifier.
    def exitStorageClassSpecifier(self, ctx:CParser.StorageClassSpecifierContext):
        pass


    # Enter a parse tree produced by CParser#initDeclaratorList.
    def enterInitDeclaratorList(self, ctx:CParser.InitDeclaratorListContext):
        pass

    # Exit a parse tree produced by CParser#initDeclaratorList.
    def exitInitDeclaratorList(self, ctx:CParser.InitDeclaratorListContext):
        pass


    # Enter a parse tree produced by CParser#initDeclarator.
    def enterInitDeclarator(self, ctx:CParser.InitDeclaratorContext):
        pass

    # Exit a parse tree produced by CParser#initDeclarator.
    def exitInitDeclarator(self, ctx:CParser.InitDeclaratorContext):
        pass


    # Enter a parse tree produced by CParser#declarator.
    def enterDeclarator(self, ctx:CParser.DeclaratorContext):
        pass

    # Exit a parse tree produced by CParser#declarator.
    def exitDeclarator(self, ctx:CParser.DeclaratorContext):
        pass


    # Enter a parse tree produced by CParser#directDeclarator.
    def enterDirectDeclarator(self, ctx:CParser.DirectDeclaratorContext):
        pass

    # Exit a parse tree produced by CParser#directDeclarator.
    def exitDirectDeclarator(self, ctx:CParser.DirectDeclaratorContext):
        pass


    # Enter a parse tree produced by CParser#pointer.
    def enterPointer(self, ctx:CParser.PointerContext):
        pass

    # Exit a parse tree produced by CParser#pointer.
    def exitPointer(self, ctx:CParser.PointerContext):
        pass


    # Enter a parse tree produced by CParser#typeQualifierList.
    def enterTypeQualifierList(self, ctx:CParser.TypeQualifierListContext):
        pass

    # Exit a parse tree produced by CParser#typeQualifierList.
    def exitTypeQualifierList(self, ctx:CParser.TypeQualifierListContext):
        pass


    # Enter a parse tree produced by CParser#typeQualifier.
    def enterTypeQualifier(self, ctx:CParser.TypeQualifierContext):
        pass

    # Exit a parse tree produced by CParser#typeQualifier.
    def exitTypeQualifier(self, ctx:CParser.TypeQualifierContext):
        pass


    # Enter a parse tree produced by CParser#parameterTypeList.
    def enterParameterTypeList(self, ctx:CParser.ParameterTypeListContext):
        pass

    # Exit a parse tree produced by CParser#parameterTypeList.
    def exitParameterTypeList(self, ctx:CParser.ParameterTypeListContext):
        pass


    # Enter a parse tree produced by CParser#parameterList.
    def enterParameterList(self, ctx:CParser.ParameterListContext):
        pass

    # Exit a parse tree produced by CParser#parameterList.
    def exitParameterList(self, ctx:CParser.ParameterListContext):
        pass


    # Enter a parse tree produced by CParser#parameterDeclaration.
    def enterParameterDeclaration(self, ctx:CParser.ParameterDeclarationContext):
        pass

    # Exit a parse tree produced by CParser#parameterDeclaration.
    def exitParameterDeclaration(self, ctx:CParser.ParameterDeclarationContext):
        pass


    # Enter a parse tree produced by CParser#initializer.
    def enterInitializer(self, ctx:CParser.InitializerContext):
        pass

    # Exit a parse tree produced by CParser#initializer.
    def exitInitializer(self, ctx:CParser.InitializerContext):
        pass


    # Enter a parse tree produced by CParser#initializerList.
    def enterInitializerList(self, ctx:CParser.InitializerListContext):
        pass

    # Exit a parse tree produced by CParser#initializerList.
    def exitInitializerList(self, ctx:CParser.InitializerListContext):
        pass


    # Enter a parse tree produced by CParser#expression.
    def enterExpression(self, ctx:CParser.ExpressionContext):
        pass

    # Exit a parse tree produced by CParser#expression.
    def exitExpression(self, ctx:CParser.ExpressionContext):
        pass


    # Enter a parse tree produced by CParser#assignmentExpression.
    def enterAssignmentExpression(self, ctx:CParser.AssignmentExpressionContext):
        pass

    # Exit a parse tree produced by CParser#assignmentExpression.
    def exitAssignmentExpression(self, ctx:CParser.AssignmentExpressionContext):
        pass


    # Enter a parse tree produced by CParser#conditionalExpression.
    def enterConditionalExpression(self, ctx:CParser.ConditionalExpressionContext):
        pass

    # Exit a parse tree produced by CParser#conditionalExpression.
    def exitConditionalExpression(self, ctx:CParser.ConditionalExpressionContext):
        pass


    # Enter a parse tree produced by CParser#logicalOrExpression.
    def enterLogicalOrExpression(self, ctx:CParser.LogicalOrExpressionContext):
        pass

    # Exit a parse tree produced by CParser#logicalOrExpression.
    def exitLogicalOrExpression(self, ctx:CParser.LogicalOrExpressionContext):
        pass


    # Enter a parse tree produced by CParser#logicalAndExpression.
    def enterLogicalAndExpression(self, ctx:CParser.LogicalAndExpressionContext):
        pass

    # Exit a parse tree produced by CParser#logicalAndExpression.
    def exitLogicalAndExpression(self, ctx:CParser.LogicalAndExpressionContext):
        pass


    # Enter a parse tree produced by CParser#inclusiveOrExpression.
    def enterInclusiveOrExpression(self, ctx:CParser.InclusiveOrExpressionContext):
        pass

    # Exit a parse tree produced by CParser#inclusiveOrExpression.
    def exitInclusiveOrExpression(self, ctx:CParser.InclusiveOrExpressionContext):
        pass


    # Enter a parse tree produced by CParser#exclusiveOrExpression.
    def enterExclusiveOrExpression(self, ctx:CParser.ExclusiveOrExpressionContext):
        pass

    # Exit a parse tree produced by CParser#exclusiveOrExpression.
    def exitExclusiveOrExpression(self, ctx:CParser.ExclusiveOrExpressionContext):
        pass


    # Enter a parse tree produced by CParser#andExpression.
    def enterAndExpression(self, ctx:CParser.AndExpressionContext):
        pass

    # Exit a parse tree produced by CParser#andExpression.
    def exitAndExpression(self, ctx:CParser.AndExpressionContext):
        pass


    # Enter a parse tree produced by CParser#equalityExpression.
    def enterEqualityExpression(self, ctx:CParser.EqualityExpressionContext):
        pass

    # Exit a parse tree produced by CParser#equalityExpression.
    def exitEqualityExpression(self, ctx:CParser.EqualityExpressionContext):
        pass


    # Enter a parse tree produced by CParser#relationalExpression.
    def enterRelationalExpression(self, ctx:CParser.RelationalExpressionContext):
        pass

    # Exit a parse tree produced by CParser#relationalExpression.
    def exitRelationalExpression(self, ctx:CParser.RelationalExpressionContext):
        pass


    # Enter a parse tree produced by CParser#shiftExpression.
    def enterShiftExpression(self, ctx:CParser.ShiftExpressionContext):
        pass

    # Exit a parse tree produced by CParser#shiftExpression.
    def exitShiftExpression(self, ctx:CParser.ShiftExpressionContext):
        pass


    # Enter a parse tree produced by CParser#additiveExpression.
    def enterAdditiveExpression(self, ctx:CParser.AdditiveExpressionContext):
        pass

    # Exit a parse tree produced by CParser#additiveExpression.
    def exitAdditiveExpression(self, ctx:CParser.AdditiveExpressionContext):
        pass


    # Enter a parse tree produced by CParser#multiplicativeExpression.
    def enterMultiplicativeExpression(self, ctx:CParser.MultiplicativeExpressionContext):
        pass

    # Exit a parse tree produced by CParser#multiplicativeExpression.
    def exitMultiplicativeExpression(self, ctx:CParser.MultiplicativeExpressionContext):
        pass


    # Enter a parse tree produced by CParser#castExpression.
    def enterCastExpression(self, ctx:CParser.CastExpressionContext):
        pass

    # Exit a parse tree produced by CParser#castExpression.
    def exitCastExpression(self, ctx:CParser.CastExpressionContext):
        pass


    # Enter a parse tree produced by CParser#unaryExpression.
    def enterUnaryExpression(self, ctx:CParser.UnaryExpressionContext):
        pass

    # Exit a parse tree produced by CParser#unaryExpression.
    def exitUnaryExpression(self, ctx:CParser.UnaryExpressionContext):
        pass


    # Enter a parse tree produced by CParser#postfixExpression.
    def enterPostfixExpression(self, ctx:CParser.PostfixExpressionContext):
        pass

    # Exit a parse tree produced by CParser#postfixExpression.
    def exitPostfixExpression(self, ctx:CParser.PostfixExpressionContext):
        pass


    # Enter a parse tree produced by CParser#primaryExpression.
    def enterPrimaryExpression(self, ctx:CParser.PrimaryExpressionContext):
        pass

    # Exit a parse tree produced by CParser#primaryExpression.
    def exitPrimaryExpression(self, ctx:CParser.PrimaryExpressionContext):
        pass


    # Enter a parse tree produced by CParser#argumentExpressionList.
    def enterArgumentExpressionList(self, ctx:CParser.ArgumentExpressionListContext):
        pass

    # Exit a parse tree produced by CParser#argumentExpressionList.
    def exitArgumentExpressionList(self, ctx:CParser.ArgumentExpressionListContext):
        pass


    # Enter a parse tree produced by CParser#constantExpression.
    def enterConstantExpression(self, ctx:CParser.ConstantExpressionContext):
        pass

    # Exit a parse tree produced by CParser#constantExpression.
    def exitConstantExpression(self, ctx:CParser.ConstantExpressionContext):
        pass


    # Enter a parse tree produced by CParser#statement.
    def enterStatement(self, ctx:CParser.StatementContext):
        pass

    # Exit a parse tree produced by CParser#statement.
    def exitStatement(self, ctx:CParser.StatementContext):
        pass


    # Enter a parse tree produced by CParser#labeledStatement.
    def enterLabeledStatement(self, ctx:CParser.LabeledStatementContext):
        pass

    # Exit a parse tree produced by CParser#labeledStatement.
    def exitLabeledStatement(self, ctx:CParser.LabeledStatementContext):
        pass


    # Enter a parse tree produced by CParser#compoundStatement.
    def enterCompoundStatement(self, ctx:CParser.CompoundStatementContext):
        pass

    # Exit a parse tree produced by CParser#compoundStatement.
    def exitCompoundStatement(self, ctx:CParser.CompoundStatementContext):
        pass


    # Enter a parse tree produced by CParser#expressionStatement.
    def enterExpressionStatement(self, ctx:CParser.ExpressionStatementContext):
        pass

    # Exit a parse tree produced by CParser#expressionStatement.
    def exitExpressionStatement(self, ctx:CParser.ExpressionStatementContext):
        pass


    # Enter a parse tree produced by CParser#selectionStatement.
    def enterSelectionStatement(self, ctx:CParser.SelectionStatementContext):
        pass

    # Exit a parse tree produced by CParser#selectionStatement.
    def exitSelectionStatement(self, ctx:CParser.SelectionStatementContext):
        pass


    # Enter a parse tree produced by CParser#iterationStatement.
    def enterIterationStatement(self, ctx:CParser.IterationStatementContext):
        pass

    # Exit a parse tree produced by CParser#iterationStatement.
    def exitIterationStatement(self, ctx:CParser.IterationStatementContext):
        pass


    # Enter a parse tree produced by CParser#forCondition.
    def enterForCondition(self, ctx:CParser.ForConditionContext):
        pass

    # Exit a parse tree produced by CParser#forCondition.
    def exitForCondition(self, ctx:CParser.ForConditionContext):
        pass


    # Enter a parse tree produced by CParser#forExpression.
    def enterForExpression(self, ctx:CParser.ForExpressionContext):
        pass

    # Exit a parse tree produced by CParser#forExpression.
    def exitForExpression(self, ctx:CParser.ForExpressionContext):
        pass


    # Enter a parse tree produced by CParser#forDeclaration.
    def enterForDeclaration(self, ctx:CParser.ForDeclarationContext):
        pass

    # Exit a parse tree produced by CParser#forDeclaration.
    def exitForDeclaration(self, ctx:CParser.ForDeclarationContext):
        pass


    # Enter a parse tree produced by CParser#jumpStatement.
    def enterJumpStatement(self, ctx:CParser.JumpStatementContext):
        pass

    # Exit a parse tree produced by CParser#jumpStatement.
    def exitJumpStatement(self, ctx:CParser.JumpStatementContext):
        pass


    # Enter a parse tree produced by CParser#assignmentOperator.
    def enterAssignmentOperator(self, ctx:CParser.AssignmentOperatorContext):
        pass

    # Exit a parse tree produced by CParser#assignmentOperator.
    def exitAssignmentOperator(self, ctx:CParser.AssignmentOperatorContext):
        pass


    # Enter a parse tree produced by CParser#typeName.
    def enterTypeName(self, ctx:CParser.TypeNameContext):
        pass

    # Exit a parse tree produced by CParser#typeName.
    def exitTypeName(self, ctx:CParser.TypeNameContext):
        pass



del CParser