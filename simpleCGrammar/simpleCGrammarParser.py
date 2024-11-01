# Generated from simpleCGrammar.g4 by ANTLR 4.13.2
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO

def serializedATN():
    return [
        4,1,42,273,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
        2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
        7,20,1,0,5,0,44,8,0,10,0,12,0,47,9,0,1,0,1,0,1,0,1,0,5,0,53,8,0,
        10,0,12,0,56,9,0,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,2,4,2,67,8,2,
        11,2,12,2,68,1,2,1,2,1,2,1,3,1,3,3,3,76,8,3,1,3,1,3,1,3,1,3,3,3,
        82,8,3,1,3,1,3,5,3,86,8,3,10,3,12,3,89,9,3,1,3,1,3,1,4,1,4,1,4,1,
        5,1,5,1,5,1,5,1,5,1,5,5,5,102,8,5,10,5,12,5,105,9,5,1,5,1,5,1,5,
        1,6,1,6,1,6,1,6,3,6,114,8,6,1,6,1,6,1,6,1,6,3,6,120,8,6,5,6,122,
        8,6,10,6,12,6,125,9,6,1,6,1,6,1,7,1,7,1,7,3,7,132,8,7,1,7,1,7,1,
        7,3,7,137,8,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,8,5,8,147,8,8,10,8,12,
        8,150,9,8,1,9,1,9,1,9,1,10,1,10,5,10,157,8,10,10,10,12,10,160,9,
        10,1,11,1,11,1,11,1,11,1,11,3,11,167,8,11,1,12,1,12,1,12,1,13,1,
        13,5,13,174,8,13,10,13,12,13,177,9,13,1,13,1,13,1,14,1,14,1,14,1,
        14,1,14,1,14,1,14,3,14,188,8,14,1,15,1,15,1,15,1,15,1,15,1,15,1,
        15,1,15,1,15,1,15,3,15,200,8,15,1,15,3,15,203,8,15,1,15,1,15,3,15,
        207,8,15,1,15,1,15,3,15,211,8,15,1,16,1,16,3,16,215,8,16,1,16,1,
        16,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,3,17,227,8,17,1,17,1,
        17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,5,17,238,8,17,10,17,12,17,
        241,9,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,
        1,18,5,18,255,8,18,10,18,12,18,258,9,18,3,18,260,8,18,1,18,3,18,
        263,8,18,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,0,1,34,21,
        0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,0,1,1,
        0,15,18,295,0,45,1,0,0,0,2,57,1,0,0,0,4,62,1,0,0,0,6,75,1,0,0,0,
        8,92,1,0,0,0,10,95,1,0,0,0,12,109,1,0,0,0,14,131,1,0,0,0,16,143,
        1,0,0,0,18,151,1,0,0,0,20,158,1,0,0,0,22,166,1,0,0,0,24,168,1,0,
        0,0,26,171,1,0,0,0,28,180,1,0,0,0,30,210,1,0,0,0,32,212,1,0,0,0,
        34,226,1,0,0,0,36,262,1,0,0,0,38,264,1,0,0,0,40,266,1,0,0,0,42,44,
        3,2,1,0,43,42,1,0,0,0,44,47,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,
        46,54,1,0,0,0,47,45,1,0,0,0,48,53,3,4,2,0,49,53,3,10,5,0,50,53,3,
        12,6,0,51,53,3,14,7,0,52,48,1,0,0,0,52,49,1,0,0,0,52,50,1,0,0,0,
        52,51,1,0,0,0,53,56,1,0,0,0,54,52,1,0,0,0,54,55,1,0,0,0,55,1,1,0,
        0,0,56,54,1,0,0,0,57,58,5,1,0,0,58,59,5,2,0,0,59,60,5,42,0,0,60,
        61,5,3,0,0,61,3,1,0,0,0,62,63,5,4,0,0,63,64,5,24,0,0,64,66,5,32,
        0,0,65,67,3,6,3,0,66,65,1,0,0,0,67,68,1,0,0,0,68,66,1,0,0,0,68,69,
        1,0,0,0,69,70,1,0,0,0,70,71,5,33,0,0,71,72,5,37,0,0,72,5,1,0,0,0,
        73,76,3,38,19,0,74,76,3,40,20,0,75,73,1,0,0,0,75,74,1,0,0,0,76,77,
        1,0,0,0,77,87,5,24,0,0,78,81,5,36,0,0,79,82,3,38,19,0,80,82,3,40,
        20,0,81,79,1,0,0,0,81,80,1,0,0,0,82,83,1,0,0,0,83,84,5,24,0,0,84,
        86,1,0,0,0,85,78,1,0,0,0,86,89,1,0,0,0,87,85,1,0,0,0,87,88,1,0,0,
        0,88,90,1,0,0,0,89,87,1,0,0,0,90,91,5,37,0,0,91,7,1,0,0,0,92,93,
        5,4,0,0,93,94,5,24,0,0,94,9,1,0,0,0,95,96,3,38,19,0,96,97,5,24,0,
        0,97,98,5,34,0,0,98,103,5,19,0,0,99,100,5,36,0,0,100,102,5,19,0,
        0,101,99,1,0,0,0,102,105,1,0,0,0,103,101,1,0,0,0,103,104,1,0,0,0,
        104,106,1,0,0,0,105,103,1,0,0,0,106,107,5,35,0,0,107,108,5,37,0,
        0,108,11,1,0,0,0,109,110,3,38,19,0,110,113,5,24,0,0,111,112,5,5,
        0,0,112,114,3,34,17,0,113,111,1,0,0,0,113,114,1,0,0,0,114,123,1,
        0,0,0,115,116,5,36,0,0,116,119,5,24,0,0,117,118,5,5,0,0,118,120,
        3,34,17,0,119,117,1,0,0,0,119,120,1,0,0,0,120,122,1,0,0,0,121,115,
        1,0,0,0,122,125,1,0,0,0,123,121,1,0,0,0,123,124,1,0,0,0,124,126,
        1,0,0,0,125,123,1,0,0,0,126,127,5,37,0,0,127,13,1,0,0,0,128,132,
        3,38,19,0,129,132,5,6,0,0,130,132,3,8,4,0,131,128,1,0,0,0,131,129,
        1,0,0,0,131,130,1,0,0,0,132,133,1,0,0,0,133,134,5,24,0,0,134,136,
        5,30,0,0,135,137,3,16,8,0,136,135,1,0,0,0,136,137,1,0,0,0,137,138,
        1,0,0,0,138,139,5,31,0,0,139,140,5,32,0,0,140,141,3,20,10,0,141,
        142,5,33,0,0,142,15,1,0,0,0,143,148,3,18,9,0,144,145,5,36,0,0,145,
        147,3,18,9,0,146,144,1,0,0,0,147,150,1,0,0,0,148,146,1,0,0,0,148,
        149,1,0,0,0,149,17,1,0,0,0,150,148,1,0,0,0,151,152,3,38,19,0,152,
        153,5,24,0,0,153,19,1,0,0,0,154,157,3,22,11,0,155,157,3,34,17,0,
        156,154,1,0,0,0,156,155,1,0,0,0,157,160,1,0,0,0,158,156,1,0,0,0,
        158,159,1,0,0,0,159,21,1,0,0,0,160,158,1,0,0,0,161,167,3,24,12,0,
        162,167,3,26,13,0,163,167,3,28,14,0,164,167,3,30,15,0,165,167,3,
        32,16,0,166,161,1,0,0,0,166,162,1,0,0,0,166,163,1,0,0,0,166,164,
        1,0,0,0,166,165,1,0,0,0,167,23,1,0,0,0,168,169,3,34,17,0,169,170,
        5,37,0,0,170,25,1,0,0,0,171,175,5,32,0,0,172,174,3,22,11,0,173,172,
        1,0,0,0,174,177,1,0,0,0,175,173,1,0,0,0,175,176,1,0,0,0,176,178,
        1,0,0,0,177,175,1,0,0,0,178,179,5,33,0,0,179,27,1,0,0,0,180,181,
        5,7,0,0,181,182,5,30,0,0,182,183,3,34,17,0,183,184,5,31,0,0,184,
        187,3,22,11,0,185,186,5,8,0,0,186,188,3,22,11,0,187,185,1,0,0,0,
        187,188,1,0,0,0,188,29,1,0,0,0,189,190,5,9,0,0,190,191,5,30,0,0,
        191,192,3,34,17,0,192,193,5,31,0,0,193,194,3,22,11,0,194,211,1,0,
        0,0,195,196,5,10,0,0,196,199,5,30,0,0,197,200,3,24,12,0,198,200,
        5,37,0,0,199,197,1,0,0,0,199,198,1,0,0,0,200,202,1,0,0,0,201,203,
        3,34,17,0,202,201,1,0,0,0,202,203,1,0,0,0,203,206,1,0,0,0,204,205,
        5,37,0,0,205,207,3,34,17,0,206,204,1,0,0,0,206,207,1,0,0,0,207,208,
        1,0,0,0,208,209,5,31,0,0,209,211,3,22,11,0,210,189,1,0,0,0,210,195,
        1,0,0,0,211,31,1,0,0,0,212,214,5,11,0,0,213,215,3,34,17,0,214,213,
        1,0,0,0,214,215,1,0,0,0,215,216,1,0,0,0,216,217,5,37,0,0,217,33,
        1,0,0,0,218,219,6,17,-1,0,219,227,3,36,18,0,220,221,5,12,0,0,221,
        227,3,34,17,2,222,223,5,30,0,0,223,224,3,34,17,0,224,225,5,31,0,
        0,225,227,1,0,0,0,226,218,1,0,0,0,226,220,1,0,0,0,226,222,1,0,0,
        0,227,239,1,0,0,0,228,229,10,5,0,0,229,230,5,25,0,0,230,238,3,34,
        17,6,231,232,10,4,0,0,232,233,5,26,0,0,233,238,3,34,17,5,234,235,
        10,3,0,0,235,236,5,27,0,0,236,238,3,34,17,4,237,228,1,0,0,0,237,
        231,1,0,0,0,237,234,1,0,0,0,238,241,1,0,0,0,239,237,1,0,0,0,239,
        240,1,0,0,0,240,35,1,0,0,0,241,239,1,0,0,0,242,263,5,24,0,0,243,
        263,5,19,0,0,244,263,5,20,0,0,245,263,5,21,0,0,246,263,5,22,0,0,
        247,263,5,13,0,0,248,263,5,14,0,0,249,250,5,24,0,0,250,259,5,30,
        0,0,251,256,3,34,17,0,252,253,5,36,0,0,253,255,3,34,17,0,254,252,
        1,0,0,0,255,258,1,0,0,0,256,254,1,0,0,0,256,257,1,0,0,0,257,260,
        1,0,0,0,258,256,1,0,0,0,259,251,1,0,0,0,259,260,1,0,0,0,260,261,
        1,0,0,0,261,263,5,31,0,0,262,242,1,0,0,0,262,243,1,0,0,0,262,244,
        1,0,0,0,262,245,1,0,0,0,262,246,1,0,0,0,262,247,1,0,0,0,262,248,
        1,0,0,0,262,249,1,0,0,0,263,37,1,0,0,0,264,265,7,0,0,0,265,39,1,
        0,0,0,266,267,3,38,19,0,267,268,5,24,0,0,268,269,5,34,0,0,269,270,
        5,19,0,0,270,271,5,35,0,0,271,41,1,0,0,0,30,45,52,54,68,75,81,87,
        103,113,119,123,131,136,148,156,158,166,175,187,199,202,206,210,
        214,226,237,239,256,259,262
    ]

