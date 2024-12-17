// Generated from c:/Users/23040/Documents/GitHub/compilation-project/simpleC/simpleC.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class simpleCParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, Integer=41, Double=42, Char=43, Bool=44, String=45, 
		Identifier=46, Lib=47, Whitespace=48, Newline=49, BlockComment=50, LineComment=51;
	public static final int
		RULE_prog = 0, RULE_includes = 1, RULE_include = 2, RULE_declarations = 3, 
		RULE_declaration = 4, RULE_variableDeclaration = 5, RULE_arrayDeclaration = 6, 
		RULE_functions = 7, RULE_function = 8, RULE_functype = 9, RULE_parameters = 10, 
		RULE_parameter = 11, RULE_funcBody = 12, RULE_body = 13, RULE_block = 14, 
		RULE_assignBlock = 15, RULE_arrayItem = 16, RULE_ifBlocks = 17, RULE_ifBlock = 18, 
		RULE_elseIfBlock = 19, RULE_elseBlock = 20, RULE_whileBlock = 21, RULE_forBlock = 22, 
		RULE_forInit = 23, RULE_forUpdate = 24, RULE_returnBlock = 25, RULE_condition = 26, 
		RULE_expr = 27, RULE_func = 28, RULE_userFunc = 29, RULE_arguments = 30, 
		RULE_argument = 31, RULE_standardFunc = 32, RULE_strlenFunc = 33, RULE_printfFunc = 34, 
		RULE_scanfFunc = 35, RULE_atoiFunc = 36, RULE_getsFunc = 37, RULE_type = 38, 
		RULE_lib = 39, RULE_id = 40, RULE_integer = 41, RULE_double = 42, RULE_char = 43, 
		RULE_bool = 44, RULE_string = 45;
	private static String[] makeRuleNames() {
		return new String[] {
			"prog", "includes", "include", "declarations", "declaration", "variableDeclaration", 
			"arrayDeclaration", "functions", "function", "functype", "parameters", 
			"parameter", "funcBody", "body", "block", "assignBlock", "arrayItem", 
			"ifBlocks", "ifBlock", "elseIfBlock", "elseBlock", "whileBlock", "forBlock", 
			"forInit", "forUpdate", "returnBlock", "condition", "expr", "func", "userFunc", 
			"arguments", "argument", "standardFunc", "strlenFunc", "printfFunc", 
			"scanfFunc", "atoiFunc", "getsFunc", "type", "lib", "id", "integer", 
			"double", "char", "bool", "string"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'#include'", "'<'", "'>'", "'='", "','", "';'", "'['", "']'", 
			"'('", "')'", "'{'", "'}'", "'void'", "'if'", "'else'", "'while'", "'for'", 
			"'return'", "'!'", "'*'", "'/'", "'%'", "'+'", "'-'", "'>='", "'<='", 
			"'=='", "'!='", "'&&'", "'||'", "'strlen'", "'printf'", "'scanf'", "'&'", 
			"'atoi'", "'gets'", "'int'", "'bool'", "'double'", "'char'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, "Integer", "Double", "Char", "Bool", "String", 
			"Identifier", "Lib", "Whitespace", "Newline", "BlockComment", "LineComment"
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
	public String getGrammarFileName() { return "simpleC.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public simpleCParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgContext extends ParserRuleContext {
		public IncludesContext includes() {
			return getRuleContext(IncludesContext.class,0);
		}
		public DeclarationsContext declarations() {
			return getRuleContext(DeclarationsContext.class,0);
		}
		public FunctionsContext functions() {
			return getRuleContext(FunctionsContext.class,0);
		}
		public ProgContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_prog; }
	}

	public final ProgContext prog() throws RecognitionException {
		ProgContext _localctx = new ProgContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_prog);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(92);
			includes();
			setState(93);
			declarations();
			setState(94);
			functions();
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
	public static class IncludesContext extends ParserRuleContext {
		public List<IncludeContext> include() {
			return getRuleContexts(IncludeContext.class);
		}
		public IncludeContext include(int i) {
			return getRuleContext(IncludeContext.class,i);
		}
		public IncludesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_includes; }
	}

	public final IncludesContext includes() throws RecognitionException {
		IncludesContext _localctx = new IncludesContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_includes);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(99);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(96);
				include();
				}
				}
				setState(101);
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
		public LibContext lib() {
			return getRuleContext(LibContext.class,0);
		}
		public IncludeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_include; }
	}

	public final IncludeContext include() throws RecognitionException {
		IncludeContext _localctx = new IncludeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_include);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(102);
			match(T__0);
			setState(103);
			match(T__1);
			setState(104);
			lib();
			setState(105);
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
	public static class DeclarationsContext extends ParserRuleContext {
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public DeclarationsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarations; }
	}

	public final DeclarationsContext declarations() throws RecognitionException {
		DeclarationsContext _localctx = new DeclarationsContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_declarations);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(107);
					declaration();
					}
					} 
				}
				setState(112);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
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
	public static class DeclarationContext extends ParserRuleContext {
		public VariableDeclarationContext variableDeclaration() {
			return getRuleContext(VariableDeclarationContext.class,0);
		}
		public ArrayDeclarationContext arrayDeclaration() {
			return getRuleContext(ArrayDeclarationContext.class,0);
		}
		public DeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declaration; }
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_declaration);
		try {
			setState(115);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(113);
				variableDeclaration();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(114);
				arrayDeclaration();
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
	public static class VariableDeclarationContext extends ParserRuleContext {
		public List<IdContext> id() {
			return getRuleContexts(IdContext.class);
		}
		public IdContext id(int i) {
			return getRuleContext(IdContext.class,i);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public VariableDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclaration; }
	}

	public final VariableDeclarationContext variableDeclaration() throws RecognitionException {
		VariableDeclarationContext _localctx = new VariableDeclarationContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_variableDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(117);
			type();
			}
			setState(118);
			id();
			setState(121);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__3) {
				{
				setState(119);
				match(T__3);
				setState(120);
				expr(0);
				}
			}

			setState(131);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(123);
				match(T__4);
				setState(124);
				id();
				setState(127);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__3) {
					{
					setState(125);
					match(T__3);
					setState(126);
					expr(0);
					}
				}

				}
				}
				setState(133);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(134);
			match(T__5);
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
	public static class ArrayDeclarationContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public IntegerContext integer() {
			return getRuleContext(IntegerContext.class,0);
		}
		public ArrayDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayDeclaration; }
	}

	public final ArrayDeclarationContext arrayDeclaration() throws RecognitionException {
		ArrayDeclarationContext _localctx = new ArrayDeclarationContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_arrayDeclaration);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(136);
			type();
			setState(137);
			id();
			setState(138);
			match(T__6);
			setState(139);
			integer();
			setState(140);
			match(T__7);
			setState(141);
			match(T__5);
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
	public static class FunctionsContext extends ParserRuleContext {
		public List<FunctionContext> function() {
			return getRuleContexts(FunctionContext.class);
		}
		public FunctionContext function(int i) {
			return getRuleContext(FunctionContext.class,i);
		}
		public FunctionsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functions; }
	}

	public final FunctionsContext functions() throws RecognitionException {
		FunctionsContext _localctx = new FunctionsContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functions);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(146);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 2061584310272L) != 0)) {
				{
				{
				setState(143);
				function();
				}
				}
				setState(148);
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
	public static class FunctionContext extends ParserRuleContext {
		public FunctypeContext functype() {
			return getRuleContext(FunctypeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ParametersContext parameters() {
			return getRuleContext(ParametersContext.class,0);
		}
		public FuncBodyContext funcBody() {
			return getRuleContext(FuncBodyContext.class,0);
		}
		public FunctionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_function; }
	}

	public final FunctionContext function() throws RecognitionException {
		FunctionContext _localctx = new FunctionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_function);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(149);
			functype();
			setState(150);
			id();
			setState(151);
			match(T__8);
			setState(152);
			parameters();
			setState(153);
			match(T__9);
			setState(154);
			match(T__10);
			setState(155);
			funcBody();
			setState(156);
			match(T__11);
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
	public static class FunctypeContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FunctypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functype; }
	}

	public final FunctypeContext functype() throws RecognitionException {
		FunctypeContext _localctx = new FunctypeContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_functype);
		try {
			setState(160);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__36:
			case T__37:
			case T__38:
			case T__39:
				enterOuterAlt(_localctx, 1);
				{
				setState(158);
				type();
				}
				break;
			case T__12:
				enterOuterAlt(_localctx, 2);
				{
				setState(159);
				match(T__12);
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
	public static class ParametersContext extends ParserRuleContext {
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public ParametersContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameters; }
	}

	public final ParametersContext parameters() throws RecognitionException {
		ParametersContext _localctx = new ParametersContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_parameters);
		int _la;
		try {
			setState(171);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__36:
			case T__37:
			case T__38:
			case T__39:
				enterOuterAlt(_localctx, 1);
				{
				setState(162);
				parameter();
				setState(167);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__4) {
					{
					{
					setState(163);
					match(T__4);
					setState(164);
					parameter();
					}
					}
					setState(169);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case T__9:
				enterOuterAlt(_localctx, 2);
				{
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
	public static class ParameterContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(173);
			type();
			setState(174);
			id();
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
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public ReturnBlockContext returnBlock() {
			return getRuleContext(ReturnBlockContext.class,0);
		}
		public FuncBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcBody; }
	}

	public final FuncBodyContext funcBody() throws RecognitionException {
		FuncBodyContext _localctx = new FuncBodyContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_funcBody);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(176);
			body();
			setState(177);
			returnBlock();
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
	public static class BodyContext extends ParserRuleContext {
		public List<BlockContext> block() {
			return getRuleContexts(BlockContext.class);
		}
		public BlockContext block(int i) {
			return getRuleContext(BlockContext.class,i);
		}
		public List<FuncContext> func() {
			return getRuleContexts(FuncContext.class);
		}
		public FuncContext func(int i) {
			return getRuleContext(FuncContext.class,i);
		}
		public BodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_body; }
	}

	public final BodyContext body() throws RecognitionException {
		BodyContext _localctx = new BodyContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_body);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(185);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(183);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
					case 1:
						{
						setState(179);
						block();
						}
						break;
					case 2:
						{
						setState(180);
						func();
						setState(181);
						match(T__5);
						}
						break;
					}
					} 
				}
				setState(187);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
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
	public static class BlockContext extends ParserRuleContext {
		public DeclarationContext declaration() {
			return getRuleContext(DeclarationContext.class,0);
		}
		public AssignBlockContext assignBlock() {
			return getRuleContext(AssignBlockContext.class,0);
		}
		public IfBlocksContext ifBlocks() {
			return getRuleContext(IfBlocksContext.class,0);
		}
		public WhileBlockContext whileBlock() {
			return getRuleContext(WhileBlockContext.class,0);
		}
		public ForBlockContext forBlock() {
			return getRuleContext(ForBlockContext.class,0);
		}
		public ReturnBlockContext returnBlock() {
			return getRuleContext(ReturnBlockContext.class,0);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_block);
		try {
			setState(194);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__36:
			case T__37:
			case T__38:
			case T__39:
				enterOuterAlt(_localctx, 1);
				{
				setState(188);
				declaration();
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(189);
				assignBlock();
				}
				break;
			case T__13:
				enterOuterAlt(_localctx, 3);
				{
				setState(190);
				ifBlocks();
				}
				break;
			case T__15:
				enterOuterAlt(_localctx, 4);
				{
				setState(191);
				whileBlock();
				}
				break;
			case T__16:
				enterOuterAlt(_localctx, 5);
				{
				setState(192);
				forBlock();
				}
				break;
			case T__17:
				enterOuterAlt(_localctx, 6);
				{
				setState(193);
				returnBlock();
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
	public static class AssignBlockContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ArrayItemContext arrayItem() {
			return getRuleContext(ArrayItemContext.class,0);
		}
		public AssignBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignBlock; }
	}

	public final AssignBlockContext assignBlock() throws RecognitionException {
		AssignBlockContext _localctx = new AssignBlockContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_assignBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(198);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				{
				setState(196);
				id();
				}
				break;
			case 2:
				{
				setState(197);
				arrayItem();
				}
				break;
			}
			setState(200);
			match(T__3);
			setState(201);
			expr(0);
			setState(202);
			match(T__5);
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
	public static class ArrayItemContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ArrayItemContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayItem; }
	}

	public final ArrayItemContext arrayItem() throws RecognitionException {
		ArrayItemContext _localctx = new ArrayItemContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_arrayItem);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(204);
			id();
			setState(205);
			match(T__6);
			setState(206);
			expr(0);
			setState(207);
			match(T__7);
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
	public static class IfBlocksContext extends ParserRuleContext {
		public IfBlockContext ifBlock() {
			return getRuleContext(IfBlockContext.class,0);
		}
		public List<ElseIfBlockContext> elseIfBlock() {
			return getRuleContexts(ElseIfBlockContext.class);
		}
		public ElseIfBlockContext elseIfBlock(int i) {
			return getRuleContext(ElseIfBlockContext.class,i);
		}
		public ElseBlockContext elseBlock() {
			return getRuleContext(ElseBlockContext.class,0);
		}
		public IfBlocksContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifBlocks; }
	}

	public final IfBlocksContext ifBlocks() throws RecognitionException {
		IfBlocksContext _localctx = new IfBlocksContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_ifBlocks);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(209);
			ifBlock();
			setState(213);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(210);
					elseIfBlock();
					}
					} 
				}
				setState(215);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			}
			setState(217);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__14) {
				{
				setState(216);
				elseBlock();
				}
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
	public static class IfBlockContext extends ParserRuleContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public IfBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifBlock; }
	}

	public final IfBlockContext ifBlock() throws RecognitionException {
		IfBlockContext _localctx = new IfBlockContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_ifBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(219);
			match(T__13);
			setState(220);
			match(T__8);
			setState(221);
			condition();
			setState(222);
			match(T__9);
			setState(223);
			match(T__10);
			setState(224);
			body();
			setState(225);
			match(T__11);
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
	public static class ElseIfBlockContext extends ParserRuleContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public ElseIfBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elseIfBlock; }
	}

	public final ElseIfBlockContext elseIfBlock() throws RecognitionException {
		ElseIfBlockContext _localctx = new ElseIfBlockContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_elseIfBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(227);
			match(T__14);
			setState(228);
			match(T__13);
			setState(229);
			match(T__8);
			setState(230);
			condition();
			setState(231);
			match(T__9);
			setState(232);
			match(T__10);
			setState(233);
			body();
			setState(234);
			match(T__11);
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
	public static class ElseBlockContext extends ParserRuleContext {
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public ElseBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elseBlock; }
	}

	public final ElseBlockContext elseBlock() throws RecognitionException {
		ElseBlockContext _localctx = new ElseBlockContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_elseBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(236);
			match(T__14);
			setState(237);
			match(T__10);
			setState(238);
			body();
			setState(239);
			match(T__11);
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
	public static class WhileBlockContext extends ParserRuleContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public WhileBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileBlock; }
	}

	public final WhileBlockContext whileBlock() throws RecognitionException {
		WhileBlockContext _localctx = new WhileBlockContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_whileBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(241);
			match(T__15);
			setState(242);
			match(T__8);
			setState(243);
			condition();
			setState(244);
			match(T__9);
			setState(245);
			match(T__10);
			setState(246);
			body();
			setState(247);
			match(T__11);
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
	public static class ForBlockContext extends ParserRuleContext {
		public ForInitContext forInit() {
			return getRuleContext(ForInitContext.class,0);
		}
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public ForUpdateContext forUpdate() {
			return getRuleContext(ForUpdateContext.class,0);
		}
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public ForBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forBlock; }
	}

	public final ForBlockContext forBlock() throws RecognitionException {
		ForBlockContext _localctx = new ForBlockContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_forBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(249);
			match(T__16);
			setState(250);
			match(T__8);
			setState(251);
			forInit();
			setState(252);
			match(T__5);
			setState(253);
			condition();
			setState(254);
			match(T__5);
			setState(255);
			forUpdate();
			setState(256);
			match(T__9);
			setState(262);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__10:
				{
				setState(257);
				match(T__10);
				setState(258);
				body();
				setState(259);
				match(T__11);
				}
				break;
			case T__5:
				{
				setState(261);
				match(T__5);
				}
				break;
			default:
				throw new NoViableAltException(this);
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
	public static class ForInitContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<ForInitContext> forInit() {
			return getRuleContexts(ForInitContext.class);
		}
		public ForInitContext forInit(int i) {
			return getRuleContext(ForInitContext.class,i);
		}
		public ForInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInit; }
	}

	public final ForInitContext forInit() throws RecognitionException {
		ForInitContext _localctx = new ForInitContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_forInit);
		try {
			int _alt;
			setState(275);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(264);
				id();
				setState(265);
				match(T__3);
				setState(266);
				expr(0);
				setState(271);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(267);
						match(T__4);
						setState(268);
						forInit();
						}
						} 
					}
					setState(273);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
				}
				}
				break;
			case T__4:
			case T__5:
				enterOuterAlt(_localctx, 2);
				{
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
	public static class ForUpdateContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<ForUpdateContext> forUpdate() {
			return getRuleContexts(ForUpdateContext.class);
		}
		public ForUpdateContext forUpdate(int i) {
			return getRuleContext(ForUpdateContext.class,i);
		}
		public ForUpdateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forUpdate; }
	}

	public final ForUpdateContext forUpdate() throws RecognitionException {
		ForUpdateContext _localctx = new ForUpdateContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_forUpdate);
		try {
			int _alt;
			setState(288);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(277);
				id();
				setState(278);
				match(T__3);
				setState(279);
				expr(0);
				setState(284);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,19,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(280);
						match(T__4);
						setState(281);
						forUpdate();
						}
						} 
					}
					setState(286);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,19,_ctx);
				}
				}
				break;
			case T__4:
			case T__9:
				enterOuterAlt(_localctx, 2);
				{
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
	public static class ReturnBlockContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public IntegerContext integer() {
			return getRuleContext(IntegerContext.class,0);
		}
		public ReturnBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnBlock; }
	}

	public final ReturnBlockContext returnBlock() throws RecognitionException {
		ReturnBlockContext _localctx = new ReturnBlockContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_returnBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(290);
			match(T__17);
			setState(293);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				{
				setState(291);
				id();
				}
				break;
			case Integer:
				{
				setState(292);
				integer();
				}
				break;
			case T__5:
				break;
			default:
				break;
			}
			setState(295);
			match(T__5);
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
	public static class ConditionContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_condition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(297);
			expr(0);
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
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprintContext extends ExprContext {
		public Token op;
		public IntegerContext integer() {
			return getRuleContext(IntegerContext.class,0);
		}
		public ExprintContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParensContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParensContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprarrayitemContext extends ExprContext {
		public ArrayItemContext arrayItem() {
			return getRuleContext(ArrayItemContext.class,0);
		}
		public ExprarrayitemContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OrContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public OrContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MulDivContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MulDivContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprdoubleContext extends ExprContext {
		public Token op;
		public DoubleContext double_() {
			return getRuleContext(DoubleContext.class,0);
		}
		public ExprdoubleContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprboolContext extends ExprContext {
		public BoolContext bool() {
			return getRuleContext(BoolContext.class,0);
		}
		public ExprboolContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprstringContext extends ExprContext {
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public ExprstringContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NegContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierContext extends ExprContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EqualContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public EqualContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AndContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AndContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprfunctionContext extends ExprContext {
		public FuncContext func() {
			return getRuleContext(FuncContext.class,0);
		}
		public ExprfunctionContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CompareContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public CompareContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprcharContext extends ExprContext {
		public CharContext char_() {
			return getRuleContext(CharContext.class,0);
		}
		public ExprcharContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 54;
		enterRecursionRule(_localctx, 54, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(320);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(300);
				match(T__8);
				setState(301);
				expr(0);
				setState(302);
				match(T__9);
				}
				break;
			case 2:
				{
				_localctx = new NegContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(304);
				((NegContext)_localctx).op = match(T__18);
				setState(305);
				expr(15);
				}
				break;
			case 3:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(306);
				id();
				}
				break;
			case 4:
				{
				_localctx = new ExprintContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(308);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__23) {
					{
					setState(307);
					((ExprintContext)_localctx).op = match(T__23);
					}
				}

				setState(310);
				integer();
				}
				break;
			case 5:
				{
				_localctx = new ExprdoubleContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(312);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__23) {
					{
					setState(311);
					((ExprdoubleContext)_localctx).op = match(T__23);
					}
				}

				setState(314);
				double_();
				}
				break;
			case 6:
				{
				_localctx = new ExprcharContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(315);
				char_();
				}
				break;
			case 7:
				{
				_localctx = new ExprboolContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(316);
				bool();
				}
				break;
			case 8:
				{
				_localctx = new ExprarrayitemContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(317);
				arrayItem();
				}
				break;
			case 9:
				{
				_localctx = new ExprstringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(318);
				string();
				}
				break;
			case 10:
				{
				_localctx = new ExprfunctionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(319);
				func();
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(342);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(340);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(322);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(323);
						((MulDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7340032L) != 0)) ) {
							((MulDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(324);
						expr(15);
						}
						break;
					case 2:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(325);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(326);
						((AddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__22 || _la==T__23) ) {
							((AddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(327);
						expr(14);
						}
						break;
					case 3:
						{
						_localctx = new CompareContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(328);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(329);
						((CompareContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 100663308L) != 0)) ) {
							((CompareContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(330);
						expr(13);
						}
						break;
					case 4:
						{
						_localctx = new EqualContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(331);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(332);
						((EqualContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__26 || _la==T__27) ) {
							((EqualContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(333);
						expr(12);
						}
						break;
					case 5:
						{
						_localctx = new AndContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(334);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(335);
						((AndContext)_localctx).op = match(T__28);
						setState(336);
						expr(11);
						}
						break;
					case 6:
						{
						_localctx = new OrContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(337);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(338);
						((OrContext)_localctx).op = match(T__29);
						setState(339);
						expr(10);
						}
						break;
					}
					} 
				}
				setState(344);
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
	public static class FuncContext extends ParserRuleContext {
		public StandardFuncContext standardFunc() {
			return getRuleContext(StandardFuncContext.class,0);
		}
		public UserFuncContext userFunc() {
			return getRuleContext(UserFuncContext.class,0);
		}
		public FuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_func; }
	}

	public final FuncContext func() throws RecognitionException {
		FuncContext _localctx = new FuncContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_func);
		try {
			setState(347);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__30:
			case T__31:
			case T__32:
			case T__34:
			case T__35:
				enterOuterAlt(_localctx, 1);
				{
				setState(345);
				standardFunc();
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(346);
				userFunc();
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
	public static class UserFuncContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ArgumentsContext arguments() {
			return getRuleContext(ArgumentsContext.class,0);
		}
		public UserFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_userFunc; }
	}

	public final UserFuncContext userFunc() throws RecognitionException {
		UserFuncContext _localctx = new UserFuncContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_userFunc);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(349);
			id();
			setState(350);
			match(T__8);
			setState(351);
			arguments();
			setState(352);
			match(T__9);
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
	public static class ArgumentsContext extends ParserRuleContext {
		public List<ArgumentContext> argument() {
			return getRuleContexts(ArgumentContext.class);
		}
		public ArgumentContext argument(int i) {
			return getRuleContext(ArgumentContext.class,i);
		}
		public ArgumentsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arguments; }
	}

	public final ArgumentsContext arguments() throws RecognitionException {
		ArgumentsContext _localctx = new ArgumentsContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_arguments);
		int _la;
		try {
			setState(363);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Integer:
			case Double:
			case Char:
			case Bool:
			case String:
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(354);
				argument();
				setState(359);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__4) {
					{
					{
					setState(355);
					match(T__4);
					setState(356);
					argument();
					}
					}
					setState(361);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case T__9:
				enterOuterAlt(_localctx, 2);
				{
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
	public static class ArgumentContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public IntegerContext integer() {
			return getRuleContext(IntegerContext.class,0);
		}
		public DoubleContext double_() {
			return getRuleContext(DoubleContext.class,0);
		}
		public CharContext char_() {
			return getRuleContext(CharContext.class,0);
		}
		public BoolContext bool() {
			return getRuleContext(BoolContext.class,0);
		}
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public ArgumentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_argument; }
	}

	public final ArgumentContext argument() throws RecognitionException {
		ArgumentContext _localctx = new ArgumentContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_argument);
		try {
			setState(371);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Identifier:
				enterOuterAlt(_localctx, 1);
				{
				setState(365);
				id();
				}
				break;
			case Integer:
				enterOuterAlt(_localctx, 2);
				{
				setState(366);
				integer();
				}
				break;
			case Double:
				enterOuterAlt(_localctx, 3);
				{
				setState(367);
				double_();
				}
				break;
			case Char:
				enterOuterAlt(_localctx, 4);
				{
				setState(368);
				char_();
				}
				break;
			case Bool:
				enterOuterAlt(_localctx, 5);
				{
				setState(369);
				bool();
				}
				break;
			case String:
				enterOuterAlt(_localctx, 6);
				{
				setState(370);
				string();
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
	public static class StandardFuncContext extends ParserRuleContext {
		public StrlenFuncContext strlenFunc() {
			return getRuleContext(StrlenFuncContext.class,0);
		}
		public PrintfFuncContext printfFunc() {
			return getRuleContext(PrintfFuncContext.class,0);
		}
		public ScanfFuncContext scanfFunc() {
			return getRuleContext(ScanfFuncContext.class,0);
		}
		public AtoiFuncContext atoiFunc() {
			return getRuleContext(AtoiFuncContext.class,0);
		}
		public GetsFuncContext getsFunc() {
			return getRuleContext(GetsFuncContext.class,0);
		}
		public StandardFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_standardFunc; }
	}

	public final StandardFuncContext standardFunc() throws RecognitionException {
		StandardFuncContext _localctx = new StandardFuncContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_standardFunc);
		try {
			setState(378);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__30:
				enterOuterAlt(_localctx, 1);
				{
				setState(373);
				strlenFunc();
				}
				break;
			case T__31:
				enterOuterAlt(_localctx, 2);
				{
				setState(374);
				printfFunc();
				}
				break;
			case T__32:
				enterOuterAlt(_localctx, 3);
				{
				setState(375);
				scanfFunc();
				}
				break;
			case T__34:
				enterOuterAlt(_localctx, 4);
				{
				setState(376);
				atoiFunc();
				}
				break;
			case T__35:
				enterOuterAlt(_localctx, 5);
				{
				setState(377);
				getsFunc();
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
	public static class StrlenFuncContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public StrlenFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_strlenFunc; }
	}

	public final StrlenFuncContext strlenFunc() throws RecognitionException {
		StrlenFuncContext _localctx = new StrlenFuncContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_strlenFunc);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(380);
			match(T__30);
			setState(381);
			match(T__8);
			setState(382);
			id();
			setState(383);
			match(T__9);
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
	public static class PrintfFuncContext extends ParserRuleContext {
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PrintfFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_printfFunc; }
	}

	public final PrintfFuncContext printfFunc() throws RecognitionException {
		PrintfFuncContext _localctx = new PrintfFuncContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_printfFunc);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(385);
			match(T__31);
			setState(386);
			match(T__8);
			setState(387);
			string();
			setState(392);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(388);
				match(T__4);
				setState(389);
				expr(0);
				}
				}
				setState(394);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(395);
			match(T__9);
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
	public static class ScanfFuncContext extends ParserRuleContext {
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public List<IdContext> id() {
			return getRuleContexts(IdContext.class);
		}
		public IdContext id(int i) {
			return getRuleContext(IdContext.class,i);
		}
		public List<ArrayItemContext> arrayItem() {
			return getRuleContexts(ArrayItemContext.class);
		}
		public ArrayItemContext arrayItem(int i) {
			return getRuleContext(ArrayItemContext.class,i);
		}
		public ScanfFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_scanfFunc; }
	}

	public final ScanfFuncContext scanfFunc() throws RecognitionException {
		ScanfFuncContext _localctx = new ScanfFuncContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_scanfFunc);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(397);
			match(T__32);
			setState(398);
			match(T__8);
			setState(399);
			string();
			setState(410);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(400);
				match(T__4);
				setState(402);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__33) {
					{
					setState(401);
					match(T__33);
					}
				}

				setState(406);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,34,_ctx) ) {
				case 1:
					{
					setState(404);
					id();
					}
					break;
				case 2:
					{
					setState(405);
					arrayItem();
					}
					break;
				}
				}
				}
				setState(412);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(413);
			match(T__9);
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
	public static class AtoiFuncContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public AtoiFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atoiFunc; }
	}

	public final AtoiFuncContext atoiFunc() throws RecognitionException {
		AtoiFuncContext _localctx = new AtoiFuncContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_atoiFunc);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(415);
			match(T__34);
			setState(416);
			match(T__8);
			setState(417);
			id();
			setState(418);
			match(T__9);
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
	public static class GetsFuncContext extends ParserRuleContext {
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public GetsFuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_getsFunc; }
	}

	public final GetsFuncContext getsFunc() throws RecognitionException {
		GetsFuncContext _localctx = new GetsFuncContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_getsFunc);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(420);
			match(T__35);
			setState(421);
			match(T__8);
			setState(422);
			id();
			setState(423);
			match(T__9);
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
	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(425);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 2061584302080L) != 0)) ) {
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
	public static class LibContext extends ParserRuleContext {
		public TerminalNode Lib() { return getToken(simpleCParser.Lib, 0); }
		public LibContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lib; }
	}

	public final LibContext lib() throws RecognitionException {
		LibContext _localctx = new LibContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_lib);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(427);
			match(Lib);
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
	public static class IdContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(simpleCParser.Identifier, 0); }
		public IdContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_id; }
	}

	public final IdContext id() throws RecognitionException {
		IdContext _localctx = new IdContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_id);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(429);
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
	public static class IntegerContext extends ParserRuleContext {
		public TerminalNode Integer() { return getToken(simpleCParser.Integer, 0); }
		public IntegerContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_integer; }
	}

	public final IntegerContext integer() throws RecognitionException {
		IntegerContext _localctx = new IntegerContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_integer);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(431);
			match(Integer);
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
	public static class DoubleContext extends ParserRuleContext {
		public TerminalNode Double() { return getToken(simpleCParser.Double, 0); }
		public DoubleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_double; }
	}

	public final DoubleContext double_() throws RecognitionException {
		DoubleContext _localctx = new DoubleContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_double);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(433);
			match(Double);
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
	public static class CharContext extends ParserRuleContext {
		public TerminalNode Char() { return getToken(simpleCParser.Char, 0); }
		public CharContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_char; }
	}

	public final CharContext char_() throws RecognitionException {
		CharContext _localctx = new CharContext(_ctx, getState());
		enterRule(_localctx, 86, RULE_char);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(435);
			match(Char);
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
	public static class BoolContext extends ParserRuleContext {
		public TerminalNode Bool() { return getToken(simpleCParser.Bool, 0); }
		public BoolContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bool; }
	}

	public final BoolContext bool() throws RecognitionException {
		BoolContext _localctx = new BoolContext(_ctx, getState());
		enterRule(_localctx, 88, RULE_bool);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(437);
			match(Bool);
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
	public static class StringContext extends ParserRuleContext {
		public TerminalNode String() { return getToken(simpleCParser.String, 0); }
		public StringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_string; }
	}

	public final StringContext string() throws RecognitionException {
		StringContext _localctx = new StringContext(_ctx, getState());
		enterRule(_localctx, 90, RULE_string);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(439);
			match(String);
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
		case 27:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 14);
		case 1:
			return precpred(_ctx, 13);
		case 2:
			return precpred(_ctx, 12);
		case 3:
			return precpred(_ctx, 11);
		case 4:
			return precpred(_ctx, 10);
		case 5:
			return precpred(_ctx, 9);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u00013\u01ba\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002\u001b\u0007\u001b"+
		"\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002\u001e\u0007\u001e"+
		"\u0002\u001f\u0007\u001f\u0002 \u0007 \u0002!\u0007!\u0002\"\u0007\"\u0002"+
		"#\u0007#\u0002$\u0007$\u0002%\u0007%\u0002&\u0007&\u0002\'\u0007\'\u0002"+
		"(\u0007(\u0002)\u0007)\u0002*\u0007*\u0002+\u0007+\u0002,\u0007,\u0002"+
		"-\u0007-\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0005"+
		"\u0001b\b\u0001\n\u0001\f\u0001e\t\u0001\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0003\u0005\u0003m\b\u0003\n\u0003"+
		"\f\u0003p\t\u0003\u0001\u0004\u0001\u0004\u0003\u0004t\b\u0004\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0003\u0005z\b\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0003\u0005\u0080\b\u0005\u0005\u0005"+
		"\u0082\b\u0005\n\u0005\f\u0005\u0085\t\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0007\u0005\u0007\u0091\b\u0007\n\u0007\f\u0007\u0094\t\u0007"+
		"\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\t\u0001\t\u0003\t\u00a1\b\t\u0001\n\u0001\n\u0001\n\u0005\n\u00a6"+
		"\b\n\n\n\f\n\u00a9\t\n\u0001\n\u0003\n\u00ac\b\n\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\f\u0001\f\u0001\f\u0001\r\u0001\r\u0001\r\u0001\r\u0005"+
		"\r\u00b8\b\r\n\r\f\r\u00bb\t\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u00c3\b\u000e\u0001\u000f\u0001"+
		"\u000f\u0003\u000f\u00c7\b\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001"+
		"\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0011\u0001\u0011\u0005\u0011\u00d4\b\u0011\n\u0011\f\u0011\u00d7\t\u0011"+
		"\u0001\u0011\u0003\u0011\u00da\b\u0011\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015"+
		"\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0003\u0016\u0107\b\u0016"+
		"\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0001\u0017\u0005\u0017"+
		"\u010e\b\u0017\n\u0017\f\u0017\u0111\t\u0017\u0001\u0017\u0003\u0017\u0114"+
		"\b\u0017\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0005"+
		"\u0018\u011b\b\u0018\n\u0018\f\u0018\u011e\t\u0018\u0001\u0018\u0003\u0018"+
		"\u0121\b\u0018\u0001\u0019\u0001\u0019\u0001\u0019\u0003\u0019\u0126\b"+
		"\u0019\u0001\u0019\u0001\u0019\u0001\u001a\u0001\u001a\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0003\u001b\u0135\b\u001b\u0001\u001b\u0001\u001b\u0003"+
		"\u001b\u0139\b\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0003\u001b\u0141\b\u001b\u0001\u001b\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001"+
		"\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0005\u001b\u0155\b\u001b\n"+
		"\u001b\f\u001b\u0158\t\u001b\u0001\u001c\u0001\u001c\u0003\u001c\u015c"+
		"\b\u001c\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001"+
		"\u001e\u0001\u001e\u0001\u001e\u0005\u001e\u0166\b\u001e\n\u001e\f\u001e"+
		"\u0169\t\u001e\u0001\u001e\u0003\u001e\u016c\b\u001e\u0001\u001f\u0001"+
		"\u001f\u0001\u001f\u0001\u001f\u0001\u001f\u0001\u001f\u0003\u001f\u0174"+
		"\b\u001f\u0001 \u0001 \u0001 \u0001 \u0001 \u0003 \u017b\b \u0001!\u0001"+
		"!\u0001!\u0001!\u0001!\u0001\"\u0001\"\u0001\"\u0001\"\u0001\"\u0005\""+
		"\u0187\b\"\n\"\f\"\u018a\t\"\u0001\"\u0001\"\u0001#\u0001#\u0001#\u0001"+
		"#\u0001#\u0003#\u0193\b#\u0001#\u0001#\u0003#\u0197\b#\u0005#\u0199\b"+
		"#\n#\f#\u019c\t#\u0001#\u0001#\u0001$\u0001$\u0001$\u0001$\u0001$\u0001"+
		"%\u0001%\u0001%\u0001%\u0001%\u0001&\u0001&\u0001\'\u0001\'\u0001(\u0001"+
		"(\u0001)\u0001)\u0001*\u0001*\u0001+\u0001+\u0001,\u0001,\u0001-\u0001"+
		"-\u0001-\u0000\u00016.\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012"+
		"\u0014\u0016\u0018\u001a\u001c\u001e \"$&(*,.02468:<>@BDFHJLNPRTVXZ\u0000"+
		"\u0005\u0001\u0000\u0014\u0016\u0001\u0000\u0017\u0018\u0002\u0000\u0002"+
		"\u0003\u0019\u001a\u0001\u0000\u001b\u001c\u0001\u0000%(\u01c7\u0000\\"+
		"\u0001\u0000\u0000\u0000\u0002c\u0001\u0000\u0000\u0000\u0004f\u0001\u0000"+
		"\u0000\u0000\u0006n\u0001\u0000\u0000\u0000\bs\u0001\u0000\u0000\u0000"+
		"\nu\u0001\u0000\u0000\u0000\f\u0088\u0001\u0000\u0000\u0000\u000e\u0092"+
		"\u0001\u0000\u0000\u0000\u0010\u0095\u0001\u0000\u0000\u0000\u0012\u00a0"+
		"\u0001\u0000\u0000\u0000\u0014\u00ab\u0001\u0000\u0000\u0000\u0016\u00ad"+
		"\u0001\u0000\u0000\u0000\u0018\u00b0\u0001\u0000\u0000\u0000\u001a\u00b9"+
		"\u0001\u0000\u0000\u0000\u001c\u00c2\u0001\u0000\u0000\u0000\u001e\u00c6"+
		"\u0001\u0000\u0000\u0000 \u00cc\u0001\u0000\u0000\u0000\"\u00d1\u0001"+
		"\u0000\u0000\u0000$\u00db\u0001\u0000\u0000\u0000&\u00e3\u0001\u0000\u0000"+
		"\u0000(\u00ec\u0001\u0000\u0000\u0000*\u00f1\u0001\u0000\u0000\u0000,"+
		"\u00f9\u0001\u0000\u0000\u0000.\u0113\u0001\u0000\u0000\u00000\u0120\u0001"+
		"\u0000\u0000\u00002\u0122\u0001\u0000\u0000\u00004\u0129\u0001\u0000\u0000"+
		"\u00006\u0140\u0001\u0000\u0000\u00008\u015b\u0001\u0000\u0000\u0000:"+
		"\u015d\u0001\u0000\u0000\u0000<\u016b\u0001\u0000\u0000\u0000>\u0173\u0001"+
		"\u0000\u0000\u0000@\u017a\u0001\u0000\u0000\u0000B\u017c\u0001\u0000\u0000"+
		"\u0000D\u0181\u0001\u0000\u0000\u0000F\u018d\u0001\u0000\u0000\u0000H"+
		"\u019f\u0001\u0000\u0000\u0000J\u01a4\u0001\u0000\u0000\u0000L\u01a9\u0001"+
		"\u0000\u0000\u0000N\u01ab\u0001\u0000\u0000\u0000P\u01ad\u0001\u0000\u0000"+
		"\u0000R\u01af\u0001\u0000\u0000\u0000T\u01b1\u0001\u0000\u0000\u0000V"+
		"\u01b3\u0001\u0000\u0000\u0000X\u01b5\u0001\u0000\u0000\u0000Z\u01b7\u0001"+
		"\u0000\u0000\u0000\\]\u0003\u0002\u0001\u0000]^\u0003\u0006\u0003\u0000"+
		"^_\u0003\u000e\u0007\u0000_\u0001\u0001\u0000\u0000\u0000`b\u0003\u0004"+
		"\u0002\u0000a`\u0001\u0000\u0000\u0000be\u0001\u0000\u0000\u0000ca\u0001"+
		"\u0000\u0000\u0000cd\u0001\u0000\u0000\u0000d\u0003\u0001\u0000\u0000"+
		"\u0000ec\u0001\u0000\u0000\u0000fg\u0005\u0001\u0000\u0000gh\u0005\u0002"+
		"\u0000\u0000hi\u0003N\'\u0000ij\u0005\u0003\u0000\u0000j\u0005\u0001\u0000"+
		"\u0000\u0000km\u0003\b\u0004\u0000lk\u0001\u0000\u0000\u0000mp\u0001\u0000"+
		"\u0000\u0000nl\u0001\u0000\u0000\u0000no\u0001\u0000\u0000\u0000o\u0007"+
		"\u0001\u0000\u0000\u0000pn\u0001\u0000\u0000\u0000qt\u0003\n\u0005\u0000"+
		"rt\u0003\f\u0006\u0000sq\u0001\u0000\u0000\u0000sr\u0001\u0000\u0000\u0000"+
		"t\t\u0001\u0000\u0000\u0000uv\u0003L&\u0000vy\u0003P(\u0000wx\u0005\u0004"+
		"\u0000\u0000xz\u00036\u001b\u0000yw\u0001\u0000\u0000\u0000yz\u0001\u0000"+
		"\u0000\u0000z\u0083\u0001\u0000\u0000\u0000{|\u0005\u0005\u0000\u0000"+
		"|\u007f\u0003P(\u0000}~\u0005\u0004\u0000\u0000~\u0080\u00036\u001b\u0000"+
		"\u007f}\u0001\u0000\u0000\u0000\u007f\u0080\u0001\u0000\u0000\u0000\u0080"+
		"\u0082\u0001\u0000\u0000\u0000\u0081{\u0001\u0000\u0000\u0000\u0082\u0085"+
		"\u0001\u0000\u0000\u0000\u0083\u0081\u0001\u0000\u0000\u0000\u0083\u0084"+
		"\u0001\u0000\u0000\u0000\u0084\u0086\u0001\u0000\u0000\u0000\u0085\u0083"+
		"\u0001\u0000\u0000\u0000\u0086\u0087\u0005\u0006\u0000\u0000\u0087\u000b"+
		"\u0001\u0000\u0000\u0000\u0088\u0089\u0003L&\u0000\u0089\u008a\u0003P"+
		"(\u0000\u008a\u008b\u0005\u0007\u0000\u0000\u008b\u008c\u0003R)\u0000"+
		"\u008c\u008d\u0005\b\u0000\u0000\u008d\u008e\u0005\u0006\u0000\u0000\u008e"+
		"\r\u0001\u0000\u0000\u0000\u008f\u0091\u0003\u0010\b\u0000\u0090\u008f"+
		"\u0001\u0000\u0000\u0000\u0091\u0094\u0001\u0000\u0000\u0000\u0092\u0090"+
		"\u0001\u0000\u0000\u0000\u0092\u0093\u0001\u0000\u0000\u0000\u0093\u000f"+
		"\u0001\u0000\u0000\u0000\u0094\u0092\u0001\u0000\u0000\u0000\u0095\u0096"+
		"\u0003\u0012\t\u0000\u0096\u0097\u0003P(\u0000\u0097\u0098\u0005\t\u0000"+
		"\u0000\u0098\u0099\u0003\u0014\n\u0000\u0099\u009a\u0005\n\u0000\u0000"+
		"\u009a\u009b\u0005\u000b\u0000\u0000\u009b\u009c\u0003\u0018\f\u0000\u009c"+
		"\u009d\u0005\f\u0000\u0000\u009d\u0011\u0001\u0000\u0000\u0000\u009e\u00a1"+
		"\u0003L&\u0000\u009f\u00a1\u0005\r\u0000\u0000\u00a0\u009e\u0001\u0000"+
		"\u0000\u0000\u00a0\u009f\u0001\u0000\u0000\u0000\u00a1\u0013\u0001\u0000"+
		"\u0000\u0000\u00a2\u00a7\u0003\u0016\u000b\u0000\u00a3\u00a4\u0005\u0005"+
		"\u0000\u0000\u00a4\u00a6\u0003\u0016\u000b\u0000\u00a5\u00a3\u0001\u0000"+
		"\u0000\u0000\u00a6\u00a9\u0001\u0000\u0000\u0000\u00a7\u00a5\u0001\u0000"+
		"\u0000\u0000\u00a7\u00a8\u0001\u0000\u0000\u0000\u00a8\u00ac\u0001\u0000"+
		"\u0000\u0000\u00a9\u00a7\u0001\u0000\u0000\u0000\u00aa\u00ac\u0001\u0000"+
		"\u0000\u0000\u00ab\u00a2\u0001\u0000\u0000\u0000\u00ab\u00aa\u0001\u0000"+
		"\u0000\u0000\u00ac\u0015\u0001\u0000\u0000\u0000\u00ad\u00ae\u0003L&\u0000"+
		"\u00ae\u00af\u0003P(\u0000\u00af\u0017\u0001\u0000\u0000\u0000\u00b0\u00b1"+
		"\u0003\u001a\r\u0000\u00b1\u00b2\u00032\u0019\u0000\u00b2\u0019\u0001"+
		"\u0000\u0000\u0000\u00b3\u00b8\u0003\u001c\u000e\u0000\u00b4\u00b5\u0003"+
		"8\u001c\u0000\u00b5\u00b6\u0005\u0006\u0000\u0000\u00b6\u00b8\u0001\u0000"+
		"\u0000\u0000\u00b7\u00b3\u0001\u0000\u0000\u0000\u00b7\u00b4\u0001\u0000"+
		"\u0000\u0000\u00b8\u00bb\u0001\u0000\u0000\u0000\u00b9\u00b7\u0001\u0000"+
		"\u0000\u0000\u00b9\u00ba\u0001\u0000\u0000\u0000\u00ba\u001b\u0001\u0000"+
		"\u0000\u0000\u00bb\u00b9\u0001\u0000\u0000\u0000\u00bc\u00c3\u0003\b\u0004"+
		"\u0000\u00bd\u00c3\u0003\u001e\u000f\u0000\u00be\u00c3\u0003\"\u0011\u0000"+
		"\u00bf\u00c3\u0003*\u0015\u0000\u00c0\u00c3\u0003,\u0016\u0000\u00c1\u00c3"+
		"\u00032\u0019\u0000\u00c2\u00bc\u0001\u0000\u0000\u0000\u00c2\u00bd\u0001"+
		"\u0000\u0000\u0000\u00c2\u00be\u0001\u0000\u0000\u0000\u00c2\u00bf\u0001"+
		"\u0000\u0000\u0000\u00c2\u00c0\u0001\u0000\u0000\u0000\u00c2\u00c1\u0001"+
		"\u0000\u0000\u0000\u00c3\u001d\u0001\u0000\u0000\u0000\u00c4\u00c7\u0003"+
		"P(\u0000\u00c5\u00c7\u0003 \u0010\u0000\u00c6\u00c4\u0001\u0000\u0000"+
		"\u0000\u00c6\u00c5\u0001\u0000\u0000\u0000\u00c7\u00c8\u0001\u0000\u0000"+
		"\u0000\u00c8\u00c9\u0005\u0004\u0000\u0000\u00c9\u00ca\u00036\u001b\u0000"+
		"\u00ca\u00cb\u0005\u0006\u0000\u0000\u00cb\u001f\u0001\u0000\u0000\u0000"+
		"\u00cc\u00cd\u0003P(\u0000\u00cd\u00ce\u0005\u0007\u0000\u0000\u00ce\u00cf"+
		"\u00036\u001b\u0000\u00cf\u00d0\u0005\b\u0000\u0000\u00d0!\u0001\u0000"+
		"\u0000\u0000\u00d1\u00d5\u0003$\u0012\u0000\u00d2\u00d4\u0003&\u0013\u0000"+
		"\u00d3\u00d2\u0001\u0000\u0000\u0000\u00d4\u00d7\u0001\u0000\u0000\u0000"+
		"\u00d5\u00d3\u0001\u0000\u0000\u0000\u00d5\u00d6\u0001\u0000\u0000\u0000"+
		"\u00d6\u00d9\u0001\u0000\u0000\u0000\u00d7\u00d5\u0001\u0000\u0000\u0000"+
		"\u00d8\u00da\u0003(\u0014\u0000\u00d9\u00d8\u0001\u0000\u0000\u0000\u00d9"+
		"\u00da\u0001\u0000\u0000\u0000\u00da#\u0001\u0000\u0000\u0000\u00db\u00dc"+
		"\u0005\u000e\u0000\u0000\u00dc\u00dd\u0005\t\u0000\u0000\u00dd\u00de\u0003"+
		"4\u001a\u0000\u00de\u00df\u0005\n\u0000\u0000\u00df\u00e0\u0005\u000b"+
		"\u0000\u0000\u00e0\u00e1\u0003\u001a\r\u0000\u00e1\u00e2\u0005\f\u0000"+
		"\u0000\u00e2%\u0001\u0000\u0000\u0000\u00e3\u00e4\u0005\u000f\u0000\u0000"+
		"\u00e4\u00e5\u0005\u000e\u0000\u0000\u00e5\u00e6\u0005\t\u0000\u0000\u00e6"+
		"\u00e7\u00034\u001a\u0000\u00e7\u00e8\u0005\n\u0000\u0000\u00e8\u00e9"+
		"\u0005\u000b\u0000\u0000\u00e9\u00ea\u0003\u001a\r\u0000\u00ea\u00eb\u0005"+
		"\f\u0000\u0000\u00eb\'\u0001\u0000\u0000\u0000\u00ec\u00ed\u0005\u000f"+
		"\u0000\u0000\u00ed\u00ee\u0005\u000b\u0000\u0000\u00ee\u00ef\u0003\u001a"+
		"\r\u0000\u00ef\u00f0\u0005\f\u0000\u0000\u00f0)\u0001\u0000\u0000\u0000"+
		"\u00f1\u00f2\u0005\u0010\u0000\u0000\u00f2\u00f3\u0005\t\u0000\u0000\u00f3"+
		"\u00f4\u00034\u001a\u0000\u00f4\u00f5\u0005\n\u0000\u0000\u00f5\u00f6"+
		"\u0005\u000b\u0000\u0000\u00f6\u00f7\u0003\u001a\r\u0000\u00f7\u00f8\u0005"+
		"\f\u0000\u0000\u00f8+\u0001\u0000\u0000\u0000\u00f9\u00fa\u0005\u0011"+
		"\u0000\u0000\u00fa\u00fb\u0005\t\u0000\u0000\u00fb\u00fc\u0003.\u0017"+
		"\u0000\u00fc\u00fd\u0005\u0006\u0000\u0000\u00fd\u00fe\u00034\u001a\u0000"+
		"\u00fe\u00ff\u0005\u0006\u0000\u0000\u00ff\u0100\u00030\u0018\u0000\u0100"+
		"\u0106\u0005\n\u0000\u0000\u0101\u0102\u0005\u000b\u0000\u0000\u0102\u0103"+
		"\u0003\u001a\r\u0000\u0103\u0104\u0005\f\u0000\u0000\u0104\u0107\u0001"+
		"\u0000\u0000\u0000\u0105\u0107\u0005\u0006\u0000\u0000\u0106\u0101\u0001"+
		"\u0000\u0000\u0000\u0106\u0105\u0001\u0000\u0000\u0000\u0107-\u0001\u0000"+
		"\u0000\u0000\u0108\u0109\u0003P(\u0000\u0109\u010a\u0005\u0004\u0000\u0000"+
		"\u010a\u010f\u00036\u001b\u0000\u010b\u010c\u0005\u0005\u0000\u0000\u010c"+
		"\u010e\u0003.\u0017\u0000\u010d\u010b\u0001\u0000\u0000\u0000\u010e\u0111"+
		"\u0001\u0000\u0000\u0000\u010f\u010d\u0001\u0000\u0000\u0000\u010f\u0110"+
		"\u0001\u0000\u0000\u0000\u0110\u0114\u0001\u0000\u0000\u0000\u0111\u010f"+
		"\u0001\u0000\u0000\u0000\u0112\u0114\u0001\u0000\u0000\u0000\u0113\u0108"+
		"\u0001\u0000\u0000\u0000\u0113\u0112\u0001\u0000\u0000\u0000\u0114/\u0001"+
		"\u0000\u0000\u0000\u0115\u0116\u0003P(\u0000\u0116\u0117\u0005\u0004\u0000"+
		"\u0000\u0117\u011c\u00036\u001b\u0000\u0118\u0119\u0005\u0005\u0000\u0000"+
		"\u0119\u011b\u00030\u0018\u0000\u011a\u0118\u0001\u0000\u0000\u0000\u011b"+
		"\u011e\u0001\u0000\u0000\u0000\u011c\u011a\u0001\u0000\u0000\u0000\u011c"+
		"\u011d\u0001\u0000\u0000\u0000\u011d\u0121\u0001\u0000\u0000\u0000\u011e"+
		"\u011c\u0001\u0000\u0000\u0000\u011f\u0121\u0001\u0000\u0000\u0000\u0120"+
		"\u0115\u0001\u0000\u0000\u0000\u0120\u011f\u0001\u0000\u0000\u0000\u0121"+
		"1\u0001\u0000\u0000\u0000\u0122\u0125\u0005\u0012\u0000\u0000\u0123\u0126"+
		"\u0003P(\u0000\u0124\u0126\u0003R)\u0000\u0125\u0123\u0001\u0000\u0000"+
		"\u0000\u0125\u0124\u0001\u0000\u0000\u0000\u0125\u0126\u0001\u0000\u0000"+
		"\u0000\u0126\u0127\u0001\u0000\u0000\u0000\u0127\u0128\u0005\u0006\u0000"+
		"\u0000\u01283\u0001\u0000\u0000\u0000\u0129\u012a\u00036\u001b\u0000\u012a"+
		"5\u0001\u0000\u0000\u0000\u012b\u012c\u0006\u001b\uffff\uffff\u0000\u012c"+
		"\u012d\u0005\t\u0000\u0000\u012d\u012e\u00036\u001b\u0000\u012e\u012f"+
		"\u0005\n\u0000\u0000\u012f\u0141\u0001\u0000\u0000\u0000\u0130\u0131\u0005"+
		"\u0013\u0000\u0000\u0131\u0141\u00036\u001b\u000f\u0132\u0141\u0003P("+
		"\u0000\u0133\u0135\u0005\u0018\u0000\u0000\u0134\u0133\u0001\u0000\u0000"+
		"\u0000\u0134\u0135\u0001\u0000\u0000\u0000\u0135\u0136\u0001\u0000\u0000"+
		"\u0000\u0136\u0141\u0003R)\u0000\u0137\u0139\u0005\u0018\u0000\u0000\u0138"+
		"\u0137\u0001\u0000\u0000\u0000\u0138\u0139\u0001\u0000\u0000\u0000\u0139"+
		"\u013a\u0001\u0000\u0000\u0000\u013a\u0141\u0003T*\u0000\u013b\u0141\u0003"+
		"V+\u0000\u013c\u0141\u0003X,\u0000\u013d\u0141\u0003 \u0010\u0000\u013e"+
		"\u0141\u0003Z-\u0000\u013f\u0141\u00038\u001c\u0000\u0140\u012b\u0001"+
		"\u0000\u0000\u0000\u0140\u0130\u0001\u0000\u0000\u0000\u0140\u0132\u0001"+
		"\u0000\u0000\u0000\u0140\u0134\u0001\u0000\u0000\u0000\u0140\u0138\u0001"+
		"\u0000\u0000\u0000\u0140\u013b\u0001\u0000\u0000\u0000\u0140\u013c\u0001"+
		"\u0000\u0000\u0000\u0140\u013d\u0001\u0000\u0000\u0000\u0140\u013e\u0001"+
		"\u0000\u0000\u0000\u0140\u013f\u0001\u0000\u0000\u0000\u0141\u0156\u0001"+
		"\u0000\u0000\u0000\u0142\u0143\n\u000e\u0000\u0000\u0143\u0144\u0007\u0000"+
		"\u0000\u0000\u0144\u0155\u00036\u001b\u000f\u0145\u0146\n\r\u0000\u0000"+
		"\u0146\u0147\u0007\u0001\u0000\u0000\u0147\u0155\u00036\u001b\u000e\u0148"+
		"\u0149\n\f\u0000\u0000\u0149\u014a\u0007\u0002\u0000\u0000\u014a\u0155"+
		"\u00036\u001b\r\u014b\u014c\n\u000b\u0000\u0000\u014c\u014d\u0007\u0003"+
		"\u0000\u0000\u014d\u0155\u00036\u001b\f\u014e\u014f\n\n\u0000\u0000\u014f"+
		"\u0150\u0005\u001d\u0000\u0000\u0150\u0155\u00036\u001b\u000b\u0151\u0152"+
		"\n\t\u0000\u0000\u0152\u0153\u0005\u001e\u0000\u0000\u0153\u0155\u0003"+
		"6\u001b\n\u0154\u0142\u0001\u0000\u0000\u0000\u0154\u0145\u0001\u0000"+
		"\u0000\u0000\u0154\u0148\u0001\u0000\u0000\u0000\u0154\u014b\u0001\u0000"+
		"\u0000\u0000\u0154\u014e\u0001\u0000\u0000\u0000\u0154\u0151\u0001\u0000"+
		"\u0000\u0000\u0155\u0158\u0001\u0000\u0000\u0000\u0156\u0154\u0001\u0000"+
		"\u0000\u0000\u0156\u0157\u0001\u0000\u0000\u0000\u01577\u0001\u0000\u0000"+
		"\u0000\u0158\u0156\u0001\u0000\u0000\u0000\u0159\u015c\u0003@ \u0000\u015a"+
		"\u015c\u0003:\u001d\u0000\u015b\u0159\u0001\u0000\u0000\u0000\u015b\u015a"+
		"\u0001\u0000\u0000\u0000\u015c9\u0001\u0000\u0000\u0000\u015d\u015e\u0003"+
		"P(\u0000\u015e\u015f\u0005\t\u0000\u0000\u015f\u0160\u0003<\u001e\u0000"+
		"\u0160\u0161\u0005\n\u0000\u0000\u0161;\u0001\u0000\u0000\u0000\u0162"+
		"\u0167\u0003>\u001f\u0000\u0163\u0164\u0005\u0005\u0000\u0000\u0164\u0166"+
		"\u0003>\u001f\u0000\u0165\u0163\u0001\u0000\u0000\u0000\u0166\u0169\u0001"+
		"\u0000\u0000\u0000\u0167\u0165\u0001\u0000\u0000\u0000\u0167\u0168\u0001"+
		"\u0000\u0000\u0000\u0168\u016c\u0001\u0000\u0000\u0000\u0169\u0167\u0001"+
		"\u0000\u0000\u0000\u016a\u016c\u0001\u0000\u0000\u0000\u016b\u0162\u0001"+
		"\u0000\u0000\u0000\u016b\u016a\u0001\u0000\u0000\u0000\u016c=\u0001\u0000"+
		"\u0000\u0000\u016d\u0174\u0003P(\u0000\u016e\u0174\u0003R)\u0000\u016f"+
		"\u0174\u0003T*\u0000\u0170\u0174\u0003V+\u0000\u0171\u0174\u0003X,\u0000"+
		"\u0172\u0174\u0003Z-\u0000\u0173\u016d\u0001\u0000\u0000\u0000\u0173\u016e"+
		"\u0001\u0000\u0000\u0000\u0173\u016f\u0001\u0000\u0000\u0000\u0173\u0170"+
		"\u0001\u0000\u0000\u0000\u0173\u0171\u0001\u0000\u0000\u0000\u0173\u0172"+
		"\u0001\u0000\u0000\u0000\u0174?\u0001\u0000\u0000\u0000\u0175\u017b\u0003"+
		"B!\u0000\u0176\u017b\u0003D\"\u0000\u0177\u017b\u0003F#\u0000\u0178\u017b"+
		"\u0003H$\u0000\u0179\u017b\u0003J%\u0000\u017a\u0175\u0001\u0000\u0000"+
		"\u0000\u017a\u0176\u0001\u0000\u0000\u0000\u017a\u0177\u0001\u0000\u0000"+
		"\u0000\u017a\u0178\u0001\u0000\u0000\u0000\u017a\u0179\u0001\u0000\u0000"+
		"\u0000\u017bA\u0001\u0000\u0000\u0000\u017c\u017d\u0005\u001f\u0000\u0000"+
		"\u017d\u017e\u0005\t\u0000\u0000\u017e\u017f\u0003P(\u0000\u017f\u0180"+
		"\u0005\n\u0000\u0000\u0180C\u0001\u0000\u0000\u0000\u0181\u0182\u0005"+
		" \u0000\u0000\u0182\u0183\u0005\t\u0000\u0000\u0183\u0188\u0003Z-\u0000"+
		"\u0184\u0185\u0005\u0005\u0000\u0000\u0185\u0187\u00036\u001b\u0000\u0186"+
		"\u0184\u0001\u0000\u0000\u0000\u0187\u018a\u0001\u0000\u0000\u0000\u0188"+
		"\u0186\u0001\u0000\u0000\u0000\u0188\u0189\u0001\u0000\u0000\u0000\u0189"+
		"\u018b\u0001\u0000\u0000\u0000\u018a\u0188\u0001\u0000\u0000\u0000\u018b"+
		"\u018c\u0005\n\u0000\u0000\u018cE\u0001\u0000\u0000\u0000\u018d\u018e"+
		"\u0005!\u0000\u0000\u018e\u018f\u0005\t\u0000\u0000\u018f\u019a\u0003"+
		"Z-\u0000\u0190\u0192\u0005\u0005\u0000\u0000\u0191\u0193\u0005\"\u0000"+
		"\u0000\u0192\u0191\u0001\u0000\u0000\u0000\u0192\u0193\u0001\u0000\u0000"+
		"\u0000\u0193\u0196\u0001\u0000\u0000\u0000\u0194\u0197\u0003P(\u0000\u0195"+
		"\u0197\u0003 \u0010\u0000\u0196\u0194\u0001\u0000\u0000\u0000\u0196\u0195"+
		"\u0001\u0000\u0000\u0000\u0197\u0199\u0001\u0000\u0000\u0000\u0198\u0190"+
		"\u0001\u0000\u0000\u0000\u0199\u019c\u0001\u0000\u0000\u0000\u019a\u0198"+
		"\u0001\u0000\u0000\u0000\u019a\u019b\u0001\u0000\u0000\u0000\u019b\u019d"+
		"\u0001\u0000\u0000\u0000\u019c\u019a\u0001\u0000\u0000\u0000\u019d\u019e"+
		"\u0005\n\u0000\u0000\u019eG\u0001\u0000\u0000\u0000\u019f\u01a0\u0005"+
		"#\u0000\u0000\u01a0\u01a1\u0005\t\u0000\u0000\u01a1\u01a2\u0003P(\u0000"+
		"\u01a2\u01a3\u0005\n\u0000\u0000\u01a3I\u0001\u0000\u0000\u0000\u01a4"+
		"\u01a5\u0005$\u0000\u0000\u01a5\u01a6\u0005\t\u0000\u0000\u01a6\u01a7"+
		"\u0003P(\u0000\u01a7\u01a8\u0005\n\u0000\u0000\u01a8K\u0001\u0000\u0000"+
		"\u0000\u01a9\u01aa\u0007\u0004\u0000\u0000\u01aaM\u0001\u0000\u0000\u0000"+
		"\u01ab\u01ac\u0005/\u0000\u0000\u01acO\u0001\u0000\u0000\u0000\u01ad\u01ae"+
		"\u0005.\u0000\u0000\u01aeQ\u0001\u0000\u0000\u0000\u01af\u01b0\u0005)"+
		"\u0000\u0000\u01b0S\u0001\u0000\u0000\u0000\u01b1\u01b2\u0005*\u0000\u0000"+
		"\u01b2U\u0001\u0000\u0000\u0000\u01b3\u01b4\u0005+\u0000\u0000\u01b4W"+
		"\u0001\u0000\u0000\u0000\u01b5\u01b6\u0005,\u0000\u0000\u01b6Y\u0001\u0000"+
		"\u0000\u0000\u01b7\u01b8\u0005-\u0000\u0000\u01b8[\u0001\u0000\u0000\u0000"+
		"$cnsy\u007f\u0083\u0092\u00a0\u00a7\u00ab\u00b7\u00b9\u00c2\u00c6\u00d5"+
		"\u00d9\u0106\u010f\u0113\u011c\u0120\u0125\u0134\u0138\u0140\u0154\u0156"+
		"\u015b\u0167\u016b\u0173\u017a\u0188\u0192\u0196\u019a";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}