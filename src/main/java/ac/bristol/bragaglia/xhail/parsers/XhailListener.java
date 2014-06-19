/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.util.Stack;
import java.util.StringJoiner;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarBaseListener;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.BoundContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.BoundSingleContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.BoundsAllContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.BoundsBothContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ComputeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ConstantContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ConstraintClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.DomainContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ExampleContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ExternalContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.FactClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.FullClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundAbsolute1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundAbsolute2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundAndContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundAssign1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundAssign2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundDivide1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundDivide2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundDivide3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundGreaterContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundGreaterEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundIntegerContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundIntervalContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundLessContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundLessEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundMinus1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundMinus2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundModulus1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundModulus2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundModulus3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundNotContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundNotEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundOrContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPlusContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPoolingContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPower1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPower2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPower3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundPredicateContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundStringContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundTimesContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundVariableContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.GroundXorContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.HideAllContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.HideExplicitContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.HideImplicitContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.KeyConstantContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.KeyInputContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.KeyListContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.KeyOutputContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.KeySignatureContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.MaximizeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.MinimizeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ModeBodyContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ModeHeadContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.PriorityContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ShowAllContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ShowExplicitContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.ShowImplicitContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.SignatureContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.GrammarParser.WeightContext;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Literal;
import ac.bristol.bragaglia.xhail.problem.Problem;

/**
 * @author stefano
 *
 */
public class XhailListener extends GrammarBaseListener {

	// private static XhailListener instance = null;

	public static void accept(ParseTreeWalker walker, ParseTree tree, Problem problem) {
		if (null == walker)
			throw new IllegalArgumentException("Illegal 'walker' argument in XhailListener.host(ParseTreeWalker, ParseTree, Problem): " + walker);
		if (null == tree)
			throw new IllegalArgumentException("Illegal 'tree' argument in XhailListener.host(ParseTreeWalker, ParseTree, Problem): " + tree);
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailListener.host(ParseTreeWalker, ParseTree, Problem): " + problem);
		walker.walk(new XhailListener(problem), tree);
	}

