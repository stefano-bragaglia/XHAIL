// Generated from Grammar.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.xhail;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GrammarParser}.
 */
public interface GrammarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundInterval}.
	 * @param ctx the parse tree
	 */
	void enterGroundInterval(@NotNull GrammarParser.GroundIntervalContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundInterval}.
	 * @param ctx the parse tree
	 */
	void exitGroundInterval(@NotNull GrammarParser.GroundIntervalContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(@NotNull GrammarParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(@NotNull GrammarParser.ConstantContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundMinus1}.
	 * @param ctx the parse tree
	 */
	void enterGroundMinus1(@NotNull GrammarParser.GroundMinus1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundMinus1}.
	 * @param ctx the parse tree
	 */
	void exitGroundMinus1(@NotNull GrammarParser.GroundMinus1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#ShowImplicit}.
	 * @param ctx the parse tree
	 */
	void enterShowImplicit(@NotNull GrammarParser.ShowImplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#ShowImplicit}.
	 * @param ctx the parse tree
	 */
	void exitShowImplicit(@NotNull GrammarParser.ShowImplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundMinus2}.
	 * @param ctx the parse tree
	 */
	void enterGroundMinus2(@NotNull GrammarParser.GroundMinus2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundMinus2}.
	 * @param ctx the parse tree
	 */
	void exitGroundMinus2(@NotNull GrammarParser.GroundMinus2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(@NotNull GrammarParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(@NotNull GrammarParser.ProgramContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#KeyOutput}.
	 * @param ctx the parse tree
	 */
	void enterKeyOutput(@NotNull GrammarParser.KeyOutputContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#KeyOutput}.
	 * @param ctx the parse tree
	 */
	void exitKeyOutput(@NotNull GrammarParser.KeyOutputContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#body}.
	 * @param ctx the parse tree
	 */
	void enterBody(@NotNull GrammarParser.BodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#body}.
	 * @param ctx the parse tree
	 */
	void exitBody(@NotNull GrammarParser.BodyContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#FullClause}.
	 * @param ctx the parse tree
	 */
	void enterFullClause(@NotNull GrammarParser.FullClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#FullClause}.
	 * @param ctx the parse tree
	 */
	void exitFullClause(@NotNull GrammarParser.FullClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#compute}.
	 * @param ctx the parse tree
	 */
	void enterCompute(@NotNull GrammarParser.ComputeContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#compute}.
	 * @param ctx the parse tree
	 */
	void exitCompute(@NotNull GrammarParser.ComputeContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#maximize}.
	 * @param ctx the parse tree
	 */
	void enterMaximize(@NotNull GrammarParser.MaximizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#maximize}.
	 * @param ctx the parse tree
	 */
	void exitMaximize(@NotNull GrammarParser.MaximizeContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPower1}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower1(@NotNull GrammarParser.GroundPower1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPower1}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower1(@NotNull GrammarParser.GroundPower1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#predicate}.
	 * @param ctx the parse tree
	 */
	void enterPredicate(@NotNull GrammarParser.PredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#predicate}.
	 * @param ctx the parse tree
	 */
	void exitPredicate(@NotNull GrammarParser.PredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#number}.
	 * @param ctx the parse tree
	 */
	void enterNumber(@NotNull GrammarParser.NumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#number}.
	 * @param ctx the parse tree
	 */
	void exitNumber(@NotNull GrammarParser.NumberContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundAbsolute2}.
	 * @param ctx the parse tree
	 */
	void enterGroundAbsolute2(@NotNull GrammarParser.GroundAbsolute2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundAbsolute2}.
	 * @param ctx the parse tree
	 */
	void exitGroundAbsolute2(@NotNull GrammarParser.GroundAbsolute2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#HideImplicit}.
	 * @param ctx the parse tree
	 */
	void enterHideImplicit(@NotNull GrammarParser.HideImplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#HideImplicit}.
	 * @param ctx the parse tree
	 */
	void exitHideImplicit(@NotNull GrammarParser.HideImplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundAbsolute1}.
	 * @param ctx the parse tree
	 */
	void enterGroundAbsolute1(@NotNull GrammarParser.GroundAbsolute1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundAbsolute1}.
	 * @param ctx the parse tree
	 */
	void exitGroundAbsolute1(@NotNull GrammarParser.GroundAbsolute1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPower3}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower3(@NotNull GrammarParser.GroundPower3Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPower3}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower3(@NotNull GrammarParser.GroundPower3Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPower2}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower2(@NotNull GrammarParser.GroundPower2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPower2}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower2(@NotNull GrammarParser.GroundPower2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundNotEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundNotEquals(@NotNull GrammarParser.GroundNotEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundNotEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundNotEquals(@NotNull GrammarParser.GroundNotEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#group}.
	 * @param ctx the parse tree
	 */
	void enterGroup(@NotNull GrammarParser.GroupContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#group}.
	 * @param ctx the parse tree
	 */
	void exitGroup(@NotNull GrammarParser.GroupContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#BoundSingle}.
	 * @param ctx the parse tree
	 */
	void enterBoundSingle(@NotNull GrammarParser.BoundSingleContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#BoundSingle}.
	 * @param ctx the parse tree
	 */
	void exitBoundSingle(@NotNull GrammarParser.BoundSingleContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#weight}.
	 * @param ctx the parse tree
	 */
	void enterWeight(@NotNull GrammarParser.WeightContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#weight}.
	 * @param ctx the parse tree
	 */
	void exitWeight(@NotNull GrammarParser.WeightContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#modeHead}.
	 * @param ctx the parse tree
	 */
	void enterModeHead(@NotNull GrammarParser.ModeHeadContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#modeHead}.
	 * @param ctx the parse tree
	 */
	void exitModeHead(@NotNull GrammarParser.ModeHeadContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPooling}.
	 * @param ctx the parse tree
	 */
	void enterGroundPooling(@NotNull GrammarParser.GroundPoolingContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPooling}.
	 * @param ctx the parse tree
	 */
	void exitGroundPooling(@NotNull GrammarParser.GroundPoolingContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#priority}.
	 * @param ctx the parse tree
	 */
	void enterPriority(@NotNull GrammarParser.PriorityContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#priority}.
	 * @param ctx the parse tree
	 */
	void exitPriority(@NotNull GrammarParser.PriorityContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#external}.
	 * @param ctx the parse tree
	 */
	void enterExternal(@NotNull GrammarParser.ExternalContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#external}.
	 * @param ctx the parse tree
	 */
	void exitExternal(@NotNull GrammarParser.ExternalContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#ShowAll}.
	 * @param ctx the parse tree
	 */
	void enterShowAll(@NotNull GrammarParser.ShowAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#ShowAll}.
	 * @param ctx the parse tree
	 */
	void exitShowAll(@NotNull GrammarParser.ShowAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#pooling}.
	 * @param ctx the parse tree
	 */
	void enterPooling(@NotNull GrammarParser.PoolingContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#pooling}.
	 * @param ctx the parse tree
	 */
	void exitPooling(@NotNull GrammarParser.PoolingContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#aggregatew}.
	 * @param ctx the parse tree
	 */
	void enterAggregatew(@NotNull GrammarParser.AggregatewContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#aggregatew}.
	 * @param ctx the parse tree
	 */
	void exitAggregatew(@NotNull GrammarParser.AggregatewContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#domain}.
	 * @param ctx the parse tree
	 */
	void enterDomain(@NotNull GrammarParser.DomainContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#domain}.
	 * @param ctx the parse tree
	 */
	void exitDomain(@NotNull GrammarParser.DomainContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundAssign1}.
	 * @param ctx the parse tree
	 */
	void enterGroundAssign1(@NotNull GrammarParser.GroundAssign1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundAssign1}.
	 * @param ctx the parse tree
	 */
	void exitGroundAssign1(@NotNull GrammarParser.GroundAssign1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#interval}.
	 * @param ctx the parse tree
	 */
	void enterInterval(@NotNull GrammarParser.IntervalContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#interval}.
	 * @param ctx the parse tree
	 */
	void exitInterval(@NotNull GrammarParser.IntervalContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundDivide2}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide2(@NotNull GrammarParser.GroundDivide2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundDivide2}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide2(@NotNull GrammarParser.GroundDivide2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundString}.
	 * @param ctx the parse tree
	 */
	void enterGroundString(@NotNull GrammarParser.GroundStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundString}.
	 * @param ctx the parse tree
	 */
	void exitGroundString(@NotNull GrammarParser.GroundStringContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundDivide3}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide3(@NotNull GrammarParser.GroundDivide3Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundDivide3}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide3(@NotNull GrammarParser.GroundDivide3Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#atomList}.
	 * @param ctx the parse tree
	 */
	void enterAtomList(@NotNull GrammarParser.AtomListContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#atomList}.
	 * @param ctx the parse tree
	 */
	void exitAtomList(@NotNull GrammarParser.AtomListContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundAssign2}.
	 * @param ctx the parse tree
	 */
	void enterGroundAssign2(@NotNull GrammarParser.GroundAssign2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundAssign2}.
	 * @param ctx the parse tree
	 */
	void exitGroundAssign2(@NotNull GrammarParser.GroundAssign2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundDivide1}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide1(@NotNull GrammarParser.GroundDivide1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundDivide1}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide1(@NotNull GrammarParser.GroundDivide1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#HideAll}.
	 * @param ctx the parse tree
	 */
	void enterHideAll(@NotNull GrammarParser.HideAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#HideAll}.
	 * @param ctx the parse tree
	 */
	void exitHideAll(@NotNull GrammarParser.HideAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#signature}.
	 * @param ctx the parse tree
	 */
	void enterSignature(@NotNull GrammarParser.SignatureContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#signature}.
	 * @param ctx the parse tree
	 */
	void exitSignature(@NotNull GrammarParser.SignatureContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundTimes}.
	 * @param ctx the parse tree
	 */
	void enterGroundTimes(@NotNull GrammarParser.GroundTimesContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundTimes}.
	 * @param ctx the parse tree
	 */
	void exitGroundTimes(@NotNull GrammarParser.GroundTimesContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#FactClause}.
	 * @param ctx the parse tree
	 */
	void enterFactClause(@NotNull GrammarParser.FactClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#FactClause}.
	 * @param ctx the parse tree
	 */
	void exitFactClause(@NotNull GrammarParser.FactClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundAnd}.
	 * @param ctx the parse tree
	 */
	void enterGroundAnd(@NotNull GrammarParser.GroundAndContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundAnd}.
	 * @param ctx the parse tree
	 */
	void exitGroundAnd(@NotNull GrammarParser.GroundAndContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#KeyInput}.
	 * @param ctx the parse tree
	 */
	void enterKeyInput(@NotNull GrammarParser.KeyInputContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#KeyInput}.
	 * @param ctx the parse tree
	 */
	void exitKeyInput(@NotNull GrammarParser.KeyInputContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundXor}.
	 * @param ctx the parse tree
	 */
	void enterGroundXor(@NotNull GrammarParser.GroundXorContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundXor}.
	 * @param ctx the parse tree
	 */
	void exitGroundXor(@NotNull GrammarParser.GroundXorContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#example}.
	 * @param ctx the parse tree
	 */
	void enterExample(@NotNull GrammarParser.ExampleContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#example}.
	 * @param ctx the parse tree
	 */
	void exitExample(@NotNull GrammarParser.ExampleContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(@NotNull GrammarParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(@NotNull GrammarParser.LiteralContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#aggregate}.
	 * @param ctx the parse tree
	 */
	void enterAggregate(@NotNull GrammarParser.AggregateContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#aggregate}.
	 * @param ctx the parse tree
	 */
	void exitAggregate(@NotNull GrammarParser.AggregateContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundLessEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundLessEquals(@NotNull GrammarParser.GroundLessEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundLessEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundLessEquals(@NotNull GrammarParser.GroundLessEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#head}.
	 * @param ctx the parse tree
	 */
	void enterHead(@NotNull GrammarParser.HeadContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#head}.
	 * @param ctx the parse tree
	 */
	void exitHead(@NotNull GrammarParser.HeadContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundVariable}.
	 * @param ctx the parse tree
	 */
	void enterGroundVariable(@NotNull GrammarParser.GroundVariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundVariable}.
	 * @param ctx the parse tree
	 */
	void exitGroundVariable(@NotNull GrammarParser.GroundVariableContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundNot}.
	 * @param ctx the parse tree
	 */
	void enterGroundNot(@NotNull GrammarParser.GroundNotContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundNot}.
	 * @param ctx the parse tree
	 */
	void exitGroundNot(@NotNull GrammarParser.GroundNotContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#KeySignature}.
	 * @param ctx the parse tree
	 */
	void enterKeySignature(@NotNull GrammarParser.KeySignatureContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#KeySignature}.
	 * @param ctx the parse tree
	 */
	void exitKeySignature(@NotNull GrammarParser.KeySignatureContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#KeyConstant}.
	 * @param ctx the parse tree
	 */
	void enterKeyConstant(@NotNull GrammarParser.KeyConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#KeyConstant}.
	 * @param ctx the parse tree
	 */
	void exitKeyConstant(@NotNull GrammarParser.KeyConstantContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundEquals(@NotNull GrammarParser.GroundEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundEquals(@NotNull GrammarParser.GroundEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#minimize}.
	 * @param ctx the parse tree
	 */
	void enterMinimize(@NotNull GrammarParser.MinimizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#minimize}.
	 * @param ctx the parse tree
	 */
	void exitMinimize(@NotNull GrammarParser.MinimizeContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundInteger}.
	 * @param ctx the parse tree
	 */
	void enterGroundInteger(@NotNull GrammarParser.GroundIntegerContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundInteger}.
	 * @param ctx the parse tree
	 */
	void exitGroundInteger(@NotNull GrammarParser.GroundIntegerContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#modeBody}.
	 * @param ctx the parse tree
	 */
	void enterModeBody(@NotNull GrammarParser.ModeBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#modeBody}.
	 * @param ctx the parse tree
	 */
	void exitModeBody(@NotNull GrammarParser.ModeBodyContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundOr}.
	 * @param ctx the parse tree
	 */
	void enterGroundOr(@NotNull GrammarParser.GroundOrContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundOr}.
	 * @param ctx the parse tree
	 */
	void exitGroundOr(@NotNull GrammarParser.GroundOrContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#HideExplicit}.
	 * @param ctx the parse tree
	 */
	void enterHideExplicit(@NotNull GrammarParser.HideExplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#HideExplicit}.
	 * @param ctx the parse tree
	 */
	void exitHideExplicit(@NotNull GrammarParser.HideExplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#bound}.
	 * @param ctx the parse tree
	 */
	void enterBound(@NotNull GrammarParser.BoundContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#bound}.
	 * @param ctx the parse tree
	 */
	void exitBound(@NotNull GrammarParser.BoundContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#BoundsAll}.
	 * @param ctx the parse tree
	 */
	void enterBoundsAll(@NotNull GrammarParser.BoundsAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#BoundsAll}.
	 * @param ctx the parse tree
	 */
	void exitBoundsAll(@NotNull GrammarParser.BoundsAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundModulus1}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus1(@NotNull GrammarParser.GroundModulus1Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundModulus1}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus1(@NotNull GrammarParser.GroundModulus1Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundModulus2}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus2(@NotNull GrammarParser.GroundModulus2Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundModulus2}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus2(@NotNull GrammarParser.GroundModulus2Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundModulus3}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus3(@NotNull GrammarParser.GroundModulus3Context ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundModulus3}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus3(@NotNull GrammarParser.GroundModulus3Context ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundLess}.
	 * @param ctx the parse tree
	 */
	void enterGroundLess(@NotNull GrammarParser.GroundLessContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundLess}.
	 * @param ctx the parse tree
	 */
	void exitGroundLess(@NotNull GrammarParser.GroundLessContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPlus}.
	 * @param ctx the parse tree
	 */
	void enterGroundPlus(@NotNull GrammarParser.GroundPlusContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPlus}.
	 * @param ctx the parse tree
	 */
	void exitGroundPlus(@NotNull GrammarParser.GroundPlusContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#directive}.
	 * @param ctx the parse tree
	 */
	void enterDirective(@NotNull GrammarParser.DirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#directive}.
	 * @param ctx the parse tree
	 */
	void exitDirective(@NotNull GrammarParser.DirectiveContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#ConstraintClause}.
	 * @param ctx the parse tree
	 */
	void enterConstraintClause(@NotNull GrammarParser.ConstraintClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#ConstraintClause}.
	 * @param ctx the parse tree
	 */
	void exitConstraintClause(@NotNull GrammarParser.ConstraintClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundGreaterEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundGreaterEquals(@NotNull GrammarParser.GroundGreaterEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundGreaterEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundGreaterEquals(@NotNull GrammarParser.GroundGreaterEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#ShowExplicit}.
	 * @param ctx the parse tree
	 */
	void enterShowExplicit(@NotNull GrammarParser.ShowExplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#ShowExplicit}.
	 * @param ctx the parse tree
	 */
	void exitShowExplicit(@NotNull GrammarParser.ShowExplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundGreater}.
	 * @param ctx the parse tree
	 */
	void enterGroundGreater(@NotNull GrammarParser.GroundGreaterContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundGreater}.
	 * @param ctx the parse tree
	 */
	void exitGroundGreater(@NotNull GrammarParser.GroundGreaterContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#keyList}.
	 * @param ctx the parse tree
	 */
	void enterKeyList(@NotNull GrammarParser.KeyListContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#keyList}.
	 * @param ctx the parse tree
	 */
	void exitKeyList(@NotNull GrammarParser.KeyListContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#GroundPredicate}.
	 * @param ctx the parse tree
	 */
	void enterGroundPredicate(@NotNull GrammarParser.GroundPredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#GroundPredicate}.
	 * @param ctx the parse tree
	 */
	void exitGroundPredicate(@NotNull GrammarParser.GroundPredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterAtom(@NotNull GrammarParser.AtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitAtom(@NotNull GrammarParser.AtomContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#BoundsBoth}.
	 * @param ctx the parse tree
	 */
	void enterBoundsBoth(@NotNull GrammarParser.BoundsBothContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#BoundsBoth}.
	 * @param ctx the parse tree
	 */
	void exitBoundsBoth(@NotNull GrammarParser.BoundsBothContext ctx);
}