class simpleCGrammarParser ( Parser ):

    grammarFileName = "simpleCGrammar.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "'#include'", "'<'", "'>'", "'struct'", 
                     "'='", "'void'", "'if'", "'else'", "'while'", "'for'", 
                     "'return'", "'!'", "'true'", "'false'", "'int'", "'double'", 
                     "'char'", "'bool'", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "'('", "')'", "'{'", "'}'", "'['", "']'", "','", "';'", 
                     "':'" ]

    symbolicNames = [ "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "Integer", 
                      "Double", "Char", "String", "Bool", "Identifier", 
                      "ArithmeticOperator", "RelationalOperator", "LogicalOperator", 
                      "AssignmentOperator", "Keyword", "LParen", "RParen", 
                      "LBrace", "RBrace", "LBracket", "RBracket", "Comma", 
                      "Semi", "Colon", "LineComment", "BlockComment", "WS", 
                      "LibraryName" ]

    RULE_prog = 0
    RULE_include = 1
    RULE_structDef = 2
    RULE_structMember = 3
    RULE_mStruct = 4
    RULE_arrayDef = 5
    RULE_varDef = 6
    RULE_funcDef = 7
    RULE_params = 8
    RULE_param = 9
    RULE_funcBody = 10
    RULE_statement = 11
    RULE_exprStatement = 12
    RULE_compoundStatement = 13
    RULE_selectionStatement = 14
    RULE_iterationStatement = 15
    RULE_returnStatement = 16
    RULE_expr = 17
    RULE_primaryExpr = 18
    RULE_mType = 19
    RULE_mArray = 20

    ruleNames =  [ "prog", "include", "structDef", "structMember", "mStruct", 
                   "arrayDef", "varDef", "funcDef", "params", "param", "funcBody", 
                   "statement", "exprStatement", "compoundStatement", "selectionStatement", 
                   "iterationStatement", "returnStatement", "expr", "primaryExpr", 
                   "mType", "mArray" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T__3=4
    T__4=5
    T__5=6
    T__6=7
    T__7=8
    T__8=9
    T__9=10
    T__10=11
    T__11=12
    T__12=13
    T__13=14
    T__14=15
    T__15=16
    T__16=17
    T__17=18
    Integer=19
    Double=20
    Char=21
    String=22
    Bool=23
    Identifier=24
    ArithmeticOperator=25
    RelationalOperator=26
    LogicalOperator=27
    AssignmentOperator=28
    Keyword=29
    LParen=30
    RParen=31
    LBrace=32
    RBrace=33
    LBracket=34
    RBracket=35
    Comma=36
    Semi=37
    Colon=38
    LineComment=39
    BlockComment=40
    WS=41
    LibraryName=42

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.13.2")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None




    class ProgContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def include(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.IncludeContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.IncludeContext,i)


        def structDef(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.StructDefContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.StructDefContext,i)


        def arrayDef(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ArrayDefContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ArrayDefContext,i)


        def varDef(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.VarDefContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.VarDefContext,i)


        def funcDef(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.FuncDefContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.FuncDefContext,i)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_prog

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterProg" ):
                listener.enterProg(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitProg" ):
                listener.exitProg(self)




    def prog(self):

        localctx = simpleCGrammarParser.ProgContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_prog)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 45
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==1:
                self.state = 42
                self.include()
                self.state = 47
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 54
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & 491600) != 0):
                self.state = 52
                self._errHandler.sync(self)
                la_ = self._interp.adaptivePredict(self._input,1,self._ctx)
                if la_ == 1:
                    self.state = 48
                    self.structDef()
                    pass

                elif la_ == 2:
                    self.state = 49
                    self.arrayDef()
                    pass

                elif la_ == 3:
                    self.state = 50
                    self.varDef()
                    pass

                elif la_ == 4:
                    self.state = 51
                    self.funcDef()
                    pass


                self.state = 56
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class IncludeContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def LibraryName(self):
            return self.getToken(simpleCGrammarParser.LibraryName, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_include

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterInclude" ):
                listener.enterInclude(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitInclude" ):
                listener.exitInclude(self)




    def include(self):

        localctx = simpleCGrammarParser.IncludeContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_include)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 57
            self.match(simpleCGrammarParser.T__0)
            self.state = 58
            self.match(simpleCGrammarParser.T__1)
            self.state = 59
            self.match(simpleCGrammarParser.LibraryName)
            self.state = 60
            self.match(simpleCGrammarParser.T__2)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StructDefContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def LBrace(self):
            return self.getToken(simpleCGrammarParser.LBrace, 0)

        def RBrace(self):
            return self.getToken(simpleCGrammarParser.RBrace, 0)

        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def structMember(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.StructMemberContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.StructMemberContext,i)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_structDef

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStructDef" ):
                listener.enterStructDef(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStructDef" ):
                listener.exitStructDef(self)




    def structDef(self):

        localctx = simpleCGrammarParser.StructDefContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_structDef)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 62
            self.match(simpleCGrammarParser.T__3)
            self.state = 63
            self.match(simpleCGrammarParser.Identifier)
            self.state = 64
            self.match(simpleCGrammarParser.LBrace)
            self.state = 66 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 65
                self.structMember()
                self.state = 68 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & 491520) != 0)):
                    break

            self.state = 70
            self.match(simpleCGrammarParser.RBrace)
            self.state = 71
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StructMemberContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Identifier(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Identifier)
            else:
                return self.getToken(simpleCGrammarParser.Identifier, i)

        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def mType(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.MTypeContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,i)


        def mArray(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.MArrayContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.MArrayContext,i)


        def Comma(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Comma)
            else:
                return self.getToken(simpleCGrammarParser.Comma, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_structMember

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStructMember" ):
                listener.enterStructMember(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStructMember" ):
                listener.exitStructMember(self)




    def structMember(self):

        localctx = simpleCGrammarParser.StructMemberContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_structMember)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 75
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,4,self._ctx)
            if la_ == 1:
                self.state = 73
                self.mType()
                pass

            elif la_ == 2:
                self.state = 74
                self.mArray()
                pass


            self.state = 77
            self.match(simpleCGrammarParser.Identifier)
            self.state = 87
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==36:
                self.state = 78
                self.match(simpleCGrammarParser.Comma)
                self.state = 81
                self._errHandler.sync(self)
                la_ = self._interp.adaptivePredict(self._input,5,self._ctx)
                if la_ == 1:
                    self.state = 79
                    self.mType()
                    pass

                elif la_ == 2:
                    self.state = 80
                    self.mArray()
                    pass


                self.state = 83
                self.match(simpleCGrammarParser.Identifier)
                self.state = 89
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 90
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class MStructContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_mStruct

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterMStruct" ):
                listener.enterMStruct(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitMStruct" ):
                listener.exitMStruct(self)




    def mStruct(self):

        localctx = simpleCGrammarParser.MStructContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_mStruct)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 92
            self.match(simpleCGrammarParser.T__3)
            self.state = 93
            self.match(simpleCGrammarParser.Identifier)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ArrayDefContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def mType(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,0)


        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def LBracket(self):
            return self.getToken(simpleCGrammarParser.LBracket, 0)

        def Integer(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Integer)
            else:
                return self.getToken(simpleCGrammarParser.Integer, i)

        def RBracket(self):
            return self.getToken(simpleCGrammarParser.RBracket, 0)

        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def Comma(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Comma)
            else:
                return self.getToken(simpleCGrammarParser.Comma, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_arrayDef

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterArrayDef" ):
                listener.enterArrayDef(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitArrayDef" ):
                listener.exitArrayDef(self)




    def arrayDef(self):

        localctx = simpleCGrammarParser.ArrayDefContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_arrayDef)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 95
            self.mType()
            self.state = 96
            self.match(simpleCGrammarParser.Identifier)
            self.state = 97
            self.match(simpleCGrammarParser.LBracket)
            self.state = 98
            self.match(simpleCGrammarParser.Integer)
            self.state = 103
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==36:
                self.state = 99
                self.match(simpleCGrammarParser.Comma)
                self.state = 100
                self.match(simpleCGrammarParser.Integer)
                self.state = 105
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 106
            self.match(simpleCGrammarParser.RBracket)
            self.state = 107
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class VarDefContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def mType(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,0)


        def Identifier(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Identifier)
            else:
                return self.getToken(simpleCGrammarParser.Identifier, i)

        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ExprContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,i)


        def Comma(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Comma)
            else:
                return self.getToken(simpleCGrammarParser.Comma, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_varDef

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterVarDef" ):
                listener.enterVarDef(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitVarDef" ):
                listener.exitVarDef(self)




    def varDef(self):

        localctx = simpleCGrammarParser.VarDefContext(self, self._ctx, self.state)
        self.enterRule(localctx, 12, self.RULE_varDef)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 109
            self.mType()
            self.state = 110
            self.match(simpleCGrammarParser.Identifier)
            self.state = 113
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==5:
                self.state = 111
                self.match(simpleCGrammarParser.T__4)
                self.state = 112
                self.expr(0)


            self.state = 123
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==36:
                self.state = 115
                self.match(simpleCGrammarParser.Comma)
                self.state = 116
                self.match(simpleCGrammarParser.Identifier)
                self.state = 119
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if _la==5:
                    self.state = 117
                    self.match(simpleCGrammarParser.T__4)
                    self.state = 118
                    self.expr(0)


                self.state = 125
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 126
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class FuncDefContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def LParen(self):
            return self.getToken(simpleCGrammarParser.LParen, 0)

        def RParen(self):
            return self.getToken(simpleCGrammarParser.RParen, 0)

        def LBrace(self):
            return self.getToken(simpleCGrammarParser.LBrace, 0)

        def funcBody(self):
            return self.getTypedRuleContext(simpleCGrammarParser.FuncBodyContext,0)


        def RBrace(self):
            return self.getToken(simpleCGrammarParser.RBrace, 0)

        def mType(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,0)


        def mStruct(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MStructContext,0)


        def params(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ParamsContext,0)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_funcDef

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterFuncDef" ):
                listener.enterFuncDef(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitFuncDef" ):
                listener.exitFuncDef(self)




    def funcDef(self):

        localctx = simpleCGrammarParser.FuncDefContext(self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_funcDef)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 131
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [15, 16, 17, 18]:
                self.state = 128
                self.mType()
                pass
            elif token in [6]:
                self.state = 129
                self.match(simpleCGrammarParser.T__5)
                pass
            elif token in [4]:
                self.state = 130
                self.mStruct()
                pass
            else:
                raise NoViableAltException(self)

            self.state = 133
            self.match(simpleCGrammarParser.Identifier)
            self.state = 134
            self.match(simpleCGrammarParser.LParen)
            self.state = 136
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if (((_la) & ~0x3f) == 0 and ((1 << _la) & 491520) != 0):
                self.state = 135
                self.params()


            self.state = 138
            self.match(simpleCGrammarParser.RParen)
            self.state = 139
            self.match(simpleCGrammarParser.LBrace)
            self.state = 140
            self.funcBody()
            self.state = 141
            self.match(simpleCGrammarParser.RBrace)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ParamsContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def param(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ParamContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ParamContext,i)


        def Comma(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Comma)
            else:
                return self.getToken(simpleCGrammarParser.Comma, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_params

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterParams" ):
                listener.enterParams(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitParams" ):
                listener.exitParams(self)




    def params(self):

        localctx = simpleCGrammarParser.ParamsContext(self, self._ctx, self.state)
        self.enterRule(localctx, 16, self.RULE_params)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 143
            self.param()
            self.state = 148
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==36:
                self.state = 144
                self.match(simpleCGrammarParser.Comma)
                self.state = 145
                self.param()
                self.state = 150
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ParamContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def mType(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,0)


        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_param

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterParam" ):
                listener.enterParam(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitParam" ):
                listener.exitParam(self)




    def param(self):

        localctx = simpleCGrammarParser.ParamContext(self, self._ctx, self.state)
        self.enterRule(localctx, 18, self.RULE_param)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 151
            self.mType()
            self.state = 152
            self.match(simpleCGrammarParser.Identifier)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class FuncBodyContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def statement(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.StatementContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.StatementContext,i)


        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ExprContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,i)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_funcBody

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterFuncBody" ):
                listener.enterFuncBody(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitFuncBody" ):
                listener.exitFuncBody(self)




    def funcBody(self):

        localctx = simpleCGrammarParser.FuncBodyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 20, self.RULE_funcBody)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 158
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & 5393383040) != 0):
                self.state = 156
                self._errHandler.sync(self)
                la_ = self._interp.adaptivePredict(self._input,14,self._ctx)
                if la_ == 1:
                    self.state = 154
                    self.statement()
                    pass

                elif la_ == 2:
                    self.state = 155
                    self.expr(0)
                    pass


                self.state = 160
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def exprStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ExprStatementContext,0)


        def compoundStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.CompoundStatementContext,0)


        def selectionStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.SelectionStatementContext,0)


        def iterationStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.IterationStatementContext,0)


        def returnStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ReturnStatementContext,0)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_statement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStatement" ):
                listener.enterStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStatement" ):
                listener.exitStatement(self)




    def statement(self):

        localctx = simpleCGrammarParser.StatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 22, self.RULE_statement)
        try:
            self.state = 166
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [12, 13, 14, 19, 20, 21, 22, 24, 30]:
                self.enterOuterAlt(localctx, 1)
                self.state = 161
                self.exprStatement()
                pass
            elif token in [32]:
                self.enterOuterAlt(localctx, 2)
                self.state = 162
                self.compoundStatement()
                pass
            elif token in [7]:
                self.enterOuterAlt(localctx, 3)
                self.state = 163
                self.selectionStatement()
                pass
            elif token in [9, 10]:
                self.enterOuterAlt(localctx, 4)
                self.state = 164
                self.iterationStatement()
                pass
            elif token in [11]:
                self.enterOuterAlt(localctx, 5)
                self.state = 165
                self.returnStatement()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ExprStatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def expr(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,0)


        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_exprStatement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterExprStatement" ):
                listener.enterExprStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitExprStatement" ):
                listener.exitExprStatement(self)




    def exprStatement(self):

        localctx = simpleCGrammarParser.ExprStatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 24, self.RULE_exprStatement)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 168
            self.expr(0)
            self.state = 169
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class CompoundStatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def LBrace(self):
            return self.getToken(simpleCGrammarParser.LBrace, 0)

        def RBrace(self):
            return self.getToken(simpleCGrammarParser.RBrace, 0)

        def statement(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.StatementContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.StatementContext,i)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_compoundStatement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterCompoundStatement" ):
                listener.enterCompoundStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitCompoundStatement" ):
                listener.exitCompoundStatement(self)




    def compoundStatement(self):

        localctx = simpleCGrammarParser.CompoundStatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 26, self.RULE_compoundStatement)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 171
            self.match(simpleCGrammarParser.LBrace)
            self.state = 175
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & 5393383040) != 0):
                self.state = 172
                self.statement()
                self.state = 177
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 178
            self.match(simpleCGrammarParser.RBrace)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class SelectionStatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def LParen(self):
            return self.getToken(simpleCGrammarParser.LParen, 0)

        def expr(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,0)


        def RParen(self):
            return self.getToken(simpleCGrammarParser.RParen, 0)

        def statement(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.StatementContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.StatementContext,i)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_selectionStatement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterSelectionStatement" ):
                listener.enterSelectionStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitSelectionStatement" ):
                listener.exitSelectionStatement(self)




    def selectionStatement(self):

        localctx = simpleCGrammarParser.SelectionStatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 28, self.RULE_selectionStatement)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 180
            self.match(simpleCGrammarParser.T__6)
            self.state = 181
            self.match(simpleCGrammarParser.LParen)
            self.state = 182
            self.expr(0)
            self.state = 183
            self.match(simpleCGrammarParser.RParen)
            self.state = 184
            self.statement()
            self.state = 187
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,18,self._ctx)
            if la_ == 1:
                self.state = 185
                self.match(simpleCGrammarParser.T__7)
                self.state = 186
                self.statement()


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class IterationStatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def LParen(self):
            return self.getToken(simpleCGrammarParser.LParen, 0)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ExprContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,i)


        def RParen(self):
            return self.getToken(simpleCGrammarParser.RParen, 0)

        def statement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.StatementContext,0)


        def exprStatement(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ExprStatementContext,0)


        def Semi(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Semi)
            else:
                return self.getToken(simpleCGrammarParser.Semi, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_iterationStatement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterIterationStatement" ):
                listener.enterIterationStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitIterationStatement" ):
                listener.exitIterationStatement(self)




    def iterationStatement(self):

        localctx = simpleCGrammarParser.IterationStatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 30, self.RULE_iterationStatement)
        self._la = 0 # Token type
        try:
            self.state = 210
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [9]:
                self.enterOuterAlt(localctx, 1)
                self.state = 189
                self.match(simpleCGrammarParser.T__8)
                self.state = 190
                self.match(simpleCGrammarParser.LParen)
                self.state = 191
                self.expr(0)
                self.state = 192
                self.match(simpleCGrammarParser.RParen)
                self.state = 193
                self.statement()
                pass
            elif token in [10]:
                self.enterOuterAlt(localctx, 2)
                self.state = 195
                self.match(simpleCGrammarParser.T__9)
                self.state = 196
                self.match(simpleCGrammarParser.LParen)
                self.state = 199
                self._errHandler.sync(self)
                token = self._input.LA(1)
                if token in [12, 13, 14, 19, 20, 21, 22, 24, 30]:
                    self.state = 197
                    self.exprStatement()
                    pass
                elif token in [37]:
                    self.state = 198
                    self.match(simpleCGrammarParser.Semi)
                    pass
                else:
                    raise NoViableAltException(self)

                self.state = 202
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if (((_la) & ~0x3f) == 0 and ((1 << _la) & 1098412032) != 0):
                    self.state = 201
                    self.expr(0)


                self.state = 206
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if _la==37:
                    self.state = 204
                    self.match(simpleCGrammarParser.Semi)
                    self.state = 205
                    self.expr(0)


                self.state = 208
                self.match(simpleCGrammarParser.RParen)
                self.state = 209
                self.statement()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ReturnStatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Semi(self):
            return self.getToken(simpleCGrammarParser.Semi, 0)

        def expr(self):
            return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,0)


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_returnStatement

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterReturnStatement" ):
                listener.enterReturnStatement(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitReturnStatement" ):
                listener.exitReturnStatement(self)




    def returnStatement(self):

        localctx = simpleCGrammarParser.ReturnStatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 32, self.RULE_returnStatement)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 212
            self.match(simpleCGrammarParser.T__10)
            self.state = 214
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if (((_la) & ~0x3f) == 0 and ((1 << _la) & 1098412032) != 0):
                self.state = 213
                self.expr(0)


            self.state = 216
            self.match(simpleCGrammarParser.Semi)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ExprContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def primaryExpr(self):
            return self.getTypedRuleContext(simpleCGrammarParser.PrimaryExprContext,0)


        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ExprContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,i)


        def LParen(self):
            return self.getToken(simpleCGrammarParser.LParen, 0)

        def RParen(self):
            return self.getToken(simpleCGrammarParser.RParen, 0)

        def ArithmeticOperator(self):
            return self.getToken(simpleCGrammarParser.ArithmeticOperator, 0)

        def RelationalOperator(self):
            return self.getToken(simpleCGrammarParser.RelationalOperator, 0)

        def LogicalOperator(self):
            return self.getToken(simpleCGrammarParser.LogicalOperator, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_expr

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterExpr" ):
                listener.enterExpr(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitExpr" ):
                listener.exitExpr(self)



    def expr(self, _p:int=0):
        _parentctx = self._ctx
        _parentState = self.state
        localctx = simpleCGrammarParser.ExprContext(self, self._ctx, _parentState)
        _prevctx = localctx
        _startState = 34
        self.enterRecursionRule(localctx, 34, self.RULE_expr, _p)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 226
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [13, 14, 19, 20, 21, 22, 24]:
                self.state = 219
                self.primaryExpr()
                pass
            elif token in [12]:
                self.state = 220
                self.match(simpleCGrammarParser.T__11)
                self.state = 221
                self.expr(2)
                pass
            elif token in [30]:
                self.state = 222
                self.match(simpleCGrammarParser.LParen)
                self.state = 223
                self.expr(0)
                self.state = 224
                self.match(simpleCGrammarParser.RParen)
                pass
            else:
                raise NoViableAltException(self)

            self._ctx.stop = self._input.LT(-1)
            self.state = 239
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,26,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    if self._parseListeners is not None:
                        self.triggerExitRuleEvent()
                    _prevctx = localctx
                    self.state = 237
                    self._errHandler.sync(self)
                    la_ = self._interp.adaptivePredict(self._input,25,self._ctx)
                    if la_ == 1:
                        localctx = simpleCGrammarParser.ExprContext(self, _parentctx, _parentState)
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 228
                        if not self.precpred(self._ctx, 5):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 5)")
                        self.state = 229
                        self.match(simpleCGrammarParser.ArithmeticOperator)
                        self.state = 230
                        self.expr(6)
                        pass

                    elif la_ == 2:
                        localctx = simpleCGrammarParser.ExprContext(self, _parentctx, _parentState)
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 231
                        if not self.precpred(self._ctx, 4):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 4)")
                        self.state = 232
                        self.match(simpleCGrammarParser.RelationalOperator)
                        self.state = 233
                        self.expr(5)
                        pass

                    elif la_ == 3:
                        localctx = simpleCGrammarParser.ExprContext(self, _parentctx, _parentState)
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 234
                        if not self.precpred(self._ctx, 3):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 3)")
                        self.state = 235
                        self.match(simpleCGrammarParser.LogicalOperator)
                        self.state = 236
                        self.expr(4)
                        pass

             
                self.state = 241
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,26,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.unrollRecursionContexts(_parentctx)
        return localctx


    class PrimaryExprContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def Integer(self):
            return self.getToken(simpleCGrammarParser.Integer, 0)

        def Double(self):
            return self.getToken(simpleCGrammarParser.Double, 0)

        def Char(self):
            return self.getToken(simpleCGrammarParser.Char, 0)

        def String(self):
            return self.getToken(simpleCGrammarParser.String, 0)

        def LParen(self):
            return self.getToken(simpleCGrammarParser.LParen, 0)

        def RParen(self):
            return self.getToken(simpleCGrammarParser.RParen, 0)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(simpleCGrammarParser.ExprContext)
            else:
                return self.getTypedRuleContext(simpleCGrammarParser.ExprContext,i)


        def Comma(self, i:int=None):
            if i is None:
                return self.getTokens(simpleCGrammarParser.Comma)
            else:
                return self.getToken(simpleCGrammarParser.Comma, i)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_primaryExpr

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterPrimaryExpr" ):
                listener.enterPrimaryExpr(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitPrimaryExpr" ):
                listener.exitPrimaryExpr(self)




    def primaryExpr(self):

        localctx = simpleCGrammarParser.PrimaryExprContext(self, self._ctx, self.state)
        self.enterRule(localctx, 36, self.RULE_primaryExpr)
        self._la = 0 # Token type
        try:
            self.state = 262
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,29,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 242
                self.match(simpleCGrammarParser.Identifier)
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 243
                self.match(simpleCGrammarParser.Integer)
                pass

            elif la_ == 3:
                self.enterOuterAlt(localctx, 3)
                self.state = 244
                self.match(simpleCGrammarParser.Double)
                pass

            elif la_ == 4:
                self.enterOuterAlt(localctx, 4)
                self.state = 245
                self.match(simpleCGrammarParser.Char)
                pass

            elif la_ == 5:
                self.enterOuterAlt(localctx, 5)
                self.state = 246
                self.match(simpleCGrammarParser.String)
                pass

            elif la_ == 6:
                self.enterOuterAlt(localctx, 6)
                self.state = 247
                self.match(simpleCGrammarParser.T__12)
                pass

            elif la_ == 7:
                self.enterOuterAlt(localctx, 7)
                self.state = 248
                self.match(simpleCGrammarParser.T__13)
                pass

            elif la_ == 8:
                self.enterOuterAlt(localctx, 8)
                self.state = 249
                self.match(simpleCGrammarParser.Identifier)
                self.state = 250
                self.match(simpleCGrammarParser.LParen)
                self.state = 259
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if (((_la) & ~0x3f) == 0 and ((1 << _la) & 1098412032) != 0):
                    self.state = 251
                    self.expr(0)
                    self.state = 256
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while _la==36:
                        self.state = 252
                        self.match(simpleCGrammarParser.Comma)
                        self.state = 253
                        self.expr(0)
                        self.state = 258
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)



                self.state = 261
                self.match(simpleCGrammarParser.RParen)
                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class MTypeContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_mType

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterMType" ):
                listener.enterMType(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitMType" ):
                listener.exitMType(self)




    def mType(self):

        localctx = simpleCGrammarParser.MTypeContext(self, self._ctx, self.state)
        self.enterRule(localctx, 38, self.RULE_mType)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 264
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 491520) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class MArrayContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def mType(self):
            return self.getTypedRuleContext(simpleCGrammarParser.MTypeContext,0)


        def Identifier(self):
            return self.getToken(simpleCGrammarParser.Identifier, 0)

        def LBracket(self):
            return self.getToken(simpleCGrammarParser.LBracket, 0)

        def Integer(self):
            return self.getToken(simpleCGrammarParser.Integer, 0)

        def RBracket(self):
            return self.getToken(simpleCGrammarParser.RBracket, 0)

        def getRuleIndex(self):
            return simpleCGrammarParser.RULE_mArray

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterMArray" ):
                listener.enterMArray(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitMArray" ):
                listener.exitMArray(self)




    def mArray(self):

        localctx = simpleCGrammarParser.MArrayContext(self, self._ctx, self.state)
        self.enterRule(localctx, 40, self.RULE_mArray)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 266
            self.mType()
            self.state = 267
            self.match(simpleCGrammarParser.Identifier)
            self.state = 268
            self.match(simpleCGrammarParser.LBracket)
            self.state = 269
            self.match(simpleCGrammarParser.Integer)
            self.state = 270
            self.match(simpleCGrammarParser.RBracket)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx



    def sempred(self, localctx:RuleContext, ruleIndex:int, predIndex:int):
        if self._predicates == None:
            self._predicates = dict()
        self._predicates[17] = self.expr_sempred
        pred = self._predicates.get(ruleIndex, None)
        if pred is None:
            raise Exception("No predicate with index:" + str(ruleIndex))
        else:
            return pred(localctx, predIndex)

    def expr_sempred(self, localctx:ExprContext, predIndex:int):
            if predIndex == 0:
                return self.precpred(self._ctx, 5)
         

            if predIndex == 1:
                return self.precpred(self._ctx, 4)
         

            if predIndex == 2:
                return self.precpred(self._ctx, 3)
         




