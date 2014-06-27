/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.util.Stack;
import java.util.StringJoiner;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.xhail.XhailBaseListener;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.BoundContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.BoundSingleContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.BoundsAllContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.BoundsBothContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ComputeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ConstantContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ConstraintClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.DisplayAllContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.DisplayPredicateContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.DomainContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ExampleContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ExternalContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.FactClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.FullClauseContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundAbsolute1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundAbsolute2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundAndContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundAssign1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundAssign2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundDivide1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundDivide2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundDivide3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundGreaterContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundGreaterEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundIntegerContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundIntervalContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundLessContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundLessEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundMinus1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundMinus2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundModulus1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundModulus2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundModulus3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundNotContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundNotEqualsContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundOrContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPlusContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPoolingContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPower1Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPower2Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPower3Context;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundPredicateContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundStringContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundTimesContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundVariableContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.GroundXorContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.KeyConstantContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.KeyInputContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.KeyListContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.KeyOutputContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.KeySignatureContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.MaximizeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.MinimizeContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ModeBodyContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.ModeHeadContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.PriorityContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.SignatureContext;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser.WeightContext;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Literal;
import ac.bristol.bragaglia.xhail.problem.Problem;

/**
 * @author stefano
 *
 */
public class XhailFileListener extends XhailBaseListener {

	// private static XhailFileListener instance = null;

	public static void accept(ParseTreeWalker walker, ParseTree tree, Problem problem) {
		if (null == walker)
			throw new IllegalArgumentException("Illegal 'walker' argument in XhailFileListener.host(ParseTreeWalker, ParseTree, Problem): " + walker);
		if (null == tree)
			throw new IllegalArgumentException("Illegal 'tree' argument in XhailFileListener.host(ParseTreeWalker, ParseTree, Problem): " + tree);
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailFileListener.host(ParseTreeWalker, ParseTree, Problem): " + problem);
		walker.walk(new XhailFileListener(problem), tree);
	}

	private static String combine(ParserRuleContext ctx) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailFileListener.combine(ParserRuleContext): " + ctx);
		StringJoiner joiner = new StringJoiner(" ");
		combine(ctx, joiner);
		return joiner.toString();
	}

	private static void combine(ParseTree ctx, StringJoiner joiner) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailFileListener.combine(ParseTree, StringJoiner): " + ctx);
		if (null == joiner)
			throw new IllegalArgumentException("Illegal 'joiner' argument in XhailFileListener.combine(ParseTree, StringJoiner): " + joiner);
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

	private XhailFileListener(Problem problem) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailFileListener(Model): " + problem);
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
	public void enterGroundPredicate(GroundPredicateContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.IDENTIFIER().getText()));
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
			builders.push(Builder.get(Atom.BIT_AND).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundAssign1(GroundAssign1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ASSIGN).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundAssign2(GroundAssign2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_ASSIGN).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundDivide1(GroundDivide1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundDivide2(GroundDivide2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundDivide3(GroundDivide3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_DIVIDE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundEquals(GroundEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_EQ).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundGreater(GroundGreaterContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_GT).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundGreaterEquals(GroundGreaterEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_GE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundInteger(GroundIntegerContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
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
			builders.push(Builder.get(Atom.COMP_LT).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundLessEquals(GroundLessEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_LE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundMinus1(GroundMinus1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get("-" + ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundMinus2(GroundMinus2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MINUS).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundModulus1(GroundModulus1Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundModulus2(GroundModulus2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundModulus3(GroundModulus3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_MODULUS).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundNot(GroundNotContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_NOT).append(ctx.groundAtom().getText()));
	}

	@Override
	public void exitGroundNotEquals(GroundNotEqualsContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.COMP_NE).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundOr(GroundOrContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_OR).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundPlus(GroundPlusContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_PLUS).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
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
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundPower2(GroundPower2Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundPower3(GroundPower3Context ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_POWER).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	private boolean isNegValue(String text) {
		if (null == text || (text = text.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'text' argument in XhailFileListener.isNegValue(String): " + text);
		boolean result = ('-' == text.charAt(0));
		for (int i = 1; result && i < text.length(); i++)
			result = text.charAt(i) >= '0' && text.charAt(i) <= '9';
		return result;
	}

	@Override
	public void exitGroundPredicate(GroundPredicateContext ctx) {
		if (null != ctx) {
			Stack<Atom> atoms = new Stack<>();
			for (int i = 0; i < ctx.groundTerm().size(); i++) {
				Atom atom = builders.pop().build();
				String name = atom.name();
				if (0 == atom.arity() && isNegValue(name)) {
					Atom discard = builders.peek().build();
					if (0 == discard.arity() && name.equals("-" + discard.name()))
						builders.pop();
				}
				atoms.push(atom);
			}
			Builder builder = builders.peek();
			while (!atoms.empty())
				builder.append(atoms.pop());
		}
	}

	@Override
	public void exitGroundString(GroundStringContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void exitGroundTimes(GroundTimesContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.ARITH_TIMES).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	@Override
	public void exitGroundVariable(GroundVariableContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void exitGroundXor(GroundXorContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(Atom.BIT_XOR).append(ctx.groundAtom().getText()).append(ctx.groundTerm().getText()));
	}

	// @Override
	// public void exitHideAll(HideAllContext ctx) {
	// if (null != ctx)
	// problem.addHide(combine(ctx));
	// }
	//
	// @Override
	// public void exitHideExplicit(HideExplicitContext ctx) {
	// if (null != ctx)
	// problem.addHide(combine(ctx));
	// }
	//
	// @Override
	// public void exitHideImplicit(HideImplicitContext ctx) {
	// if (null != ctx)
	// problem.addHide(combine(ctx));
	// }

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
		if (null != ctx) {
			priority = Integer.parseInt(ctx.INTEGER().getText());
			if (null != ctx.MINUS())
				priority = -priority;
		}
	}

	// @Override
	// public void exitShowAll(ShowAllContext ctx) {
	// if (null != ctx)
	// problem.addShow(combine(ctx));
	// }
	//
	// @Override
	// public void exitShowExplicit(ShowExplicitContext ctx) {
	// if (null != ctx)
	// problem.addShow(combine(ctx));
	// }
	//
	// @Override
	// public void exitShowImplicit(ShowImplicitContext ctx) {
	// if (null != ctx)
	// problem.addShow(combine(ctx));
	// }

	@Override
	public void exitDisplayPredicate(DisplayPredicateContext ctx) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailFileListener.exitDisplay(DisplayContext): " + ctx);
		String name = ctx.IDENTIFIER().getText();
		int arity = Integer.valueOf(ctx.INTEGER().getText());
		problem.addDisplay(name, arity);
	}

	@Override
	public void exitDisplayAll(DisplayAllContext ctx) {
		if (null == ctx)
			throw new IllegalArgumentException("Illegal 'ctx' argument in XhailFileListener.exitDisplayAll(DisplayAllContext): " + ctx);
		problem.addDisplayAll();
	}

	@Override
	public void exitWeight(WeightContext ctx) {
		if (null != ctx) {
			weight = Integer.parseInt(ctx.INTEGER().getText());
			if (null != ctx.MINUS())
				weight = -weight;
		}
	}

}
