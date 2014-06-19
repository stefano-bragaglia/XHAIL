/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.parsers.XhailFileParser;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.strategies.DefaultSolver;
import ac.bristol.bragaglia.xhail.strategies.Strategy;

/**
 * @author stefano
 *
 */
public class Program {

	public static void inject(Explanation generalization, Program program) {
		if (null == generalization)
			throw new IllegalArgumentException("Illegal 'generalization' argument in Program.inject(Generalization, Program): " + generalization);
		if (null == program)
			throw new IllegalArgumentException("Illegal 'program' argument in Program.inject(Generalization, Program): " + program);
		program.generalization = generalization;
	}

	public static void inject(Hypothesis hypothesis, Program program) {
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'hypothesis' argument in Program.inject(Hypothesis, Program): " + hypothesis);
		if (null == program)
			throw new IllegalArgumentException("Illegal 'program' argument in Program.inject(Hypothesis, Program): " + program);
		program.hypothesis = hypothesis;
	}

	public static void inject(Kernel kernel, Program program) {
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Program.inject(Solution, Program): " + kernel);
		if (null == program)
			throw new IllegalArgumentException("Illegal 'program' argument in Program.inject(Solution, Program): " + program);
		program.kernel = kernel;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Atom atom = Builder.get("example").append(Builder.get(Atom.PAR_CONSTANT).append("value").append("type").build()).build();
		System.out.println(atom);

		Config config = new Config("/Library/Gringo/gringo", "/Library/Clasp/clasp", true);
		int i;
		Program program = new Program(config);
		program.solve();
		// program.load("ac/bristol/bragaglia/jhail/altro.lp");
		program.load("ac/bristol/bragaglia/jhail/parser/penguins.lp");
		System.out.println(program.problem());
		program.solve();
		System.out.println("Model:\t" + program.model());
		System.out.println("Delta:\t" + program.delta());
		System.out.println("Kappa:\t" + program.kappa());
		System.out.println("Guess:");
		i = 1;
		for (Collection<Clause> guess : program.guess())
			System.out.println(String.format(" #%d\t%s", i++, guess.toString()));

		System.out.println("Done.\n\n\n");

		program = new Program(config);
		program.solve();
		program.load("ac/bristol/bragaglia/jhail/altro.lp");
		// program.load("ac/bristol/bragaglia/jhail/parser/penguins.lp");
		System.out.println(program.problem());
		program.solve();
		System.out.println("Model:\t" + program.model());
		System.out.println("Delta:\t" + program.delta());
		System.out.println("Kappa:\t" + program.kappa());
		System.out.println("Guess:");
		i = 1;
		for (Collection<Clause> guess : program.guess())
			System.out.println(String.format(" #%d\t%s", i++, guess.toString()));

		System.out.println("Done.");

	}

	private Config config;

	private Explanation generalization;

	private Hypothesis hypothesis;

	private Kernel kernel;

	private Problem problem;

	private Strategy strategy;

	public Program(Config config) {
		this(config, DefaultSolver.get());
		assert invariant() : "Illegal state in Program(Config)";
	}

	public Program(Config config, Strategy strategy) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Program(Config, Strategy): " + config);
		if (null == strategy)
			throw new IllegalArgumentException("Illegal 'strategy' argument in Program(Config, Strategy): " + strategy);
		this.config = config;
		this.generalization = null;
		this.hypothesis = null;
		this.kernel = null;
		this.problem = new Problem();
		this.strategy = strategy;
		assert invariant() : "Illegal state in Program(Config, Strategy)";
	}

	public Collection<Atom> delta() {
		Collection<Atom> result = Collections.emptySet();
		if (null != generalization)
			result = generalization.delta();
		assert invariant() : "Illegal state in Program.delta()";
		return result;
	}

	public Config getConfig() {
		assert invariant() : "Illegal state in Program.getConfig()";
		return config;
	}

	public Problem getProblem() {
		assert invariant() : "Illegal state in Program.getProblem()";
		return problem;
	}

	public Collection<Set<Clause>> guess() {
		Collection<Set<Clause>> result = Collections.emptySet();
		if (null != hypothesis)
			result = hypothesis.clauses();
		assert invariant() : "Illegal state in Program.guess()";
		return result;
	}

	protected boolean invariant() {
		return (null != config && null != problem && null != strategy);
	}

	public boolean isGeneralizable() {
		boolean result = problem.isGeneralizable();
		assert invariant() : "Illegal state in Program.isGeneralizable()";
		return result;
	}

	public Collection<Clause> kappa() {
		Collection<Clause> result = Collections.emptySet();
		if (null != kernel)
			result = kernel.kappa();
		assert invariant() : "Illegal state in Program.kappa()";
		return result;
	}

	public void load(File file) {
		if (null == file)
			throw new IllegalArgumentException("Illegal 'file' argument in Program.load(File): " + file);
		try {
			InputStream stream = new FileInputStream(file);
			this.load(stream);
			stream.close();
			String name = file.toString();
			int pos = name.lastIndexOf('.');
			if (pos > -1)
				name = name.substring(0, pos);
			config.setName(name);
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'file' argument in Program.load(File): " + file);
		}
		assert invariant() : "Illegal state in Program.load(File)";
	}

	public void load(InputStream stream) {
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in Program.load(InputStream): " + stream);
		XhailFileParser.parse(problem, stream);
		config.setName("stream");
		assert invariant() : "Illegal state in Program.load(InputStream)";
	}

	public void load(String resource) {
		if (null == resource || (resource = resource.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'resource' argument in Program.load(String): " + resource);
		this.load(XhailFileParser.open(resource));
		config.setName("resource");
		assert invariant() : "Illegal state in Program.load(String)";
	}

	public Collection<Atom> model() {
		Collection<Atom> result = Collections.emptySet();
		if (null != generalization)
			result = generalization.model();
		assert invariant() : "Illegal state in Program.model()";
		return result;
	}

	public Problem problem() {
		assert invariant() : "Illegal state in Program.problem()";
		return problem;
	}

	public boolean solve() {
		boolean result = true;
		if (problem.isModified())
			result = strategy.solve(this);
		assert invariant() : "Illegal state in Program.solve()";
		return result;
	}

	public Strategy strategy() {
		assert invariant() : "Illegal state in Program.strategy()";
		return strategy;
	}

}
