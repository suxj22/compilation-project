# Generated from simpleCGrammar.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .simpleCGrammarParser import simpleCGrammarParser
else:
    from simpleCGrammarParser import simpleCGrammarParser

# This class defines a complete listener for a parse tree produced by simpleCGrammarParser.
class simpleCGrammarListener(ParseTreeListener):

    # Enter a parse tree produced by simpleCGrammarParser#prog.
    def enterProg(self, ctx:simpleCGrammarParser.ProgContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#prog.
    def exitProg(self, ctx:simpleCGrammarParser.ProgContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#include.
    def enterInclude(self, ctx:simpleCGrammarParser.IncludeContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#include.
    def exitInclude(self, ctx:simpleCGrammarParser.IncludeContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#structDef.
    def enterStructDef(self, ctx:simpleCGrammarParser.StructDefContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#structDef.
    def exitStructDef(self, ctx:simpleCGrammarParser.StructDefContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#structMember.
    def enterStructMember(self, ctx:simpleCGrammarParser.StructMemberContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#structMember.
    def exitStructMember(self, ctx:simpleCGrammarParser.StructMemberContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#mStruct.
    def enterMStruct(self, ctx:simpleCGrammarParser.MStructContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#mStruct.
    def exitMStruct(self, ctx:simpleCGrammarParser.MStructContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#arrayDef.
    def enterArrayDef(self, ctx:simpleCGrammarParser.ArrayDefContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#arrayDef.
    def exitArrayDef(self, ctx:simpleCGrammarParser.ArrayDefContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#varDef.
    def enterVarDef(self, ctx:simpleCGrammarParser.VarDefContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#varDef.
    def exitVarDef(self, ctx:simpleCGrammarParser.VarDefContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#funcDef.
    def enterFuncDef(self, ctx:simpleCGrammarParser.FuncDefContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#funcDef.
    def exitFuncDef(self, ctx:simpleCGrammarParser.FuncDefContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#params.
    def enterParams(self, ctx:simpleCGrammarParser.ParamsContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#params.
    def exitParams(self, ctx:simpleCGrammarParser.ParamsContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#param.
    def enterParam(self, ctx:simpleCGrammarParser.ParamContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#param.
    def exitParam(self, ctx:simpleCGrammarParser.ParamContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#funcBody.
    def enterFuncBody(self, ctx:simpleCGrammarParser.FuncBodyContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#funcBody.
    def exitFuncBody(self, ctx:simpleCGrammarParser.FuncBodyContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#statement.
    def enterStatement(self, ctx:simpleCGrammarParser.StatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#statement.
    def exitStatement(self, ctx:simpleCGrammarParser.StatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#exprStatement.
    def enterExprStatement(self, ctx:simpleCGrammarParser.ExprStatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#exprStatement.
    def exitExprStatement(self, ctx:simpleCGrammarParser.ExprStatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#compoundStatement.
    def enterCompoundStatement(self, ctx:simpleCGrammarParser.CompoundStatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#compoundStatement.
    def exitCompoundStatement(self, ctx:simpleCGrammarParser.CompoundStatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#selectionStatement.
    def enterSelectionStatement(self, ctx:simpleCGrammarParser.SelectionStatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#selectionStatement.
    def exitSelectionStatement(self, ctx:simpleCGrammarParser.SelectionStatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#iterationStatement.
    def enterIterationStatement(self, ctx:simpleCGrammarParser.IterationStatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#iterationStatement.
    def exitIterationStatement(self, ctx:simpleCGrammarParser.IterationStatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#returnStatement.
    def enterReturnStatement(self, ctx:simpleCGrammarParser.ReturnStatementContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#returnStatement.
    def exitReturnStatement(self, ctx:simpleCGrammarParser.ReturnStatementContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#expr.
    def enterExpr(self, ctx:simpleCGrammarParser.ExprContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#expr.
    def exitExpr(self, ctx:simpleCGrammarParser.ExprContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#primaryExpr.
    def enterPrimaryExpr(self, ctx:simpleCGrammarParser.PrimaryExprContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#primaryExpr.
    def exitPrimaryExpr(self, ctx:simpleCGrammarParser.PrimaryExprContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#mType.
    def enterMType(self, ctx:simpleCGrammarParser.MTypeContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#mType.
    def exitMType(self, ctx:simpleCGrammarParser.MTypeContext):
        pass


    # Enter a parse tree produced by simpleCGrammarParser#mArray.
    def enterMArray(self, ctx:simpleCGrammarParser.MArrayContext):
        pass

    # Exit a parse tree produced by simpleCGrammarParser#mArray.
    def exitMArray(self, ctx:simpleCGrammarParser.MArrayContext):
        pass



del simpleCGrammarParser