// Generated from c:/Users/23040/Documents/GitHub/compilation-project/simpleCGrammar/simpleCGrammar.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue", "this-escape"})
public class simpleCGrammarLexer extends Lexer {
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
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
			"T__17", "Integer", "Double", "Char", "String", "Bool", "Identifier", 
			"ArithmeticOperator", "RelationalOperator", "LogicalOperator", "AssignmentOperator", 
			"Keyword", "LParen", "RParen", "LBrace", "RBrace", "LBracket", "RBracket", 
			"Comma", "Semi", "Colon", "LineComment", "BlockComment", "WS", "LibraryName"
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


	public simpleCGrammarLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "simpleCGrammar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\u0004\u0000*\u0174\u0006\uffff\uffff\u0002\u0000\u0007\u0000\u0002\u0001"+
		"\u0007\u0001\u0002\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004"+
		"\u0007\u0004\u0002\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007"+
		"\u0007\u0007\u0002\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b"+
		"\u0007\u000b\u0002\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002"+
		"\u000f\u0007\u000f\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002"+
		"\u0012\u0007\u0012\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002"+
		"\u0015\u0007\u0015\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002"+
		"\u0018\u0007\u0018\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002"+
		"\u001b\u0007\u001b\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002"+
		"\u001e\u0007\u001e\u0002\u001f\u0007\u001f\u0002 \u0007 \u0002!\u0007"+
		"!\u0002\"\u0007\"\u0002#\u0007#\u0002$\u0007$\u0002%\u0007%\u0002&\u0007"+
		"&\u0002\'\u0007\'\u0002(\u0007(\u0002)\u0007)\u0001\u0000\u0001\u0000"+
		"\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000"+
		"\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000f\u0001\u000f\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0012\u0003\u0012\u00ad\b\u0012\u0001"+
		"\u0012\u0004\u0012\u00b0\b\u0012\u000b\u0012\f\u0012\u00b1\u0001\u0013"+
		"\u0003\u0013\u00b5\b\u0013\u0001\u0013\u0004\u0013\u00b8\b\u0013\u000b"+
		"\u0013\f\u0013\u00b9\u0001\u0013\u0001\u0013\u0004\u0013\u00be\b\u0013"+
		"\u000b\u0013\f\u0013\u00bf\u0003\u0013\u00c2\b\u0013\u0001\u0014\u0001"+
		"\u0014\u0001\u0014\u0001\u0014\u0003\u0014\u00c8\b\u0014\u0001\u0014\u0001"+
		"\u0014\u0001\u0015\u0001\u0015\u0005\u0015\u00ce\b\u0015\n\u0015\f\u0015"+
		"\u00d1\t\u0015\u0001\u0015\u0001\u0015\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0003\u0016\u00de\b\u0016\u0001\u0017\u0001\u0017\u0005\u0017\u00e2\b"+
		"\u0017\n\u0017\f\u0017\u00e5\t\u0017\u0001\u0018\u0001\u0018\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0003\u0019\u00f3\b\u0019\u0001\u001a"+
		"\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0003\u001a\u00fa\b\u001a"+
		"\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b"+
		"\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b"+
		"\u0001\u001b\u0001\u001b\u0001\u001b\u0003\u001b\u010b\b\u001b\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c\u0003\u001c\u0136\b\u001c"+
		"\u0001\u001d\u0001\u001d\u0001\u001e\u0001\u001e\u0001\u001f\u0001\u001f"+
		"\u0001 \u0001 \u0001!\u0001!\u0001\"\u0001\"\u0001#\u0001#\u0001$\u0001"+
		"$\u0001%\u0001%\u0001&\u0001&\u0001&\u0001&\u0005&\u014e\b&\n&\f&\u0151"+
		"\t&\u0001&\u0001&\u0001\'\u0001\'\u0001\'\u0001\'\u0005\'\u0159\b\'\n"+
		"\'\f\'\u015c\t\'\u0001\'\u0001\'\u0001\'\u0001\'\u0001\'\u0001(\u0004"+
		"(\u0164\b(\u000b(\f(\u0165\u0001(\u0001(\u0001)\u0001)\u0005)\u016c\b"+
		")\n)\f)\u016f\t)\u0001)\u0001)\u0003)\u0173\b)\u0002\u00cf\u015a\u0000"+
		"*\u0001\u0001\u0003\u0002\u0005\u0003\u0007\u0004\t\u0005\u000b\u0006"+
		"\r\u0007\u000f\b\u0011\t\u0013\n\u0015\u000b\u0017\f\u0019\r\u001b\u000e"+
		"\u001d\u000f\u001f\u0010!\u0011#\u0012%\u0013\'\u0014)\u0015+\u0016-\u0017"+
		"/\u00181\u00193\u001a5\u001b7\u001c9\u001d;\u001e=\u001f? A!C\"E#G$I%"+
		"K&M\'O(Q)S*\u0001\u0000\b\u0001\u000009\b\u0000\"\"\'\'\\\\bbffnnrrtt"+
		"\u0002\u0000\'\'\\\\\u0003\u0000AZ__az\u0004\u000009AZ__az\u0004\u0000"+
		"%%*+--//\u0002\u0000\n\n\r\r\u0003\u0000\t\n\r\r  \u0199\u0000\u0001\u0001"+
		"\u0000\u0000\u0000\u0000\u0003\u0001\u0000\u0000\u0000\u0000\u0005\u0001"+
		"\u0000\u0000\u0000\u0000\u0007\u0001\u0000\u0000\u0000\u0000\t\u0001\u0000"+
		"\u0000\u0000\u0000\u000b\u0001\u0000\u0000\u0000\u0000\r\u0001\u0000\u0000"+
		"\u0000\u0000\u000f\u0001\u0000\u0000\u0000\u0000\u0011\u0001\u0000\u0000"+
		"\u0000\u0000\u0013\u0001\u0000\u0000\u0000\u0000\u0015\u0001\u0000\u0000"+
		"\u0000\u0000\u0017\u0001\u0000\u0000\u0000\u0000\u0019\u0001\u0000\u0000"+
		"\u0000\u0000\u001b\u0001\u0000\u0000\u0000\u0000\u001d\u0001\u0000\u0000"+
		"\u0000\u0000\u001f\u0001\u0000\u0000\u0000\u0000!\u0001\u0000\u0000\u0000"+
		"\u0000#\u0001\u0000\u0000\u0000\u0000%\u0001\u0000\u0000\u0000\u0000\'"+
		"\u0001\u0000\u0000\u0000\u0000)\u0001\u0000\u0000\u0000\u0000+\u0001\u0000"+
		"\u0000\u0000\u0000-\u0001\u0000\u0000\u0000\u0000/\u0001\u0000\u0000\u0000"+
		"\u00001\u0001\u0000\u0000\u0000\u00003\u0001\u0000\u0000\u0000\u00005"+
		"\u0001\u0000\u0000\u0000\u00007\u0001\u0000\u0000\u0000\u00009\u0001\u0000"+
		"\u0000\u0000\u0000;\u0001\u0000\u0000\u0000\u0000=\u0001\u0000\u0000\u0000"+
		"\u0000?\u0001\u0000\u0000\u0000\u0000A\u0001\u0000\u0000\u0000\u0000C"+
		"\u0001\u0000\u0000\u0000\u0000E\u0001\u0000\u0000\u0000\u0000G\u0001\u0000"+
		"\u0000\u0000\u0000I\u0001\u0000\u0000\u0000\u0000K\u0001\u0000\u0000\u0000"+
		"\u0000M\u0001\u0000\u0000\u0000\u0000O\u0001\u0000\u0000\u0000\u0000Q"+
		"\u0001\u0000\u0000\u0000\u0000S\u0001\u0000\u0000\u0000\u0001U\u0001\u0000"+
		"\u0000\u0000\u0003^\u0001\u0000\u0000\u0000\u0005`\u0001\u0000\u0000\u0000"+
		"\u0007b\u0001\u0000\u0000\u0000\ti\u0001\u0000\u0000\u0000\u000bk\u0001"+
		"\u0000\u0000\u0000\rp\u0001\u0000\u0000\u0000\u000fs\u0001\u0000\u0000"+
		"\u0000\u0011x\u0001\u0000\u0000\u0000\u0013~\u0001\u0000\u0000\u0000\u0015"+
		"\u0082\u0001\u0000\u0000\u0000\u0017\u0089\u0001\u0000\u0000\u0000\u0019"+
		"\u008b\u0001\u0000\u0000\u0000\u001b\u0090\u0001\u0000\u0000\u0000\u001d"+
		"\u0096\u0001\u0000\u0000\u0000\u001f\u009a\u0001\u0000\u0000\u0000!\u00a1"+
		"\u0001\u0000\u0000\u0000#\u00a6\u0001\u0000\u0000\u0000%\u00ac\u0001\u0000"+
		"\u0000\u0000\'\u00b4\u0001\u0000\u0000\u0000)\u00c3\u0001\u0000\u0000"+
		"\u0000+\u00cb\u0001\u0000\u0000\u0000-\u00dd\u0001\u0000\u0000\u0000/"+
		"\u00df\u0001\u0000\u0000\u00001\u00e6\u0001\u0000\u0000\u00003\u00f2\u0001"+
		"\u0000\u0000\u00005\u00f9\u0001\u0000\u0000\u00007\u010a\u0001\u0000\u0000"+
		"\u00009\u0135\u0001\u0000\u0000\u0000;\u0137\u0001\u0000\u0000\u0000="+
		"\u0139\u0001\u0000\u0000\u0000?\u013b\u0001\u0000\u0000\u0000A\u013d\u0001"+
		"\u0000\u0000\u0000C\u013f\u0001\u0000\u0000\u0000E\u0141\u0001\u0000\u0000"+
		"\u0000G\u0143\u0001\u0000\u0000\u0000I\u0145\u0001\u0000\u0000\u0000K"+
		"\u0147\u0001\u0000\u0000\u0000M\u0149\u0001\u0000\u0000\u0000O\u0154\u0001"+
		"\u0000\u0000\u0000Q\u0163\u0001\u0000\u0000\u0000S\u0169\u0001\u0000\u0000"+
		"\u0000UV\u0005#\u0000\u0000VW\u0005i\u0000\u0000WX\u0005n\u0000\u0000"+
		"XY\u0005c\u0000\u0000YZ\u0005l\u0000\u0000Z[\u0005u\u0000\u0000[\\\u0005"+
		"d\u0000\u0000\\]\u0005e\u0000\u0000]\u0002\u0001\u0000\u0000\u0000^_\u0005"+
		"<\u0000\u0000_\u0004\u0001\u0000\u0000\u0000`a\u0005>\u0000\u0000a\u0006"+
		"\u0001\u0000\u0000\u0000bc\u0005s\u0000\u0000cd\u0005t\u0000\u0000de\u0005"+
		"r\u0000\u0000ef\u0005u\u0000\u0000fg\u0005c\u0000\u0000gh\u0005t\u0000"+
		"\u0000h\b\u0001\u0000\u0000\u0000ij\u0005=\u0000\u0000j\n\u0001\u0000"+
		"\u0000\u0000kl\u0005v\u0000\u0000lm\u0005o\u0000\u0000mn\u0005i\u0000"+
		"\u0000no\u0005d\u0000\u0000o\f\u0001\u0000\u0000\u0000pq\u0005i\u0000"+
		"\u0000qr\u0005f\u0000\u0000r\u000e\u0001\u0000\u0000\u0000st\u0005e\u0000"+
		"\u0000tu\u0005l\u0000\u0000uv\u0005s\u0000\u0000vw\u0005e\u0000\u0000"+
		"w\u0010\u0001\u0000\u0000\u0000xy\u0005w\u0000\u0000yz\u0005h\u0000\u0000"+
		"z{\u0005i\u0000\u0000{|\u0005l\u0000\u0000|}\u0005e\u0000\u0000}\u0012"+
		"\u0001\u0000\u0000\u0000~\u007f\u0005f\u0000\u0000\u007f\u0080\u0005o"+
		"\u0000\u0000\u0080\u0081\u0005r\u0000\u0000\u0081\u0014\u0001\u0000\u0000"+
		"\u0000\u0082\u0083\u0005r\u0000\u0000\u0083\u0084\u0005e\u0000\u0000\u0084"+
		"\u0085\u0005t\u0000\u0000\u0085\u0086\u0005u\u0000\u0000\u0086\u0087\u0005"+
		"r\u0000\u0000\u0087\u0088\u0005n\u0000\u0000\u0088\u0016\u0001\u0000\u0000"+
		"\u0000\u0089\u008a\u0005!\u0000\u0000\u008a\u0018\u0001\u0000\u0000\u0000"+
		"\u008b\u008c\u0005t\u0000\u0000\u008c\u008d\u0005r\u0000\u0000\u008d\u008e"+
		"\u0005u\u0000\u0000\u008e\u008f\u0005e\u0000\u0000\u008f\u001a\u0001\u0000"+
		"\u0000\u0000\u0090\u0091\u0005f\u0000\u0000\u0091\u0092\u0005a\u0000\u0000"+
		"\u0092\u0093\u0005l\u0000\u0000\u0093\u0094\u0005s\u0000\u0000\u0094\u0095"+
		"\u0005e\u0000\u0000\u0095\u001c\u0001\u0000\u0000\u0000\u0096\u0097\u0005"+
		"i\u0000\u0000\u0097\u0098\u0005n\u0000\u0000\u0098\u0099\u0005t\u0000"+
		"\u0000\u0099\u001e\u0001\u0000\u0000\u0000\u009a\u009b\u0005d\u0000\u0000"+
		"\u009b\u009c\u0005o\u0000\u0000\u009c\u009d\u0005u\u0000\u0000\u009d\u009e"+
		"\u0005b\u0000\u0000\u009e\u009f\u0005l\u0000\u0000\u009f\u00a0\u0005e"+
		"\u0000\u0000\u00a0 \u0001\u0000\u0000\u0000\u00a1\u00a2\u0005c\u0000\u0000"+
		"\u00a2\u00a3\u0005h\u0000\u0000\u00a3\u00a4\u0005a\u0000\u0000\u00a4\u00a5"+
		"\u0005r\u0000\u0000\u00a5\"\u0001\u0000\u0000\u0000\u00a6\u00a7\u0005"+
		"b\u0000\u0000\u00a7\u00a8\u0005o\u0000\u0000\u00a8\u00a9\u0005o\u0000"+
		"\u0000\u00a9\u00aa\u0005l\u0000\u0000\u00aa$\u0001\u0000\u0000\u0000\u00ab"+
		"\u00ad\u0005-\u0000\u0000\u00ac\u00ab\u0001\u0000\u0000\u0000\u00ac\u00ad"+
		"\u0001\u0000\u0000\u0000\u00ad\u00af\u0001\u0000\u0000\u0000\u00ae\u00b0"+
		"\u0007\u0000\u0000\u0000\u00af\u00ae\u0001\u0000\u0000\u0000\u00b0\u00b1"+
		"\u0001\u0000\u0000\u0000\u00b1\u00af\u0001\u0000\u0000\u0000\u00b1\u00b2"+
		"\u0001\u0000\u0000\u0000\u00b2&\u0001\u0000\u0000\u0000\u00b3\u00b5\u0005"+
		"-\u0000\u0000\u00b4\u00b3\u0001\u0000\u0000\u0000\u00b4\u00b5\u0001\u0000"+
		"\u0000\u0000\u00b5\u00b7\u0001\u0000\u0000\u0000\u00b6\u00b8\u0007\u0000"+
		"\u0000\u0000\u00b7\u00b6\u0001\u0000\u0000\u0000\u00b8\u00b9\u0001\u0000"+
		"\u0000\u0000\u00b9\u00b7\u0001\u0000\u0000\u0000\u00b9\u00ba\u0001\u0000"+
		"\u0000\u0000\u00ba\u00c1\u0001\u0000\u0000\u0000\u00bb\u00bd\u0005.\u0000"+
		"\u0000\u00bc\u00be\u0007\u0000\u0000\u0000\u00bd\u00bc\u0001\u0000\u0000"+
		"\u0000\u00be\u00bf\u0001\u0000\u0000\u0000\u00bf\u00bd\u0001\u0000\u0000"+
		"\u0000\u00bf\u00c0\u0001\u0000\u0000\u0000\u00c0\u00c2\u0001\u0000\u0000"+
		"\u0000\u00c1\u00bb\u0001\u0000\u0000\u0000\u00c1\u00c2\u0001\u0000\u0000"+
		"\u0000\u00c2(\u0001\u0000\u0000\u0000\u00c3\u00c7\u0005\'\u0000\u0000"+
		"\u00c4\u00c5\u0005\\\u0000\u0000\u00c5\u00c8\u0007\u0001\u0000\u0000\u00c6"+
		"\u00c8\b\u0002\u0000\u0000\u00c7\u00c4\u0001\u0000\u0000\u0000\u00c7\u00c6"+
		"\u0001\u0000\u0000\u0000\u00c8\u00c9\u0001\u0000\u0000\u0000\u00c9\u00ca"+
		"\u0005\'\u0000\u0000\u00ca*\u0001\u0000\u0000\u0000\u00cb\u00cf\u0005"+
		"\"\u0000\u0000\u00cc\u00ce\t\u0000\u0000\u0000\u00cd\u00cc\u0001\u0000"+
		"\u0000\u0000\u00ce\u00d1\u0001\u0000\u0000\u0000\u00cf\u00d0\u0001\u0000"+
		"\u0000\u0000\u00cf\u00cd\u0001\u0000\u0000\u0000\u00d0\u00d2\u0001\u0000"+
		"\u0000\u0000\u00d1\u00cf\u0001\u0000\u0000\u0000\u00d2\u00d3\u0005\"\u0000"+
		"\u0000\u00d3,\u0001\u0000\u0000\u0000\u00d4\u00d5\u0005t\u0000\u0000\u00d5"+
		"\u00d6\u0005r\u0000\u0000\u00d6\u00d7\u0005u\u0000\u0000\u00d7\u00de\u0005"+
		"e\u0000\u0000\u00d8\u00d9\u0005f\u0000\u0000\u00d9\u00da\u0005a\u0000"+
		"\u0000\u00da\u00db\u0005l\u0000\u0000\u00db\u00dc\u0005s\u0000\u0000\u00dc"+
		"\u00de\u0005e\u0000\u0000\u00dd\u00d4\u0001\u0000\u0000\u0000\u00dd\u00d8"+
		"\u0001\u0000\u0000\u0000\u00de.\u0001\u0000\u0000\u0000\u00df\u00e3\u0007"+
		"\u0003\u0000\u0000\u00e0\u00e2\u0007\u0004\u0000\u0000\u00e1\u00e0\u0001"+
		"\u0000\u0000\u0000\u00e2\u00e5\u0001\u0000\u0000\u0000\u00e3\u00e1\u0001"+
		"\u0000\u0000\u0000\u00e3\u00e4\u0001\u0000\u0000\u0000\u00e40\u0001\u0000"+
		"\u0000\u0000\u00e5\u00e3\u0001\u0000\u0000\u0000\u00e6\u00e7\u0007\u0005"+
		"\u0000\u0000\u00e72\u0001\u0000\u0000\u0000\u00e8\u00e9\u0005=\u0000\u0000"+
		"\u00e9\u00f3\u0005=\u0000\u0000\u00ea\u00eb\u0005!\u0000\u0000\u00eb\u00f3"+
		"\u0005=\u0000\u0000\u00ec\u00f3\u0005<\u0000\u0000\u00ed\u00ee\u0005<"+
		"\u0000\u0000\u00ee\u00f3\u0005=\u0000\u0000\u00ef\u00f3\u0005>\u0000\u0000"+
		"\u00f0\u00f1\u0005>\u0000\u0000\u00f1\u00f3\u0005=\u0000\u0000\u00f2\u00e8"+
		"\u0001\u0000\u0000\u0000\u00f2\u00ea\u0001\u0000\u0000\u0000\u00f2\u00ec"+
		"\u0001\u0000\u0000\u0000\u00f2\u00ed\u0001\u0000\u0000\u0000\u00f2\u00ef"+
		"\u0001\u0000\u0000\u0000\u00f2\u00f0\u0001\u0000\u0000\u0000\u00f34\u0001"+
		"\u0000\u0000\u0000\u00f4\u00f5\u0005&\u0000\u0000\u00f5\u00fa\u0005&\u0000"+
		"\u0000\u00f6\u00f7\u0005|\u0000\u0000\u00f7\u00fa\u0005|\u0000\u0000\u00f8"+
		"\u00fa\u0005!\u0000\u0000\u00f9\u00f4\u0001\u0000\u0000\u0000\u00f9\u00f6"+
		"\u0001\u0000\u0000\u0000\u00f9\u00f8\u0001\u0000\u0000\u0000\u00fa6\u0001"+
		"\u0000\u0000\u0000\u00fb\u010b\u0005=\u0000\u0000\u00fc\u00fd\u0005+\u0000"+
		"\u0000\u00fd\u010b\u0005=\u0000\u0000\u00fe\u00ff\u0005-\u0000\u0000\u00ff"+
		"\u010b\u0005=\u0000\u0000\u0100\u0101\u0005*\u0000\u0000\u0101\u010b\u0005"+
		"=\u0000\u0000\u0102\u0103\u0005/\u0000\u0000\u0103\u010b\u0005=\u0000"+
		"\u0000\u0104\u0105\u0005%\u0000\u0000\u0105\u010b\u0005=\u0000\u0000\u0106"+
		"\u0107\u0005<\u0000\u0000\u0107\u010b\u0005<\u0000\u0000\u0108\u0109\u0005"+
		">\u0000\u0000\u0109\u010b\u0005>\u0000\u0000\u010a\u00fb\u0001\u0000\u0000"+
		"\u0000\u010a\u00fc\u0001\u0000\u0000\u0000\u010a\u00fe\u0001\u0000\u0000"+
		"\u0000\u010a\u0100\u0001\u0000\u0000\u0000\u010a\u0102\u0001\u0000\u0000"+
		"\u0000\u010a\u0104\u0001\u0000\u0000\u0000\u010a\u0106\u0001\u0000\u0000"+
		"\u0000\u010a\u0108\u0001\u0000\u0000\u0000\u010b8\u0001\u0000\u0000\u0000"+
		"\u010c\u010d\u0005i\u0000\u0000\u010d\u0136\u0005f\u0000\u0000\u010e\u010f"+
		"\u0005e\u0000\u0000\u010f\u0110\u0005l\u0000\u0000\u0110\u0111\u0005s"+
		"\u0000\u0000\u0111\u0136\u0005e\u0000\u0000\u0112\u0113\u0005w\u0000\u0000"+
		"\u0113\u0114\u0005h\u0000\u0000\u0114\u0115\u0005i\u0000\u0000\u0115\u0116"+
		"\u0005l\u0000\u0000\u0116\u0136\u0005e\u0000\u0000\u0117\u0118\u0005f"+
		"\u0000\u0000\u0118\u0119\u0005o\u0000\u0000\u0119\u0136\u0005r\u0000\u0000"+
		"\u011a\u011b\u0005r\u0000\u0000\u011b\u011c\u0005e\u0000\u0000\u011c\u011d"+
		"\u0005t\u0000\u0000\u011d\u011e\u0005u\u0000\u0000\u011e\u011f\u0005r"+
		"\u0000\u0000\u011f\u0136\u0005n\u0000\u0000\u0120\u0121\u0005v\u0000\u0000"+
		"\u0121\u0122\u0005o\u0000\u0000\u0122\u0123\u0005i\u0000\u0000\u0123\u0136"+
		"\u0005d\u0000\u0000\u0124\u0125\u0005i\u0000\u0000\u0125\u0126\u0005n"+
		"\u0000\u0000\u0126\u0136\u0005t\u0000\u0000\u0127\u0128\u0005d\u0000\u0000"+
		"\u0128\u0129\u0005o\u0000\u0000\u0129\u012a\u0005u\u0000\u0000\u012a\u012b"+
		"\u0005b\u0000\u0000\u012b\u012c\u0005l\u0000\u0000\u012c\u0136\u0005e"+
		"\u0000\u0000\u012d\u012e\u0005c\u0000\u0000\u012e\u012f\u0005h\u0000\u0000"+
		"\u012f\u0130\u0005a\u0000\u0000\u0130\u0136\u0005r\u0000\u0000\u0131\u0132"+
		"\u0005b\u0000\u0000\u0132\u0133\u0005o\u0000\u0000\u0133\u0134\u0005o"+
		"\u0000\u0000\u0134\u0136\u0005l\u0000\u0000\u0135\u010c\u0001\u0000\u0000"+
		"\u0000\u0135\u010e\u0001\u0000\u0000\u0000\u0135\u0112\u0001\u0000\u0000"+
		"\u0000\u0135\u0117\u0001\u0000\u0000\u0000\u0135\u011a\u0001\u0000\u0000"+
		"\u0000\u0135\u0120\u0001\u0000\u0000\u0000\u0135\u0124\u0001\u0000\u0000"+
		"\u0000\u0135\u0127\u0001\u0000\u0000\u0000\u0135\u012d\u0001\u0000\u0000"+
		"\u0000\u0135\u0131\u0001\u0000\u0000\u0000\u0136:\u0001\u0000\u0000\u0000"+
		"\u0137\u0138\u0005(\u0000\u0000\u0138<\u0001\u0000\u0000\u0000\u0139\u013a"+
		"\u0005)\u0000\u0000\u013a>\u0001\u0000\u0000\u0000\u013b\u013c\u0005{"+
		"\u0000\u0000\u013c@\u0001\u0000\u0000\u0000\u013d\u013e\u0005}\u0000\u0000"+
		"\u013eB\u0001\u0000\u0000\u0000\u013f\u0140\u0005[\u0000\u0000\u0140D"+
		"\u0001\u0000\u0000\u0000\u0141\u0142\u0005]\u0000\u0000\u0142F\u0001\u0000"+
		"\u0000\u0000\u0143\u0144\u0005,\u0000\u0000\u0144H\u0001\u0000\u0000\u0000"+
		"\u0145\u0146\u0005;\u0000\u0000\u0146J\u0001\u0000\u0000\u0000\u0147\u0148"+
		"\u0005:\u0000\u0000\u0148L\u0001\u0000\u0000\u0000\u0149\u014a\u0005/"+
		"\u0000\u0000\u014a\u014b\u0005/\u0000\u0000\u014b\u014f\u0001\u0000\u0000"+
		"\u0000\u014c\u014e\b\u0006\u0000\u0000\u014d\u014c\u0001\u0000\u0000\u0000"+
		"\u014e\u0151\u0001\u0000\u0000\u0000\u014f\u014d\u0001\u0000\u0000\u0000"+
		"\u014f\u0150\u0001\u0000\u0000\u0000\u0150\u0152\u0001\u0000\u0000\u0000"+
		"\u0151\u014f\u0001\u0000\u0000\u0000\u0152\u0153\u0006&\u0000\u0000\u0153"+
		"N\u0001\u0000\u0000\u0000\u0154\u0155\u0005/\u0000\u0000\u0155\u0156\u0005"+
		"*\u0000\u0000\u0156\u015a\u0001\u0000\u0000\u0000\u0157\u0159\t\u0000"+
		"\u0000\u0000\u0158\u0157\u0001\u0000\u0000\u0000\u0159\u015c\u0001\u0000"+
		"\u0000\u0000\u015a\u015b\u0001\u0000\u0000\u0000\u015a\u0158\u0001\u0000"+
		"\u0000\u0000\u015b\u015d\u0001\u0000\u0000\u0000\u015c\u015a\u0001\u0000"+
		"\u0000\u0000\u015d\u015e\u0005*\u0000\u0000\u015e\u015f\u0005/\u0000\u0000"+
		"\u015f\u0160\u0001\u0000\u0000\u0000\u0160\u0161\u0006\'\u0000\u0000\u0161"+
		"P\u0001\u0000\u0000\u0000\u0162\u0164\u0007\u0007\u0000\u0000\u0163\u0162"+
		"\u0001\u0000\u0000\u0000\u0164\u0165\u0001\u0000\u0000\u0000\u0165\u0163"+
		"\u0001\u0000\u0000\u0000\u0165\u0166\u0001\u0000\u0000\u0000\u0166\u0167"+
		"\u0001\u0000\u0000\u0000\u0167\u0168\u0006(\u0000\u0000\u0168R\u0001\u0000"+
		"\u0000\u0000\u0169\u016d\u0007\u0003\u0000\u0000\u016a\u016c\u0007\u0004"+
		"\u0000\u0000\u016b\u016a\u0001\u0000\u0000\u0000\u016c\u016f\u0001\u0000"+
		"\u0000\u0000\u016d\u016b\u0001\u0000\u0000\u0000\u016d\u016e\u0001\u0000"+
		"\u0000\u0000\u016e\u0172\u0001\u0000\u0000\u0000\u016f\u016d\u0001\u0000"+
		"\u0000\u0000\u0170\u0171\u0005.\u0000\u0000\u0171\u0173\u0005h\u0000\u0000"+
		"\u0172\u0170\u0001\u0000\u0000\u0000\u0172\u0173\u0001\u0000\u0000\u0000"+
		"\u0173T\u0001\u0000\u0000\u0000\u0014\u0000\u00ac\u00b1\u00b4\u00b9\u00bf"+
		"\u00c1\u00c7\u00cf\u00dd\u00e3\u00f2\u00f9\u010a\u0135\u014f\u015a\u0165"+
		"\u016d\u0172\u0001\u0006\u0000\u0000";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}