	private static String combine(ParserRuleContext ctx) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailListener.combine(ParserRuleContext): " + ctx);
		StringJoiner joiner = new StringJoiner(" ");
		combine(ctx, joiner);
		return joiner.toString();
	}

	private static void combine(ParseTree ctx, StringJoiner joiner) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailListener.combine(ParseTree, StringJoiner): " + ctx);
		if (null == joiner)
			throw new IllegalArgumentException("Illegal 'joiner' argument in XhailListener.combine(ParseTree, StringJoiner): " + joiner);
		for (int i = 0; i < ctx.getChildCount(); i++) {
			ParseTree child = ctx.getChild(i);
			if (0 == child.getChildCount())
				joiner.add(child.getText());
			else
				combine(child, joiner);
		}
	}

	private Stack<Builder> builders;

	private Integer lower;

	private Integer priority;

	private Problem problem;

	private Integer upper;

	private Integer weight;

	private XhailListener(Problem problem) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailListener(Model): " + problem);
		this.builders = new Stack<>();
		this.problem = problem;
	}

	@Override
	public void enterExample(ExampleContext ctx) {
		builders.clear();
		priority = null;
		weight = null;
	}

	@Override
	public void enterGroundInteger(GroundIntegerContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void enterGroundPredicate(GroundPredicateContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void enterGroundString(GroundStringContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void enterGroundVariable(GroundVariableContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void enterModeBody(ModeBodyContext ctx) {
		builders.clear();
		priority = null;
		upper = Integer.MAX_VALUE;
		weight = null;
	}

	@Override
	public void enterModeHead(ModeHeadContext ctx) {
		builders.clear();
		lower = 0;
		priority = null;
		upper = Integer.MAX_VALUE;
		weight = null;
	}

	@Override
	public void enterSignature(SignatureContext ctx) {
		if (null != ctx) {
			String name = ctx.IDENTIFIER().getText();
			builders.push(Builder.get(name));
		}
	}

	@Override
	public void exitBound(BoundContext ctx) {
		if (null != ctx)
			upper = Integer.parseInt(ctx.INTEGER().getText());
	}

	@Override
	public void exitBoundsAll(BoundsAllContext ctx) {
		lower = 0;
		upper = Integer.MAX_VALUE;
	}

	@Override
	public void exitBoundsBoth(BoundsBothContext ctx) {
		if (null != ctx) {
			lower = Integer.parseInt(ctx.INTEGER(0).getText());
			upper = Integer.parseInt(ctx.INTEGER(1).getText());
		}
	}

	@Override
	public void exitBoundSingle(BoundSingleContext ctx) {
		if (null != ctx)
			upper = Integer.parseInt(ctx.INTEGER().getText());
	}

	@Override
	public void exitCompute(ComputeContext ctx) {
		if (null != ctx)
			problem.addCompute(combine(ctx));
	}

	@Override
	public void exitConstant(ConstantContext ctx) {
		if (null != ctx)
			problem.addConstant(combine(ctx));
	}

	@Override
	public void exitConstraintClause(ConstraintClauseContext ctx) {
		if (null != ctx)
			problem.addConstraint(combine(ctx));
	}

	@Override
	public void exitDomain(DomainContext ctx) {
		if (null != ctx)
			problem.addDomain(combine(ctx));
	}

	@Override
	public void exitExample(ExampleContext ctx) {
		if (null != ctx)
			problem.addExample(new Literal(null != ctx.NOT(), builders.pop().build()), weight, priority);
		if (!builders.empty())
			throw new IllegalStateException("The stack should be empty!");
	}

	@Override
	public void exitExternal(ExternalContext ctx) {
		if (null != ctx)
			problem.addExternal(combine(ctx));
	}

	@Override
	public void exitFactClause(FactClauseContext ctx) {
		if (null != ctx)
			problem.addFact(combine(ctx));
	}

	@Override
	public void exitFullClause(FullClauseContext ctx) {
		if (null != ctx)
			problem.addClause(combine(ctx));
	}

	@Override
	public void exitGroundAbsolute1(GroundAbsolute1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ABS).append(ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundAbsolute2(GroundAbsolute2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ABS).append(ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundAnd(GroundAndContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_AND).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundAssign1(GroundAssign1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ASSIGN).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundAssign2(GroundAssign2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ASSIGN).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundDivide1(GroundDivide1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundDivide2(GroundDivide2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundDivide3(GroundDivide3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundEquals(GroundEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_EQ).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundGreater(GroundGreaterContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_GT).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundGreaterEquals(GroundGreaterEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_GE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundInterval(GroundIntervalContext ctx) {
		if (null != ctx) {
			String min = ctx.IDENTIFIER(0).getText();
			if (null == min)
				min = ctx.INTEGER(0).getText();
			if (null == min)
				min = ctx.VARIABLE(0).getText();
			String max = ctx.IDENTIFIER(1).getText();
			if (null == max)
				max = ctx.INTEGER(1).getText();
			if (null == max)
				max = ctx.VARIABLE(1).getText();
			builders.push(Builder.get(Atom.INTERVAL).append(min).append(max));
		}
	}

	@Override
	public void exitGroundLess(GroundLessContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_LT).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundLessEquals(GroundLessEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_LE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundMinus1(GroundMinus1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MINUS).append(ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundMinus2(GroundMinus2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MINUS).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundModulus1(GroundModulus1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundModulus2(GroundModulus2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundModulus3(GroundModulus3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundNot(GroundNotContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_NOT).append(ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundNotEquals(GroundNotEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_NE).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundOr(GroundOrContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_OR).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundPlus(GroundPlusContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_PLUS).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundPooling(GroundPoolingContext ctx) {
		if (null != ctx) {
			int size = ctx.groundAtom().size();
			if (size > 1) {
				Stack<Atom> atoms = new Stack<>();
				for (int i = 0; i < size; i++)
					atoms.push(builders.pop().build());
				Builder builder = Builder.get(Atom.POOLING);
				while (!atoms.empty())
					builder.append(atoms.pop());
				builders.push(builder);
			}
		}
	}

	@Override
	public void exitGroundPower1(GroundPower1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundPower2(GroundPower2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundPower3(GroundPower3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundPredicate(GroundPredicateContext ctx) {
		if (null != ctx) {
			Stack<Atom> atoms = new Stack<>();
			for (int i = 0; i < ctx.groundTerm().size(); i++)
				atoms.push(builders.pop().build());
			Builder builder = builders.peek();
			while (!atoms.empty())
				builder.append(atoms.pop());
		}
	}

	@Override
	public void exitGroundTimes(GroundTimesContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_TIMES).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitGroundXor(GroundXorContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_XOR).append(ctx.groundAtom(0).getText()).append(ctx.groundAtom(1).getText()));
	}

	@Override
	public void exitHideAll(HideAllContext ctx) {
		if (null != ctx)
			problem.addHide(combine(ctx));
	}

	@Override
	public void exitHideExplicit(HideExplicitContext ctx) {
		if (null != ctx)
			problem.addHide(combine(ctx));
	}

	@Override
	public void exitHideImplicit(HideImplicitContext ctx) {
		if (null != ctx)
			problem.addHide(combine(ctx));
	}

	@Override
	public void exitKeyConstant(KeyConstantContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.PAR_CONSTANT).append(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void exitKeyInput(KeyInputContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.PAR_INPUT).append(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void exitKeyList(KeyListContext ctx) {
		if (null != ctx) {
			int size = ctx.key().size();
			Stack<Atom> atoms = new Stack<>();
			for (int i = 0; i < size; i++) {
				Builder builder = builders.pop();
				Atom atom = builder.build();
				atoms.push(atom);
			}
			Builder builder = builders.peek();
			while (!atoms.empty())
				builder.append(atoms.pop());
		}
	}

	@Override
	public void exitKeyOutput(KeyOutputContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.PAR_OUTPUT).append(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void exitKeySignature(KeySignatureContext ctx) {
		// if (null != ctx)
		// builders.push(builders.pop());
	}

	@Override
	public void exitMaximize(MaximizeContext ctx) {
		if (null != ctx)
			problem.addMaximize(combine(ctx));
	}

	@Override
	public void exitMinimize(MinimizeContext ctx) {
		if (null != ctx)
			problem.addMinimize(combine(ctx));
	}

	@Override
	public void exitModeBody(ModeBodyContext ctx) {
		if (null != ctx)
			problem.addModeBody(new Literal(null != ctx.NOT(), builders.pop().build()), upper, weight, priority);
		if (!builders.empty())
			throw new IllegalStateException("The stack should be empty!");
	}

	@Override
	public void exitModeHead(ModeHeadContext ctx) {
		// if (null != ctx)
		problem.addModeHead(builders.pop().build(), lower, upper, weight, priority);
		if (!builders.empty())
			throw new IllegalStateException("The stack should be empty!");
	}

	@Override
	public void exitPriority(PriorityContext ctx) {
		if (null != ctx)
			priority = Integer.parseInt(ctx.INTEGER().getText());
	}

	@Override
	public void exitShowAll(ShowAllContext ctx) {
		if (null != ctx)
			problem.addShow(combine(ctx));
	}

	@Override
	public void exitShowExplicit(ShowExplicitContext ctx) {
		if (null != ctx)
			problem.addShow(combine(ctx));
	}

	@Override
	public void exitShowImplicit(ShowImplicitContext ctx) {
		if (null != ctx)
			problem.addShow(combine(ctx));
	}

	@Override
	public void exitWeight(WeightContext ctx) {
		if (null != ctx)
			weight = Integer.parseInt(ctx.INTEGER().getText());
	}

}
