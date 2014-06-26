// Generated from Xhail.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.xhail;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class XhailParser extends Parser {
	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		AGGR_AVG=1, AGGR_COUNT=2, AGGR_EVEN=3, AGGR_MAX=4, AGGR_MIN=5, AGGR_ODD=6, 
		AGGR_SUM=7, ARITH_ABS=8, ARITH_DIVIDE=9, ARITH_MODULUS=10, ARITH_POWER=11, 
		BIT_AND=12, BIT_NOT=13, BIT_OR=14, BIT_XOR=15, COMP_EQ=16, COMP_GE=17, 
		COMP_GT=18, COMP_LE=19, COMP_LT=20, COMP_NE=21, DIR_COMPUTE=22, DIR_CONST=23, 
		DIR_DISPLAY=24, DIR_DOMAIN=25, DIR_EXAMPLE=26, DIR_EXTERNAL=27, DIR_HIDE=28, 
		DIR_MAXIMIZE=29, DIR_MINIMIZE=30, DIR_MODEB=31, DIR_MODEH=32, DIR_SHOW=33, 
		ASTERISK=34, ASTERISKS=35, ASSIGN=36, AT=37, BACKSLASH=38, BAR=39, COLON=40, 
		COMMA=41, CURLY_LEFT=42, CURLY_RIGHT=43, DOT=44, DOTS=45, EQUALS=46, HASH=47, 
		IF=48, MINUS=49, NOT=50, PAREN_LEFT=51, PAREN_RIGHT=52, SEMICOLON=53, 
		PLUS=54, SEMICOLONS=55, SLASH=56, SQUARE_LEFT=57, SQUARE_RIGHT=58, INFIMUM=59, 
		SUPREMUM=60, ALL=61, COMMENT_INLINE=62, COMMENT_MULTI=63, IDENTIFIER=64, 
		INTEGER=65, STRING=66, VARIABLE=67, WHITESPACES=68;
	public static final String[] tokenNames = {
		"<INVALID>", "'#avg'", "'#count'", "'#even'", "'#max'", "'#min'", "'#odd'", 
		"'#sum'", "'#abs'", "'#div'", "'#mod'", "'#pow'", "'&'", "'~'", "'?'", 
		"'^'", "'=='", "'>='", "'>'", "'<='", "'<'", "'!='", "'#compute'", "'#const'", 
		"'#display'", "'#domain'", "'#example'", "'#external'", "'#hide'", "DIR_MAXIMIZE", 
		"DIR_MINIMIZE", "'#modeb'", "'#modeh'", "'#show'", "'*'", "'**'", "':='", 
		"'@'", "'\\'", "'|'", "':'", "','", "'{'", "'}'", "'.'", "'..'", "'='", 
		"'$'", "':-'", "'-'", "'not'", "'('", "')'", "';'", "'+'", "';;'", "'/'", 
		"'['", "']'", "'#infimum'", "'#supremum'", "'all'", "COMMENT_INLINE", 
		"COMMENT_MULTI", "IDENTIFIER", "INTEGER", "STRING", "VARIABLE", "WHITESPACES"
	};
	public static final int
		RULE_program = 0, RULE_directive = 1, RULE_compute = 2, RULE_constant = 3, 
		RULE_display = 4, RULE_domain = 5, RULE_example = 6, RULE_external = 7, 
		RULE_hide = 8, RULE_maximize = 9, RULE_modeBody = 10, RULE_modeHead = 11, 
		RULE_signature = 12, RULE_keyList = 13, RULE_key = 14, RULE_minimize = 15, 
		RULE_show = 16, RULE_groundAtom = 17, RULE_groundTerm = 18, RULE_bound = 19, 
		RULE_bounds = 20, RULE_weight = 21, RULE_priority = 22, RULE_clause = 23, 
		RULE_head = 24, RULE_body = 25, RULE_literal = 26, RULE_predicate = 27, 
		RULE_aggregate = 28, RULE_aggregatew = 29, RULE_group = 30, RULE_atomList = 31, 
		RULE_atom = 32, RULE_interval = 33, RULE_pooling = 34, RULE_number = 35;
	public static final String[] ruleNames = {
		"program", "directive", "compute", "constant", "display", "domain", "example", 
		"external", "hide", "maximize", "modeBody", "modeHead", "signature", "keyList", 
		"key", "minimize", "show", "groundAtom", "groundTerm", "bound", "bounds", 
		"weight", "priority", "clause", "head", "body", "literal", "predicate", 
		"aggregate", "aggregatew", "group", "atomList", "atom", "interval", "pooling", 
		"number"
	};

	@Override
	public String getGrammarFileName() { return "Xhail.g4"; }

	@Override
	public String[] getTokenNames() { return tokenNames; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public XhailParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public DirectiveContext directive(int i) {
			return getRuleContext(DirectiveContext.class,i);
		}
		public List<TerminalNode> DOT() { return getTokens(XhailParser.DOT); }
		public List<DirectiveContext> directive() {
			return getRuleContexts(DirectiveContext.class);
		}
		public TerminalNode EOF() { return getToken(XhailParser.EOF, 0); }
		public ClauseContext clause(int i) {
			return getRuleContext(ClauseContext.class,i);
		}
		public List<ClauseContext> clause() {
			return getRuleContexts(ClauseContext.class);
		}
		public TerminalNode DOT(int i) {
			return getToken(XhailParser.DOT, i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AGGR_AVG) | (1L << AGGR_COUNT) | (1L << AGGR_EVEN) | (1L << AGGR_MAX) | (1L << AGGR_MIN) | (1L << AGGR_ODD) | (1L << AGGR_SUM) | (1L << ARITH_ABS) | (1L << ARITH_DIVIDE) | (1L << ARITH_MODULUS) | (1L << ARITH_POWER) | (1L << BIT_NOT) | (1L << DIR_COMPUTE) | (1L << DIR_CONST) | (1L << DIR_DISPLAY) | (1L << DIR_DOMAIN) | (1L << DIR_EXAMPLE) | (1L << DIR_EXTERNAL) | (1L << DIR_MAXIMIZE) | (1L << DIR_MINIMIZE) | (1L << DIR_MODEB) | (1L << DIR_MODEH) | (1L << BAR) | (1L << CURLY_LEFT) | (1L << DOT) | (1L << IF) | (1L << MINUS) | (1L << SQUARE_LEFT) | (1L << INFIMUM) | (1L << SUPREMUM))) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (STRING - 64)) | (1L << (VARIABLE - 64)))) != 0)) {
				{
				setState(75);
				switch (_input.LA(1)) {
				case DIR_COMPUTE:
				case DIR_CONST:
				case DIR_DISPLAY:
				case DIR_DOMAIN:
				case DIR_EXAMPLE:
				case DIR_EXTERNAL:
				case DIR_MAXIMIZE:
				case DIR_MINIMIZE:
				case DIR_MODEB:
				case DIR_MODEH:
					{
					setState(72); directive();
					}
					break;
				case AGGR_AVG:
				case AGGR_COUNT:
				case AGGR_EVEN:
				case AGGR_MAX:
				case AGGR_MIN:
				case AGGR_ODD:
				case AGGR_SUM:
				case ARITH_ABS:
				case ARITH_DIVIDE:
				case ARITH_MODULUS:
				case ARITH_POWER:
				case BIT_NOT:
				case BAR:
				case CURLY_LEFT:
				case IF:
				case MINUS:
				case SQUARE_LEFT:
				case INFIMUM:
				case SUPREMUM:
				case IDENTIFIER:
				case INTEGER:
				case STRING:
				case VARIABLE:
					{
					setState(73); clause();
					}
					break;
				case DOT:
					{
					setState(74); match(DOT);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(79);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(80); match(EOF);
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

	public static class DirectiveContext extends ParserRuleContext {
		public ModeHeadContext modeHead() {
			return getRuleContext(ModeHeadContext.class,0);
		}
		public MinimizeContext minimize() {
			return getRuleContext(MinimizeContext.class,0);
		}
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public DisplayContext display() {
			return getRuleContext(DisplayContext.class,0);
		}
		public ExampleContext example() {
			return getRuleContext(ExampleContext.class,0);
		}
		public ExternalContext external() {
			return getRuleContext(ExternalContext.class,0);
		}
		public ComputeContext compute() {
			return getRuleContext(ComputeContext.class,0);
		}
		public DomainContext domain() {
			return getRuleContext(DomainContext.class,0);
		}
		public ModeBodyContext modeBody() {
			return getRuleContext(ModeBodyContext.class,0);
		}
		public MaximizeContext maximize() {
			return getRuleContext(MaximizeContext.class,0);
		}
		public DirectiveContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_directive; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterDirective(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitDirective(this);
		}
	}

	public final DirectiveContext directive() throws RecognitionException {
		DirectiveContext _localctx = new DirectiveContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_directive);
		try {
			setState(92);
			switch (_input.LA(1)) {
			case DIR_COMPUTE:
				enterOuterAlt(_localctx, 1);
				{
				setState(82); compute();
				}
				break;
			case DIR_CONST:
				enterOuterAlt(_localctx, 2);
				{
				setState(83); constant();
				}
				break;
			case DIR_DISPLAY:
				enterOuterAlt(_localctx, 3);
				{
				setState(84); display();
				}
				break;
			case DIR_DOMAIN:
				enterOuterAlt(_localctx, 4);
				{
				setState(85); domain();
				}
				break;
			case DIR_EXAMPLE:
				enterOuterAlt(_localctx, 5);
				{
				setState(86); example();
				}
				break;
			case DIR_EXTERNAL:
				enterOuterAlt(_localctx, 6);
				{
				setState(87); external();
				}
				break;
			case DIR_MAXIMIZE:
				enterOuterAlt(_localctx, 7);
				{
				setState(88); maximize();
				}
				break;
			case DIR_MINIMIZE:
				enterOuterAlt(_localctx, 8);
				{
				setState(89); minimize();
				}
				break;
			case DIR_MODEB:
				enterOuterAlt(_localctx, 9);
				{
				setState(90); modeBody();
				}
				break;
			case DIR_MODEH:
				enterOuterAlt(_localctx, 10);
				{
				setState(91); modeHead();
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

	public static class ComputeContext extends ParserRuleContext {
		public TerminalNode CURLY_LEFT() { return getToken(XhailParser.CURLY_LEFT, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_COMPUTE() { return getToken(XhailParser.DIR_COMPUTE, 0); }
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public TerminalNode CURLY_RIGHT() { return getToken(XhailParser.CURLY_RIGHT, 0); }
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public ComputeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compute; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterCompute(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitCompute(this);
		}
	}

	public final ComputeContext compute() throws RecognitionException {
		ComputeContext _localctx = new ComputeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_compute);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94); match(DIR_COMPUTE);
			setState(96);
			_la = _input.LA(1);
			if (_la==INTEGER) {
				{
				setState(95); match(INTEGER);
				}
			}

			setState(98); match(CURLY_LEFT);
			setState(99); literal();
			setState(104);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(100); match(COMMA);
				setState(101); literal();
				}
				}
				setState(106);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(107); match(CURLY_RIGHT);
			setState(108); match(DOT);
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

	public static class ConstantContext extends ParserRuleContext {
		public TerminalNode EQUALS() { return getToken(XhailParser.EQUALS, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode DIR_CONST() { return getToken(XhailParser.DIR_CONST, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitConstant(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_constant);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110); match(DIR_CONST);
			setState(111); match(IDENTIFIER);
			setState(112); match(EQUALS);
			setState(113); groundAtom();
			setState(114); match(DOT);
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

	public static class DisplayContext extends ParserRuleContext {
		public DisplayContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_display; }
	 
		public DisplayContext() { }
		public void copyFrom(DisplayContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class DisplayAllContext extends DisplayContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_DISPLAY() { return getToken(XhailParser.DIR_DISPLAY, 0); }
		public DisplayAllContext(DisplayContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterDisplayAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitDisplayAll(this);
		}
	}
	public static class DisplayPredicateContext extends DisplayContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public TerminalNode DIR_DISPLAY() { return getToken(XhailParser.DIR_DISPLAY, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public DisplayPredicateContext(DisplayContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterDisplayPredicate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitDisplayPredicate(this);
		}
	}

	public final DisplayContext display() throws RecognitionException {
		DisplayContext _localctx = new DisplayContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_display);
		try {
			setState(123);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				_localctx = new DisplayAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(116); match(DIR_DISPLAY);
				setState(117); match(DOT);
				}
				break;

			case 2:
				_localctx = new DisplayPredicateContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(118); match(DIR_DISPLAY);
				setState(119); match(IDENTIFIER);
				setState(120); match(SLASH);
				setState(121); match(INTEGER);
				setState(122); match(DOT);
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

	public static class DomainContext extends ParserRuleContext {
		public TerminalNode DIR_DOMAIN() { return getToken(XhailParser.DIR_DOMAIN, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public DomainContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_domain; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterDomain(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitDomain(this);
		}
	}

	public final DomainContext domain() throws RecognitionException {
		DomainContext _localctx = new DomainContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_domain);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(125); match(DIR_DOMAIN);
			setState(126); groundAtom();
			setState(127); match(DOT);
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

	public static class ExampleContext extends ParserRuleContext {
		public TerminalNode NOT() { return getToken(XhailParser.NOT, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public PriorityContext priority() {
			return getRuleContext(PriorityContext.class,0);
		}
		public WeightContext weight() {
			return getRuleContext(WeightContext.class,0);
		}
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode DIR_EXAMPLE() { return getToken(XhailParser.DIR_EXAMPLE, 0); }
		public ExampleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_example; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterExample(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitExample(this);
		}
	}

	public final ExampleContext example() throws RecognitionException {
		ExampleContext _localctx = new ExampleContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_example);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(129); match(DIR_EXAMPLE);
			setState(131);
			_la = _input.LA(1);
			if (_la==NOT) {
				{
				setState(130); match(NOT);
				}
			}

			setState(133); groundAtom();
			setState(135);
			_la = _input.LA(1);
			if (_la==EQUALS) {
				{
				setState(134); weight();
				}
			}

			setState(138);
			_la = _input.LA(1);
			if (_la==AT) {
				{
				setState(137); priority();
				}
			}

			setState(140); match(DOT);
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

	public static class ExternalContext extends ParserRuleContext {
		public TerminalNode DIR_EXTERNAL() { return getToken(XhailParser.DIR_EXTERNAL, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public PredicateContext predicate() {
			return getRuleContext(PredicateContext.class,0);
		}
		public ExternalContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_external; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterExternal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitExternal(this);
		}
	}

	public final ExternalContext external() throws RecognitionException {
		ExternalContext _localctx = new ExternalContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_external);
		try {
			setState(151);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(142); match(DIR_EXTERNAL);
				setState(143); match(IDENTIFIER);
				setState(144); match(SLASH);
				setState(145); match(INTEGER);
				setState(146); match(DOT);
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(147); match(DIR_EXTERNAL);
				setState(148); predicate();
				setState(149); match(DOT);
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

	public static class HideContext extends ParserRuleContext {
		public HideContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hide; }
	 
		public HideContext() { }
		public void copyFrom(HideContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class HideAllContext extends HideContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_HIDE() { return getToken(XhailParser.DIR_HIDE, 0); }
		public HideAllContext(HideContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterHideAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitHideAll(this);
		}
	}
	public static class HideExplicitContext extends HideContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_HIDE() { return getToken(XhailParser.DIR_HIDE, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<TerminalNode> VARIABLE() { return getTokens(XhailParser.VARIABLE); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public TerminalNode VARIABLE(int i) {
			return getToken(XhailParser.VARIABLE, i);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public HideExplicitContext(HideContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterHideExplicit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitHideExplicit(this);
		}
	}
	public static class HideImplicitContext extends HideContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_HIDE() { return getToken(XhailParser.DIR_HIDE, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public HideImplicitContext(HideContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterHideImplicit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitHideImplicit(this);
		}
	}

	public final HideContext hide() throws RecognitionException {
		HideContext _localctx = new HideContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_hide);
		int _la;
		try {
			setState(173);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				_localctx = new HideAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(153); match(DIR_HIDE);
				setState(154); match(DOT);
				}
				break;

			case 2:
				_localctx = new HideImplicitContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(155); match(DIR_HIDE);
				setState(156); match(IDENTIFIER);
				setState(157); match(SLASH);
				setState(158); match(INTEGER);
				setState(159); match(DOT);
				}
				break;

			case 3:
				_localctx = new HideExplicitContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(160); match(DIR_HIDE);
				setState(161); match(IDENTIFIER);
				setState(162); match(PAREN_LEFT);
				setState(163); match(VARIABLE);
				setState(168);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(164); match(COMMA);
					setState(165); match(VARIABLE);
					}
					}
					setState(170);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(171); match(PAREN_RIGHT);
				setState(172); match(DOT);
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

	public static class MaximizeContext extends ParserRuleContext {
		public TerminalNode CURLY_LEFT() { return getToken(XhailParser.CURLY_LEFT, 0); }
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public TerminalNode SQUARE_RIGHT() { return getToken(XhailParser.SQUARE_RIGHT, 0); }
		public WeightContext weight(int i) {
			return getRuleContext(WeightContext.class,i);
		}
		public List<WeightContext> weight() {
			return getRuleContexts(WeightContext.class);
		}
		public TerminalNode DIR_MAXIMIZE() { return getToken(XhailParser.DIR_MAXIMIZE, 0); }
		public TerminalNode SQUARE_LEFT() { return getToken(XhailParser.SQUARE_LEFT, 0); }
		public TerminalNode CURLY_RIGHT() { return getToken(XhailParser.CURLY_RIGHT, 0); }
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public PriorityContext priority(int i) {
			return getRuleContext(PriorityContext.class,i);
		}
		public List<PriorityContext> priority() {
			return getRuleContexts(PriorityContext.class);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public MaximizeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_maximize; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterMaximize(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitMaximize(this);
		}
	}

	public final MaximizeContext maximize() throws RecognitionException {
		MaximizeContext _localctx = new MaximizeContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_maximize);
		int _la;
		try {
			setState(219);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(175); match(DIR_MAXIMIZE);
				setState(176); match(SQUARE_LEFT);
				setState(177); literal();
				setState(179);
				_la = _input.LA(1);
				if (_la==EQUALS) {
					{
					setState(178); weight();
					}
				}

				setState(182);
				_la = _input.LA(1);
				if (_la==AT) {
					{
					setState(181); priority();
					}
				}

				setState(194);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(184); match(COMMA);
					setState(185); literal();
					setState(187);
					_la = _input.LA(1);
					if (_la==EQUALS) {
						{
						setState(186); weight();
						}
					}

					setState(190);
					_la = _input.LA(1);
					if (_la==AT) {
						{
						setState(189); priority();
						}
					}

					}
					}
					setState(196);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(197); match(SQUARE_RIGHT);
				setState(198); match(DOT);
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(200); match(DIR_MAXIMIZE);
				setState(201); match(CURLY_LEFT);
				setState(202); literal();
				setState(204);
				_la = _input.LA(1);
				if (_la==AT) {
					{
					setState(203); priority();
					}
				}

				setState(213);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(206); match(COMMA);
					setState(207); literal();
					setState(209);
					_la = _input.LA(1);
					if (_la==AT) {
						{
						setState(208); priority();
						}
					}

					}
					}
					setState(215);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(216); match(CURLY_RIGHT);
				setState(217); match(DOT);
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

	public static class ModeBodyContext extends ParserRuleContext {
		public TerminalNode NOT() { return getToken(XhailParser.NOT, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public PriorityContext priority() {
			return getRuleContext(PriorityContext.class,0);
		}
		public WeightContext weight() {
			return getRuleContext(WeightContext.class,0);
		}
		public SignatureContext signature() {
			return getRuleContext(SignatureContext.class,0);
		}
		public TerminalNode DIR_MODEB() { return getToken(XhailParser.DIR_MODEB, 0); }
		public BoundContext bound() {
			return getRuleContext(BoundContext.class,0);
		}
		public ModeBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_modeBody; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterModeBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitModeBody(this);
		}
	}

	public final ModeBodyContext modeBody() throws RecognitionException {
		ModeBodyContext _localctx = new ModeBodyContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_modeBody);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(221); match(DIR_MODEB);
			setState(223);
			_la = _input.LA(1);
			if (_la==NOT) {
				{
				setState(222); match(NOT);
				}
			}

			setState(225); signature();
			setState(227);
			_la = _input.LA(1);
			if (_la==COLON) {
				{
				setState(226); bound();
				}
			}

			setState(230);
			_la = _input.LA(1);
			if (_la==EQUALS) {
				{
				setState(229); weight();
				}
			}

			setState(233);
			_la = _input.LA(1);
			if (_la==AT) {
				{
				setState(232); priority();
				}
			}

			setState(235); match(DOT);
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

	public static class ModeHeadContext extends ParserRuleContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_MODEH() { return getToken(XhailParser.DIR_MODEH, 0); }
		public PriorityContext priority() {
			return getRuleContext(PriorityContext.class,0);
		}
		public WeightContext weight() {
			return getRuleContext(WeightContext.class,0);
		}
		public SignatureContext signature() {
			return getRuleContext(SignatureContext.class,0);
		}
		public BoundsContext bounds() {
			return getRuleContext(BoundsContext.class,0);
		}
		public ModeHeadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_modeHead; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterModeHead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitModeHead(this);
		}
	}

	public final ModeHeadContext modeHead() throws RecognitionException {
		ModeHeadContext _localctx = new ModeHeadContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_modeHead);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(237); match(DIR_MODEH);
			setState(238); signature();
			setState(240);
			_la = _input.LA(1);
			if (_la==COLON) {
				{
				setState(239); bounds();
				}
			}

			setState(243);
			_la = _input.LA(1);
			if (_la==EQUALS) {
				{
				setState(242); weight();
				}
			}

			setState(246);
			_la = _input.LA(1);
			if (_la==AT) {
				{
				setState(245); priority();
				}
			}

			setState(248); match(DOT);
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

	public static class SignatureContext extends ParserRuleContext {
		public KeyListContext keyList() {
			return getRuleContext(KeyListContext.class,0);
		}
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public SignatureContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_signature; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterSignature(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitSignature(this);
		}
	}

	public final SignatureContext signature() throws RecognitionException {
		SignatureContext _localctx = new SignatureContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_signature);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(250); match(IDENTIFIER);
			setState(255);
			_la = _input.LA(1);
			if (_la==PAREN_LEFT) {
				{
				setState(251); match(PAREN_LEFT);
				setState(252); keyList();
				setState(253); match(PAREN_RIGHT);
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

	public static class KeyListContext extends ParserRuleContext {
		public List<KeyContext> key() {
			return getRuleContexts(KeyContext.class);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public KeyContext key(int i) {
			return getRuleContext(KeyContext.class,i);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public KeyListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_keyList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterKeyList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitKeyList(this);
		}
	}

	public final KeyListContext keyList() throws RecognitionException {
		KeyListContext _localctx = new KeyListContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_keyList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(257); key();
			setState(262);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(258); match(COMMA);
				setState(259); key();
				}
				}
				setState(264);
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

	public static class KeyContext extends ParserRuleContext {
		public KeyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_key; }
	 
		public KeyContext() { }
		public void copyFrom(KeyContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class KeySignatureContext extends KeyContext {
		public SignatureContext signature() {
			return getRuleContext(SignatureContext.class,0);
		}
		public KeySignatureContext(KeyContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterKeySignature(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitKeySignature(this);
		}
	}
	public static class KeyConstantContext extends KeyContext {
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public TerminalNode HASH() { return getToken(XhailParser.HASH, 0); }
		public KeyConstantContext(KeyContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterKeyConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitKeyConstant(this);
		}
	}
	public static class KeyInputContext extends KeyContext {
		public TerminalNode PLUS() { return getToken(XhailParser.PLUS, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public KeyInputContext(KeyContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterKeyInput(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitKeyInput(this);
		}
	}
	public static class KeyOutputContext extends KeyContext {
		public TerminalNode MINUS() { return getToken(XhailParser.MINUS, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public KeyOutputContext(KeyContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterKeyOutput(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitKeyOutput(this);
		}
	}

	public final KeyContext key() throws RecognitionException {
		KeyContext _localctx = new KeyContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_key);
		try {
			setState(272);
			switch (_input.LA(1)) {
			case PLUS:
				_localctx = new KeyInputContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(265); match(PLUS);
				setState(266); match(IDENTIFIER);
				}
				break;
			case MINUS:
				_localctx = new KeyOutputContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(267); match(MINUS);
				setState(268); match(IDENTIFIER);
				}
				break;
			case HASH:
				_localctx = new KeyConstantContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(269); match(HASH);
				setState(270); match(IDENTIFIER);
				}
				break;
			case IDENTIFIER:
				_localctx = new KeySignatureContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(271); signature();
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

	public static class MinimizeContext extends ParserRuleContext {
		public TerminalNode CURLY_LEFT() { return getToken(XhailParser.CURLY_LEFT, 0); }
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public TerminalNode SQUARE_RIGHT() { return getToken(XhailParser.SQUARE_RIGHT, 0); }
		public WeightContext weight(int i) {
			return getRuleContext(WeightContext.class,i);
		}
		public List<WeightContext> weight() {
			return getRuleContexts(WeightContext.class);
		}
		public TerminalNode SQUARE_LEFT() { return getToken(XhailParser.SQUARE_LEFT, 0); }
		public TerminalNode CURLY_RIGHT() { return getToken(XhailParser.CURLY_RIGHT, 0); }
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode DIR_MINIMIZE() { return getToken(XhailParser.DIR_MINIMIZE, 0); }
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public PriorityContext priority(int i) {
			return getRuleContext(PriorityContext.class,i);
		}
		public List<PriorityContext> priority() {
			return getRuleContexts(PriorityContext.class);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public MinimizeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_minimize; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterMinimize(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitMinimize(this);
		}
	}

	public final MinimizeContext minimize() throws RecognitionException {
		MinimizeContext _localctx = new MinimizeContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_minimize);
		int _la;
		try {
			setState(318);
			switch ( getInterpreter().adaptivePredict(_input,39,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(274); match(DIR_MINIMIZE);
				setState(275); match(SQUARE_LEFT);
				setState(276); literal();
				setState(278);
				_la = _input.LA(1);
				if (_la==EQUALS) {
					{
					setState(277); weight();
					}
				}

				setState(281);
				_la = _input.LA(1);
				if (_la==AT) {
					{
					setState(280); priority();
					}
				}

				setState(293);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(283); match(COMMA);
					setState(284); literal();
					setState(286);
					_la = _input.LA(1);
					if (_la==EQUALS) {
						{
						setState(285); weight();
						}
					}

					setState(289);
					_la = _input.LA(1);
					if (_la==AT) {
						{
						setState(288); priority();
						}
					}

					}
					}
					setState(295);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(296); match(SQUARE_RIGHT);
				setState(297); match(DOT);
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(299); match(DIR_MINIMIZE);
				setState(300); match(CURLY_LEFT);
				setState(301); literal();
				setState(303);
				_la = _input.LA(1);
				if (_la==AT) {
					{
					setState(302); priority();
					}
				}

				setState(312);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(305); match(COMMA);
					setState(306); literal();
					setState(308);
					_la = _input.LA(1);
					if (_la==AT) {
						{
						setState(307); priority();
						}
					}

					}
					}
					setState(314);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(315); match(CURLY_RIGHT);
				setState(316); match(DOT);
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

	public static class ShowContext extends ParserRuleContext {
		public ShowContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_show; }
	 
		public ShowContext() { }
		public void copyFrom(ShowContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ShowAllContext extends ShowContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode DIR_SHOW() { return getToken(XhailParser.DIR_SHOW, 0); }
		public ShowAllContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterShowAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitShowAll(this);
		}
	}
	public static class ShowImplicitContext extends ShowContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public TerminalNode DIR_SHOW() { return getToken(XhailParser.DIR_SHOW, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public ShowImplicitContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterShowImplicit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitShowImplicit(this);
		}
	}
	public static class ShowExplicitContext extends ShowContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public TerminalNode DIR_SHOW() { return getToken(XhailParser.DIR_SHOW, 0); }
		public List<TerminalNode> VARIABLE() { return getTokens(XhailParser.VARIABLE); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public TerminalNode VARIABLE(int i) {
			return getToken(XhailParser.VARIABLE, i);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public ShowExplicitContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterShowExplicit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitShowExplicit(this);
		}
	}

	public final ShowContext show() throws RecognitionException {
		ShowContext _localctx = new ShowContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_show);
		int _la;
		try {
			setState(340);
			switch ( getInterpreter().adaptivePredict(_input,41,_ctx) ) {
			case 1:
				_localctx = new ShowAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(320); match(DIR_SHOW);
				setState(321); match(DOT);
				}
				break;

			case 2:
				_localctx = new ShowImplicitContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(322); match(DIR_SHOW);
				setState(323); match(IDENTIFIER);
				setState(324); match(SLASH);
				setState(325); match(INTEGER);
				setState(326); match(DOT);
				}
				break;

			case 3:
				_localctx = new ShowExplicitContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(327); match(DIR_SHOW);
				setState(328); match(IDENTIFIER);
				setState(329); match(PAREN_LEFT);
				setState(330); match(VARIABLE);
				setState(335);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMMA) {
					{
					{
					setState(331); match(COMMA);
					setState(332); match(VARIABLE);
					}
					}
					setState(337);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(338); match(PAREN_RIGHT);
				setState(339); match(DOT);
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

	public static class GroundAtomContext extends ParserRuleContext {
		public GroundAtomContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_groundAtom; }
	 
		public GroundAtomContext() { }
		public void copyFrom(GroundAtomContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class GroundIntegerContext extends GroundAtomContext {
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public GroundIntegerContext(GroundAtomContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundInteger(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundInteger(this);
		}
	}
	public static class GroundVariableContext extends GroundAtomContext {
		public TerminalNode VARIABLE() { return getToken(XhailParser.VARIABLE, 0); }
		public GroundVariableContext(GroundAtomContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundVariable(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundVariable(this);
		}
	}
	public static class GroundPredicateContext extends GroundAtomContext {
		public GroundTermContext groundTerm(int i) {
			return getRuleContext(GroundTermContext.class,i);
		}
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public List<GroundTermContext> groundTerm() {
			return getRuleContexts(GroundTermContext.class);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public GroundPredicateContext(GroundAtomContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPredicate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPredicate(this);
		}
	}
	public static class GroundStringContext extends GroundAtomContext {
		public TerminalNode STRING() { return getToken(XhailParser.STRING, 0); }
		public GroundStringContext(GroundAtomContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundString(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundString(this);
		}
	}

	public final GroundAtomContext groundAtom() throws RecognitionException {
		GroundAtomContext _localctx = new GroundAtomContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_groundAtom);
		int _la;
		try {
			setState(359);
			switch (_input.LA(1)) {
			case INTEGER:
				_localctx = new GroundIntegerContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(342); match(INTEGER);
				}
				break;
			case STRING:
				_localctx = new GroundStringContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(343); match(STRING);
				}
				break;
			case VARIABLE:
				_localctx = new GroundVariableContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(344); match(VARIABLE);
				}
				break;
			case IDENTIFIER:
				_localctx = new GroundPredicateContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(345); match(IDENTIFIER);
				setState(357);
				_la = _input.LA(1);
				if (_la==PAREN_LEFT) {
					{
					setState(346); match(PAREN_LEFT);
					setState(347); groundTerm();
					setState(352);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==COMMA) {
						{
						{
						setState(348); match(COMMA);
						setState(349); groundTerm();
						}
						}
						setState(354);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(355); match(PAREN_RIGHT);
					}
				}

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

	public static class GroundTermContext extends ParserRuleContext {
		public GroundTermContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_groundTerm; }
	 
		public GroundTermContext() { }
		public void copyFrom(GroundTermContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class GroundIntervalContext extends GroundTermContext {
		public List<TerminalNode> INTEGER() { return getTokens(XhailParser.INTEGER); }
		public TerminalNode DOTS() { return getToken(XhailParser.DOTS, 0); }
		public TerminalNode IDENTIFIER(int i) {
			return getToken(XhailParser.IDENTIFIER, i);
		}
		public TerminalNode INTEGER(int i) {
			return getToken(XhailParser.INTEGER, i);
		}
		public List<TerminalNode> VARIABLE() { return getTokens(XhailParser.VARIABLE); }
		public List<TerminalNode> IDENTIFIER() { return getTokens(XhailParser.IDENTIFIER); }
		public TerminalNode VARIABLE(int i) {
			return getToken(XhailParser.VARIABLE, i);
		}
		public GroundIntervalContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundInterval(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundInterval(this);
		}
	}
	public static class GroundMinus1Context extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode MINUS() { return getToken(XhailParser.MINUS, 0); }
		public GroundMinus1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundMinus1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundMinus1(this);
		}
	}
	public static class GroundMinus2Context extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode MINUS() { return getToken(XhailParser.MINUS, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundMinus2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundMinus2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundMinus2(this);
		}
	}
	public static class GroundTimesContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode ASTERISK() { return getToken(XhailParser.ASTERISK, 0); }
		public GroundTimesContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundTimes(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundTimes(this);
		}
	}
	public static class GroundAndContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode BIT_AND() { return getToken(XhailParser.BIT_AND, 0); }
		public GroundAndContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundAnd(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundAnd(this);
		}
	}
	public static class GroundXorContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode BIT_XOR() { return getToken(XhailParser.BIT_XOR, 0); }
		public GroundXorContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundXor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundXor(this);
		}
	}
	public static class GroundLessEqualsContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode COMP_LE() { return getToken(XhailParser.COMP_LE, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundLessEqualsContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundLessEquals(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundLessEquals(this);
		}
	}
	public static class GroundPower1Context extends GroundTermContext {
		public TerminalNode ASTERISKS() { return getToken(XhailParser.ASTERISKS, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundPower1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPower1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPower1(this);
		}
	}
	public static class GroundAbsolute2Context extends GroundTermContext {
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode ARITH_ABS() { return getToken(XhailParser.ARITH_ABS, 0); }
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public GroundAbsolute2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundAbsolute2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundAbsolute2(this);
		}
	}
	public static class GroundNotContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode BIT_NOT() { return getToken(XhailParser.BIT_NOT, 0); }
		public GroundNotContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundNot(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundNot(this);
		}
	}
	public static class GroundAbsolute1Context extends GroundTermContext {
		public List<TerminalNode> BAR() { return getTokens(XhailParser.BAR); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode BAR(int i) {
			return getToken(XhailParser.BAR, i);
		}
		public GroundAbsolute1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundAbsolute1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundAbsolute1(this);
		}
	}
	public static class GroundPower3Context extends GroundTermContext {
		public TerminalNode ARITH_POWER() { return getToken(XhailParser.ARITH_POWER, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode COMMA() { return getToken(XhailParser.COMMA, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public GroundPower3Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPower3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPower3(this);
		}
	}
	public static class GroundPower2Context extends GroundTermContext {
		public TerminalNode ARITH_POWER() { return getToken(XhailParser.ARITH_POWER, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundPower2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPower2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPower2(this);
		}
	}
	public static class GroundNotEqualsContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode COMP_NE() { return getToken(XhailParser.COMP_NE, 0); }
		public GroundNotEqualsContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundNotEquals(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundNotEquals(this);
		}
	}
	public static class GroundEqualsContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode COMP_EQ() { return getToken(XhailParser.COMP_EQ, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundEqualsContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundEquals(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundEquals(this);
		}
	}
	public static class GroundOrContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode BIT_OR() { return getToken(XhailParser.BIT_OR, 0); }
		public GroundOrContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundOr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundOr(this);
		}
	}
	public static class GroundModulus1Context extends GroundTermContext {
		public TerminalNode BACKSLASH() { return getToken(XhailParser.BACKSLASH, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundModulus1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundModulus1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundModulus1(this);
		}
	}
	public static class GroundModulus2Context extends GroundTermContext {
		public TerminalNode ARITH_MODULUS() { return getToken(XhailParser.ARITH_MODULUS, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundModulus2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundModulus2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundModulus2(this);
		}
	}
	public static class GroundPoolingContext extends GroundTermContext {
		public List<TerminalNode> SEMICOLON() { return getTokens(XhailParser.SEMICOLON); }
		public List<GroundAtomContext> groundAtom() {
			return getRuleContexts(GroundAtomContext.class);
		}
		public TerminalNode SEMICOLON(int i) {
			return getToken(XhailParser.SEMICOLON, i);
		}
		public GroundAtomContext groundAtom(int i) {
			return getRuleContext(GroundAtomContext.class,i);
		}
		public GroundPoolingContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPooling(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPooling(this);
		}
	}
	public static class GroundModulus3Context extends GroundTermContext {
		public TerminalNode ARITH_MODULUS() { return getToken(XhailParser.ARITH_MODULUS, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode COMMA() { return getToken(XhailParser.COMMA, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public GroundModulus3Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundModulus3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundModulus3(this);
		}
	}
	public static class GroundLessContext extends GroundTermContext {
		public TerminalNode COMP_LT() { return getToken(XhailParser.COMP_LT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundLessContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundLess(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundLess(this);
		}
	}
	public static class GroundPlusContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode PLUS() { return getToken(XhailParser.PLUS, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundPlusContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundPlus(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundPlus(this);
		}
	}
	public static class GroundGreaterEqualsContext extends GroundTermContext {
		public TerminalNode COMP_GE() { return getToken(XhailParser.COMP_GE, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundGreaterEqualsContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundGreaterEquals(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundGreaterEquals(this);
		}
	}
	public static class GroundAssign1Context extends GroundTermContext {
		public TerminalNode ASSIGN() { return getToken(XhailParser.ASSIGN, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundAssign1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundAssign1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundAssign1(this);
		}
	}
	public static class GroundGreaterContext extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode COMP_GT() { return getToken(XhailParser.COMP_GT, 0); }
		public GroundGreaterContext(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundGreater(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundGreater(this);
		}
	}
	public static class GroundDivide2Context extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode ARITH_DIVIDE() { return getToken(XhailParser.ARITH_DIVIDE, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundDivide2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundDivide2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundDivide2(this);
		}
	}
	public static class GroundDivide3Context extends GroundTermContext {
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode COMMA() { return getToken(XhailParser.COMMA, 0); }
		public TerminalNode ARITH_DIVIDE() { return getToken(XhailParser.ARITH_DIVIDE, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public GroundDivide3Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundDivide3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundDivide3(this);
		}
	}
	public static class GroundAssign2Context extends GroundTermContext {
		public TerminalNode EQUALS() { return getToken(XhailParser.EQUALS, 0); }
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundAssign2Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundAssign2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundAssign2(this);
		}
	}
	public static class GroundDivide1Context extends GroundTermContext {
		public GroundAtomContext groundAtom() {
			return getRuleContext(GroundAtomContext.class,0);
		}
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public GroundTermContext groundTerm() {
			return getRuleContext(GroundTermContext.class,0);
		}
		public GroundDivide1Context(GroundTermContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroundDivide1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroundDivide1(this);
		}
	}

	public final GroundTermContext groundTerm() throws RecognitionException {
		GroundTermContext _localctx = new GroundTermContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_groundTerm);
		int _la;
		try {
			setState(486);
			switch ( getInterpreter().adaptivePredict(_input,46,_ctx) ) {
			case 1:
				_localctx = new GroundAssign1Context(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(361); groundAtom();
				setState(362); match(ASSIGN);
				setState(363); groundTerm();
				}
				break;

			case 2:
				_localctx = new GroundAssign2Context(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(365); groundAtom();
				setState(366); match(EQUALS);
				setState(367); groundTerm();
				}
				break;

			case 3:
				_localctx = new GroundAndContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(369); groundAtom();
				setState(370); match(BIT_AND);
				setState(371); groundTerm();
				}
				break;

			case 4:
				_localctx = new GroundNotContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(373); match(BIT_NOT);
				setState(374); groundAtom();
				}
				break;

			case 5:
				_localctx = new GroundOrContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(375); groundAtom();
				setState(376); match(BIT_OR);
				setState(377); groundTerm();
				}
				break;

			case 6:
				_localctx = new GroundXorContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(379); groundAtom();
				setState(380); match(BIT_XOR);
				setState(381); groundTerm();
				}
				break;

			case 7:
				_localctx = new GroundEqualsContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(383); groundAtom();
				setState(384); match(COMP_EQ);
				setState(385); groundTerm();
				}
				break;

			case 8:
				_localctx = new GroundGreaterEqualsContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(387); groundAtom();
				setState(388); match(COMP_GE);
				setState(389); groundTerm();
				}
				break;

			case 9:
				_localctx = new GroundGreaterContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(391); groundAtom();
				setState(392); match(COMP_GT);
				setState(393); groundTerm();
				}
				break;

			case 10:
				_localctx = new GroundLessEqualsContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(395); groundAtom();
				setState(396); match(COMP_LE);
				setState(397); groundTerm();
				}
				break;

			case 11:
				_localctx = new GroundLessContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(399); groundAtom();
				setState(400); match(COMP_LT);
				setState(401); groundTerm();
				}
				break;

			case 12:
				_localctx = new GroundNotEqualsContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(403); groundAtom();
				setState(404); match(COMP_NE);
				setState(405); groundTerm();
				}
				break;

			case 13:
				_localctx = new GroundPlusContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(407); groundAtom();
				setState(408); match(PLUS);
				setState(409); groundTerm();
				}
				break;

			case 14:
				_localctx = new GroundMinus1Context(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(411); match(MINUS);
				setState(412); groundAtom();
				}
				break;

			case 15:
				_localctx = new GroundMinus2Context(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(413); groundAtom();
				setState(414); match(MINUS);
				setState(415); groundTerm();
				}
				break;

			case 16:
				_localctx = new GroundTimesContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(417); groundAtom();
				setState(418); match(ASTERISK);
				setState(419); groundTerm();
				}
				break;

			case 17:
				_localctx = new GroundDivide1Context(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(421); groundAtom();
				setState(422); match(SLASH);
				setState(423); groundTerm();
				}
				break;

			case 18:
				_localctx = new GroundDivide2Context(_localctx);
				enterOuterAlt(_localctx, 18);
				{
				setState(425); groundAtom();
				setState(426); match(ARITH_DIVIDE);
				setState(427); groundTerm();
				}
				break;

			case 19:
				_localctx = new GroundDivide3Context(_localctx);
				enterOuterAlt(_localctx, 19);
				{
				setState(429); match(ARITH_DIVIDE);
				setState(430); match(PAREN_LEFT);
				setState(431); groundAtom();
				setState(432); match(COMMA);
				setState(433); groundTerm();
				setState(434); match(PAREN_RIGHT);
				}
				break;

			case 20:
				_localctx = new GroundModulus1Context(_localctx);
				enterOuterAlt(_localctx, 20);
				{
				setState(436); groundAtom();
				setState(437); match(BACKSLASH);
				setState(438); groundTerm();
				}
				break;

			case 21:
				_localctx = new GroundModulus2Context(_localctx);
				enterOuterAlt(_localctx, 21);
				{
				setState(440); groundAtom();
				setState(441); match(ARITH_MODULUS);
				setState(442); groundTerm();
				}
				break;

			case 22:
				_localctx = new GroundModulus3Context(_localctx);
				enterOuterAlt(_localctx, 22);
				{
				setState(444); match(ARITH_MODULUS);
				setState(445); match(PAREN_LEFT);
				setState(446); groundAtom();
				setState(447); match(COMMA);
				setState(448); groundTerm();
				setState(449); match(PAREN_RIGHT);
				}
				break;

			case 23:
				_localctx = new GroundAbsolute1Context(_localctx);
				enterOuterAlt(_localctx, 23);
				{
				setState(451); match(BAR);
				setState(452); groundAtom();
				setState(453); match(BAR);
				}
				break;

			case 24:
				_localctx = new GroundAbsolute2Context(_localctx);
				enterOuterAlt(_localctx, 24);
				{
				setState(455); match(ARITH_ABS);
				setState(456); match(PAREN_LEFT);
				setState(457); groundAtom();
				setState(458); match(PAREN_RIGHT);
				}
				break;

			case 25:
				_localctx = new GroundPower1Context(_localctx);
				enterOuterAlt(_localctx, 25);
				{
				setState(460); groundAtom();
				setState(461); match(ASTERISKS);
				setState(462); groundTerm();
				}
				break;

			case 26:
				_localctx = new GroundPower2Context(_localctx);
				enterOuterAlt(_localctx, 26);
				{
				setState(464); groundAtom();
				setState(465); match(ARITH_POWER);
				setState(466); groundTerm();
				}
				break;

			case 27:
				_localctx = new GroundPower3Context(_localctx);
				enterOuterAlt(_localctx, 27);
				{
				setState(468); match(ARITH_POWER);
				setState(469); match(PAREN_LEFT);
				setState(470); groundAtom();
				setState(471); match(COMMA);
				setState(472); groundTerm();
				setState(473); match(PAREN_RIGHT);
				}
				break;

			case 28:
				_localctx = new GroundPoolingContext(_localctx);
				enterOuterAlt(_localctx, 28);
				{
				setState(475); groundAtom();
				setState(480);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==SEMICOLON) {
					{
					{
					setState(476); match(SEMICOLON);
					setState(477); groundAtom();
					}
					}
					setState(482);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;

			case 29:
				_localctx = new GroundIntervalContext(_localctx);
				enterOuterAlt(_localctx, 29);
				{
				setState(483);
				_la = _input.LA(1);
				if ( !(((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				consume();
				setState(484); match(DOTS);
				setState(485);
				_la = _input.LA(1);
				if ( !(((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				consume();
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

	public static class BoundContext extends ParserRuleContext {
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode COLON() { return getToken(XhailParser.COLON, 0); }
		public BoundContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bound; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterBound(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitBound(this);
		}
	}

	public final BoundContext bound() throws RecognitionException {
		BoundContext _localctx = new BoundContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_bound);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(488); match(COLON);
			setState(489); match(INTEGER);
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

	public static class BoundsContext extends ParserRuleContext {
		public BoundsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bounds; }
	 
		public BoundsContext() { }
		public void copyFrom(BoundsContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class BoundSingleContext extends BoundsContext {
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode COLON() { return getToken(XhailParser.COLON, 0); }
		public BoundSingleContext(BoundsContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterBoundSingle(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitBoundSingle(this);
		}
	}
	public static class BoundsAllContext extends BoundsContext {
		public TerminalNode COLON() { return getToken(XhailParser.COLON, 0); }
		public TerminalNode ALL() { return getToken(XhailParser.ALL, 0); }
		public BoundsAllContext(BoundsContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterBoundsAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitBoundsAll(this);
		}
	}
	public static class BoundsBothContext extends BoundsContext {
		public List<TerminalNode> INTEGER() { return getTokens(XhailParser.INTEGER); }
		public TerminalNode COLON() { return getToken(XhailParser.COLON, 0); }
		public TerminalNode MINUS() { return getToken(XhailParser.MINUS, 0); }
		public TerminalNode INTEGER(int i) {
			return getToken(XhailParser.INTEGER, i);
		}
		public BoundsBothContext(BoundsContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterBoundsBoth(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitBoundsBoth(this);
		}
	}

	public final BoundsContext bounds() throws RecognitionException {
		BoundsContext _localctx = new BoundsContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_bounds);
		try {
			setState(499);
			switch ( getInterpreter().adaptivePredict(_input,47,_ctx) ) {
			case 1:
				_localctx = new BoundsAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(491); match(COLON);
				setState(492); match(ALL);
				}
				break;

			case 2:
				_localctx = new BoundSingleContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(493); match(COLON);
				setState(494); match(INTEGER);
				}
				break;

			case 3:
				_localctx = new BoundsBothContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(495); match(COLON);
				setState(496); match(INTEGER);
				setState(497); match(MINUS);
				setState(498); match(INTEGER);
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

	public static class WeightContext extends ParserRuleContext {
		public TerminalNode EQUALS() { return getToken(XhailParser.EQUALS, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public WeightContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_weight; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterWeight(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitWeight(this);
		}
	}

	public final WeightContext weight() throws RecognitionException {
		WeightContext _localctx = new WeightContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_weight);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(501); match(EQUALS);
			setState(502); match(INTEGER);
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

	public static class PriorityContext extends ParserRuleContext {
		public TerminalNode AT() { return getToken(XhailParser.AT, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public PriorityContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_priority; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterPriority(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitPriority(this);
		}
	}

	public final PriorityContext priority() throws RecognitionException {
		PriorityContext _localctx = new PriorityContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_priority);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(504); match(AT);
			setState(505); match(INTEGER);
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

	public static class ClauseContext extends ParserRuleContext {
		public ClauseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_clause; }
	 
		public ClauseContext() { }
		public void copyFrom(ClauseContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ConstraintClauseContext extends ClauseContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode IF() { return getToken(XhailParser.IF, 0); }
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public ConstraintClauseContext(ClauseContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterConstraintClause(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitConstraintClause(this);
		}
	}
	public static class FactClauseContext extends ClauseContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public HeadContext head() {
			return getRuleContext(HeadContext.class,0);
		}
		public FactClauseContext(ClauseContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterFactClause(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitFactClause(this);
		}
	}
	public static class FullClauseContext extends ClauseContext {
		public TerminalNode DOT() { return getToken(XhailParser.DOT, 0); }
		public TerminalNode IF() { return getToken(XhailParser.IF, 0); }
		public HeadContext head() {
			return getRuleContext(HeadContext.class,0);
		}
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public FullClauseContext(ClauseContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterFullClause(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitFullClause(this);
		}
	}

	public final ClauseContext clause() throws RecognitionException {
		ClauseContext _localctx = new ClauseContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_clause);
		try {
			setState(519);
			switch ( getInterpreter().adaptivePredict(_input,48,_ctx) ) {
			case 1:
				_localctx = new FactClauseContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(507); head();
				setState(508); match(DOT);
				}
				break;

			case 2:
				_localctx = new FullClauseContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(510); head();
				setState(511); match(IF);
				setState(512); body();
				setState(513); match(DOT);
				}
				break;

			case 3:
				_localctx = new ConstraintClauseContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(515); match(IF);
				setState(516); body();
				setState(517); match(DOT);
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

	public static class HeadContext extends ParserRuleContext {
		public AtomContext atom(int i) {
			return getRuleContext(AtomContext.class,i);
		}
		public List<TerminalNode> BAR() { return getTokens(XhailParser.BAR); }
		public TerminalNode BAR(int i) {
			return getToken(XhailParser.BAR, i);
		}
		public List<AtomContext> atom() {
			return getRuleContexts(AtomContext.class);
		}
		public HeadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_head; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterHead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitHead(this);
		}
	}

	public final HeadContext head() throws RecognitionException {
		HeadContext _localctx = new HeadContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_head);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(521); atom();
			setState(526);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==BAR) {
				{
				{
				setState(522); match(BAR);
				setState(523); atom();
				}
				}
				setState(528);
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

	public static class BodyContext extends ParserRuleContext {
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public BodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_body; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitBody(this);
		}
	}

	public final BodyContext body() throws RecognitionException {
		BodyContext _localctx = new BodyContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_body);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(529); literal();
			setState(534);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(530); match(COMMA);
				setState(531); literal();
				}
				}
				setState(536);
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

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode NOT() { return getToken(XhailParser.NOT, 0); }
		public AtomContext atom() {
			return getRuleContext(AtomContext.class,0);
		}
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitLiteral(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(538);
			_la = _input.LA(1);
			if (_la==NOT) {
				{
				setState(537); match(NOT);
				}
			}

			setState(540); atom();
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

	public static class PredicateContext extends ParserRuleContext {
		public GroupContext group() {
			return getRuleContext(GroupContext.class,0);
		}
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public TerminalNode COLON(int i) {
			return getToken(XhailParser.COLON, i);
		}
		public AggregatewContext aggregatew() {
			return getRuleContext(AggregatewContext.class,0);
		}
		public List<TerminalNode> COLON() { return getTokens(XhailParser.COLON); }
		public AggregateContext aggregate() {
			return getRuleContext(AggregateContext.class,0);
		}
		public TerminalNode VARIABLE() { return getToken(XhailParser.VARIABLE, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public PredicateContext predicate(int i) {
			return getRuleContext(PredicateContext.class,i);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public List<PredicateContext> predicate() {
			return getRuleContexts(PredicateContext.class);
		}
		public PredicateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_predicate; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterPredicate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitPredicate(this);
		}
	}

	public final PredicateContext predicate() throws RecognitionException {
		PredicateContext _localctx = new PredicateContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_predicate);
		int _la;
		try {
			int _alt;
			setState(560);
			switch ( getInterpreter().adaptivePredict(_input,54,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(542); aggregate();
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(543); aggregatew();
				}
				break;

			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(544); match(VARIABLE);
				}
				break;

			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(545); match(INTEGER);
				}
				break;

			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(546); match(IDENTIFIER);
				setState(551);
				_la = _input.LA(1);
				if (_la==PAREN_LEFT) {
					{
					setState(547); match(PAREN_LEFT);
					setState(548); group();
					setState(549); match(PAREN_RIGHT);
					}
				}

				setState(557);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,53,_ctx);
				while ( _alt!=2 && _alt!=ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(553); match(COLON);
						setState(554); predicate();
						}
						} 
					}
					setState(559);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,53,_ctx);
				}
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

	public static class AggregateContext extends ParserRuleContext {
		public TerminalNode CURLY_LEFT() { return getToken(XhailParser.CURLY_LEFT, 0); }
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public TerminalNode AGGR_COUNT() { return getToken(XhailParser.AGGR_COUNT, 0); }
		public TerminalNode CURLY_RIGHT() { return getToken(XhailParser.CURLY_RIGHT, 0); }
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public TerminalNode AGGR_EVEN() { return getToken(XhailParser.AGGR_EVEN, 0); }
		public TerminalNode AGGR_ODD() { return getToken(XhailParser.AGGR_ODD, 0); }
		public AggregateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_aggregate; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterAggregate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitAggregate(this);
		}
	}

	public final AggregateContext aggregate() throws RecognitionException {
		AggregateContext _localctx = new AggregateContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_aggregate);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(563);
			_la = _input.LA(1);
			if (((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) {
				{
				setState(562); number();
				}
			}

			setState(566);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AGGR_COUNT) | (1L << AGGR_EVEN) | (1L << AGGR_ODD))) != 0)) {
				{
				setState(565);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AGGR_COUNT) | (1L << AGGR_EVEN) | (1L << AGGR_ODD))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				consume();
				}
			}

			setState(568); match(CURLY_LEFT);
			setState(569); literal();
			setState(574);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(570); match(COMMA);
				setState(571); literal();
				}
				}
				setState(576);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(577); match(CURLY_RIGHT);
			setState(579);
			_la = _input.LA(1);
			if (((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) {
				{
				setState(578); number();
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

	public static class AggregatewContext extends ParserRuleContext {
		public LiteralContext literal(int i) {
			return getRuleContext(LiteralContext.class,i);
		}
		public TerminalNode SQUARE_RIGHT() { return getToken(XhailParser.SQUARE_RIGHT, 0); }
		public WeightContext weight(int i) {
			return getRuleContext(WeightContext.class,i);
		}
		public List<WeightContext> weight() {
			return getRuleContexts(WeightContext.class);
		}
		public TerminalNode SQUARE_LEFT() { return getToken(XhailParser.SQUARE_LEFT, 0); }
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public TerminalNode AGGR_SUM() { return getToken(XhailParser.AGGR_SUM, 0); }
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public List<LiteralContext> literal() {
			return getRuleContexts(LiteralContext.class);
		}
		public TerminalNode AGGR_MIN() { return getToken(XhailParser.AGGR_MIN, 0); }
		public TerminalNode AGGR_AVG() { return getToken(XhailParser.AGGR_AVG, 0); }
		public TerminalNode AGGR_MAX() { return getToken(XhailParser.AGGR_MAX, 0); }
		public AggregatewContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_aggregatew; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterAggregatew(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitAggregatew(this);
		}
	}

	public final AggregatewContext aggregatew() throws RecognitionException {
		AggregatewContext _localctx = new AggregatewContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_aggregatew);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(582);
			_la = _input.LA(1);
			if (((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) {
				{
				setState(581); number();
				}
			}

			setState(585);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AGGR_AVG) | (1L << AGGR_MAX) | (1L << AGGR_MIN) | (1L << AGGR_SUM))) != 0)) {
				{
				setState(584);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << AGGR_AVG) | (1L << AGGR_MAX) | (1L << AGGR_MIN) | (1L << AGGR_SUM))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				consume();
				}
			}

			setState(587); match(SQUARE_LEFT);
			setState(588); literal();
			setState(590);
			_la = _input.LA(1);
			if (_la==EQUALS) {
				{
				setState(589); weight();
				}
			}

			setState(599);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(592); match(COMMA);
				setState(593); literal();
				setState(595);
				_la = _input.LA(1);
				if (_la==EQUALS) {
					{
					setState(594); weight();
					}
				}

				}
				}
				setState(601);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(602); match(SQUARE_RIGHT);
			setState(604);
			_la = _input.LA(1);
			if (((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) {
				{
				setState(603); number();
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

	public static class GroupContext extends ParserRuleContext {
		public AtomListContext atomList(int i) {
			return getRuleContext(AtomListContext.class,i);
		}
		public List<AtomListContext> atomList() {
			return getRuleContexts(AtomListContext.class);
		}
		public TerminalNode SEMICOLONS(int i) {
			return getToken(XhailParser.SEMICOLONS, i);
		}
		public List<TerminalNode> SEMICOLONS() { return getTokens(XhailParser.SEMICOLONS); }
		public GroupContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_group; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterGroup(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitGroup(this);
		}
	}

	public final GroupContext group() throws RecognitionException {
		GroupContext _localctx = new GroupContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_group);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(606); atomList();
			setState(611);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMICOLONS) {
				{
				{
				setState(607); match(SEMICOLONS);
				setState(608); atomList();
				}
				}
				setState(613);
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

	public static class AtomListContext extends ParserRuleContext {
		public AtomContext atom(int i) {
			return getRuleContext(AtomContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(XhailParser.COMMA); }
		public List<AtomContext> atom() {
			return getRuleContexts(AtomContext.class);
		}
		public TerminalNode COMMA(int i) {
			return getToken(XhailParser.COMMA, i);
		}
		public AtomListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atomList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterAtomList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitAtomList(this);
		}
	}

	public final AtomListContext atomList() throws RecognitionException {
		AtomListContext _localctx = new AtomListContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_atomList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(614); atom();
			setState(619);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMMA) {
				{
				{
				setState(615); match(COMMA);
				setState(616); atom();
				}
				}
				setState(621);
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

	public static class AtomContext extends ParserRuleContext {
		public TerminalNode BACKSLASH() { return getToken(XhailParser.BACKSLASH, 0); }
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode ASTERISKS() { return getToken(XhailParser.ASTERISKS, 0); }
		public TerminalNode BAR(int i) {
			return getToken(XhailParser.BAR, i);
		}
		public TerminalNode ARITH_DIVIDE() { return getToken(XhailParser.ARITH_DIVIDE, 0); }
		public PredicateContext predicate(int i) {
			return getRuleContext(PredicateContext.class,i);
		}
		public TerminalNode BIT_NOT() { return getToken(XhailParser.BIT_NOT, 0); }
		public TerminalNode BIT_AND() { return getToken(XhailParser.BIT_AND, 0); }
		public TerminalNode BIT_OR() { return getToken(XhailParser.BIT_OR, 0); }
		public TerminalNode BIT_XOR() { return getToken(XhailParser.BIT_XOR, 0); }
		public TerminalNode ASTERISK() { return getToken(XhailParser.ASTERISK, 0); }
		public TerminalNode COMP_LT() { return getToken(XhailParser.COMP_LT, 0); }
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public TerminalNode EQUALS() { return getToken(XhailParser.EQUALS, 0); }
		public TerminalNode COMMA() { return getToken(XhailParser.COMMA, 0); }
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public TerminalNode ARITH_MODULUS() { return getToken(XhailParser.ARITH_MODULUS, 0); }
		public TerminalNode ARITH_POWER() { return getToken(XhailParser.ARITH_POWER, 0); }
		public TerminalNode STRING() { return getToken(XhailParser.STRING, 0); }
		public TerminalNode COMP_LE() { return getToken(XhailParser.COMP_LE, 0); }
		public TerminalNode ARITH_ABS() { return getToken(XhailParser.ARITH_ABS, 0); }
		public PoolingContext pooling() {
			return getRuleContext(PoolingContext.class,0);
		}
		public TerminalNode PAREN_RIGHT() { return getToken(XhailParser.PAREN_RIGHT, 0); }
		public TerminalNode ASSIGN() { return getToken(XhailParser.ASSIGN, 0); }
		public List<TerminalNode> BAR() { return getTokens(XhailParser.BAR); }
		public TerminalNode COMP_GE() { return getToken(XhailParser.COMP_GE, 0); }
		public TerminalNode PAREN_LEFT() { return getToken(XhailParser.PAREN_LEFT, 0); }
		public TerminalNode COMP_EQ() { return getToken(XhailParser.COMP_EQ, 0); }
		public TerminalNode SLASH() { return getToken(XhailParser.SLASH, 0); }
		public IntervalContext interval() {
			return getRuleContext(IntervalContext.class,0);
		}
		public TerminalNode MINUS() { return getToken(XhailParser.MINUS, 0); }
		public TerminalNode PLUS() { return getToken(XhailParser.PLUS, 0); }
		public TerminalNode VARIABLE() { return getToken(XhailParser.VARIABLE, 0); }
		public TerminalNode SUPREMUM() { return getToken(XhailParser.SUPREMUM, 0); }
		public TerminalNode COMP_GT() { return getToken(XhailParser.COMP_GT, 0); }
		public TerminalNode INFIMUM() { return getToken(XhailParser.INFIMUM, 0); }
		public List<PredicateContext> predicate() {
			return getRuleContexts(PredicateContext.class);
		}
		public TerminalNode COMP_NE() { return getToken(XhailParser.COMP_NE, 0); }
		public AtomContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atom; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterAtom(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitAtom(this);
		}
	}

	public final AtomContext atom() throws RecognitionException {
		AtomContext _localctx = new AtomContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_atom);
		try {
			setState(744);
			switch ( getInterpreter().adaptivePredict(_input,67,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(622); match(INTEGER);
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(623); match(SUPREMUM);
				}
				break;

			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(624); match(INFIMUM);
				}
				break;

			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(625); match(STRING);
				}
				break;

			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(626); match(VARIABLE);
				}
				break;

			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(627); predicate();
				}
				break;

			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(628); interval();
				}
				break;

			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(629); pooling();
				}
				break;

			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(630); number();
				setState(631); match(ASSIGN);
				setState(632); predicate();
				}
				break;

			case 10:
				enterOuterAlt(_localctx, 10);
				{
				setState(634); number();
				setState(635); match(EQUALS);
				setState(636); predicate();
				}
				break;

			case 11:
				enterOuterAlt(_localctx, 11);
				{
				setState(638); number();
				setState(639); match(BIT_AND);
				setState(640); number();
				}
				break;

			case 12:
				enterOuterAlt(_localctx, 12);
				{
				setState(642); number();
				setState(643); match(BIT_OR);
				setState(644); number();
				}
				break;

			case 13:
				enterOuterAlt(_localctx, 13);
				{
				setState(646); number();
				setState(647); match(BIT_XOR);
				setState(648); number();
				}
				break;

			case 14:
				enterOuterAlt(_localctx, 14);
				{
				setState(650); predicate();
				setState(651); match(COMP_EQ);
				setState(652); predicate();
				}
				break;

			case 15:
				enterOuterAlt(_localctx, 15);
				{
				setState(654); predicate();
				setState(655); match(COMP_GE);
				setState(656); predicate();
				}
				break;

			case 16:
				enterOuterAlt(_localctx, 16);
				{
				setState(658); predicate();
				setState(659); match(COMP_GT);
				setState(660); predicate();
				}
				break;

			case 17:
				enterOuterAlt(_localctx, 17);
				{
				setState(662); predicate();
				setState(663); match(COMP_LE);
				setState(664); predicate();
				}
				break;

			case 18:
				enterOuterAlt(_localctx, 18);
				{
				setState(666); predicate();
				setState(667); match(COMP_LT);
				setState(668); predicate();
				}
				break;

			case 19:
				enterOuterAlt(_localctx, 19);
				{
				setState(670); predicate();
				setState(671); match(COMP_NE);
				setState(672); predicate();
				}
				break;

			case 20:
				enterOuterAlt(_localctx, 20);
				{
				setState(674); match(BAR);
				setState(675); number();
				setState(676); match(BAR);
				}
				break;

			case 21:
				enterOuterAlt(_localctx, 21);
				{
				setState(678); match(ARITH_ABS);
				setState(679); match(PAREN_LEFT);
				setState(680); number();
				setState(681); match(PAREN_RIGHT);
				}
				break;

			case 22:
				enterOuterAlt(_localctx, 22);
				{
				setState(683); number();
				setState(684); match(MINUS);
				setState(685); number();
				}
				break;

			case 23:
				enterOuterAlt(_localctx, 23);
				{
				setState(687); number();
				setState(688); match(SLASH);
				setState(689); number();
				}
				break;

			case 24:
				enterOuterAlt(_localctx, 24);
				{
				setState(691); number();
				setState(692); match(ARITH_DIVIDE);
				setState(693); number();
				}
				break;

			case 25:
				enterOuterAlt(_localctx, 25);
				{
				setState(695); match(ARITH_DIVIDE);
				setState(696); match(PAREN_LEFT);
				setState(697); number();
				setState(698); match(COMMA);
				setState(699); number();
				setState(700); match(PAREN_RIGHT);
				}
				break;

			case 26:
				enterOuterAlt(_localctx, 26);
				{
				setState(702); number();
				setState(703); match(BACKSLASH);
				setState(704); number();
				}
				break;

			case 27:
				enterOuterAlt(_localctx, 27);
				{
				setState(706); number();
				setState(707); match(ARITH_MODULUS);
				setState(708); number();
				}
				break;

			case 28:
				enterOuterAlt(_localctx, 28);
				{
				setState(710); match(ARITH_MODULUS);
				setState(711); match(PAREN_LEFT);
				setState(712); number();
				setState(713); match(COMMA);
				setState(714); number();
				setState(715); match(PAREN_RIGHT);
				}
				break;

			case 29:
				enterOuterAlt(_localctx, 29);
				{
				setState(717); number();
				setState(718); match(PLUS);
				setState(719); number();
				}
				break;

			case 30:
				enterOuterAlt(_localctx, 30);
				{
				setState(721); number();
				setState(722); match(ASTERISK);
				setState(723); number();
				}
				break;

			case 31:
				enterOuterAlt(_localctx, 31);
				{
				setState(725); number();
				setState(726); match(ASTERISKS);
				setState(727); number();
				}
				break;

			case 32:
				enterOuterAlt(_localctx, 32);
				{
				setState(729); number();
				setState(730); match(ARITH_POWER);
				setState(731); number();
				}
				break;

			case 33:
				enterOuterAlt(_localctx, 33);
				{
				setState(733); match(ARITH_POWER);
				setState(734); match(PAREN_LEFT);
				setState(735); number();
				setState(736); match(COMMA);
				setState(737); number();
				setState(738); match(PAREN_RIGHT);
				}
				break;

			case 34:
				enterOuterAlt(_localctx, 34);
				{
				setState(740); match(BIT_NOT);
				setState(741); number();
				}
				break;

			case 35:
				enterOuterAlt(_localctx, 35);
				{
				setState(742); match(MINUS);
				setState(743); number();
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

	public static class IntervalContext extends ParserRuleContext {
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public TerminalNode DOTS() { return getToken(XhailParser.DOTS, 0); }
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public IntervalContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_interval; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterInterval(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitInterval(this);
		}
	}

	public final IntervalContext interval() throws RecognitionException {
		IntervalContext _localctx = new IntervalContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_interval);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(746); number();
			setState(747); match(DOTS);
			setState(748); number();
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

	public static class PoolingContext extends ParserRuleContext {
		public List<TerminalNode> SEMICOLON() { return getTokens(XhailParser.SEMICOLON); }
		public TerminalNode SEMICOLON(int i) {
			return getToken(XhailParser.SEMICOLON, i);
		}
		public PredicateContext predicate(int i) {
			return getRuleContext(PredicateContext.class,i);
		}
		public List<PredicateContext> predicate() {
			return getRuleContexts(PredicateContext.class);
		}
		public PoolingContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pooling; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterPooling(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitPooling(this);
		}
	}

	public final PoolingContext pooling() throws RecognitionException {
		PoolingContext _localctx = new PoolingContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_pooling);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(750); predicate();
			setState(755);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SEMICOLON) {
				{
				{
				setState(751); match(SEMICOLON);
				setState(752); predicate();
				}
				}
				setState(757);
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

	public static class NumberContext extends ParserRuleContext {
		public TerminalNode INTEGER() { return getToken(XhailParser.INTEGER, 0); }
		public TerminalNode VARIABLE() { return getToken(XhailParser.VARIABLE, 0); }
		public TerminalNode IDENTIFIER() { return getToken(XhailParser.IDENTIFIER, 0); }
		public NumberContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_number; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).enterNumber(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof XhailListener ) ((XhailListener)listener).exitNumber(this);
		}
	}

	public final NumberContext number() throws RecognitionException {
		NumberContext _localctx = new NumberContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_number);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(758);
			_la = _input.LA(1);
			if ( !(((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & ((1L << (IDENTIFIER - 64)) | (1L << (INTEGER - 64)) | (1L << (VARIABLE - 64)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			consume();
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

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3F\u02fb\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\3\2\3\2\3\2\7\2N\n\2\f\2\16\2Q\13\2\3\2"+
		"\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\5\3_\n\3\3\4\3\4\5\4c\n\4"+
		"\3\4\3\4\3\4\3\4\7\4i\n\4\f\4\16\4l\13\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3"+
		"\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\5\6~\n\6\3\7\3\7\3\7\3\7\3\b\3\b\5"+
		"\b\u0086\n\b\3\b\3\b\5\b\u008a\n\b\3\b\5\b\u008d\n\b\3\b\3\b\3\t\3\t\3"+
		"\t\3\t\3\t\3\t\3\t\3\t\3\t\5\t\u009a\n\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3"+
		"\n\3\n\3\n\3\n\3\n\3\n\7\n\u00a9\n\n\f\n\16\n\u00ac\13\n\3\n\3\n\5\n\u00b0"+
		"\n\n\3\13\3\13\3\13\3\13\5\13\u00b6\n\13\3\13\5\13\u00b9\n\13\3\13\3\13"+
		"\3\13\5\13\u00be\n\13\3\13\5\13\u00c1\n\13\7\13\u00c3\n\13\f\13\16\13"+
		"\u00c6\13\13\3\13\3\13\3\13\3\13\3\13\3\13\3\13\5\13\u00cf\n\13\3\13\3"+
		"\13\3\13\5\13\u00d4\n\13\7\13\u00d6\n\13\f\13\16\13\u00d9\13\13\3\13\3"+
		"\13\3\13\5\13\u00de\n\13\3\f\3\f\5\f\u00e2\n\f\3\f\3\f\5\f\u00e6\n\f\3"+
		"\f\5\f\u00e9\n\f\3\f\5\f\u00ec\n\f\3\f\3\f\3\r\3\r\3\r\5\r\u00f3\n\r\3"+
		"\r\5\r\u00f6\n\r\3\r\5\r\u00f9\n\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\5"+
		"\16\u0102\n\16\3\17\3\17\3\17\7\17\u0107\n\17\f\17\16\17\u010a\13\17\3"+
		"\20\3\20\3\20\3\20\3\20\3\20\3\20\5\20\u0113\n\20\3\21\3\21\3\21\3\21"+
		"\5\21\u0119\n\21\3\21\5\21\u011c\n\21\3\21\3\21\3\21\5\21\u0121\n\21\3"+
		"\21\5\21\u0124\n\21\7\21\u0126\n\21\f\21\16\21\u0129\13\21\3\21\3\21\3"+
		"\21\3\21\3\21\3\21\3\21\5\21\u0132\n\21\3\21\3\21\3\21\5\21\u0137\n\21"+
		"\7\21\u0139\n\21\f\21\16\21\u013c\13\21\3\21\3\21\3\21\5\21\u0141\n\21"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\7\22"+
		"\u0150\n\22\f\22\16\22\u0153\13\22\3\22\3\22\5\22\u0157\n\22\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\7\23\u0161\n\23\f\23\16\23\u0164\13\23"+
		"\3\23\3\23\5\23\u0168\n\23\5\23\u016a\n\23\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\7"+
		"\24\u01e1\n\24\f\24\16\24\u01e4\13\24\3\24\3\24\3\24\5\24\u01e9\n\24\3"+
		"\25\3\25\3\25\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\5\26\u01f6\n\26"+
		"\3\27\3\27\3\27\3\30\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\5\31\u020a\n\31\3\32\3\32\3\32\7\32\u020f\n\32\f"+
		"\32\16\32\u0212\13\32\3\33\3\33\3\33\7\33\u0217\n\33\f\33\16\33\u021a"+
		"\13\33\3\34\5\34\u021d\n\34\3\34\3\34\3\35\3\35\3\35\3\35\3\35\3\35\3"+
		"\35\3\35\3\35\5\35\u022a\n\35\3\35\3\35\7\35\u022e\n\35\f\35\16\35\u0231"+
		"\13\35\5\35\u0233\n\35\3\36\5\36\u0236\n\36\3\36\5\36\u0239\n\36\3\36"+
		"\3\36\3\36\3\36\7\36\u023f\n\36\f\36\16\36\u0242\13\36\3\36\3\36\5\36"+
		"\u0246\n\36\3\37\5\37\u0249\n\37\3\37\5\37\u024c\n\37\3\37\3\37\3\37\5"+
		"\37\u0251\n\37\3\37\3\37\3\37\5\37\u0256\n\37\7\37\u0258\n\37\f\37\16"+
		"\37\u025b\13\37\3\37\3\37\5\37\u025f\n\37\3 \3 \3 \7 \u0264\n \f \16 "+
		"\u0267\13 \3!\3!\3!\7!\u026c\n!\f!\16!\u026f\13!\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\""+
		"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3"+
		"\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\5\"\u02eb\n\"\3#\3#\3#"+
		"\3#\3$\3$\3$\7$\u02f4\n$\f$\16$\u02f7\13$\3%\3%\3%\2\2&\2\4\6\b\n\f\16"+
		"\20\22\24\26\30\32\34\36 \"$&(*,.\60\62\64\668:<>@BDFH\2\5\4\2BCEE\4\2"+
		"\4\5\b\b\5\2\3\3\6\7\t\t\u036b\2O\3\2\2\2\4^\3\2\2\2\6`\3\2\2\2\bp\3\2"+
		"\2\2\n}\3\2\2\2\f\177\3\2\2\2\16\u0083\3\2\2\2\20\u0099\3\2\2\2\22\u00af"+
		"\3\2\2\2\24\u00dd\3\2\2\2\26\u00df\3\2\2\2\30\u00ef\3\2\2\2\32\u00fc\3"+
		"\2\2\2\34\u0103\3\2\2\2\36\u0112\3\2\2\2 \u0140\3\2\2\2\"\u0156\3\2\2"+
		"\2$\u0169\3\2\2\2&\u01e8\3\2\2\2(\u01ea\3\2\2\2*\u01f5\3\2\2\2,\u01f7"+
		"\3\2\2\2.\u01fa\3\2\2\2\60\u0209\3\2\2\2\62\u020b\3\2\2\2\64\u0213\3\2"+
		"\2\2\66\u021c\3\2\2\28\u0232\3\2\2\2:\u0235\3\2\2\2<\u0248\3\2\2\2>\u0260"+
		"\3\2\2\2@\u0268\3\2\2\2B\u02ea\3\2\2\2D\u02ec\3\2\2\2F\u02f0\3\2\2\2H"+
		"\u02f8\3\2\2\2JN\5\4\3\2KN\5\60\31\2LN\7.\2\2MJ\3\2\2\2MK\3\2\2\2ML\3"+
		"\2\2\2NQ\3\2\2\2OM\3\2\2\2OP\3\2\2\2PR\3\2\2\2QO\3\2\2\2RS\7\2\2\3S\3"+
		"\3\2\2\2T_\5\6\4\2U_\5\b\5\2V_\5\n\6\2W_\5\f\7\2X_\5\16\b\2Y_\5\20\t\2"+
		"Z_\5\24\13\2[_\5 \21\2\\_\5\26\f\2]_\5\30\r\2^T\3\2\2\2^U\3\2\2\2^V\3"+
		"\2\2\2^W\3\2\2\2^X\3\2\2\2^Y\3\2\2\2^Z\3\2\2\2^[\3\2\2\2^\\\3\2\2\2^]"+
		"\3\2\2\2_\5\3\2\2\2`b\7\30\2\2ac\7C\2\2ba\3\2\2\2bc\3\2\2\2cd\3\2\2\2"+
		"de\7,\2\2ej\5\66\34\2fg\7+\2\2gi\5\66\34\2hf\3\2\2\2il\3\2\2\2jh\3\2\2"+
		"\2jk\3\2\2\2km\3\2\2\2lj\3\2\2\2mn\7-\2\2no\7.\2\2o\7\3\2\2\2pq\7\31\2"+
		"\2qr\7B\2\2rs\7\60\2\2st\5$\23\2tu\7.\2\2u\t\3\2\2\2vw\7\32\2\2w~\7.\2"+
		"\2xy\7\32\2\2yz\7B\2\2z{\7:\2\2{|\7C\2\2|~\7.\2\2}v\3\2\2\2}x\3\2\2\2"+
		"~\13\3\2\2\2\177\u0080\7\33\2\2\u0080\u0081\5$\23\2\u0081\u0082\7.\2\2"+
		"\u0082\r\3\2\2\2\u0083\u0085\7\34\2\2\u0084\u0086\7\64\2\2\u0085\u0084"+
		"\3\2\2\2\u0085\u0086\3\2\2\2\u0086\u0087\3\2\2\2\u0087\u0089\5$\23\2\u0088"+
		"\u008a\5,\27\2\u0089\u0088\3\2\2\2\u0089\u008a\3\2\2\2\u008a\u008c\3\2"+
		"\2\2\u008b\u008d\5.\30\2\u008c\u008b\3\2\2\2\u008c\u008d\3\2\2\2\u008d"+
		"\u008e\3\2\2\2\u008e\u008f\7.\2\2\u008f\17\3\2\2\2\u0090\u0091\7\35\2"+
		"\2\u0091\u0092\7B\2\2\u0092\u0093\7:\2\2\u0093\u0094\7C\2\2\u0094\u009a"+
		"\7.\2\2\u0095\u0096\7\35\2\2\u0096\u0097\58\35\2\u0097\u0098\7.\2\2\u0098"+
		"\u009a\3\2\2\2\u0099\u0090\3\2\2\2\u0099\u0095\3\2\2\2\u009a\21\3\2\2"+
		"\2\u009b\u009c\7\36\2\2\u009c\u00b0\7.\2\2\u009d\u009e\7\36\2\2\u009e"+
		"\u009f\7B\2\2\u009f\u00a0\7:\2\2\u00a0\u00a1\7C\2\2\u00a1\u00b0\7.\2\2"+
		"\u00a2\u00a3\7\36\2\2\u00a3\u00a4\7B\2\2\u00a4\u00a5\7\65\2\2\u00a5\u00aa"+
		"\7E\2\2\u00a6\u00a7\7+\2\2\u00a7\u00a9\7E\2\2\u00a8\u00a6\3\2\2\2\u00a9"+
		"\u00ac\3\2\2\2\u00aa\u00a8\3\2\2\2\u00aa\u00ab\3\2\2\2\u00ab\u00ad\3\2"+
		"\2\2\u00ac\u00aa\3\2\2\2\u00ad\u00ae\7\66\2\2\u00ae\u00b0\7.\2\2\u00af"+
		"\u009b\3\2\2\2\u00af\u009d\3\2\2\2\u00af\u00a2\3\2\2\2\u00b0\23\3\2\2"+
		"\2\u00b1\u00b2\7\37\2\2\u00b2\u00b3\7;\2\2\u00b3\u00b5\5\66\34\2\u00b4"+
		"\u00b6\5,\27\2\u00b5\u00b4\3\2\2\2\u00b5\u00b6\3\2\2\2\u00b6\u00b8\3\2"+
		"\2\2\u00b7\u00b9\5.\30\2\u00b8\u00b7\3\2\2\2\u00b8\u00b9\3\2\2\2\u00b9"+
		"\u00c4\3\2\2\2\u00ba\u00bb\7+\2\2\u00bb\u00bd\5\66\34\2\u00bc\u00be\5"+
		",\27\2\u00bd\u00bc\3\2\2\2\u00bd\u00be\3\2\2\2\u00be\u00c0\3\2\2\2\u00bf"+
		"\u00c1\5.\30\2\u00c0\u00bf\3\2\2\2\u00c0\u00c1\3\2\2\2\u00c1\u00c3\3\2"+
		"\2\2\u00c2\u00ba\3\2\2\2\u00c3\u00c6\3\2\2\2\u00c4\u00c2\3\2\2\2\u00c4"+
		"\u00c5\3\2\2\2\u00c5\u00c7\3\2\2\2\u00c6\u00c4\3\2\2\2\u00c7\u00c8\7<"+
		"\2\2\u00c8\u00c9\7.\2\2\u00c9\u00de\3\2\2\2\u00ca\u00cb\7\37\2\2\u00cb"+
		"\u00cc\7,\2\2\u00cc\u00ce\5\66\34\2\u00cd\u00cf\5.\30\2\u00ce\u00cd\3"+
		"\2\2\2\u00ce\u00cf\3\2\2\2\u00cf\u00d7\3\2\2\2\u00d0\u00d1\7+\2\2\u00d1"+
		"\u00d3\5\66\34\2\u00d2\u00d4\5.\30\2\u00d3\u00d2\3\2\2\2\u00d3\u00d4\3"+
		"\2\2\2\u00d4\u00d6\3\2\2\2\u00d5\u00d0\3\2\2\2\u00d6\u00d9\3\2\2\2\u00d7"+
		"\u00d5\3\2\2\2\u00d7\u00d8\3\2\2\2\u00d8\u00da\3\2\2\2\u00d9\u00d7\3\2"+
		"\2\2\u00da\u00db\7-\2\2\u00db\u00dc\7.\2\2\u00dc\u00de\3\2\2\2\u00dd\u00b1"+
		"\3\2\2\2\u00dd\u00ca\3\2\2\2\u00de\25\3\2\2\2\u00df\u00e1\7!\2\2\u00e0"+
		"\u00e2\7\64\2\2\u00e1\u00e0\3\2\2\2\u00e1\u00e2\3\2\2\2\u00e2\u00e3\3"+
		"\2\2\2\u00e3\u00e5\5\32\16\2\u00e4\u00e6\5(\25\2\u00e5\u00e4\3\2\2\2\u00e5"+
		"\u00e6\3\2\2\2\u00e6\u00e8\3\2\2\2\u00e7\u00e9\5,\27\2\u00e8\u00e7\3\2"+
		"\2\2\u00e8\u00e9\3\2\2\2\u00e9\u00eb\3\2\2\2\u00ea\u00ec\5.\30\2\u00eb"+
		"\u00ea\3\2\2\2\u00eb\u00ec\3\2\2\2\u00ec\u00ed\3\2\2\2\u00ed\u00ee\7."+
		"\2\2\u00ee\27\3\2\2\2\u00ef\u00f0\7\"\2\2\u00f0\u00f2\5\32\16\2\u00f1"+
		"\u00f3\5*\26\2\u00f2\u00f1\3\2\2\2\u00f2\u00f3\3\2\2\2\u00f3\u00f5\3\2"+
		"\2\2\u00f4\u00f6\5,\27\2\u00f5\u00f4\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6"+
		"\u00f8\3\2\2\2\u00f7\u00f9\5.\30\2\u00f8\u00f7\3\2\2\2\u00f8\u00f9\3\2"+
		"\2\2\u00f9\u00fa\3\2\2\2\u00fa\u00fb\7.\2\2\u00fb\31\3\2\2\2\u00fc\u0101"+
		"\7B\2\2\u00fd\u00fe\7\65\2\2\u00fe\u00ff\5\34\17\2\u00ff\u0100\7\66\2"+
		"\2\u0100\u0102\3\2\2\2\u0101\u00fd\3\2\2\2\u0101\u0102\3\2\2\2\u0102\33"+
		"\3\2\2\2\u0103\u0108\5\36\20\2\u0104\u0105\7+\2\2\u0105\u0107\5\36\20"+
		"\2\u0106\u0104\3\2\2\2\u0107\u010a\3\2\2\2\u0108\u0106\3\2\2\2\u0108\u0109"+
		"\3\2\2\2\u0109\35\3\2\2\2\u010a\u0108\3\2\2\2\u010b\u010c\78\2\2\u010c"+
		"\u0113\7B\2\2\u010d\u010e\7\63\2\2\u010e\u0113\7B\2\2\u010f\u0110\7\61"+
		"\2\2\u0110\u0113\7B\2\2\u0111\u0113\5\32\16\2\u0112\u010b\3\2\2\2\u0112"+
		"\u010d\3\2\2\2\u0112\u010f\3\2\2\2\u0112\u0111\3\2\2\2\u0113\37\3\2\2"+
		"\2\u0114\u0115\7 \2\2\u0115\u0116\7;\2\2\u0116\u0118\5\66\34\2\u0117\u0119"+
		"\5,\27\2\u0118\u0117\3\2\2\2\u0118\u0119\3\2\2\2\u0119\u011b\3\2\2\2\u011a"+
		"\u011c\5.\30\2\u011b\u011a\3\2\2\2\u011b\u011c\3\2\2\2\u011c\u0127\3\2"+
		"\2\2\u011d\u011e\7+\2\2\u011e\u0120\5\66\34\2\u011f\u0121\5,\27\2\u0120"+
		"\u011f\3\2\2\2\u0120\u0121\3\2\2\2\u0121\u0123\3\2\2\2\u0122\u0124\5."+
		"\30\2\u0123\u0122\3\2\2\2\u0123\u0124\3\2\2\2\u0124\u0126\3\2\2\2\u0125"+
		"\u011d\3\2\2\2\u0126\u0129\3\2\2\2\u0127\u0125\3\2\2\2\u0127\u0128\3\2"+
		"\2\2\u0128\u012a\3\2\2\2\u0129\u0127\3\2\2\2\u012a\u012b\7<\2\2\u012b"+
		"\u012c\7.\2\2\u012c\u0141\3\2\2\2\u012d\u012e\7 \2\2\u012e\u012f\7,\2"+
		"\2\u012f\u0131\5\66\34\2\u0130\u0132\5.\30\2\u0131\u0130\3\2\2\2\u0131"+
		"\u0132\3\2\2\2\u0132\u013a\3\2\2\2\u0133\u0134\7+\2\2\u0134\u0136\5\66"+
		"\34\2\u0135\u0137\5.\30\2\u0136\u0135\3\2\2\2\u0136\u0137\3\2\2\2\u0137"+
		"\u0139\3\2\2\2\u0138\u0133\3\2\2\2\u0139\u013c\3\2\2\2\u013a\u0138\3\2"+
		"\2\2\u013a\u013b\3\2\2\2\u013b\u013d\3\2\2\2\u013c\u013a\3\2\2\2\u013d"+
		"\u013e\7-\2\2\u013e\u013f\7.\2\2\u013f\u0141\3\2\2\2\u0140\u0114\3\2\2"+
		"\2\u0140\u012d\3\2\2\2\u0141!\3\2\2\2\u0142\u0143\7#\2\2\u0143\u0157\7"+
		".\2\2\u0144\u0145\7#\2\2\u0145\u0146\7B\2\2\u0146\u0147\7:\2\2\u0147\u0148"+
		"\7C\2\2\u0148\u0157\7.\2\2\u0149\u014a\7#\2\2\u014a\u014b\7B\2\2\u014b"+
		"\u014c\7\65\2\2\u014c\u0151\7E\2\2\u014d\u014e\7+\2\2\u014e\u0150\7E\2"+
		"\2\u014f\u014d\3\2\2\2\u0150\u0153\3\2\2\2\u0151\u014f\3\2\2\2\u0151\u0152"+
		"\3\2\2\2\u0152\u0154\3\2\2\2\u0153\u0151\3\2\2\2\u0154\u0155\7\66\2\2"+
		"\u0155\u0157\7.\2\2\u0156\u0142\3\2\2\2\u0156\u0144\3\2\2\2\u0156\u0149"+
		"\3\2\2\2\u0157#\3\2\2\2\u0158\u016a\7C\2\2\u0159\u016a\7D\2\2\u015a\u016a"+
		"\7E\2\2\u015b\u0167\7B\2\2\u015c\u015d\7\65\2\2\u015d\u0162\5&\24\2\u015e"+
		"\u015f\7+\2\2\u015f\u0161\5&\24\2\u0160\u015e\3\2\2\2\u0161\u0164\3\2"+
		"\2\2\u0162\u0160\3\2\2\2\u0162\u0163\3\2\2\2\u0163\u0165\3\2\2\2\u0164"+
		"\u0162\3\2\2\2\u0165\u0166\7\66\2\2\u0166\u0168\3\2\2\2\u0167\u015c\3"+
		"\2\2\2\u0167\u0168\3\2\2\2\u0168\u016a\3\2\2\2\u0169\u0158\3\2\2\2\u0169"+
		"\u0159\3\2\2\2\u0169\u015a\3\2\2\2\u0169\u015b\3\2\2\2\u016a%\3\2\2\2"+
		"\u016b\u016c\5$\23\2\u016c\u016d\7&\2\2\u016d\u016e\5&\24\2\u016e\u01e9"+
		"\3\2\2\2\u016f\u0170\5$\23\2\u0170\u0171\7\60\2\2\u0171\u0172\5&\24\2"+
		"\u0172\u01e9\3\2\2\2\u0173\u0174\5$\23\2\u0174\u0175\7\16\2\2\u0175\u0176"+
		"\5&\24\2\u0176\u01e9\3\2\2\2\u0177\u0178\7\17\2\2\u0178\u01e9\5$\23\2"+
		"\u0179\u017a\5$\23\2\u017a\u017b\7\20\2\2\u017b\u017c\5&\24\2\u017c\u01e9"+
		"\3\2\2\2\u017d\u017e\5$\23\2\u017e\u017f\7\21\2\2\u017f\u0180\5&\24\2"+
		"\u0180\u01e9\3\2\2\2\u0181\u0182\5$\23\2\u0182\u0183\7\22\2\2\u0183\u0184"+
		"\5&\24\2\u0184\u01e9\3\2\2\2\u0185\u0186\5$\23\2\u0186\u0187\7\23\2\2"+
		"\u0187\u0188\5&\24\2\u0188\u01e9\3\2\2\2\u0189\u018a\5$\23\2\u018a\u018b"+
		"\7\24\2\2\u018b\u018c\5&\24\2\u018c\u01e9\3\2\2\2\u018d\u018e\5$\23\2"+
		"\u018e\u018f\7\25\2\2\u018f\u0190\5&\24\2\u0190\u01e9\3\2\2\2\u0191\u0192"+
		"\5$\23\2\u0192\u0193\7\26\2\2\u0193\u0194\5&\24\2\u0194\u01e9\3\2\2\2"+
		"\u0195\u0196\5$\23\2\u0196\u0197\7\27\2\2\u0197\u0198\5&\24\2\u0198\u01e9"+
		"\3\2\2\2\u0199\u019a\5$\23\2\u019a\u019b\78\2\2\u019b\u019c\5&\24\2\u019c"+
		"\u01e9\3\2\2\2\u019d\u019e\7\63\2\2\u019e\u01e9\5$\23\2\u019f\u01a0\5"+
		"$\23\2\u01a0\u01a1\7\63\2\2\u01a1\u01a2\5&\24\2\u01a2\u01e9\3\2\2\2\u01a3"+
		"\u01a4\5$\23\2\u01a4\u01a5\7$\2\2\u01a5\u01a6\5&\24\2\u01a6\u01e9\3\2"+
		"\2\2\u01a7\u01a8\5$\23\2\u01a8\u01a9\7:\2\2\u01a9\u01aa\5&\24\2\u01aa"+
		"\u01e9\3\2\2\2\u01ab\u01ac\5$\23\2\u01ac\u01ad\7\13\2\2\u01ad\u01ae\5"+
		"&\24\2\u01ae\u01e9\3\2\2\2\u01af\u01b0\7\13\2\2\u01b0\u01b1\7\65\2\2\u01b1"+
		"\u01b2\5$\23\2\u01b2\u01b3\7+\2\2\u01b3\u01b4\5&\24\2\u01b4\u01b5\7\66"+
		"\2\2\u01b5\u01e9\3\2\2\2\u01b6\u01b7\5$\23\2\u01b7\u01b8\7(\2\2\u01b8"+
		"\u01b9\5&\24\2\u01b9\u01e9\3\2\2\2\u01ba\u01bb\5$\23\2\u01bb\u01bc\7\f"+
		"\2\2\u01bc\u01bd\5&\24\2\u01bd\u01e9\3\2\2\2\u01be\u01bf\7\f\2\2\u01bf"+
		"\u01c0\7\65\2\2\u01c0\u01c1\5$\23\2\u01c1\u01c2\7+\2\2\u01c2\u01c3\5&"+
		"\24\2\u01c3\u01c4\7\66\2\2\u01c4\u01e9\3\2\2\2\u01c5\u01c6\7)\2\2\u01c6"+
		"\u01c7\5$\23\2\u01c7\u01c8\7)\2\2\u01c8\u01e9\3\2\2\2\u01c9\u01ca\7\n"+
		"\2\2\u01ca\u01cb\7\65\2\2\u01cb\u01cc\5$\23\2\u01cc\u01cd\7\66\2\2\u01cd"+
		"\u01e9\3\2\2\2\u01ce\u01cf\5$\23\2\u01cf\u01d0\7%\2\2\u01d0\u01d1\5&\24"+
		"\2\u01d1\u01e9\3\2\2\2\u01d2\u01d3\5$\23\2\u01d3\u01d4\7\r\2\2\u01d4\u01d5"+
		"\5&\24\2\u01d5\u01e9\3\2\2\2\u01d6\u01d7\7\r\2\2\u01d7\u01d8\7\65\2\2"+
		"\u01d8\u01d9\5$\23\2\u01d9\u01da\7+\2\2\u01da\u01db\5&\24\2\u01db\u01dc"+
		"\7\66\2\2\u01dc\u01e9\3\2\2\2\u01dd\u01e2\5$\23\2\u01de\u01df\7\67\2\2"+
		"\u01df\u01e1\5$\23\2\u01e0\u01de\3\2\2\2\u01e1\u01e4\3\2\2\2\u01e2\u01e0"+
		"\3\2\2\2\u01e2\u01e3\3\2\2\2\u01e3\u01e9\3\2\2\2\u01e4\u01e2\3\2\2\2\u01e5"+
		"\u01e6\t\2\2\2\u01e6\u01e7\7/\2\2\u01e7\u01e9\t\2\2\2\u01e8\u016b\3\2"+
		"\2\2\u01e8\u016f\3\2\2\2\u01e8\u0173\3\2\2\2\u01e8\u0177\3\2\2\2\u01e8"+
		"\u0179\3\2\2\2\u01e8\u017d\3\2\2\2\u01e8\u0181\3\2\2\2\u01e8\u0185\3\2"+
		"\2\2\u01e8\u0189\3\2\2\2\u01e8\u018d\3\2\2\2\u01e8\u0191\3\2\2\2\u01e8"+
		"\u0195\3\2\2\2\u01e8\u0199\3\2\2\2\u01e8\u019d\3\2\2\2\u01e8\u019f\3\2"+
		"\2\2\u01e8\u01a3\3\2\2\2\u01e8\u01a7\3\2\2\2\u01e8\u01ab\3\2\2\2\u01e8"+
		"\u01af\3\2\2\2\u01e8\u01b6\3\2\2\2\u01e8\u01ba\3\2\2\2\u01e8\u01be\3\2"+
		"\2\2\u01e8\u01c5\3\2\2\2\u01e8\u01c9\3\2\2\2\u01e8\u01ce\3\2\2\2\u01e8"+
		"\u01d2\3\2\2\2\u01e8\u01d6\3\2\2\2\u01e8\u01dd\3\2\2\2\u01e8\u01e5\3\2"+
		"\2\2\u01e9\'\3\2\2\2\u01ea\u01eb\7*\2\2\u01eb\u01ec\7C\2\2\u01ec)\3\2"+
		"\2\2\u01ed\u01ee\7*\2\2\u01ee\u01f6\7?\2\2\u01ef\u01f0\7*\2\2\u01f0\u01f6"+
		"\7C\2\2\u01f1\u01f2\7*\2\2\u01f2\u01f3\7C\2\2\u01f3\u01f4\7\63\2\2\u01f4"+
		"\u01f6\7C\2\2\u01f5\u01ed\3\2\2\2\u01f5\u01ef\3\2\2\2\u01f5\u01f1\3\2"+
		"\2\2\u01f6+\3\2\2\2\u01f7\u01f8\7\60\2\2\u01f8\u01f9\7C\2\2\u01f9-\3\2"+
		"\2\2\u01fa\u01fb\7\'\2\2\u01fb\u01fc\7C\2\2\u01fc/\3\2\2\2\u01fd\u01fe"+
		"\5\62\32\2\u01fe\u01ff\7.\2\2\u01ff\u020a\3\2\2\2\u0200\u0201\5\62\32"+
		"\2\u0201\u0202\7\62\2\2\u0202\u0203\5\64\33\2\u0203\u0204\7.\2\2\u0204"+
		"\u020a\3\2\2\2\u0205\u0206\7\62\2\2\u0206\u0207\5\64\33\2\u0207\u0208"+
		"\7.\2\2\u0208\u020a\3\2\2\2\u0209\u01fd\3\2\2\2\u0209\u0200\3\2\2\2\u0209"+
		"\u0205\3\2\2\2\u020a\61\3\2\2\2\u020b\u0210\5B\"\2\u020c\u020d\7)\2\2"+
		"\u020d\u020f\5B\"\2\u020e\u020c\3\2\2\2\u020f\u0212\3\2\2\2\u0210\u020e"+
		"\3\2\2\2\u0210\u0211\3\2\2\2\u0211\63\3\2\2\2\u0212\u0210\3\2\2\2\u0213"+
		"\u0218\5\66\34\2\u0214\u0215\7+\2\2\u0215\u0217\5\66\34\2\u0216\u0214"+
		"\3\2\2\2\u0217\u021a\3\2\2\2\u0218\u0216\3\2\2\2\u0218\u0219\3\2\2\2\u0219"+
		"\65\3\2\2\2\u021a\u0218\3\2\2\2\u021b\u021d\7\64\2\2\u021c\u021b\3\2\2"+
		"\2\u021c\u021d\3\2\2\2\u021d\u021e\3\2\2\2\u021e\u021f\5B\"\2\u021f\67"+
		"\3\2\2\2\u0220\u0233\5:\36\2\u0221\u0233\5<\37\2\u0222\u0233\7E\2\2\u0223"+
		"\u0233\7C\2\2\u0224\u0229\7B\2\2\u0225\u0226\7\65\2\2\u0226\u0227\5> "+
		"\2\u0227\u0228\7\66\2\2\u0228\u022a\3\2\2\2\u0229\u0225\3\2\2\2\u0229"+
		"\u022a\3\2\2\2\u022a\u022f\3\2\2\2\u022b\u022c\7*\2\2\u022c\u022e\58\35"+
		"\2\u022d\u022b\3\2\2\2\u022e\u0231\3\2\2\2\u022f\u022d\3\2\2\2\u022f\u0230"+
		"\3\2\2\2\u0230\u0233\3\2\2\2\u0231\u022f\3\2\2\2\u0232\u0220\3\2\2\2\u0232"+
		"\u0221\3\2\2\2\u0232\u0222\3\2\2\2\u0232\u0223\3\2\2\2\u0232\u0224\3\2"+
		"\2\2\u02339\3\2\2\2\u0234\u0236\5H%\2\u0235\u0234\3\2\2\2\u0235\u0236"+
		"\3\2\2\2\u0236\u0238\3\2\2\2\u0237\u0239\t\3\2\2\u0238\u0237\3\2\2\2\u0238"+
		"\u0239\3\2\2\2\u0239\u023a\3\2\2\2\u023a\u023b\7,\2\2\u023b\u0240\5\66"+
		"\34\2\u023c\u023d\7+\2\2\u023d\u023f\5\66\34\2\u023e\u023c\3\2\2\2\u023f"+
		"\u0242\3\2\2\2\u0240\u023e\3\2\2\2\u0240\u0241\3\2\2\2\u0241\u0243\3\2"+
		"\2\2\u0242\u0240\3\2\2\2\u0243\u0245\7-\2\2\u0244\u0246\5H%\2\u0245\u0244"+
		"\3\2\2\2\u0245\u0246\3\2\2\2\u0246;\3\2\2\2\u0247\u0249\5H%\2\u0248\u0247"+
		"\3\2\2\2\u0248\u0249\3\2\2\2\u0249\u024b\3\2\2\2\u024a\u024c\t\4\2\2\u024b"+
		"\u024a\3\2\2\2\u024b\u024c\3\2\2\2\u024c\u024d\3\2\2\2\u024d\u024e\7;"+
		"\2\2\u024e\u0250\5\66\34\2\u024f\u0251\5,\27\2\u0250\u024f\3\2\2\2\u0250"+
		"\u0251\3\2\2\2\u0251\u0259\3\2\2\2\u0252\u0253\7+\2\2\u0253\u0255\5\66"+
		"\34\2\u0254\u0256\5,\27\2\u0255\u0254\3\2\2\2\u0255\u0256\3\2\2\2\u0256"+
		"\u0258\3\2\2\2\u0257\u0252\3\2\2\2\u0258\u025b\3\2\2\2\u0259\u0257\3\2"+
		"\2\2\u0259\u025a\3\2\2\2\u025a\u025c\3\2\2\2\u025b\u0259\3\2\2\2\u025c"+
		"\u025e\7<\2\2\u025d\u025f\5H%\2\u025e\u025d\3\2\2\2\u025e\u025f\3\2\2"+
		"\2\u025f=\3\2\2\2\u0260\u0265\5@!\2\u0261\u0262\79\2\2\u0262\u0264\5@"+
		"!\2\u0263\u0261\3\2\2\2\u0264\u0267\3\2\2\2\u0265\u0263\3\2\2\2\u0265"+
		"\u0266\3\2\2\2\u0266?\3\2\2\2\u0267\u0265\3\2\2\2\u0268\u026d\5B\"\2\u0269"+
		"\u026a\7+\2\2\u026a\u026c\5B\"\2\u026b\u0269\3\2\2\2\u026c\u026f\3\2\2"+
		"\2\u026d\u026b\3\2\2\2\u026d\u026e\3\2\2\2\u026eA\3\2\2\2\u026f\u026d"+
		"\3\2\2\2\u0270\u02eb\7C\2\2\u0271\u02eb\7>\2\2\u0272\u02eb\7=\2\2\u0273"+
		"\u02eb\7D\2\2\u0274\u02eb\7E\2\2\u0275\u02eb\58\35\2\u0276\u02eb\5D#\2"+
		"\u0277\u02eb\5F$\2\u0278\u0279\5H%\2\u0279\u027a\7&\2\2\u027a\u027b\5"+
		"8\35\2\u027b\u02eb\3\2\2\2\u027c\u027d\5H%\2\u027d\u027e\7\60\2\2\u027e"+
		"\u027f\58\35\2\u027f\u02eb\3\2\2\2\u0280\u0281\5H%\2\u0281\u0282\7\16"+
		"\2\2\u0282\u0283\5H%\2\u0283\u02eb\3\2\2\2\u0284\u0285\5H%\2\u0285\u0286"+
		"\7\20\2\2\u0286\u0287\5H%\2\u0287\u02eb\3\2\2\2\u0288\u0289\5H%\2\u0289"+
		"\u028a\7\21\2\2\u028a\u028b\5H%\2\u028b\u02eb\3\2\2\2\u028c\u028d\58\35"+
		"\2\u028d\u028e\7\22\2\2\u028e\u028f\58\35\2\u028f\u02eb\3\2\2\2\u0290"+
		"\u0291\58\35\2\u0291\u0292\7\23\2\2\u0292\u0293\58\35\2\u0293\u02eb\3"+
		"\2\2\2\u0294\u0295\58\35\2\u0295\u0296\7\24\2\2\u0296\u0297\58\35\2\u0297"+
		"\u02eb\3\2\2\2\u0298\u0299\58\35\2\u0299\u029a\7\25\2\2\u029a\u029b\5"+
		"8\35\2\u029b\u02eb\3\2\2\2\u029c\u029d\58\35\2\u029d\u029e\7\26\2\2\u029e"+
		"\u029f\58\35\2\u029f\u02eb\3\2\2\2\u02a0\u02a1\58\35\2\u02a1\u02a2\7\27"+
		"\2\2\u02a2\u02a3\58\35\2\u02a3\u02eb\3\2\2\2\u02a4\u02a5\7)\2\2\u02a5"+
		"\u02a6\5H%\2\u02a6\u02a7\7)\2\2\u02a7\u02eb\3\2\2\2\u02a8\u02a9\7\n\2"+
		"\2\u02a9\u02aa\7\65\2\2\u02aa\u02ab\5H%\2\u02ab\u02ac\7\66\2\2\u02ac\u02eb"+
		"\3\2\2\2\u02ad\u02ae\5H%\2\u02ae\u02af\7\63\2\2\u02af\u02b0\5H%\2\u02b0"+
		"\u02eb\3\2\2\2\u02b1\u02b2\5H%\2\u02b2\u02b3\7:\2\2\u02b3\u02b4\5H%\2"+
		"\u02b4\u02eb\3\2\2\2\u02b5\u02b6\5H%\2\u02b6\u02b7\7\13\2\2\u02b7\u02b8"+
		"\5H%\2\u02b8\u02eb\3\2\2\2\u02b9\u02ba\7\13\2\2\u02ba\u02bb\7\65\2\2\u02bb"+
		"\u02bc\5H%\2\u02bc\u02bd\7+\2\2\u02bd\u02be\5H%\2\u02be\u02bf\7\66\2\2"+
		"\u02bf\u02eb\3\2\2\2\u02c0\u02c1\5H%\2\u02c1\u02c2\7(\2\2\u02c2\u02c3"+
		"\5H%\2\u02c3\u02eb\3\2\2\2\u02c4\u02c5\5H%\2\u02c5\u02c6\7\f\2\2\u02c6"+
		"\u02c7\5H%\2\u02c7\u02eb\3\2\2\2\u02c8\u02c9\7\f\2\2\u02c9\u02ca\7\65"+
		"\2\2\u02ca\u02cb\5H%\2\u02cb\u02cc\7+\2\2\u02cc\u02cd\5H%\2\u02cd\u02ce"+
		"\7\66\2\2\u02ce\u02eb\3\2\2\2\u02cf\u02d0\5H%\2\u02d0\u02d1\78\2\2\u02d1"+
		"\u02d2\5H%\2\u02d2\u02eb\3\2\2\2\u02d3\u02d4\5H%\2\u02d4\u02d5\7$\2\2"+
		"\u02d5\u02d6\5H%\2\u02d6\u02eb\3\2\2\2\u02d7\u02d8\5H%\2\u02d8\u02d9\7"+
		"%\2\2\u02d9\u02da\5H%\2\u02da\u02eb\3\2\2\2\u02db\u02dc\5H%\2\u02dc\u02dd"+
		"\7\r\2\2\u02dd\u02de\5H%\2\u02de\u02eb\3\2\2\2\u02df\u02e0\7\r\2\2\u02e0"+
		"\u02e1\7\65\2\2\u02e1\u02e2\5H%\2\u02e2\u02e3\7+\2\2\u02e3\u02e4\5H%\2"+
		"\u02e4\u02e5\7\66\2\2\u02e5\u02eb\3\2\2\2\u02e6\u02e7\7\17\2\2\u02e7\u02eb"+
		"\5H%\2\u02e8\u02e9\7\63\2\2\u02e9\u02eb\5H%\2\u02ea\u0270\3\2\2\2\u02ea"+
		"\u0271\3\2\2\2\u02ea\u0272\3\2\2\2\u02ea\u0273\3\2\2\2\u02ea\u0274\3\2"+
		"\2\2\u02ea\u0275\3\2\2\2\u02ea\u0276\3\2\2\2\u02ea\u0277\3\2\2\2\u02ea"+
		"\u0278\3\2\2\2\u02ea\u027c\3\2\2\2\u02ea\u0280\3\2\2\2\u02ea\u0284\3\2"+
		"\2\2\u02ea\u0288\3\2\2\2\u02ea\u028c\3\2\2\2\u02ea\u0290\3\2\2\2\u02ea"+
		"\u0294\3\2\2\2\u02ea\u0298\3\2\2\2\u02ea\u029c\3\2\2\2\u02ea\u02a0\3\2"+
		"\2\2\u02ea\u02a4\3\2\2\2\u02ea\u02a8\3\2\2\2\u02ea\u02ad\3\2\2\2\u02ea"+
		"\u02b1\3\2\2\2\u02ea\u02b5\3\2\2\2\u02ea\u02b9\3\2\2\2\u02ea\u02c0\3\2"+
		"\2\2\u02ea\u02c4\3\2\2\2\u02ea\u02c8\3\2\2\2\u02ea\u02cf\3\2\2\2\u02ea"+
		"\u02d3\3\2\2\2\u02ea\u02d7\3\2\2\2\u02ea\u02db\3\2\2\2\u02ea\u02df\3\2"+
		"\2\2\u02ea\u02e6\3\2\2\2\u02ea\u02e8\3\2\2\2\u02ebC\3\2\2\2\u02ec\u02ed"+
		"\5H%\2\u02ed\u02ee\7/\2\2\u02ee\u02ef\5H%\2\u02efE\3\2\2\2\u02f0\u02f5"+
		"\58\35\2\u02f1\u02f2\7\67\2\2\u02f2\u02f4\58\35\2\u02f3\u02f1\3\2\2\2"+
		"\u02f4\u02f7\3\2\2\2\u02f5\u02f3\3\2\2\2\u02f5\u02f6\3\2\2\2\u02f6G\3"+
		"\2\2\2\u02f7\u02f5\3\2\2\2\u02f8\u02f9\t\2\2\2\u02f9I\3\2\2\2GMO^bj}\u0085"+
		"\u0089\u008c\u0099\u00aa\u00af\u00b5\u00b8\u00bd\u00c0\u00c4\u00ce\u00d3"+
		"\u00d7\u00dd\u00e1\u00e5\u00e8\u00eb\u00f2\u00f5\u00f8\u0101\u0108\u0112"+
		"\u0118\u011b\u0120\u0123\u0127\u0131\u0136\u013a\u0140\u0151\u0156\u0162"+
		"\u0167\u0169\u01e2\u01e8\u01f5\u0209\u0210\u0218\u021c\u0229\u022f\u0232"+
		"\u0235\u0238\u0240\u0245\u0248\u024b\u0250\u0255\u0259\u025e\u0265\u026d"+
		"\u02ea\u02f5";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}