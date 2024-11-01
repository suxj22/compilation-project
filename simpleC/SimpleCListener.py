# Generated from SimpleC.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .SimpleCParser import SimpleCParser
else:
    from SimpleCParser import SimpleCParser

# This class defines a complete listener for a parse tree produced by SimpleCParser.
class SimpleCListener(ParseTreeListener):

    # Enter a parse tree produced by SimpleCParser#prog.
    def enterProg(self, ctx:SimpleCParser.ProgContext):
        pass

    # Exit a parse tree produced by SimpleCParser#prog.
    def exitProg(self, ctx:SimpleCParser.ProgContext):
        pass


    # Enter a parse tree produced by SimpleCParser#includes.
    def enterIncludes(self, ctx:SimpleCParser.IncludesContext):
        pass

    # Exit a parse tree produced by SimpleCParser#includes.
    def exitIncludes(self, ctx:SimpleCParser.IncludesContext):
        pass


    # Enter a parse tree produced by SimpleCParser#include.
    def enterInclude(self, ctx:SimpleCParser.IncludeContext):
        pass

    # Exit a parse tree produced by SimpleCParser#include.
    def exitInclude(self, ctx:SimpleCParser.IncludeContext):
        pass


    # Enter a parse tree produced by SimpleCParser#declarations.
    def enterDeclarations(self, ctx:SimpleCParser.DeclarationsContext):
        pass

    # Exit a parse tree produced by SimpleCParser#declarations.
    def exitDeclarations(self, ctx:SimpleCParser.DeclarationsContext):
        pass


    # Enter a parse tree produced by SimpleCParser#declaration.
    def enterDeclaration(self, ctx:SimpleCParser.DeclarationContext):
        pass

    # Exit a parse tree produced by SimpleCParser#declaration.
    def exitDeclaration(self, ctx:SimpleCParser.DeclarationContext):
        pass


    # Enter a parse tree produced by SimpleCParser#variableDeclaration.
    def enterVariableDeclaration(self, ctx:SimpleCParser.VariableDeclarationContext):
        pass

    # Exit a parse tree produced by SimpleCParser#variableDeclaration.
    def exitVariableDeclaration(self, ctx:SimpleCParser.VariableDeclarationContext):
        pass


    # Enter a parse tree produced by SimpleCParser#arrayDeclaration.
    def enterArrayDeclaration(self, ctx:SimpleCParser.ArrayDeclarationContext):
        pass

    # Exit a parse tree produced by SimpleCParser#arrayDeclaration.
    def exitArrayDeclaration(self, ctx:SimpleCParser.ArrayDeclarationContext):
        pass


    # Enter a parse tree produced by SimpleCParser#functions.
    def enterFunctions(self, ctx:SimpleCParser.FunctionsContext):
        pass

    # Exit a parse tree produced by SimpleCParser#functions.
    def exitFunctions(self, ctx:SimpleCParser.FunctionsContext):
        pass


    # Enter a parse tree produced by SimpleCParser#function.
    def enterFunction(self, ctx:SimpleCParser.FunctionContext):
        pass

    # Exit a parse tree produced by SimpleCParser#function.
    def exitFunction(self, ctx:SimpleCParser.FunctionContext):
        pass


    # Enter a parse tree produced by SimpleCParser#functype.
    def enterFunctype(self, ctx:SimpleCParser.FunctypeContext):
        pass

    # Exit a parse tree produced by SimpleCParser#functype.
    def exitFunctype(self, ctx:SimpleCParser.FunctypeContext):
        pass


    # Enter a parse tree produced by SimpleCParser#parameters.
    def enterParameters(self, ctx:SimpleCParser.ParametersContext):
        pass

    # Exit a parse tree produced by SimpleCParser#parameters.
    def exitParameters(self, ctx:SimpleCParser.ParametersContext):
        pass


    # Enter a parse tree produced by SimpleCParser#parameter.
    def enterParameter(self, ctx:SimpleCParser.ParameterContext):
        pass

    # Exit a parse tree produced by SimpleCParser#parameter.
    def exitParameter(self, ctx:SimpleCParser.ParameterContext):
        pass


    # Enter a parse tree produced by SimpleCParser#funcBody.
    def enterFuncBody(self, ctx:SimpleCParser.FuncBodyContext):
        pass

    # Exit a parse tree produced by SimpleCParser#funcBody.
    def exitFuncBody(self, ctx:SimpleCParser.FuncBodyContext):
        pass


    # Enter a parse tree produced by SimpleCParser#body.
    def enterBody(self, ctx:SimpleCParser.BodyContext):
        pass

    # Exit a parse tree produced by SimpleCParser#body.
    def exitBody(self, ctx:SimpleCParser.BodyContext):
        pass


    # Enter a parse tree produced by SimpleCParser#block.
    def enterBlock(self, ctx:SimpleCParser.BlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#block.
    def exitBlock(self, ctx:SimpleCParser.BlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#assignBlock.
    def enterAssignBlock(self, ctx:SimpleCParser.AssignBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#assignBlock.
    def exitAssignBlock(self, ctx:SimpleCParser.AssignBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#arrayItem.
    def enterArrayItem(self, ctx:SimpleCParser.ArrayItemContext):
        pass

    # Exit a parse tree produced by SimpleCParser#arrayItem.
    def exitArrayItem(self, ctx:SimpleCParser.ArrayItemContext):
        pass


    # Enter a parse tree produced by SimpleCParser#ifBlocks.
    def enterIfBlocks(self, ctx:SimpleCParser.IfBlocksContext):
        pass

    # Exit a parse tree produced by SimpleCParser#ifBlocks.
    def exitIfBlocks(self, ctx:SimpleCParser.IfBlocksContext):
        pass


    # Enter a parse tree produced by SimpleCParser#ifBlock.
    def enterIfBlock(self, ctx:SimpleCParser.IfBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#ifBlock.
    def exitIfBlock(self, ctx:SimpleCParser.IfBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#elseIfBlock.
    def enterElseIfBlock(self, ctx:SimpleCParser.ElseIfBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#elseIfBlock.
    def exitElseIfBlock(self, ctx:SimpleCParser.ElseIfBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#elseBlock.
    def enterElseBlock(self, ctx:SimpleCParser.ElseBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#elseBlock.
    def exitElseBlock(self, ctx:SimpleCParser.ElseBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#whileBlock.
    def enterWhileBlock(self, ctx:SimpleCParser.WhileBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#whileBlock.
    def exitWhileBlock(self, ctx:SimpleCParser.WhileBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#forBlock.
    def enterForBlock(self, ctx:SimpleCParser.ForBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#forBlock.
    def exitForBlock(self, ctx:SimpleCParser.ForBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#forInit.
    def enterForInit(self, ctx:SimpleCParser.ForInitContext):
        pass

    # Exit a parse tree produced by SimpleCParser#forInit.
    def exitForInit(self, ctx:SimpleCParser.ForInitContext):
        pass


    # Enter a parse tree produced by SimpleCParser#forUpdate.
    def enterForUpdate(self, ctx:SimpleCParser.ForUpdateContext):
        pass

    # Exit a parse tree produced by SimpleCParser#forUpdate.
    def exitForUpdate(self, ctx:SimpleCParser.ForUpdateContext):
        pass


    # Enter a parse tree produced by SimpleCParser#returnBlock.
    def enterReturnBlock(self, ctx:SimpleCParser.ReturnBlockContext):
        pass

    # Exit a parse tree produced by SimpleCParser#returnBlock.
    def exitReturnBlock(self, ctx:SimpleCParser.ReturnBlockContext):
        pass


    # Enter a parse tree produced by SimpleCParser#condition.
    def enterCondition(self, ctx:SimpleCParser.ConditionContext):
        pass

    # Exit a parse tree produced by SimpleCParser#condition.
    def exitCondition(self, ctx:SimpleCParser.ConditionContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprint.
    def enterExprint(self, ctx:SimpleCParser.ExprintContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprint.
    def exitExprint(self, ctx:SimpleCParser.ExprintContext):
        pass


    # Enter a parse tree produced by SimpleCParser#parens.
    def enterParens(self, ctx:SimpleCParser.ParensContext):
        pass

    # Exit a parse tree produced by SimpleCParser#parens.
    def exitParens(self, ctx:SimpleCParser.ParensContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprarrayitem.
    def enterExprarrayitem(self, ctx:SimpleCParser.ExprarrayitemContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprarrayitem.
    def exitExprarrayitem(self, ctx:SimpleCParser.ExprarrayitemContext):
        pass


    # Enter a parse tree produced by SimpleCParser#Or.
    def enterOr(self, ctx:SimpleCParser.OrContext):
        pass

    # Exit a parse tree produced by SimpleCParser#Or.
    def exitOr(self, ctx:SimpleCParser.OrContext):
        pass


    # Enter a parse tree produced by SimpleCParser#MulDiv.
    def enterMulDiv(self, ctx:SimpleCParser.MulDivContext):
        pass

    # Exit a parse tree produced by SimpleCParser#MulDiv.
    def exitMulDiv(self, ctx:SimpleCParser.MulDivContext):
        pass


    # Enter a parse tree produced by SimpleCParser#AddSub.
    def enterAddSub(self, ctx:SimpleCParser.AddSubContext):
        pass

    # Exit a parse tree produced by SimpleCParser#AddSub.
    def exitAddSub(self, ctx:SimpleCParser.AddSubContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprdouble.
    def enterExprdouble(self, ctx:SimpleCParser.ExprdoubleContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprdouble.
    def exitExprdouble(self, ctx:SimpleCParser.ExprdoubleContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprbool.
    def enterExprbool(self, ctx:SimpleCParser.ExprboolContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprbool.
    def exitExprbool(self, ctx:SimpleCParser.ExprboolContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprstring.
    def enterExprstring(self, ctx:SimpleCParser.ExprstringContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprstring.
    def exitExprstring(self, ctx:SimpleCParser.ExprstringContext):
        pass


    # Enter a parse tree produced by SimpleCParser#Neg.
    def enterNeg(self, ctx:SimpleCParser.NegContext):
        pass

    # Exit a parse tree produced by SimpleCParser#Neg.
    def exitNeg(self, ctx:SimpleCParser.NegContext):
        pass


    # Enter a parse tree produced by SimpleCParser#Identifier.
    def enterIdentifier(self, ctx:SimpleCParser.IdentifierContext):
        pass

    # Exit a parse tree produced by SimpleCParser#Identifier.
    def exitIdentifier(self, ctx:SimpleCParser.IdentifierContext):
        pass


    # Enter a parse tree produced by SimpleCParser#Equal.
    def enterEqual(self, ctx:SimpleCParser.EqualContext):
        pass

    # Exit a parse tree produced by SimpleCParser#Equal.
    def exitEqual(self, ctx:SimpleCParser.EqualContext):
        pass


    # Enter a parse tree produced by SimpleCParser#And.
    def enterAnd(self, ctx:SimpleCParser.AndContext):
        pass

    # Exit a parse tree produced by SimpleCParser#And.
    def exitAnd(self, ctx:SimpleCParser.AndContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprfunction.
    def enterExprfunction(self, ctx:SimpleCParser.ExprfunctionContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprfunction.
    def exitExprfunction(self, ctx:SimpleCParser.ExprfunctionContext):
        pass


    # Enter a parse tree produced by SimpleCParser#Compare.
    def enterCompare(self, ctx:SimpleCParser.CompareContext):
        pass

    # Exit a parse tree produced by SimpleCParser#Compare.
    def exitCompare(self, ctx:SimpleCParser.CompareContext):
        pass


    # Enter a parse tree produced by SimpleCParser#exprchar.
    def enterExprchar(self, ctx:SimpleCParser.ExprcharContext):
        pass

    # Exit a parse tree produced by SimpleCParser#exprchar.
    def exitExprchar(self, ctx:SimpleCParser.ExprcharContext):
        pass


    # Enter a parse tree produced by SimpleCParser#func.
    def enterFunc(self, ctx:SimpleCParser.FuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#func.
    def exitFunc(self, ctx:SimpleCParser.FuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#userFunc.
    def enterUserFunc(self, ctx:SimpleCParser.UserFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#userFunc.
    def exitUserFunc(self, ctx:SimpleCParser.UserFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#arguments.
    def enterArguments(self, ctx:SimpleCParser.ArgumentsContext):
        pass

    # Exit a parse tree produced by SimpleCParser#arguments.
    def exitArguments(self, ctx:SimpleCParser.ArgumentsContext):
        pass


    # Enter a parse tree produced by SimpleCParser#argument.
    def enterArgument(self, ctx:SimpleCParser.ArgumentContext):
        pass

    # Exit a parse tree produced by SimpleCParser#argument.
    def exitArgument(self, ctx:SimpleCParser.ArgumentContext):
        pass


    # Enter a parse tree produced by SimpleCParser#standardFunc.
    def enterStandardFunc(self, ctx:SimpleCParser.StandardFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#standardFunc.
    def exitStandardFunc(self, ctx:SimpleCParser.StandardFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#strlenFunc.
    def enterStrlenFunc(self, ctx:SimpleCParser.StrlenFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#strlenFunc.
    def exitStrlenFunc(self, ctx:SimpleCParser.StrlenFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#printfFunc.
    def enterPrintfFunc(self, ctx:SimpleCParser.PrintfFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#printfFunc.
    def exitPrintfFunc(self, ctx:SimpleCParser.PrintfFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#scanfFunc.
    def enterScanfFunc(self, ctx:SimpleCParser.ScanfFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#scanfFunc.
    def exitScanfFunc(self, ctx:SimpleCParser.ScanfFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#atoiFunc.
    def enterAtoiFunc(self, ctx:SimpleCParser.AtoiFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#atoiFunc.
    def exitAtoiFunc(self, ctx:SimpleCParser.AtoiFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#getsFunc.
    def enterGetsFunc(self, ctx:SimpleCParser.GetsFuncContext):
        pass

    # Exit a parse tree produced by SimpleCParser#getsFunc.
    def exitGetsFunc(self, ctx:SimpleCParser.GetsFuncContext):
        pass


    # Enter a parse tree produced by SimpleCParser#type.
    def enterType(self, ctx:SimpleCParser.TypeContext):
        pass

    # Exit a parse tree produced by SimpleCParser#type.
    def exitType(self, ctx:SimpleCParser.TypeContext):
        pass


    # Enter a parse tree produced by SimpleCParser#lib.
    def enterLib(self, ctx:SimpleCParser.LibContext):
        pass

    # Exit a parse tree produced by SimpleCParser#lib.
    def exitLib(self, ctx:SimpleCParser.LibContext):
        pass


    # Enter a parse tree produced by SimpleCParser#id.
    def enterId(self, ctx:SimpleCParser.IdContext):
        pass

    # Exit a parse tree produced by SimpleCParser#id.
    def exitId(self, ctx:SimpleCParser.IdContext):
        pass


    # Enter a parse tree produced by SimpleCParser#integer.
    def enterInteger(self, ctx:SimpleCParser.IntegerContext):
        pass

    # Exit a parse tree produced by SimpleCParser#integer.
    def exitInteger(self, ctx:SimpleCParser.IntegerContext):
        pass


    # Enter a parse tree produced by SimpleCParser#double.
    def enterDouble(self, ctx:SimpleCParser.DoubleContext):
        pass

    # Exit a parse tree produced by SimpleCParser#double.
    def exitDouble(self, ctx:SimpleCParser.DoubleContext):
        pass


    # Enter a parse tree produced by SimpleCParser#char.
    def enterChar(self, ctx:SimpleCParser.CharContext):
        pass

    # Exit a parse tree produced by SimpleCParser#char.
    def exitChar(self, ctx:SimpleCParser.CharContext):
        pass


    # Enter a parse tree produced by SimpleCParser#bool.
    def enterBool(self, ctx:SimpleCParser.BoolContext):
        pass

    # Exit a parse tree produced by SimpleCParser#bool.
    def exitBool(self, ctx:SimpleCParser.BoolContext):
        pass


    # Enter a parse tree produced by SimpleCParser#string.
    def enterString(self, ctx:SimpleCParser.StringContext):
        pass

    # Exit a parse tree produced by SimpleCParser#string.
    def exitString(self, ctx:SimpleCParser.StringContext):
        pass



del SimpleCParser