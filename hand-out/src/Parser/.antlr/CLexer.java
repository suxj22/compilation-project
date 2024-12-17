// Generated from c:/Users/23040/Documents/GitHub/compilation-project/hand-out/src/Parser/C.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue", "this-escape"})
public class CLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		VOID=1, CHAR=2, SHORT=3, INT=4, LONG=5, FLOAT=6, DOUBLE=7, SIGNED=8, UNSIGNED=9, 
		STRUCT=10, TYPEDEF=11, EXTERN=12, STATIC=13, CONST=14, IF=15, ELSE=16, 
		WHILE=17, DO=18, FOR=19, CONTINUE=20, BREAK=21, RETURN=22, GOTO=23, LEFT_BRACKET=24, 
		RIGHT_BRACKET=25, LEFT_PAREN=26, RIGHT_PAREN=27, LEFT_BRACE=28, RIGHT_BRACE=29, 
		SEMI=30, COMMA=31, ASSIGN=32, STAR_ASSIGN=33, DIV_ASSIGN=34, MOD_ASSIGN=35, 
		PLUS_ASSIGN=36, MINUS_ASSIGN=37, PLUS_PLUS=38, MINUS_MINUS=39, PLUS=40, 
		MINUS=41, STAR=42, DIV=43, MOD=44, LESS=45, GREATER=46, LESS_EQUAL=47, 
		GREATER_EQUAL=48, EQUAL=49, NOT_EQUAL=50, NOT=51, AND_AND=52, OR_OR=53, 
		QUESTION=54, COLON=55, AND=56, DOT=57, ARROW=58, ELLIPSIS=59, Identifier=60, 
		Constant=61, CharacterConstant=62, StringLiteral=63, Whitespace=64, LineComment=65, 
		BlockComment=66;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"VOID", "CHAR", "SHORT", "INT", "LONG", "FLOAT", "DOUBLE", "SIGNED", 
			"UNSIGNED", "STRUCT", "TYPEDEF", "EXTERN", "STATIC", "CONST", "IF", "ELSE", 
			"WHILE", "DO", "FOR", "CONTINUE", "BREAK", "RETURN", "GOTO", "LEFT_BRACKET", 
			"RIGHT_BRACKET", "LEFT_PAREN", "RIGHT_PAREN", "LEFT_BRACE", "RIGHT_BRACE", 
			"SEMI", "COMMA", "ASSIGN", "STAR_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN", 
			"PLUS_ASSIGN", "MINUS_ASSIGN", "PLUS_PLUS", "MINUS_MINUS", "PLUS", "MINUS", 
			"STAR", "DIV", "MOD", "LESS", "GREATER", "LESS_EQUAL", "GREATER_EQUAL", 
			"EQUAL", "NOT_EQUAL", "NOT", "AND_AND", "OR_OR", "QUESTION", "COLON", 
			"AND", "DOT", "ARROW", "ELLIPSIS", "Identifier", "Constant", "CharacterConstant", 
			"StringLiteral", "EscapeSequence", "Whitespace", "LineComment", "BlockComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'void'", "'char'", "'short'", "'int'", "'long'", "'float'", "'double'", 
			"'signed'", "'unsigned'", "'struct'", "'typedef'", "'extern'", "'static'", 
			"'const'", "'if'", "'else'", "'while'", "'do'", "'for'", "'continue'", 
			"'break'", "'return'", "'goto'", "'['", "']'", "'('", "')'", "'{'", "'}'", 
			"';'", "','", "'='", "'*='", "'/='", "'%='", "'+='", "'-='", "'++'", 
			"'--'", "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", "'>'", "'<='", "'>='", 
			"'=='", "'!='", "'!'", "'&&'", "'||'", "'?'", "':'", "'&'", "'.'", "'->'", 
			"'...'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "VOID", "CHAR", "SHORT", "INT", "LONG", "FLOAT", "DOUBLE", "SIGNED", 
			"UNSIGNED", "STRUCT", "TYPEDEF", "EXTERN", "STATIC", "CONST", "IF", "ELSE", 
			"WHILE", "DO", "FOR", "CONTINUE", "BREAK", "RETURN", "GOTO", "LEFT_BRACKET", 
			"RIGHT_BRACKET", "LEFT_PAREN", "RIGHT_PAREN", "LEFT_BRACE", "RIGHT_BRACE", 
			"SEMI", "COMMA", "ASSIGN", "STAR_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN", 
			"PLUS_ASSIGN", "MINUS_ASSIGN", "PLUS_PLUS", "MINUS_MINUS", "PLUS", "MINUS", 
			"STAR", "DIV", "MOD", "LESS", "GREATER", "LESS_EQUAL", "GREATER_EQUAL", 
			"EQUAL", "NOT_EQUAL", "NOT", "AND_AND", "OR_OR", "QUESTION", "COLON", 
			"AND", "DOT", "ARROW", "ELLIPSIS", "Identifier", "Constant", "CharacterConstant", 
			"StringLiteral", "Whitespace", "LineComment", "BlockComment"
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


	public CLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "C.g4"; }

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
		"\u0004\u0000B\u01b1\u0006\uffff\uffff\u0002\u0000\u0007\u0000\u0002\u0001"+
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
		"&\u0002\'\u0007\'\u0002(\u0007(\u0002)\u0007)\u0002*\u0007*\u0002+\u0007"+
		"+\u0002,\u0007,\u0002-\u0007-\u0002.\u0007.\u0002/\u0007/\u00020\u0007"+
		"0\u00021\u00071\u00022\u00072\u00023\u00073\u00024\u00074\u00025\u0007"+
		"5\u00026\u00076\u00027\u00077\u00028\u00078\u00029\u00079\u0002:\u0007"+
		":\u0002;\u0007;\u0002<\u0007<\u0002=\u0007=\u0002>\u0007>\u0002?\u0007"+
		"?\u0002@\u0007@\u0002A\u0007A\u0002B\u0007B\u0001\u0000\u0001\u0000\u0001"+
		"\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b"+
		"\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0015\u0001\u0015\u0001\u0015"+
		"\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001\u0018"+
		"\u0001\u0018\u0001\u0019\u0001\u0019\u0001\u001a\u0001\u001a\u0001\u001b"+
		"\u0001\u001b\u0001\u001c\u0001\u001c\u0001\u001d\u0001\u001d\u0001\u001e"+
		"\u0001\u001e\u0001\u001f\u0001\u001f\u0001 \u0001 \u0001 \u0001!\u0001"+
		"!\u0001!\u0001\"\u0001\"\u0001\"\u0001#\u0001#\u0001#\u0001$\u0001$\u0001"+
		"$\u0001%\u0001%\u0001%\u0001&\u0001&\u0001&\u0001\'\u0001\'\u0001(\u0001"+
		"(\u0001)\u0001)\u0001*\u0001*\u0001+\u0001+\u0001,\u0001,\u0001-\u0001"+
		"-\u0001.\u0001.\u0001.\u0001/\u0001/\u0001/\u00010\u00010\u00010\u0001"+
		"1\u00011\u00011\u00012\u00012\u00013\u00013\u00013\u00014\u00014\u0001"+
		"4\u00015\u00015\u00016\u00016\u00017\u00017\u00018\u00018\u00019\u0001"+
		"9\u00019\u0001:\u0001:\u0001:\u0001:\u0001;\u0001;\u0005;\u016b\b;\n;"+
		"\f;\u016e\t;\u0001<\u0004<\u0171\b<\u000b<\f<\u0172\u0001<\u0001<\u0005"+
		"<\u0177\b<\n<\f<\u017a\t<\u0003<\u017c\b<\u0001=\u0001=\u0001=\u0003="+
		"\u0181\b=\u0001=\u0001=\u0001>\u0001>\u0001>\u0005>\u0188\b>\n>\f>\u018b"+
		"\t>\u0001>\u0001>\u0001?\u0001?\u0001?\u0001@\u0004@\u0193\b@\u000b@\f"+
		"@\u0194\u0001@\u0001@\u0001A\u0001A\u0001A\u0001A\u0005A\u019d\bA\nA\f"+
		"A\u01a0\tA\u0001A\u0001A\u0001B\u0001B\u0001B\u0001B\u0005B\u01a8\bB\n"+
		"B\fB\u01ab\tB\u0001B\u0001B\u0001B\u0001B\u0001B\u0001\u01a9\u0000C\u0001"+
		"\u0001\u0003\u0002\u0005\u0003\u0007\u0004\t\u0005\u000b\u0006\r\u0007"+
		"\u000f\b\u0011\t\u0013\n\u0015\u000b\u0017\f\u0019\r\u001b\u000e\u001d"+
		"\u000f\u001f\u0010!\u0011#\u0012%\u0013\'\u0014)\u0015+\u0016-\u0017/"+
		"\u00181\u00193\u001a5\u001b7\u001c9\u001d;\u001e=\u001f? A!C\"E#G$I%K"+
		"&M\'O(Q)S*U+W,Y-[.]/_0a1c2e3g4i5k6m7o8q9s:u;w<y={>}?\u007f\u0000\u0081"+
		"@\u0083A\u0085B\u0001\u0000\b\u0003\u0000AZ__az\u0004\u000009AZ__az\u0001"+
		"\u000009\u0004\u0000\n\n\r\r\'\'\\\\\u0004\u0000\n\n\r\r\"\"\\\\\b\u0000"+
		"\"\"\'\'\\\\bbffnnrrtt\u0003\u0000\t\n\r\r  \u0002\u0000\n\n\r\r\u01b9"+
		"\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0003\u0001\u0000\u0000\u0000"+
		"\u0000\u0005\u0001\u0000\u0000\u0000\u0000\u0007\u0001\u0000\u0000\u0000"+
		"\u0000\t\u0001\u0000\u0000\u0000\u0000\u000b\u0001\u0000\u0000\u0000\u0000"+
		"\r\u0001\u0000\u0000\u0000\u0000\u000f\u0001\u0000\u0000\u0000\u0000\u0011"+
		"\u0001\u0000\u0000\u0000\u0000\u0013\u0001\u0000\u0000\u0000\u0000\u0015"+
		"\u0001\u0000\u0000\u0000\u0000\u0017\u0001\u0000\u0000\u0000\u0000\u0019"+
		"\u0001\u0000\u0000\u0000\u0000\u001b\u0001\u0000\u0000\u0000\u0000\u001d"+
		"\u0001\u0000\u0000\u0000\u0000\u001f\u0001\u0000\u0000\u0000\u0000!\u0001"+
		"\u0000\u0000\u0000\u0000#\u0001\u0000\u0000\u0000\u0000%\u0001\u0000\u0000"+
		"\u0000\u0000\'\u0001\u0000\u0000\u0000\u0000)\u0001\u0000\u0000\u0000"+
		"\u0000+\u0001\u0000\u0000\u0000\u0000-\u0001\u0000\u0000\u0000\u0000/"+
		"\u0001\u0000\u0000\u0000\u00001\u0001\u0000\u0000\u0000\u00003\u0001\u0000"+
		"\u0000\u0000\u00005\u0001\u0000\u0000\u0000\u00007\u0001\u0000\u0000\u0000"+
		"\u00009\u0001\u0000\u0000\u0000\u0000;\u0001\u0000\u0000\u0000\u0000="+
		"\u0001\u0000\u0000\u0000\u0000?\u0001\u0000\u0000\u0000\u0000A\u0001\u0000"+
		"\u0000\u0000\u0000C\u0001\u0000\u0000\u0000\u0000E\u0001\u0000\u0000\u0000"+
		"\u0000G\u0001\u0000\u0000\u0000\u0000I\u0001\u0000\u0000\u0000\u0000K"+
		"\u0001\u0000\u0000\u0000\u0000M\u0001\u0000\u0000\u0000\u0000O\u0001\u0000"+
		"\u0000\u0000\u0000Q\u0001\u0000\u0000\u0000\u0000S\u0001\u0000\u0000\u0000"+
		"\u0000U\u0001\u0000\u0000\u0000\u0000W\u0001\u0000\u0000\u0000\u0000Y"+
		"\u0001\u0000\u0000\u0000\u0000[\u0001\u0000\u0000\u0000\u0000]\u0001\u0000"+
		"\u0000\u0000\u0000_\u0001\u0000\u0000\u0000\u0000a\u0001\u0000\u0000\u0000"+
		"\u0000c\u0001\u0000\u0000\u0000\u0000e\u0001\u0000\u0000\u0000\u0000g"+
		"\u0001\u0000\u0000\u0000\u0000i\u0001\u0000\u0000\u0000\u0000k\u0001\u0000"+
		"\u0000\u0000\u0000m\u0001\u0000\u0000\u0000\u0000o\u0001\u0000\u0000\u0000"+
		"\u0000q\u0001\u0000\u0000\u0000\u0000s\u0001\u0000\u0000\u0000\u0000u"+
		"\u0001\u0000\u0000\u0000\u0000w\u0001\u0000\u0000\u0000\u0000y\u0001\u0000"+
		"\u0000\u0000\u0000{\u0001\u0000\u0000\u0000\u0000}\u0001\u0000\u0000\u0000"+
		"\u0000\u0081\u0001\u0000\u0000\u0000\u0000\u0083\u0001\u0000\u0000\u0000"+
		"\u0000\u0085\u0001\u0000\u0000\u0000\u0001\u0087\u0001\u0000\u0000\u0000"+
		"\u0003\u008c\u0001\u0000\u0000\u0000\u0005\u0091\u0001\u0000\u0000\u0000"+
		"\u0007\u0097\u0001\u0000\u0000\u0000\t\u009b\u0001\u0000\u0000\u0000\u000b"+
		"\u00a0\u0001\u0000\u0000\u0000\r\u00a6\u0001\u0000\u0000\u0000\u000f\u00ad"+
		"\u0001\u0000\u0000\u0000\u0011\u00b4\u0001\u0000\u0000\u0000\u0013\u00bd"+
		"\u0001\u0000\u0000\u0000\u0015\u00c4\u0001\u0000\u0000\u0000\u0017\u00cc"+
		"\u0001\u0000\u0000\u0000\u0019\u00d3\u0001\u0000\u0000\u0000\u001b\u00da"+
		"\u0001\u0000\u0000\u0000\u001d\u00e0\u0001\u0000\u0000\u0000\u001f\u00e3"+
		"\u0001\u0000\u0000\u0000!\u00e8\u0001\u0000\u0000\u0000#\u00ee\u0001\u0000"+
		"\u0000\u0000%\u00f1\u0001\u0000\u0000\u0000\'\u00f5\u0001\u0000\u0000"+
		"\u0000)\u00fe\u0001\u0000\u0000\u0000+\u0104\u0001\u0000\u0000\u0000-"+
		"\u010b\u0001\u0000\u0000\u0000/\u0110\u0001\u0000\u0000\u00001\u0112\u0001"+
		"\u0000\u0000\u00003\u0114\u0001\u0000\u0000\u00005\u0116\u0001\u0000\u0000"+
		"\u00007\u0118\u0001\u0000\u0000\u00009\u011a\u0001\u0000\u0000\u0000;"+
		"\u011c\u0001\u0000\u0000\u0000=\u011e\u0001\u0000\u0000\u0000?\u0120\u0001"+
		"\u0000\u0000\u0000A\u0122\u0001\u0000\u0000\u0000C\u0125\u0001\u0000\u0000"+
		"\u0000E\u0128\u0001\u0000\u0000\u0000G\u012b\u0001\u0000\u0000\u0000I"+
		"\u012e\u0001\u0000\u0000\u0000K\u0131\u0001\u0000\u0000\u0000M\u0134\u0001"+
		"\u0000\u0000\u0000O\u0137\u0001\u0000\u0000\u0000Q\u0139\u0001\u0000\u0000"+
		"\u0000S\u013b\u0001\u0000\u0000\u0000U\u013d\u0001\u0000\u0000\u0000W"+
		"\u013f\u0001\u0000\u0000\u0000Y\u0141\u0001\u0000\u0000\u0000[\u0143\u0001"+
		"\u0000\u0000\u0000]\u0145\u0001\u0000\u0000\u0000_\u0148\u0001\u0000\u0000"+
		"\u0000a\u014b\u0001\u0000\u0000\u0000c\u014e\u0001\u0000\u0000\u0000e"+
		"\u0151\u0001\u0000\u0000\u0000g\u0153\u0001\u0000\u0000\u0000i\u0156\u0001"+
		"\u0000\u0000\u0000k\u0159\u0001\u0000\u0000\u0000m\u015b\u0001\u0000\u0000"+
		"\u0000o\u015d\u0001\u0000\u0000\u0000q\u015f\u0001\u0000\u0000\u0000s"+
		"\u0161\u0001\u0000\u0000\u0000u\u0164\u0001\u0000\u0000\u0000w\u0168\u0001"+
		"\u0000\u0000\u0000y\u0170\u0001\u0000\u0000\u0000{\u017d\u0001\u0000\u0000"+
		"\u0000}\u0184\u0001\u0000\u0000\u0000\u007f\u018e\u0001\u0000\u0000\u0000"+
		"\u0081\u0192\u0001\u0000\u0000\u0000\u0083\u0198\u0001\u0000\u0000\u0000"+
		"\u0085\u01a3\u0001\u0000\u0000\u0000\u0087\u0088\u0005v\u0000\u0000\u0088"+
		"\u0089\u0005o\u0000\u0000\u0089\u008a\u0005i\u0000\u0000\u008a\u008b\u0005"+
		"d\u0000\u0000\u008b\u0002\u0001\u0000\u0000\u0000\u008c\u008d\u0005c\u0000"+
		"\u0000\u008d\u008e\u0005h\u0000\u0000\u008e\u008f\u0005a\u0000\u0000\u008f"+
		"\u0090\u0005r\u0000\u0000\u0090\u0004\u0001\u0000\u0000\u0000\u0091\u0092"+
		"\u0005s\u0000\u0000\u0092\u0093\u0005h\u0000\u0000\u0093\u0094\u0005o"+
		"\u0000\u0000\u0094\u0095\u0005r\u0000\u0000\u0095\u0096\u0005t\u0000\u0000"+
		"\u0096\u0006\u0001\u0000\u0000\u0000\u0097\u0098\u0005i\u0000\u0000\u0098"+
		"\u0099\u0005n\u0000\u0000\u0099\u009a\u0005t\u0000\u0000\u009a\b\u0001"+
		"\u0000\u0000\u0000\u009b\u009c\u0005l\u0000\u0000\u009c\u009d\u0005o\u0000"+
		"\u0000\u009d\u009e\u0005n\u0000\u0000\u009e\u009f\u0005g\u0000\u0000\u009f"+
		"\n\u0001\u0000\u0000\u0000\u00a0\u00a1\u0005f\u0000\u0000\u00a1\u00a2"+
		"\u0005l\u0000\u0000\u00a2\u00a3\u0005o\u0000\u0000\u00a3\u00a4\u0005a"+
		"\u0000\u0000\u00a4\u00a5\u0005t\u0000\u0000\u00a5\f\u0001\u0000\u0000"+
		"\u0000\u00a6\u00a7\u0005d\u0000\u0000\u00a7\u00a8\u0005o\u0000\u0000\u00a8"+
		"\u00a9\u0005u\u0000\u0000\u00a9\u00aa\u0005b\u0000\u0000\u00aa\u00ab\u0005"+
		"l\u0000\u0000\u00ab\u00ac\u0005e\u0000\u0000\u00ac\u000e\u0001\u0000\u0000"+
		"\u0000\u00ad\u00ae\u0005s\u0000\u0000\u00ae\u00af\u0005i\u0000\u0000\u00af"+
		"\u00b0\u0005g\u0000\u0000\u00b0\u00b1\u0005n\u0000\u0000\u00b1\u00b2\u0005"+
		"e\u0000\u0000\u00b2\u00b3\u0005d\u0000\u0000\u00b3\u0010\u0001\u0000\u0000"+
		"\u0000\u00b4\u00b5\u0005u\u0000\u0000\u00b5\u00b6\u0005n\u0000\u0000\u00b6"+
		"\u00b7\u0005s\u0000\u0000\u00b7\u00b8\u0005i\u0000\u0000\u00b8\u00b9\u0005"+
		"g\u0000\u0000\u00b9\u00ba\u0005n\u0000\u0000\u00ba\u00bb\u0005e\u0000"+
		"\u0000\u00bb\u00bc\u0005d\u0000\u0000\u00bc\u0012\u0001\u0000\u0000\u0000"+
		"\u00bd\u00be\u0005s\u0000\u0000\u00be\u00bf\u0005t\u0000\u0000\u00bf\u00c0"+
		"\u0005r\u0000\u0000\u00c0\u00c1\u0005u\u0000\u0000\u00c1\u00c2\u0005c"+
		"\u0000\u0000\u00c2\u00c3\u0005t\u0000\u0000\u00c3\u0014\u0001\u0000\u0000"+
		"\u0000\u00c4\u00c5\u0005t\u0000\u0000\u00c5\u00c6\u0005y\u0000\u0000\u00c6"+
		"\u00c7\u0005p\u0000\u0000\u00c7\u00c8\u0005e\u0000\u0000\u00c8\u00c9\u0005"+
		"d\u0000\u0000\u00c9\u00ca\u0005e\u0000\u0000\u00ca\u00cb\u0005f\u0000"+
		"\u0000\u00cb\u0016\u0001\u0000\u0000\u0000\u00cc\u00cd\u0005e\u0000\u0000"+
		"\u00cd\u00ce\u0005x\u0000\u0000\u00ce\u00cf\u0005t\u0000\u0000\u00cf\u00d0"+
		"\u0005e\u0000\u0000\u00d0\u00d1\u0005r\u0000\u0000\u00d1\u00d2\u0005n"+
		"\u0000\u0000\u00d2\u0018\u0001\u0000\u0000\u0000\u00d3\u00d4\u0005s\u0000"+
		"\u0000\u00d4\u00d5\u0005t\u0000\u0000\u00d5\u00d6\u0005a\u0000\u0000\u00d6"+
		"\u00d7\u0005t\u0000\u0000\u00d7\u00d8\u0005i\u0000\u0000\u00d8\u00d9\u0005"+
		"c\u0000\u0000\u00d9\u001a\u0001\u0000\u0000\u0000\u00da\u00db\u0005c\u0000"+
		"\u0000\u00db\u00dc\u0005o\u0000\u0000\u00dc\u00dd\u0005n\u0000\u0000\u00dd"+
		"\u00de\u0005s\u0000\u0000\u00de\u00df\u0005t\u0000\u0000\u00df\u001c\u0001"+
		"\u0000\u0000\u0000\u00e0\u00e1\u0005i\u0000\u0000\u00e1\u00e2\u0005f\u0000"+
		"\u0000\u00e2\u001e\u0001\u0000\u0000\u0000\u00e3\u00e4\u0005e\u0000\u0000"+
		"\u00e4\u00e5\u0005l\u0000\u0000\u00e5\u00e6\u0005s\u0000\u0000\u00e6\u00e7"+
		"\u0005e\u0000\u0000\u00e7 \u0001\u0000\u0000\u0000\u00e8\u00e9\u0005w"+
		"\u0000\u0000\u00e9\u00ea\u0005h\u0000\u0000\u00ea\u00eb\u0005i\u0000\u0000"+
		"\u00eb\u00ec\u0005l\u0000\u0000\u00ec\u00ed\u0005e\u0000\u0000\u00ed\""+
		"\u0001\u0000\u0000\u0000\u00ee\u00ef\u0005d\u0000\u0000\u00ef\u00f0\u0005"+
		"o\u0000\u0000\u00f0$\u0001\u0000\u0000\u0000\u00f1\u00f2\u0005f\u0000"+
		"\u0000\u00f2\u00f3\u0005o\u0000\u0000\u00f3\u00f4\u0005r\u0000\u0000\u00f4"+
		"&\u0001\u0000\u0000\u0000\u00f5\u00f6\u0005c\u0000\u0000\u00f6\u00f7\u0005"+
		"o\u0000\u0000\u00f7\u00f8\u0005n\u0000\u0000\u00f8\u00f9\u0005t\u0000"+
		"\u0000\u00f9\u00fa\u0005i\u0000\u0000\u00fa\u00fb\u0005n\u0000\u0000\u00fb"+
		"\u00fc\u0005u\u0000\u0000\u00fc\u00fd\u0005e\u0000\u0000\u00fd(\u0001"+
		"\u0000\u0000\u0000\u00fe\u00ff\u0005b\u0000\u0000\u00ff\u0100\u0005r\u0000"+
		"\u0000\u0100\u0101\u0005e\u0000\u0000\u0101\u0102\u0005a\u0000\u0000\u0102"+
		"\u0103\u0005k\u0000\u0000\u0103*\u0001\u0000\u0000\u0000\u0104\u0105\u0005"+
		"r\u0000\u0000\u0105\u0106\u0005e\u0000\u0000\u0106\u0107\u0005t\u0000"+
		"\u0000\u0107\u0108\u0005u\u0000\u0000\u0108\u0109\u0005r\u0000\u0000\u0109"+
		"\u010a\u0005n\u0000\u0000\u010a,\u0001\u0000\u0000\u0000\u010b\u010c\u0005"+
		"g\u0000\u0000\u010c\u010d\u0005o\u0000\u0000\u010d\u010e\u0005t\u0000"+
		"\u0000\u010e\u010f\u0005o\u0000\u0000\u010f.\u0001\u0000\u0000\u0000\u0110"+
		"\u0111\u0005[\u0000\u0000\u01110\u0001\u0000\u0000\u0000\u0112\u0113\u0005"+
		"]\u0000\u0000\u01132\u0001\u0000\u0000\u0000\u0114\u0115\u0005(\u0000"+
		"\u0000\u01154\u0001\u0000\u0000\u0000\u0116\u0117\u0005)\u0000\u0000\u0117"+
		"6\u0001\u0000\u0000\u0000\u0118\u0119\u0005{\u0000\u0000\u01198\u0001"+
		"\u0000\u0000\u0000\u011a\u011b\u0005}\u0000\u0000\u011b:\u0001\u0000\u0000"+
		"\u0000\u011c\u011d\u0005;\u0000\u0000\u011d<\u0001\u0000\u0000\u0000\u011e"+
		"\u011f\u0005,\u0000\u0000\u011f>\u0001\u0000\u0000\u0000\u0120\u0121\u0005"+
		"=\u0000\u0000\u0121@\u0001\u0000\u0000\u0000\u0122\u0123\u0005*\u0000"+
		"\u0000\u0123\u0124\u0005=\u0000\u0000\u0124B\u0001\u0000\u0000\u0000\u0125"+
		"\u0126\u0005/\u0000\u0000\u0126\u0127\u0005=\u0000\u0000\u0127D\u0001"+
		"\u0000\u0000\u0000\u0128\u0129\u0005%\u0000\u0000\u0129\u012a\u0005=\u0000"+
		"\u0000\u012aF\u0001\u0000\u0000\u0000\u012b\u012c\u0005+\u0000\u0000\u012c"+
		"\u012d\u0005=\u0000\u0000\u012dH\u0001\u0000\u0000\u0000\u012e\u012f\u0005"+
		"-\u0000\u0000\u012f\u0130\u0005=\u0000\u0000\u0130J\u0001\u0000\u0000"+
		"\u0000\u0131\u0132\u0005+\u0000\u0000\u0132\u0133\u0005+\u0000\u0000\u0133"+
		"L\u0001\u0000\u0000\u0000\u0134\u0135\u0005-\u0000\u0000\u0135\u0136\u0005"+
		"-\u0000\u0000\u0136N\u0001\u0000\u0000\u0000\u0137\u0138\u0005+\u0000"+
		"\u0000\u0138P\u0001\u0000\u0000\u0000\u0139\u013a\u0005-\u0000\u0000\u013a"+
		"R\u0001\u0000\u0000\u0000\u013b\u013c\u0005*\u0000\u0000\u013cT\u0001"+
		"\u0000\u0000\u0000\u013d\u013e\u0005/\u0000\u0000\u013eV\u0001\u0000\u0000"+
		"\u0000\u013f\u0140\u0005%\u0000\u0000\u0140X\u0001\u0000\u0000\u0000\u0141"+
		"\u0142\u0005<\u0000\u0000\u0142Z\u0001\u0000\u0000\u0000\u0143\u0144\u0005"+
		">\u0000\u0000\u0144\\\u0001\u0000\u0000\u0000\u0145\u0146\u0005<\u0000"+
		"\u0000\u0146\u0147\u0005=\u0000\u0000\u0147^\u0001\u0000\u0000\u0000\u0148"+
		"\u0149\u0005>\u0000\u0000\u0149\u014a\u0005=\u0000\u0000\u014a`\u0001"+
		"\u0000\u0000\u0000\u014b\u014c\u0005=\u0000\u0000\u014c\u014d\u0005=\u0000"+
		"\u0000\u014db\u0001\u0000\u0000\u0000\u014e\u014f\u0005!\u0000\u0000\u014f"+
		"\u0150\u0005=\u0000\u0000\u0150d\u0001\u0000\u0000\u0000\u0151\u0152\u0005"+
		"!\u0000\u0000\u0152f\u0001\u0000\u0000\u0000\u0153\u0154\u0005&\u0000"+
		"\u0000\u0154\u0155\u0005&\u0000\u0000\u0155h\u0001\u0000\u0000\u0000\u0156"+
		"\u0157\u0005|\u0000\u0000\u0157\u0158\u0005|\u0000\u0000\u0158j\u0001"+
		"\u0000\u0000\u0000\u0159\u015a\u0005?\u0000\u0000\u015al\u0001\u0000\u0000"+
		"\u0000\u015b\u015c\u0005:\u0000\u0000\u015cn\u0001\u0000\u0000\u0000\u015d"+
		"\u015e\u0005&\u0000\u0000\u015ep\u0001\u0000\u0000\u0000\u015f\u0160\u0005"+
		".\u0000\u0000\u0160r\u0001\u0000\u0000\u0000\u0161\u0162\u0005-\u0000"+
		"\u0000\u0162\u0163\u0005>\u0000\u0000\u0163t\u0001\u0000\u0000\u0000\u0164"+
		"\u0165\u0005.\u0000\u0000\u0165\u0166\u0005.\u0000\u0000\u0166\u0167\u0005"+
		".\u0000\u0000\u0167v\u0001\u0000\u0000\u0000\u0168\u016c\u0007\u0000\u0000"+
		"\u0000\u0169\u016b\u0007\u0001\u0000\u0000\u016a\u0169\u0001\u0000\u0000"+
		"\u0000\u016b\u016e\u0001\u0000\u0000\u0000\u016c\u016a\u0001\u0000\u0000"+
		"\u0000\u016c\u016d\u0001\u0000\u0000\u0000\u016dx\u0001\u0000\u0000\u0000"+
		"\u016e\u016c\u0001\u0000\u0000\u0000\u016f\u0171\u0007\u0002\u0000\u0000"+
		"\u0170\u016f\u0001\u0000\u0000\u0000\u0171\u0172\u0001\u0000\u0000\u0000"+
		"\u0172\u0170\u0001\u0000\u0000\u0000\u0172\u0173\u0001\u0000\u0000\u0000"+
		"\u0173\u017b\u0001\u0000\u0000\u0000\u0174\u0178\u0005.\u0000\u0000\u0175"+
		"\u0177\u0007\u0002\u0000\u0000\u0176\u0175\u0001\u0000\u0000\u0000\u0177"+
		"\u017a\u0001\u0000\u0000\u0000\u0178\u0176\u0001\u0000\u0000\u0000\u0178"+
		"\u0179\u0001\u0000\u0000\u0000\u0179\u017c\u0001\u0000\u0000\u0000\u017a"+
		"\u0178\u0001\u0000\u0000\u0000\u017b\u0174\u0001\u0000\u0000\u0000\u017b"+
		"\u017c\u0001\u0000\u0000\u0000\u017cz\u0001\u0000\u0000\u0000\u017d\u0180"+
		"\u0005\'\u0000\u0000\u017e\u0181\b\u0003\u0000\u0000\u017f\u0181\u0003"+
		"\u007f?\u0000\u0180\u017e\u0001\u0000\u0000\u0000\u0180\u017f\u0001\u0000"+
		"\u0000\u0000\u0181\u0182\u0001\u0000\u0000\u0000\u0182\u0183\u0005\'\u0000"+
		"\u0000\u0183|\u0001\u0000\u0000\u0000\u0184\u0189\u0005\"\u0000\u0000"+
		"\u0185\u0188\b\u0004\u0000\u0000\u0186\u0188\u0003\u007f?\u0000\u0187"+
		"\u0185\u0001\u0000\u0000\u0000\u0187\u0186\u0001\u0000\u0000\u0000\u0188"+
		"\u018b\u0001\u0000\u0000\u0000\u0189\u0187\u0001\u0000\u0000\u0000\u0189"+
		"\u018a\u0001\u0000\u0000\u0000\u018a\u018c\u0001\u0000\u0000\u0000\u018b"+
		"\u0189\u0001\u0000\u0000\u0000\u018c\u018d\u0005\"\u0000\u0000\u018d~"+
		"\u0001\u0000\u0000\u0000\u018e\u018f\u0005\\\u0000\u0000\u018f\u0190\u0007"+
		"\u0005\u0000\u0000\u0190\u0080\u0001\u0000\u0000\u0000\u0191\u0193\u0007"+
		"\u0006\u0000\u0000\u0192\u0191\u0001\u0000\u0000\u0000\u0193\u0194\u0001"+
		"\u0000\u0000\u0000\u0194\u0192\u0001\u0000\u0000\u0000\u0194\u0195\u0001"+
		"\u0000\u0000\u0000\u0195\u0196\u0001\u0000\u0000\u0000\u0196\u0197\u0006"+
		"@\u0000\u0000\u0197\u0082\u0001\u0000\u0000\u0000\u0198\u0199\u0005/\u0000"+
		"\u0000\u0199\u019a\u0005/\u0000\u0000\u019a\u019e\u0001\u0000\u0000\u0000"+
		"\u019b\u019d\b\u0007\u0000\u0000\u019c\u019b\u0001\u0000\u0000\u0000\u019d"+
		"\u01a0\u0001\u0000\u0000\u0000\u019e\u019c\u0001\u0000\u0000\u0000\u019e"+
		"\u019f\u0001\u0000\u0000\u0000\u019f\u01a1\u0001\u0000\u0000\u0000\u01a0"+
		"\u019e\u0001\u0000\u0000\u0000\u01a1\u01a2\u0006A\u0000\u0000\u01a2\u0084"+
		"\u0001\u0000\u0000\u0000\u01a3\u01a4\u0005/\u0000\u0000\u01a4\u01a5\u0005"+
		"*\u0000\u0000\u01a5\u01a9\u0001\u0000\u0000\u0000\u01a6\u01a8\t\u0000"+
		"\u0000\u0000\u01a7\u01a6\u0001\u0000\u0000\u0000\u01a8\u01ab\u0001\u0000"+
		"\u0000\u0000\u01a9\u01aa\u0001\u0000\u0000\u0000\u01a9\u01a7\u0001\u0000"+
		"\u0000\u0000\u01aa\u01ac\u0001\u0000\u0000\u0000\u01ab\u01a9\u0001\u0000"+
		"\u0000\u0000\u01ac\u01ad\u0005*\u0000\u0000\u01ad\u01ae\u0005/\u0000\u0000"+
		"\u01ae\u01af\u0001\u0000\u0000\u0000\u01af\u01b0\u0006B\u0000\u0000\u01b0"+
		"\u0086\u0001\u0000\u0000\u0000\u000b\u0000\u016c\u0172\u0178\u017b\u0180"+
		"\u0187\u0189\u0194\u019e\u01a9\u0001\u0006\u0000\u0000";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}