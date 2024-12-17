// Generated from c:/Users/23040/Documents/GitHub/compilation-project/simpleCGrammar.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class simpleCGrammarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, Integer=19, Double=20, Char=21, String=22, Bool=23, Identifier=24, 
		ArithmeticOperator=25, RelationalOperator=26, LogicalOperator=27, AssignmentOperator=28, 
		Keyword=29, LParen=30, RParen=31, LBrace=32, RBrace=33, LBracket=34, RBracket=35, 
		Comma=36, Semi=37, Colon=38, LineComment=39, BlockComment=40, WS=41, LibraryName=42;
	public static final int
		RULE_prog = 0, RULE_include = 1, RULE_structDef = 2, RULE_structMember = 3, 
		RULE_mStruct = 4, RULE_arrayDef = 5, RULE_varDef = 6, RULE_funcDef = 7, 
		RULE_params = 8, RULE_param = 9, RULE_funcBody = 10, RULE_statement = 11, 
		RULE_exprStatement = 12, RULE_compoundStatement = 13, RULE_selectionStatement = 14, 
		RULE_iterationStatement = 15, RULE_returnStatement = 16, RULE_expr = 17, 
		RULE_primaryExpr = 18, RULE_mType = 19, RULE_mArray = 20;
	private static String[] makeRuleNames() {
		return new String[] {
			"prog", "include", "structDef", "structMember", "mStruct", "arrayDef", 
			"varDef", "funcDef", "params", "param", "funcBody", "statement", "exprStatement", 
			"compoundStatement", "selectionStatement", "iterationStatement", "returnStatement", 
			"expr", "primaryExpr", "mType", "mArray"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'#include'", "'<'", "'>'", "'struct'", "'='", "'void'", "'if'", 
			"'else'", "'while'", "'for'", "'return'", "'!'", "'true'", "'false'", 
			"'int'", "'double'", "'char'", "'bool'", null, null, null, null, null, 
			null, null, null, null, null, null, "'('", "')'", "'{'", "'}'", "'['", 
			"']'", "','", "';'", "':'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, "Integer", "Double", "Char", 
			"String", "Bool", "Identifier", "ArithmeticOperator", "RelationalOperator", 
			"LogicalOperator", "AssignmentOperator", "Keyword", "LParen", "RParen", 
			"LBrace", "RBrace", "LBracket", "RBracket", "Comma", "Semi", "Colon", 
			"LineComment", "BlockComment", "WS", "LibraryName"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "simpleCGrammar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public simpleCGrammarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgContext extends ParserRuleContext {
		public List<IncludeContext> include() {
			return getRuleContexts(IncludeContext.class);
		}
		public IncludeContext include(int i) {
			return getRuleContext(IncludeContext.class,i);
		}
		public List<StructDefContext> structDef() {
			return getRuleContexts(StructDefContext.class);
		}
		public StructDefContext structDef(int i) {
			return getRuleContext(StructDefContext.class,i);
		}
		public List<ArrayDefContext> arrayDef() {
			return getRuleContexts(ArrayDefContext.class);
		}
		public ArrayDefContext arrayDef(int i) {
			return getRuleContext(ArrayDefContext.class,i);
		}
		public List<VarDefContext> varDef() {
			return getRuleContexts(VarDefContext.class);
		}
		public VarDefContext varDef(int i) {
			return getRuleContext(VarDefContext.class,i);
		}
		public List<FuncDefContext> funcDef() {
			return getRuleContexts(FuncDefContext.class);
		}
		public FuncDefContext funcDef(int i) {
			return getRuleContext(FuncDefContext.class,i);
		}
		public ProgContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_prog; }
	}

	public final ProgContext prog() throws RecognitionException {
		ProgContext _localctx = new ProgContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_prog);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(42);
				include();
				}
				}
				setState(47);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(54);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 491600L) != 0)) {
				{
				setState(52);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
				case 1:
					{
					setState(48);
					structDef();
					}
					break;
				case 2:
					{
					setState(49);
					arrayDef();
					}
					break;
				case 3:
					{
					setState(50);
					varDef();
					}
					break;
				case 4:
					{
					setState(51);
					funcDef();
					}
					break;
				}
				}
				setState(56);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IncludeContext extends ParserRuleContext {
		public TerminalNode LibraryName() { return getToken(simpleCGrammarParser.LibraryName, 0); }
		public IncludeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_include; }
	}

	public final IncludeContext include() throws RecognitionException {
		IncludeContext _localctx = new IncludeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_include);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(57);
			match(T__0);
			setState(58);
			match(T__1);
			setState(59);
			match(LibraryName);
			setState(60);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructDefContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public TerminalNode LBrace() { return getToken(simpleCGrammarParser.LBrace, 0); }
		public TerminalNode RBrace() { return getToken(simpleCGrammarParser.RBrace, 0); }
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public List<StructMemberContext> structMember() {
			return getRuleContexts(StructMemberContext.class);
		}
		public StructMemberContext structMember(int i) {
			return getRuleContext(StructMemberContext.class,i);
		}
		public StructDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structDef; }
	}

	public final StructDefContext structDef() throws RecognitionException {
		StructDefContext _localctx = new StructDefContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_structDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(62);
			match(T__3);
			setState(63);
			match(Identifier);
			setState(64);
			match(LBrace);
			setState(66); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(65);
				structMember();
				}
				}
				setState(68); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 491520L) != 0) );
			setState(70);
			match(RBrace);
			setState(71);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructMemberContext extends ParserRuleContext {
		public List<TerminalNode> Identifier() { return getTokens(simpleCGrammarParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(simpleCGrammarParser.Identifier, i);
		}
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public List<MTypeContext> mType() {
			return getRuleContexts(MTypeContext.class);
		}
		public MTypeContext mType(int i) {
			return getRuleContext(MTypeContext.class,i);
		}
		public List<MArrayContext> mArray() {
			return getRuleContexts(MArrayContext.class);
		}
		public MArrayContext mArray(int i) {
			return getRuleContext(MArrayContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(simpleCGrammarParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(simpleCGrammarParser.Comma, i);
		}
		public StructMemberContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structMember; }
	}

	public final StructMemberContext structMember() throws RecognitionException {
		StructMemberContext _localctx = new StructMemberContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_structMember);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				setState(73);
				mType();
				}
				break;
			case 2:
				{
				setState(74);
				mArray();
				}
				break;
			}
			setState(77);
			match(Identifier);
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(78);
				match(Comma);
				setState(81);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
				case 1:
					{
					setState(79);
					mType();
					}
					break;
				case 2:
					{
					setState(80);
					mArray();
					}
					break;
				}
				setState(83);
				match(Identifier);
				}
				}
				setState(89);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(90);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MStructContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public MStructContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mStruct; }
	}

	public final MStructContext mStruct() throws RecognitionException {
		MStructContext _localctx = new MStructContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_mStruct);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(92);
			match(T__3);
			setState(93);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArrayDefContext extends ParserRuleContext {
		public MTypeContext mType() {
			return getRuleContext(MTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public TerminalNode LBracket() { return getToken(simpleCGrammarParser.LBracket, 0); }
		public List<TerminalNode> Integer() { return getTokens(simpleCGrammarParser.Integer); }
		public TerminalNode Integer(int i) {
			return getToken(simpleCGrammarParser.Integer, i);
		}
		public TerminalNode RBracket() { return getToken(simpleCGrammarParser.RBracket, 0); }
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public List<TerminalNode> Comma() { return getTokens(simpleCGrammarParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(simpleCGrammarParser.Comma, i);
		}
		public ArrayDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayDef; }
	}

	public final ArrayDefContext arrayDef() throws RecognitionException {
		ArrayDefContext _localctx = new ArrayDefContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_arrayDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			mType();
			setState(96);
			match(Identifier);
			setState(97);
			match(LBracket);
			setState(98);
			match(Integer);
			setState(103);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(99);
				match(Comma);
				setState(100);
				match(Integer);
				}
				}
				setState(105);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(106);
			match(RBracket);
			setState(107);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDefContext extends ParserRuleContext {
		public MTypeContext mType() {
			return getRuleContext(MTypeContext.class,0);
		}
		public List<TerminalNode> Identifier() { return getTokens(simpleCGrammarParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(simpleCGrammarParser.Identifier, i);
		}
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(simpleCGrammarParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(simpleCGrammarParser.Comma, i);
		}
		public VarDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDef; }
	}

	public final VarDefContext varDef() throws RecognitionException {
		VarDefContext _localctx = new VarDefContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_varDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(109);
			mType();
			setState(110);
			match(Identifier);
			setState(113);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__4) {
				{
				setState(111);
				match(T__4);
				setState(112);
				expr(0);
				}
			}

			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(115);
				match(Comma);
				setState(116);
				match(Identifier);
				setState(119);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__4) {
					{
					setState(117);
					match(T__4);
					setState(118);
					expr(0);
					}
				}

				}
				}
				setState(125);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(126);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncDefContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public TerminalNode LParen() { return getToken(simpleCGrammarParser.LParen, 0); }
		public TerminalNode RParen() { return getToken(simpleCGrammarParser.RParen, 0); }
		public TerminalNode LBrace() { return getToken(simpleCGrammarParser.LBrace, 0); }
		public FuncBodyContext funcBody() {
			return getRuleContext(FuncBodyContext.class,0);
		}
		public TerminalNode RBrace() { return getToken(simpleCGrammarParser.RBrace, 0); }
		public MTypeContext mType() {
			return getRuleContext(MTypeContext.class,0);
		}
		public MStructContext mStruct() {
			return getRuleContext(MStructContext.class,0);
		}
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public FuncDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDef; }
	}

	public final FuncDefContext funcDef() throws RecognitionException {
		FuncDefContext _localctx = new FuncDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_funcDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(131);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__14:
			case T__15:
			case T__16:
			case T__17:
				{
				setState(128);
				mType();
				}
				break;
			case T__5:
				{
				setState(129);
				match(T__5);
				}
				break;
			case T__3:
				{
				setState(130);
				mStruct();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(133);
			match(Identifier);
			setState(134);
			match(LParen);
			setState(136);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 491520L) != 0)) {
				{
				setState(135);
				params();
				}
			}

			setState(138);
			match(RParen);
			setState(139);
			match(LBrace);
			setState(140);
			funcBody();
			setState(141);
			match(RBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamsContext extends ParserRuleContext {
		public List<ParamContext> param() {
			return getRuleContexts(ParamContext.class);
		}
		public ParamContext param(int i) {
			return getRuleContext(ParamContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(simpleCGrammarParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(simpleCGrammarParser.Comma, i);
		}
		public ParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_params; }
	}

	public final ParamsContext params() throws RecognitionException {
		ParamsContext _localctx = new ParamsContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_params);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(143);
			param();
			setState(148);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(144);
				match(Comma);
				setState(145);
				param();
				}
				}
				setState(150);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamContext extends ParserRuleContext {
		public MTypeContext mType() {
			return getRuleContext(MTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public ParamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_param; }
	}

	public final ParamContext param() throws RecognitionException {
		ParamContext _localctx = new ParamContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_param);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(151);
			mType();
			setState(152);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncBodyContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public FuncBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcBody; }
	}

	public final FuncBodyContext funcBody() throws RecognitionException {
		FuncBodyContext _localctx = new FuncBodyContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_funcBody);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(158);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 5393383040L) != 0)) {
				{
				setState(156);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
				case 1:
					{
					setState(154);
					statement();
					}
					break;
				case 2:
					{
					setState(155);
					expr(0);
					}
					break;
				}
				}
				setState(160);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StatementContext extends ParserRuleContext {
		public ExprStatementContext exprStatement() {
			return getRuleContext(ExprStatementContext.class,0);
		}
		public CompoundStatementContext compoundStatement() {
			return getRuleContext(CompoundStatementContext.class,0);
		}
		public SelectionStatementContext selectionStatement() {
			return getRuleContext(SelectionStatementContext.class,0);
		}
		public IterationStatementContext iterationStatement() {
			return getRuleContext(IterationStatementContext.class,0);
		}
		public ReturnStatementContext returnStatement() {
			return getRuleContext(ReturnStatementContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_statement);
		try {
			setState(166);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__11:
			case T__12:
			case T__13:
			case Integer:
			case Double:
			case Char:
			case String:
			case Identifier:
			case LParen:
				enterOuterAlt(_localctx, 1);
				{
				setState(161);
				exprStatement();
				}
				break;
			case LBrace:
				enterOuterAlt(_localctx, 2);
				{
				setState(162);
				compoundStatement();
				}
				break;
			case T__6:
				enterOuterAlt(_localctx, 3);
				{
				setState(163);
				selectionStatement();
				}
				break;
			case T__8:
			case T__9:
				enterOuterAlt(_localctx, 4);
				{
				setState(164);
				iterationStatement();
				}
				break;
			case T__10:
				enterOuterAlt(_localctx, 5);
				{
				setState(165);
				returnStatement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprStatementContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public ExprStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprStatement; }
	}

	public final ExprStatementContext exprStatement() throws RecognitionException {
		ExprStatementContext _localctx = new ExprStatementContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_exprStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(168);
			expr(0);
			setState(169);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CompoundStatementContext extends ParserRuleContext {
		public TerminalNode LBrace() { return getToken(simpleCGrammarParser.LBrace, 0); }
		public TerminalNode RBrace() { return getToken(simpleCGrammarParser.RBrace, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public CompoundStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compoundStatement; }
	}

	public final CompoundStatementContext compoundStatement() throws RecognitionException {
		CompoundStatementContext _localctx = new CompoundStatementContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_compoundStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(171);
			match(LBrace);
			setState(175);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 5393383040L) != 0)) {
				{
				{
				setState(172);
				statement();
				}
				}
				setState(177);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(178);
			match(RBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SelectionStatementContext extends ParserRuleContext {
		public TerminalNode LParen() { return getToken(simpleCGrammarParser.LParen, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode RParen() { return getToken(simpleCGrammarParser.RParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public SelectionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_selectionStatement; }
	}

	public final SelectionStatementContext selectionStatement() throws RecognitionException {
		SelectionStatementContext _localctx = new SelectionStatementContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_selectionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			match(T__6);
			setState(181);
			match(LParen);
			setState(182);
			expr(0);
			setState(183);
			match(RParen);
			setState(184);
			statement();
			setState(187);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				{
				setState(185);
				match(T__7);
				setState(186);
				statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IterationStatementContext extends ParserRuleContext {
		public TerminalNode LParen() { return getToken(simpleCGrammarParser.LParen, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode RParen() { return getToken(simpleCGrammarParser.RParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public ExprStatementContext exprStatement() {
			return getRuleContext(ExprStatementContext.class,0);
		}
		public List<TerminalNode> Semi() { return getTokens(simpleCGrammarParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(simpleCGrammarParser.Semi, i);
		}
		public IterationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_iterationStatement; }
	}

	public final IterationStatementContext iterationStatement() throws RecognitionException {
		IterationStatementContext _localctx = new IterationStatementContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_iterationStatement);
		int _la;
		try {
			setState(210);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
				enterOuterAlt(_localctx, 1);
				{
				setState(189);
				match(T__8);
				setState(190);
				match(LParen);
				setState(191);
				expr(0);
				setState(192);
				match(RParen);
				setState(193);
				statement();
				}
				break;
			case T__9:
				enterOuterAlt(_localctx, 2);
				{
				setState(195);
				match(T__9);
				setState(196);
				match(LParen);
				setState(199);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__11:
				case T__12:
				case T__13:
				case Integer:
				case Double:
				case Char:
				case String:
				case Identifier:
				case LParen:
					{
					setState(197);
					exprStatement();
					}
					break;
				case Semi:
					{
					setState(198);
					match(Semi);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(202);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1098412032L) != 0)) {
					{
					setState(201);
					expr(0);
					}
				}

				setState(206);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==Semi) {
					{
					setState(204);
					match(Semi);
					setState(205);
					expr(0);
					}
				}

				setState(208);
				match(RParen);
				setState(209);
				statement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStatementContext extends ParserRuleContext {
		public TerminalNode Semi() { return getToken(simpleCGrammarParser.Semi, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnStatement; }
	}

	public final ReturnStatementContext returnStatement() throws RecognitionException {
		ReturnStatementContext _localctx = new ReturnStatementContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_returnStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(212);
			match(T__10);
			setState(214);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1098412032L) != 0)) {
				{
				setState(213);
				expr(0);
				}
			}

			setState(216);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public PrimaryExprContext primaryExpr() {
			return getRuleContext(PrimaryExprContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode LParen() { return getToken(simpleCGrammarParser.LParen, 0); }
		public TerminalNode RParen() { return getToken(simpleCGrammarParser.RParen, 0); }
		public TerminalNode ArithmeticOperator() { return getToken(simpleCGrammarParser.ArithmeticOperator, 0); }
		public TerminalNode RelationalOperator() { return getToken(simpleCGrammarParser.RelationalOperator, 0); }
		public TerminalNode LogicalOperator() { return getToken(simpleCGrammarParser.LogicalOperator, 0); }
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 34;
		enterRecursionRule(_localctx, 34, RULE_expr, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(226);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__12:
			case T__13:
			case Integer:
			case Double:
			case Char:
			case String:
			case Identifier:
				{
				setState(219);
				primaryExpr();
				}
				break;
			case T__11:
				{
				setState(220);
				match(T__11);
				setState(221);
				expr(2);
				}
				break;
			case LParen:
				{
				setState(222);
				match(LParen);
				setState(223);
				expr(0);
				setState(224);
				match(RParen);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(239);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(237);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
					case 1:
						{
						_localctx = new ExprContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(228);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(229);
						match(ArithmeticOperator);
						setState(230);
						expr(6);
						}
						break;
					case 2:
						{
						_localctx = new ExprContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(231);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(232);
						match(RelationalOperator);
						setState(233);
						expr(5);
						}
						break;
					case 3:
						{
						_localctx = new ExprContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(234);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(235);
						match(LogicalOperator);
						setState(236);
						expr(4);
						}
						break;
					}
					} 
				}
				setState(241);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PrimaryExprContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public TerminalNode Integer() { return getToken(simpleCGrammarParser.Integer, 0); }
		public TerminalNode Double() { return getToken(simpleCGrammarParser.Double, 0); }
		public TerminalNode Char() { return getToken(simpleCGrammarParser.Char, 0); }
		public TerminalNode String() { return getToken(simpleCGrammarParser.String, 0); }
		public TerminalNode LParen() { return getToken(simpleCGrammarParser.LParen, 0); }
		public TerminalNode RParen() { return getToken(simpleCGrammarParser.RParen, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(simpleCGrammarParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(simpleCGrammarParser.Comma, i);
		}
		public PrimaryExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primaryExpr; }
	}

	public final PrimaryExprContext primaryExpr() throws RecognitionException {
		PrimaryExprContext _localctx = new PrimaryExprContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_primaryExpr);
		int _la;
		try {
			setState(262);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(242);
				match(Identifier);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(243);
				match(Integer);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(244);
				match(Double);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(245);
				match(Char);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(246);
				match(String);
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(247);
				match(T__12);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(248);
				match(T__13);
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(249);
				match(Identifier);
				setState(250);
				match(LParen);
				setState(259);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1098412032L) != 0)) {
					{
					setState(251);
					expr(0);
					setState(256);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==Comma) {
						{
						{
						setState(252);
						match(Comma);
						setState(253);
						expr(0);
						}
						}
						setState(258);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(261);
				match(RParen);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MTypeContext extends ParserRuleContext {
		public MTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mType; }
	}

	public final MTypeContext mType() throws RecognitionException {
		MTypeContext _localctx = new MTypeContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_mType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(264);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 491520L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MArrayContext extends ParserRuleContext {
		public MTypeContext mType() {
			return getRuleContext(MTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(simpleCGrammarParser.Identifier, 0); }
		public TerminalNode LBracket() { return getToken(simpleCGrammarParser.LBracket, 0); }
		public TerminalNode Integer() { return getToken(simpleCGrammarParser.Integer, 0); }
		public TerminalNode RBracket() { return getToken(simpleCGrammarParser.RBracket, 0); }
		public MArrayContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mArray; }
	}

	public final MArrayContext mArray() throws RecognitionException {
		MArrayContext _localctx = new MArrayContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_mArray);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(266);
			mType();
			setState(267);
			match(Identifier);
			setState(268);
			match(LBracket);
			setState(269);
			match(Integer);
			setState(270);
			match(RBracket);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 17:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 5);
		case 1:
			return precpred(_ctx, 4);
		case 2:
			return precpred(_ctx, 3);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001*\u0111\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0001\u0000\u0005\u0000"+
		",\b\u0000\n\u0000\f\u0000/\t\u0000\u0001\u0000\u0001\u0000\u0001\u0000"+
		"\u0001\u0000\u0005\u00005\b\u0000\n\u0000\f\u00008\t\u0000\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0004\u0002C\b\u0002\u000b\u0002\f\u0002D\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0003\u0001\u0003\u0003\u0003L\b"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0003\u0003R\b"+
		"\u0003\u0001\u0003\u0001\u0003\u0005\u0003V\b\u0003\n\u0003\f\u0003Y\t"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005"+
		"\u0005f\b\u0005\n\u0005\f\u0005i\t\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0003\u0006r\b"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0003\u0006x\b"+
		"\u0006\u0005\u0006z\b\u0006\n\u0006\f\u0006}\t\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0003\u0007\u0084\b\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0003\u0007\u0089\b\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0005"+
		"\b\u0093\b\b\n\b\f\b\u0096\t\b\u0001\t\u0001\t\u0001\t\u0001\n\u0001\n"+
		"\u0005\n\u009d\b\n\n\n\f\n\u00a0\t\n\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0003\u000b\u00a7\b\u000b\u0001\f\u0001\f\u0001"+
		"\f\u0001\r\u0001\r\u0005\r\u00ae\b\r\n\r\f\r\u00b1\t\r\u0001\r\u0001\r"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0003\u000e\u00bc\b\u000e\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0001\u000f\u0003\u000f\u00c8\b\u000f\u0001\u000f\u0003\u000f\u00cb\b"+
		"\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u00cf\b\u000f\u0001\u000f\u0001"+
		"\u000f\u0003\u000f\u00d3\b\u000f\u0001\u0010\u0001\u0010\u0003\u0010\u00d7"+
		"\b\u0010\u0001\u0010\u0001\u0010\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u00e3"+
		"\b\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0005\u0011\u00ee\b\u0011\n"+
		"\u0011\f\u0011\u00f1\t\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0001"+
		"\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001"+
		"\u0012\u0001\u0012\u0001\u0012\u0005\u0012\u00ff\b\u0012\n\u0012\f\u0012"+
		"\u0102\t\u0012\u0003\u0012\u0104\b\u0012\u0001\u0012\u0003\u0012\u0107"+
		"\b\u0012\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0014\u0001"+
		"\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0000\u0001\"\u0015\u0000\u0002"+
		"\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e"+
		" \"$&(\u0000\u0001\u0001\u0000\u000f\u0012\u0127\u0000-\u0001\u0000\u0000"+
		"\u0000\u00029\u0001\u0000\u0000\u0000\u0004>\u0001\u0000\u0000\u0000\u0006"+
		"K\u0001\u0000\u0000\u0000\b\\\u0001\u0000\u0000\u0000\n_\u0001\u0000\u0000"+
		"\u0000\fm\u0001\u0000\u0000\u0000\u000e\u0083\u0001\u0000\u0000\u0000"+
		"\u0010\u008f\u0001\u0000\u0000\u0000\u0012\u0097\u0001\u0000\u0000\u0000"+
		"\u0014\u009e\u0001\u0000\u0000\u0000\u0016\u00a6\u0001\u0000\u0000\u0000"+
		"\u0018\u00a8\u0001\u0000\u0000\u0000\u001a\u00ab\u0001\u0000\u0000\u0000"+
		"\u001c\u00b4\u0001\u0000\u0000\u0000\u001e\u00d2\u0001\u0000\u0000\u0000"+
		" \u00d4\u0001\u0000\u0000\u0000\"\u00e2\u0001\u0000\u0000\u0000$\u0106"+
		"\u0001\u0000\u0000\u0000&\u0108\u0001\u0000\u0000\u0000(\u010a\u0001\u0000"+
		"\u0000\u0000*,\u0003\u0002\u0001\u0000+*\u0001\u0000\u0000\u0000,/\u0001"+
		"\u0000\u0000\u0000-+\u0001\u0000\u0000\u0000-.\u0001\u0000\u0000\u0000"+
		".6\u0001\u0000\u0000\u0000/-\u0001\u0000\u0000\u000005\u0003\u0004\u0002"+
		"\u000015\u0003\n\u0005\u000025\u0003\f\u0006\u000035\u0003\u000e\u0007"+
		"\u000040\u0001\u0000\u0000\u000041\u0001\u0000\u0000\u000042\u0001\u0000"+
		"\u0000\u000043\u0001\u0000\u0000\u000058\u0001\u0000\u0000\u000064\u0001"+
		"\u0000\u0000\u000067\u0001\u0000\u0000\u00007\u0001\u0001\u0000\u0000"+
		"\u000086\u0001\u0000\u0000\u00009:\u0005\u0001\u0000\u0000:;\u0005\u0002"+
		"\u0000\u0000;<\u0005*\u0000\u0000<=\u0005\u0003\u0000\u0000=\u0003\u0001"+
		"\u0000\u0000\u0000>?\u0005\u0004\u0000\u0000?@\u0005\u0018\u0000\u0000"+
		"@B\u0005 \u0000\u0000AC\u0003\u0006\u0003\u0000BA\u0001\u0000\u0000\u0000"+
		"CD\u0001\u0000\u0000\u0000DB\u0001\u0000\u0000\u0000DE\u0001\u0000\u0000"+
		"\u0000EF\u0001\u0000\u0000\u0000FG\u0005!\u0000\u0000GH\u0005%\u0000\u0000"+
		"H\u0005\u0001\u0000\u0000\u0000IL\u0003&\u0013\u0000JL\u0003(\u0014\u0000"+
		"KI\u0001\u0000\u0000\u0000KJ\u0001\u0000\u0000\u0000LM\u0001\u0000\u0000"+
		"\u0000MW\u0005\u0018\u0000\u0000NQ\u0005$\u0000\u0000OR\u0003&\u0013\u0000"+
		"PR\u0003(\u0014\u0000QO\u0001\u0000\u0000\u0000QP\u0001\u0000\u0000\u0000"+
		"RS\u0001\u0000\u0000\u0000ST\u0005\u0018\u0000\u0000TV\u0001\u0000\u0000"+
		"\u0000UN\u0001\u0000\u0000\u0000VY\u0001\u0000\u0000\u0000WU\u0001\u0000"+
		"\u0000\u0000WX\u0001\u0000\u0000\u0000XZ\u0001\u0000\u0000\u0000YW\u0001"+
		"\u0000\u0000\u0000Z[\u0005%\u0000\u0000[\u0007\u0001\u0000\u0000\u0000"+
		"\\]\u0005\u0004\u0000\u0000]^\u0005\u0018\u0000\u0000^\t\u0001\u0000\u0000"+
		"\u0000_`\u0003&\u0013\u0000`a\u0005\u0018\u0000\u0000ab\u0005\"\u0000"+
		"\u0000bg\u0005\u0013\u0000\u0000cd\u0005$\u0000\u0000df\u0005\u0013\u0000"+
		"\u0000ec\u0001\u0000\u0000\u0000fi\u0001\u0000\u0000\u0000ge\u0001\u0000"+
		"\u0000\u0000gh\u0001\u0000\u0000\u0000hj\u0001\u0000\u0000\u0000ig\u0001"+
		"\u0000\u0000\u0000jk\u0005#\u0000\u0000kl\u0005%\u0000\u0000l\u000b\u0001"+
		"\u0000\u0000\u0000mn\u0003&\u0013\u0000nq\u0005\u0018\u0000\u0000op\u0005"+
		"\u0005\u0000\u0000pr\u0003\"\u0011\u0000qo\u0001\u0000\u0000\u0000qr\u0001"+
		"\u0000\u0000\u0000r{\u0001\u0000\u0000\u0000st\u0005$\u0000\u0000tw\u0005"+
		"\u0018\u0000\u0000uv\u0005\u0005\u0000\u0000vx\u0003\"\u0011\u0000wu\u0001"+
		"\u0000\u0000\u0000wx\u0001\u0000\u0000\u0000xz\u0001\u0000\u0000\u0000"+
		"ys\u0001\u0000\u0000\u0000z}\u0001\u0000\u0000\u0000{y\u0001\u0000\u0000"+
		"\u0000{|\u0001\u0000\u0000\u0000|~\u0001\u0000\u0000\u0000}{\u0001\u0000"+
		"\u0000\u0000~\u007f\u0005%\u0000\u0000\u007f\r\u0001\u0000\u0000\u0000"+
		"\u0080\u0084\u0003&\u0013\u0000\u0081\u0084\u0005\u0006\u0000\u0000\u0082"+
		"\u0084\u0003\b\u0004\u0000\u0083\u0080\u0001\u0000\u0000\u0000\u0083\u0081"+
		"\u0001\u0000\u0000\u0000\u0083\u0082\u0001\u0000\u0000\u0000\u0084\u0085"+
		"\u0001\u0000\u0000\u0000\u0085\u0086\u0005\u0018\u0000\u0000\u0086\u0088"+
		"\u0005\u001e\u0000\u0000\u0087\u0089\u0003\u0010\b\u0000\u0088\u0087\u0001"+
		"\u0000\u0000\u0000\u0088\u0089\u0001\u0000\u0000\u0000\u0089\u008a\u0001"+
		"\u0000\u0000\u0000\u008a\u008b\u0005\u001f\u0000\u0000\u008b\u008c\u0005"+
		" \u0000\u0000\u008c\u008d\u0003\u0014\n\u0000\u008d\u008e\u0005!\u0000"+
		"\u0000\u008e\u000f\u0001\u0000\u0000\u0000\u008f\u0094\u0003\u0012\t\u0000"+
		"\u0090\u0091\u0005$\u0000\u0000\u0091\u0093\u0003\u0012\t\u0000\u0092"+
		"\u0090\u0001\u0000\u0000\u0000\u0093\u0096\u0001\u0000\u0000\u0000\u0094"+
		"\u0092\u0001\u0000\u0000\u0000\u0094\u0095\u0001\u0000\u0000\u0000\u0095"+
		"\u0011\u0001\u0000\u0000\u0000\u0096\u0094\u0001\u0000\u0000\u0000\u0097"+
		"\u0098\u0003&\u0013\u0000\u0098\u0099\u0005\u0018\u0000\u0000\u0099\u0013"+
		"\u0001\u0000\u0000\u0000\u009a\u009d\u0003\u0016\u000b\u0000\u009b\u009d"+
		"\u0003\"\u0011\u0000\u009c\u009a\u0001\u0000\u0000\u0000\u009c\u009b\u0001"+
		"\u0000\u0000\u0000\u009d\u00a0\u0001\u0000\u0000\u0000\u009e\u009c\u0001"+
		"\u0000\u0000\u0000\u009e\u009f\u0001\u0000\u0000\u0000\u009f\u0015\u0001"+
		"\u0000\u0000\u0000\u00a0\u009e\u0001\u0000\u0000\u0000\u00a1\u00a7\u0003"+
		"\u0018\f\u0000\u00a2\u00a7\u0003\u001a\r\u0000\u00a3\u00a7\u0003\u001c"+
		"\u000e\u0000\u00a4\u00a7\u0003\u001e\u000f\u0000\u00a5\u00a7\u0003 \u0010"+
		"\u0000\u00a6\u00a1\u0001\u0000\u0000\u0000\u00a6\u00a2\u0001\u0000\u0000"+
		"\u0000\u00a6\u00a3\u0001\u0000\u0000\u0000\u00a6\u00a4\u0001\u0000\u0000"+
		"\u0000\u00a6\u00a5\u0001\u0000\u0000\u0000\u00a7\u0017\u0001\u0000\u0000"+
		"\u0000\u00a8\u00a9\u0003\"\u0011\u0000\u00a9\u00aa\u0005%\u0000\u0000"+
		"\u00aa\u0019\u0001\u0000\u0000\u0000\u00ab\u00af\u0005 \u0000\u0000\u00ac"+
		"\u00ae\u0003\u0016\u000b\u0000\u00ad\u00ac\u0001\u0000\u0000\u0000\u00ae"+
		"\u00b1\u0001\u0000\u0000\u0000\u00af\u00ad\u0001\u0000\u0000\u0000\u00af"+
		"\u00b0\u0001\u0000\u0000\u0000\u00b0\u00b2\u0001\u0000\u0000\u0000\u00b1"+
		"\u00af\u0001\u0000\u0000\u0000\u00b2\u00b3\u0005!\u0000\u0000\u00b3\u001b"+
		"\u0001\u0000\u0000\u0000\u00b4\u00b5\u0005\u0007\u0000\u0000\u00b5\u00b6"+
		"\u0005\u001e\u0000\u0000\u00b6\u00b7\u0003\"\u0011\u0000\u00b7\u00b8\u0005"+
		"\u001f\u0000\u0000\u00b8\u00bb\u0003\u0016\u000b\u0000\u00b9\u00ba\u0005"+
		"\b\u0000\u0000\u00ba\u00bc\u0003\u0016\u000b\u0000\u00bb\u00b9\u0001\u0000"+
		"\u0000\u0000\u00bb\u00bc\u0001\u0000\u0000\u0000\u00bc\u001d\u0001\u0000"+
		"\u0000\u0000\u00bd\u00be\u0005\t\u0000\u0000\u00be\u00bf\u0005\u001e\u0000"+
		"\u0000\u00bf\u00c0\u0003\"\u0011\u0000\u00c0\u00c1\u0005\u001f\u0000\u0000"+
		"\u00c1\u00c2\u0003\u0016\u000b\u0000\u00c2\u00d3\u0001\u0000\u0000\u0000"+
		"\u00c3\u00c4\u0005\n\u0000\u0000\u00c4\u00c7\u0005\u001e\u0000\u0000\u00c5"+
		"\u00c8\u0003\u0018\f\u0000\u00c6\u00c8\u0005%\u0000\u0000\u00c7\u00c5"+
		"\u0001\u0000\u0000\u0000\u00c7\u00c6\u0001\u0000\u0000\u0000\u00c8\u00ca"+
		"\u0001\u0000\u0000\u0000\u00c9\u00cb\u0003\"\u0011\u0000\u00ca\u00c9\u0001"+
		"\u0000\u0000\u0000\u00ca\u00cb\u0001\u0000\u0000\u0000\u00cb\u00ce\u0001"+
		"\u0000\u0000\u0000\u00cc\u00cd\u0005%\u0000\u0000\u00cd\u00cf\u0003\""+
		"\u0011\u0000\u00ce\u00cc\u0001\u0000\u0000\u0000\u00ce\u00cf\u0001\u0000"+
		"\u0000\u0000\u00cf\u00d0\u0001\u0000\u0000\u0000\u00d0\u00d1\u0005\u001f"+
		"\u0000\u0000\u00d1\u00d3\u0003\u0016\u000b\u0000\u00d2\u00bd\u0001\u0000"+
		"\u0000\u0000\u00d2\u00c3\u0001\u0000\u0000\u0000\u00d3\u001f\u0001\u0000"+
		"\u0000\u0000\u00d4\u00d6\u0005\u000b\u0000\u0000\u00d5\u00d7\u0003\"\u0011"+
		"\u0000\u00d6\u00d5\u0001\u0000\u0000\u0000\u00d6\u00d7\u0001\u0000\u0000"+
		"\u0000\u00d7\u00d8\u0001\u0000\u0000\u0000\u00d8\u00d9\u0005%\u0000\u0000"+
		"\u00d9!\u0001\u0000\u0000\u0000\u00da\u00db\u0006\u0011\uffff\uffff\u0000"+
		"\u00db\u00e3\u0003$\u0012\u0000\u00dc\u00dd\u0005\f\u0000\u0000\u00dd"+
		"\u00e3\u0003\"\u0011\u0002\u00de\u00df\u0005\u001e\u0000\u0000\u00df\u00e0"+
		"\u0003\"\u0011\u0000\u00e0\u00e1\u0005\u001f\u0000\u0000\u00e1\u00e3\u0001"+
		"\u0000\u0000\u0000\u00e2\u00da\u0001\u0000\u0000\u0000\u00e2\u00dc\u0001"+
		"\u0000\u0000\u0000\u00e2\u00de\u0001\u0000\u0000\u0000\u00e3\u00ef\u0001"+
		"\u0000\u0000\u0000\u00e4\u00e5\n\u0005\u0000\u0000\u00e5\u00e6\u0005\u0019"+
		"\u0000\u0000\u00e6\u00ee\u0003\"\u0011\u0006\u00e7\u00e8\n\u0004\u0000"+
		"\u0000\u00e8\u00e9\u0005\u001a\u0000\u0000\u00e9\u00ee\u0003\"\u0011\u0005"+
		"\u00ea\u00eb\n\u0003\u0000\u0000\u00eb\u00ec\u0005\u001b\u0000\u0000\u00ec"+
		"\u00ee\u0003\"\u0011\u0004\u00ed\u00e4\u0001\u0000\u0000\u0000\u00ed\u00e7"+
		"\u0001\u0000\u0000\u0000\u00ed\u00ea\u0001\u0000\u0000\u0000\u00ee\u00f1"+
		"\u0001\u0000\u0000\u0000\u00ef\u00ed\u0001\u0000\u0000\u0000\u00ef\u00f0"+
		"\u0001\u0000\u0000\u0000\u00f0#\u0001\u0000\u0000\u0000\u00f1\u00ef\u0001"+
		"\u0000\u0000\u0000\u00f2\u0107\u0005\u0018\u0000\u0000\u00f3\u0107\u0005"+
		"\u0013\u0000\u0000\u00f4\u0107\u0005\u0014\u0000\u0000\u00f5\u0107\u0005"+
		"\u0015\u0000\u0000\u00f6\u0107\u0005\u0016\u0000\u0000\u00f7\u0107\u0005"+
		"\r\u0000\u0000\u00f8\u0107\u0005\u000e\u0000\u0000\u00f9\u00fa\u0005\u0018"+
		"\u0000\u0000\u00fa\u0103\u0005\u001e\u0000\u0000\u00fb\u0100\u0003\"\u0011"+
		"\u0000\u00fc\u00fd\u0005$\u0000\u0000\u00fd\u00ff\u0003\"\u0011\u0000"+
		"\u00fe\u00fc\u0001\u0000\u0000\u0000\u00ff\u0102\u0001\u0000\u0000\u0000"+
		"\u0100\u00fe\u0001\u0000\u0000\u0000\u0100\u0101\u0001\u0000\u0000\u0000"+
		"\u0101\u0104\u0001\u0000\u0000\u0000\u0102\u0100\u0001\u0000\u0000\u0000"+
		"\u0103\u00fb\u0001\u0000\u0000\u0000\u0103\u0104\u0001\u0000\u0000\u0000"+
		"\u0104\u0105\u0001\u0000\u0000\u0000\u0105\u0107\u0005\u001f\u0000\u0000"+
		"\u0106\u00f2\u0001\u0000\u0000\u0000\u0106\u00f3\u0001\u0000\u0000\u0000"+
		"\u0106\u00f4\u0001\u0000\u0000\u0000\u0106\u00f5\u0001\u0000\u0000\u0000"+
		"\u0106\u00f6\u0001\u0000\u0000\u0000\u0106\u00f7\u0001\u0000\u0000\u0000"+
		"\u0106\u00f8\u0001\u0000\u0000\u0000\u0106\u00f9\u0001\u0000\u0000\u0000"+
		"\u0107%\u0001\u0000\u0000\u0000\u0108\u0109\u0007\u0000\u0000\u0000\u0109"+
		"\'\u0001\u0000\u0000\u0000\u010a\u010b\u0003&\u0013\u0000\u010b\u010c"+
		"\u0005\u0018\u0000\u0000\u010c\u010d\u0005\"\u0000\u0000\u010d\u010e\u0005"+
		"\u0013\u0000\u0000\u010e\u010f\u0005#\u0000\u0000\u010f)\u0001\u0000\u0000"+
		"\u0000\u001e-46DKQWgqw{\u0083\u0088\u0094\u009c\u009e\u00a6\u00af\u00bb"+
		"\u00c7\u00ca\u00ce\u00d2\u00d6\u00e2\u00ed\u00ef\u0100\u0103\u0106";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}