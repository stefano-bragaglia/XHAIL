/**
 * 
 */
package ac.bristol.bragaglia.xhail.application;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Answer;
import ac.bristol.bragaglia.xhail.core.Problem;
import ac.bristol.bragaglia.xhail.parsers.XhailFileParser;
import ac.bristol.bragaglia.xhail.strategies.DefaultSolver;
import ac.bristol.bragaglia.xhail.strategies.Strategy;

/**
 * @author stefano
 *
 */
public class Program {

	private Config config;

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
		this.problem = new Problem();
		this.strategy = strategy;
		assert invariant() : "Illegal state in Program(Config, Strategy)";
	}

	public Config getConfig() {
		assert invariant() : "Illegal state in Program.getConfig()";
		return config;
	}

	public Problem getProblem() {
		assert invariant() : "Illegal state in Program.getProblem()";
		return problem;
	}

	protected boolean invariant() {
		return (null != config && null != problem && null != strategy);
	}

	public boolean isGeneralizable() {
		boolean result = problem.isAbducible();
		assert invariant() : "Illegal state in Program.isGeneralizable()";
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
		XhailFileParser.parse(problem, stream, config.isMute());
		config.setName("stream");
		assert invariant() : "Illegal state in Program.load(InputStream)";
	}

	public Problem problem() {
		assert invariant() : "Illegal state in Program.problem()";
		return problem;
	}

	public Collection<Answer> solve() {
		Collection<Answer> result = problem.isModified() ? strategy.solve(config, problem) : null;
		assert invariant() : "Illegal state in Program.solve()";
		return result;
	}

	public Strategy strategy() {
		assert invariant() : "Illegal state in Program.strategy()";
		return strategy;
	}

}
