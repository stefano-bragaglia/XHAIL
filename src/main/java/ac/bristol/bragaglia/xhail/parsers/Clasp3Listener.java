/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;

import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarBaseListener;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.AnswerContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.AtomIntegerContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.AtomPredicateContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.AtomStringContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.FactContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.OptValuesContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.OutputContext;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser.ValuesContext;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;

/**
 * @author stefano
 *
 */
public class Clasp3Listener extends GrammarBaseListener {

	// private static final int[] EMPTY = {};

	// /**
	// * Unique instance of this singleton class.
	// */
	// private static Clasp3Listener instance;

	public static void accept(ParseTreeWalker walker, ParseTree tree, Set<Set<Atom>> output) {
		if (null == walker)
			throw new IllegalArgumentException("Illegal 'walker' argument in Clasp3Listener.host(ParseTreeWalker, ParseTree, Set<Atom>): " + walker);
		if (null == tree)
			throw new IllegalArgumentException("Illegal 'tree' argument in Clasp3Listener.host(ParseTreeWalker, ParseTree, Set<Atom>): " + tree);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Clasp3Listener.host(ParseTreeWalker, ParseTree, Set<Set<Atom>>): " + output);
		walker.walk(new Clasp3Listener(output), tree);
	}

	// private Map<int[], Set<Set<Atom>>> answers;
	private Map<List<Integer>, Set<Set<Atom>>> answers;

	private Stack<Builder> builders;

	private Set<Atom> model;

	// private int[] optimal;
	private List<Integer> optimal;

	private Set<Set<Atom>> output;

	// private int[] values;
	private List<Integer> values;

	/**
	 * Default constructor. The constructor is private because this is a
	 * singleton class.
	 */
	private Clasp3Listener(Set<Set<Atom>> output) {
		this.answers = new LinkedHashMap<>();
		this.builders = new Stack<>();
		this.optimal = Collections.emptyList();
		// this.optimal = EMPTY;
		this.output = output;
		this.values = Collections.emptyList();
		// this.values = EMPTY;
	}

	@Override
	public void enterAnswer(AnswerContext ctx) {
		model = new TreeSet<>();
	}

	@Override
	public void enterAtomInteger(AtomIntegerContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void enterAtomPredicate(AtomPredicateContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void enterAtomString(AtomStringContext ctx) {
		if (null != ctx)
			builders.push(Builder.get(ctx.getText()));
	}

	@Override
	public void enterFact(FactContext ctx) {
		builders.clear();
	}

	@Override
	public void exitAnswer(AnswerContext ctx) {
		if (null != ctx) {
			Set<Set<Atom>> models = answers.get(values);
			if (null == models) {
				models = new HashSet<>();
				answers.put(values, models);
			}
			models.add(model);
		}
	}

	@Override
	public void exitAtomPredicate(AtomPredicateContext ctx) {
		if (null != ctx) {
			Stack<Atom> atoms = new Stack<>();
			for (int i = 0; i < ctx.atom().size(); i++)
				atoms.push(builders.pop().build());
			Builder builder = builders.peek();
			while (!atoms.empty())
				builder.append(atoms.pop());
		}
	}

	@Override
	public void exitFact(FactContext ctx) {
		model.add(builders.pop().build());
		if (!builders.empty())
			throw new IllegalStateException("The stack should be empty!");
	}

	@Override
	public void exitOptValues(OptValuesContext ctx) {
		optimal = new ArrayList<>();
		// optimal = EMPTY;
		if (null != ctx) {
			for (int i = 0; i < ctx.INTEGER().size(); i++)
				optimal.add(Integer.parseInt(ctx.INTEGER(i).getText()));
			// int length = ctx.INTEGER().size();
			// if (length > 0) {
			// optimal = new int[length];
			// for (int i = 0; i < length; i++)
			// optimal[i] = Integer.parseInt(ctx.INTEGER(i).getText());
			// }
		}
	}

	@Override
	public void exitOutput(OutputContext ctx) {
		output.clear();
		// boolean optimalNotEmpty = EMPTY != optimal;
		// boolean answerContainsOptimal = answers.containsKey(optimal);
		if (!optimal.isEmpty() && answers.containsKey(optimal))
			output.addAll(answers.get(optimal));
		else {
			Set<Set<Atom>> last = null;
			for (Set<Set<Atom>> model : answers.values())
				last = model;
			if (null != last)
				output.addAll(last);
		}
	}

	@Override
	public void exitValues(ValuesContext ctx) {
		values = new ArrayList<Integer>();
		// values = EMPTY;
		if (null != ctx) {
			for (int i = 0; i < ctx.INTEGER().size(); i++)
				values.add(Integer.parseInt(ctx.INTEGER(i).getText()));
			// int length = ctx.INTEGER().size();
			// if (length > 0) {
			// values = new int[length];
			// for (int i = 0; i < length; i++)
			// values[i] = Integer.parseInt(ctx.INTEGER(i).getText());
			// }
		}
	}

}
