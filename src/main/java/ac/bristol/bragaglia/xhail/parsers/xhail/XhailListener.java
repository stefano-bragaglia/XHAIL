// Generated from Xhail.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.xhail;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link XhailFileParser}.
 */
public interface XhailListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundInterval}.
	 * @param ctx the parse tree
	 */
	void enterGroundInterval(@NotNull XhailParser.GroundIntervalContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundInterval}.
	 * @param ctx the parse tree
	 */
	void exitGroundInterval(@NotNull XhailParser.GroundIntervalContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(@NotNull XhailParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(@NotNull XhailParser.ConstantContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundMinus1}.
	 * @param ctx the parse tree
	 */
	void enterGroundMinus1(@NotNull XhailParser.GroundMinus1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundMinus1}.
	 * @param ctx the parse tree
	 */
	void exitGroundMinus1(@NotNull XhailParser.GroundMinus1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#ShowImplicit}.
	 * @param ctx the parse tree
	 */
	void enterShowImplicit(@NotNull XhailParser.ShowImplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#ShowImplicit}.
	 * @param ctx the parse tree
	 */
	void exitShowImplicit(@NotNull XhailParser.ShowImplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundMinus2}.
	 * @param ctx the parse tree
	 */
	void enterGroundMinus2(@NotNull XhailParser.GroundMinus2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundMinus2}.
	 * @param ctx the parse tree
	 */
	void exitGroundMinus2(@NotNull XhailParser.GroundMinus2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(@NotNull XhailParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(@NotNull XhailParser.ProgramContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#KeyOutput}.
	 * @param ctx the parse tree
	 */
	void enterKeyOutput(@NotNull XhailParser.KeyOutputContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#KeyOutput}.
	 * @param ctx the parse tree
	 */
	void exitKeyOutput(@NotNull XhailParser.KeyOutputContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#body}.
	 * @param ctx the parse tree
	 */
	void enterBody(@NotNull XhailParser.BodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#body}.
	 * @param ctx the parse tree
	 */
	void exitBody(@NotNull XhailParser.BodyContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#FullClause}.
	 * @param ctx the parse tree
	 */
	void enterFullClause(@NotNull XhailParser.FullClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#FullClause}.
	 * @param ctx the parse tree
	 */
	void exitFullClause(@NotNull XhailParser.FullClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#compute}.
	 * @param ctx the parse tree
	 */
	void enterCompute(@NotNull XhailParser.ComputeContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#compute}.
	 * @param ctx the parse tree
	 */
	void exitCompute(@NotNull XhailParser.ComputeContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#maximize}.
	 * @param ctx the parse tree
	 */
	void enterMaximize(@NotNull XhailParser.MaximizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#maximize}.
	 * @param ctx the parse tree
	 */
	void exitMaximize(@NotNull XhailParser.MaximizeContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPower1}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower1(@NotNull XhailParser.GroundPower1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPower1}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower1(@NotNull XhailParser.GroundPower1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#predicate}.
	 * @param ctx the parse tree
	 */
	void enterPredicate(@NotNull XhailParser.PredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#predicate}.
	 * @param ctx the parse tree
	 */
	void exitPredicate(@NotNull XhailParser.PredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#number}.
	 * @param ctx the parse tree
	 */
	void enterNumber(@NotNull XhailParser.NumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#number}.
	 * @param ctx the parse tree
	 */
	void exitNumber(@NotNull XhailParser.NumberContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundAbsolute2}.
	 * @param ctx the parse tree
	 */
	void enterGroundAbsolute2(@NotNull XhailParser.GroundAbsolute2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundAbsolute2}.
	 * @param ctx the parse tree
	 */
	void exitGroundAbsolute2(@NotNull XhailParser.GroundAbsolute2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#HideImplicit}.
	 * @param ctx the parse tree
	 */
	void enterHideImplicit(@NotNull XhailParser.HideImplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#HideImplicit}.
	 * @param ctx the parse tree
	 */
	void exitHideImplicit(@NotNull XhailParser.HideImplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundAbsolute1}.
	 * @param ctx the parse tree
	 */
	void enterGroundAbsolute1(@NotNull XhailParser.GroundAbsolute1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundAbsolute1}.
	 * @param ctx the parse tree
	 */
	void exitGroundAbsolute1(@NotNull XhailParser.GroundAbsolute1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPower3}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower3(@NotNull XhailParser.GroundPower3Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPower3}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower3(@NotNull XhailParser.GroundPower3Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPower2}.
	 * @param ctx the parse tree
	 */
	void enterGroundPower2(@NotNull XhailParser.GroundPower2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPower2}.
	 * @param ctx the parse tree
	 */
	void exitGroundPower2(@NotNull XhailParser.GroundPower2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundNotEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundNotEquals(@NotNull XhailParser.GroundNotEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundNotEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundNotEquals(@NotNull XhailParser.GroundNotEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#group}.
	 * @param ctx the parse tree
	 */
	void enterGroup(@NotNull XhailParser.GroupContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#group}.
	 * @param ctx the parse tree
	 */
	void exitGroup(@NotNull XhailParser.GroupContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#BoundSingle}.
	 * @param ctx the parse tree
	 */
	void enterBoundSingle(@NotNull XhailParser.BoundSingleContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#BoundSingle}.
	 * @param ctx the parse tree
	 */
	void exitBoundSingle(@NotNull XhailParser.BoundSingleContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#weight}.
	 * @param ctx the parse tree
	 */
	void enterWeight(@NotNull XhailParser.WeightContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#weight}.
	 * @param ctx the parse tree
	 */
	void exitWeight(@NotNull XhailParser.WeightContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#modeHead}.
	 * @param ctx the parse tree
	 */
	void enterModeHead(@NotNull XhailParser.ModeHeadContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#modeHead}.
	 * @param ctx the parse tree
	 */
	void exitModeHead(@NotNull XhailParser.ModeHeadContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPooling}.
	 * @param ctx the parse tree
	 */
	void enterGroundPooling(@NotNull XhailParser.GroundPoolingContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPooling}.
	 * @param ctx the parse tree
	 */
	void exitGroundPooling(@NotNull XhailParser.GroundPoolingContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#priority}.
	 * @param ctx the parse tree
	 */
	void enterPriority(@NotNull XhailParser.PriorityContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#priority}.
	 * @param ctx the parse tree
	 */
	void exitPriority(@NotNull XhailParser.PriorityContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#external}.
	 * @param ctx the parse tree
	 */
	void enterExternal(@NotNull XhailParser.ExternalContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#external}.
	 * @param ctx the parse tree
	 */
	void exitExternal(@NotNull XhailParser.ExternalContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#ShowAll}.
	 * @param ctx the parse tree
	 */
	void enterShowAll(@NotNull XhailParser.ShowAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#ShowAll}.
	 * @param ctx the parse tree
	 */
	void exitShowAll(@NotNull XhailParser.ShowAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#pooling}.
	 * @param ctx the parse tree
	 */
	void enterPooling(@NotNull XhailParser.PoolingContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#pooling}.
	 * @param ctx the parse tree
	 */
	void exitPooling(@NotNull XhailParser.PoolingContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#aggregatew}.
	 * @param ctx the parse tree
	 */
	void enterAggregatew(@NotNull XhailParser.AggregatewContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#aggregatew}.
	 * @param ctx the parse tree
	 */
	void exitAggregatew(@NotNull XhailParser.AggregatewContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#domain}.
	 * @param ctx the parse tree
	 */
	void enterDomain(@NotNull XhailParser.DomainContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#domain}.
	 * @param ctx the parse tree
	 */
	void exitDomain(@NotNull XhailParser.DomainContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundAssign1}.
	 * @param ctx the parse tree
	 */
	void enterGroundAssign1(@NotNull XhailParser.GroundAssign1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundAssign1}.
	 * @param ctx the parse tree
	 */
	void exitGroundAssign1(@NotNull XhailParser.GroundAssign1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#interval}.
	 * @param ctx the parse tree
	 */
	void enterInterval(@NotNull XhailParser.IntervalContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#interval}.
	 * @param ctx the parse tree
	 */
	void exitInterval(@NotNull XhailParser.IntervalContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundDivide2}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide2(@NotNull XhailParser.GroundDivide2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundDivide2}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide2(@NotNull XhailParser.GroundDivide2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundString}.
	 * @param ctx the parse tree
	 */
	void enterGroundString(@NotNull XhailParser.GroundStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundString}.
	 * @param ctx the parse tree
	 */
	void exitGroundString(@NotNull XhailParser.GroundStringContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundDivide3}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide3(@NotNull XhailParser.GroundDivide3Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundDivide3}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide3(@NotNull XhailParser.GroundDivide3Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#atomList}.
	 * @param ctx the parse tree
	 */
	void enterAtomList(@NotNull XhailParser.AtomListContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#atomList}.
	 * @param ctx the parse tree
	 */
	void exitAtomList(@NotNull XhailParser.AtomListContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundAssign2}.
	 * @param ctx the parse tree
	 */
	void enterGroundAssign2(@NotNull XhailParser.GroundAssign2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundAssign2}.
	 * @param ctx the parse tree
	 */
	void exitGroundAssign2(@NotNull XhailParser.GroundAssign2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundDivide1}.
	 * @param ctx the parse tree
	 */
	void enterGroundDivide1(@NotNull XhailParser.GroundDivide1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundDivide1}.
	 * @param ctx the parse tree
	 */
	void exitGroundDivide1(@NotNull XhailParser.GroundDivide1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#HideAll}.
	 * @param ctx the parse tree
	 */
	void enterHideAll(@NotNull XhailParser.HideAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#HideAll}.
	 * @param ctx the parse tree
	 */
	void exitHideAll(@NotNull XhailParser.HideAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#signature}.
	 * @param ctx the parse tree
	 */
	void enterSignature(@NotNull XhailParser.SignatureContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#signature}.
	 * @param ctx the parse tree
	 */
	void exitSignature(@NotNull XhailParser.SignatureContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundTimes}.
	 * @param ctx the parse tree
	 */
	void enterGroundTimes(@NotNull XhailParser.GroundTimesContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundTimes}.
	 * @param ctx the parse tree
	 */
	void exitGroundTimes(@NotNull XhailParser.GroundTimesContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#FactClause}.
	 * @param ctx the parse tree
	 */
	void enterFactClause(@NotNull XhailParser.FactClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#FactClause}.
	 * @param ctx the parse tree
	 */
	void exitFactClause(@NotNull XhailParser.FactClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundAnd}.
	 * @param ctx the parse tree
	 */
	void enterGroundAnd(@NotNull XhailParser.GroundAndContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundAnd}.
	 * @param ctx the parse tree
	 */
	void exitGroundAnd(@NotNull XhailParser.GroundAndContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#KeyInput}.
	 * @param ctx the parse tree
	 */
	void enterKeyInput(@NotNull XhailParser.KeyInputContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#KeyInput}.
	 * @param ctx the parse tree
	 */
	void exitKeyInput(@NotNull XhailParser.KeyInputContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundXor}.
	 * @param ctx the parse tree
	 */
	void enterGroundXor(@NotNull XhailParser.GroundXorContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundXor}.
	 * @param ctx the parse tree
	 */
	void exitGroundXor(@NotNull XhailParser.GroundXorContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#example}.
	 * @param ctx the parse tree
	 */
	void enterExample(@NotNull XhailParser.ExampleContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#example}.
	 * @param ctx the parse tree
	 */
	void exitExample(@NotNull XhailParser.ExampleContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(@NotNull XhailParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(@NotNull XhailParser.LiteralContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#aggregate}.
	 * @param ctx the parse tree
	 */
	void enterAggregate(@NotNull XhailParser.AggregateContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#aggregate}.
	 * @param ctx the parse tree
	 */
	void exitAggregate(@NotNull XhailParser.AggregateContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundLessEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundLessEquals(@NotNull XhailParser.GroundLessEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundLessEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundLessEquals(@NotNull XhailParser.GroundLessEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#head}.
	 * @param ctx the parse tree
	 */
	void enterHead(@NotNull XhailParser.HeadContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#head}.
	 * @param ctx the parse tree
	 */
	void exitHead(@NotNull XhailParser.HeadContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundVariable}.
	 * @param ctx the parse tree
	 */
	void enterGroundVariable(@NotNull XhailParser.GroundVariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundVariable}.
	 * @param ctx the parse tree
	 */
	void exitGroundVariable(@NotNull XhailParser.GroundVariableContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundNot}.
	 * @param ctx the parse tree
	 */
	void enterGroundNot(@NotNull XhailParser.GroundNotContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundNot}.
	 * @param ctx the parse tree
	 */
	void exitGroundNot(@NotNull XhailParser.GroundNotContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#KeySignature}.
	 * @param ctx the parse tree
	 */
	void enterKeySignature(@NotNull XhailParser.KeySignatureContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#KeySignature}.
	 * @param ctx the parse tree
	 */
	void exitKeySignature(@NotNull XhailParser.KeySignatureContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#KeyConstant}.
	 * @param ctx the parse tree
	 */
	void enterKeyConstant(@NotNull XhailParser.KeyConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#KeyConstant}.
	 * @param ctx the parse tree
	 */
	void exitKeyConstant(@NotNull XhailParser.KeyConstantContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundEquals(@NotNull XhailParser.GroundEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundEquals(@NotNull XhailParser.GroundEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#minimize}.
	 * @param ctx the parse tree
	 */
	void enterMinimize(@NotNull XhailParser.MinimizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#minimize}.
	 * @param ctx the parse tree
	 */
	void exitMinimize(@NotNull XhailParser.MinimizeContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundInteger}.
	 * @param ctx the parse tree
	 */
	void enterGroundInteger(@NotNull XhailParser.GroundIntegerContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundInteger}.
	 * @param ctx the parse tree
	 */
	void exitGroundInteger(@NotNull XhailParser.GroundIntegerContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#modeBody}.
	 * @param ctx the parse tree
	 */
	void enterModeBody(@NotNull XhailParser.ModeBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#modeBody}.
	 * @param ctx the parse tree
	 */
	void exitModeBody(@NotNull XhailParser.ModeBodyContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundOr}.
	 * @param ctx the parse tree
	 */
	void enterGroundOr(@NotNull XhailParser.GroundOrContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundOr}.
	 * @param ctx the parse tree
	 */
	void exitGroundOr(@NotNull XhailParser.GroundOrContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#HideExplicit}.
	 * @param ctx the parse tree
	 */
	void enterHideExplicit(@NotNull XhailParser.HideExplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#HideExplicit}.
	 * @param ctx the parse tree
	 */
	void exitHideExplicit(@NotNull XhailParser.HideExplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#bound}.
	 * @param ctx the parse tree
	 */
	void enterBound(@NotNull XhailParser.BoundContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#bound}.
	 * @param ctx the parse tree
	 */
	void exitBound(@NotNull XhailParser.BoundContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#BoundsAll}.
	 * @param ctx the parse tree
	 */
	void enterBoundsAll(@NotNull XhailParser.BoundsAllContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#BoundsAll}.
	 * @param ctx the parse tree
	 */
	void exitBoundsAll(@NotNull XhailParser.BoundsAllContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundModulus1}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus1(@NotNull XhailParser.GroundModulus1Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundModulus1}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus1(@NotNull XhailParser.GroundModulus1Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundModulus2}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus2(@NotNull XhailParser.GroundModulus2Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundModulus2}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus2(@NotNull XhailParser.GroundModulus2Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundModulus3}.
	 * @param ctx the parse tree
	 */
	void enterGroundModulus3(@NotNull XhailParser.GroundModulus3Context ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundModulus3}.
	 * @param ctx the parse tree
	 */
	void exitGroundModulus3(@NotNull XhailParser.GroundModulus3Context ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundLess}.
	 * @param ctx the parse tree
	 */
	void enterGroundLess(@NotNull XhailParser.GroundLessContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundLess}.
	 * @param ctx the parse tree
	 */
	void exitGroundLess(@NotNull XhailParser.GroundLessContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPlus}.
	 * @param ctx the parse tree
	 */
	void enterGroundPlus(@NotNull XhailParser.GroundPlusContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPlus}.
	 * @param ctx the parse tree
	 */
	void exitGroundPlus(@NotNull XhailParser.GroundPlusContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#directive}.
	 * @param ctx the parse tree
	 */
	void enterDirective(@NotNull XhailParser.DirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#directive}.
	 * @param ctx the parse tree
	 */
	void exitDirective(@NotNull XhailParser.DirectiveContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#ConstraintClause}.
	 * @param ctx the parse tree
	 */
	void enterConstraintClause(@NotNull XhailParser.ConstraintClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#ConstraintClause}.
	 * @param ctx the parse tree
	 */
	void exitConstraintClause(@NotNull XhailParser.ConstraintClauseContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundGreaterEquals}.
	 * @param ctx the parse tree
	 */
	void enterGroundGreaterEquals(@NotNull XhailParser.GroundGreaterEqualsContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundGreaterEquals}.
	 * @param ctx the parse tree
	 */
	void exitGroundGreaterEquals(@NotNull XhailParser.GroundGreaterEqualsContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#ShowExplicit}.
	 * @param ctx the parse tree
	 */
	void enterShowExplicit(@NotNull XhailParser.ShowExplicitContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#ShowExplicit}.
	 * @param ctx the parse tree
	 */
	void exitShowExplicit(@NotNull XhailParser.ShowExplicitContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundGreater}.
	 * @param ctx the parse tree
	 */
	void enterGroundGreater(@NotNull XhailParser.GroundGreaterContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundGreater}.
	 * @param ctx the parse tree
	 */
	void exitGroundGreater(@NotNull XhailParser.GroundGreaterContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#keyList}.
	 * @param ctx the parse tree
	 */
	void enterKeyList(@NotNull XhailParser.KeyListContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#keyList}.
	 * @param ctx the parse tree
	 */
	void exitKeyList(@NotNull XhailParser.KeyListContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#GroundPredicate}.
	 * @param ctx the parse tree
	 */
	void enterGroundPredicate(@NotNull XhailParser.GroundPredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#GroundPredicate}.
	 * @param ctx the parse tree
	 */
	void exitGroundPredicate(@NotNull XhailParser.GroundPredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterAtom(@NotNull XhailParser.AtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitAtom(@NotNull XhailParser.AtomContext ctx);

	/**
	 * Enter a parse tree produced by {@link XhailFileParser#BoundsBoth}.
	 * @param ctx the parse tree
	 */
	void enterBoundsBoth(@NotNull XhailParser.BoundsBothContext ctx);
	/**
	 * Exit a parse tree produced by {@link XhailFileParser#BoundsBoth}.
	 * @param ctx the parse tree
	 */
	void exitBoundsBoth(@NotNull XhailParser.BoundsBothContext ctx);
}