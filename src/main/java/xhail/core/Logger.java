/**
 * 
 */
package xhail.core;

import java.nio.file.Path;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.lang3.StringUtils;

import xhail.Application;
import xhail.core.entities.Answer;
import xhail.core.entities.Answer.Signature;
import xhail.core.entities.Answers;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;

/**
 * @author stefano
 *
 */
public class Logger {

	public static final String ANSI_BLACK = "\u001B[30m";
	public static final String ANSI_BLUE = "\u001B[34m";
	public static final String ANSI_CYAN = "\u001B[36m";
	public static final String ANSI_GREEN = "\u001B[32m";
	public static final String ANSI_PURPLE = "\u001B[35m";
	public static final String ANSI_RED = "\u001B[31m";
	public static final String ANSI_RESET = "\u001B[0m";
	public static final String ANSI_WHITE = "\u001B[37m";
	public static final String ANSI_YELLOW = "\u001B[33m";

	private static Set<String> memory = new HashSet<>();

	private static final double NORMALIZER = 1_000_000_000.0;

	public static final String SIGNATURE = "xhail";

	public static final String VERSION = "0.5.1";

	public static synchronized void clear() {
		memory.clear();
	}

	private static String convertAtoms(Collection<Atom> atoms) {
		if (null == atoms)
			throw new IllegalArgumentException("Illegal 'atoms' argument in Logger.convertAtoms(Collection<Atom>): " + atoms);
		Set<String> result = new TreeSet<>();
		for (Atom atom : atoms)
			result.add(atom.toString());
		return StringUtils.join(result, " ");
	}

	private static Collection<String> convertClauses(Collection<Clause> clauses) {
		if (null == clauses)
			throw new IllegalArgumentException("Illegal 'clauses' argument in Logger.convertClauses(Collection<Clause>): " + clauses);
		Set<String> result = new TreeSet<>();
		for (Clause clause : clauses)
			result.add(clause.toString());
		return result;
	}

	private static String convertLiterals(Collection<Literal> literals) {
		if (null == literals)
			throw new IllegalArgumentException("Illegal 'literals' argument in Logger.convertLiterals(Collection<Literal>): " + literals);
		Set<String> result = new TreeSet<>();
		for (Literal literal : literals)
			result.add(literal.toString());
		return StringUtils.join(result, " ");
	}

	public static void error(String message) {
		if (null != message) {
			System.err.println(String.format("*** ERROR (%s): %s", SIGNATURE, message));
			System.err.println(String.format("*** Info  (%s): try '-h' or '--help' for usage information", SIGNATURE));
			System.exit(-1);
		}
	}

	public static void found(Config config) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'application' argument in Logger.found(Config): " + config);
		Path gringo = config.getGringo();
		Path clasp = config.getClasp();
		System.out.println(String.format("Using '%s'...", gringo));
		System.out.println(String.format("Using '%s'...", clasp));
		System.out.println();
		System.out.println("Next time try to invoke the application with the following parameters:");
		System.out.format("  java -jar %s.jar -c %s -g %s", SIGNATURE, clasp, gringo);
		if (config.isAll())
			System.out.print(" -a");
		if (config.isBlind())
			System.out.print(" -b");
		if (config.isDebug())
			System.out.print(" -d");
		if (config.getKill() > 0)
			System.out.print(" -k " + config.getKill());
		if (config.isMute())
			System.out.print(" -m");
		for (Path source : config.getSources())
			System.out.print(" " + source);
		System.out.println();
		System.out.println();
	}

	/**
	 * Prints a header message.
	 */
	public static void header(Config config) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.header(Config): " + config);
		if (!config.isBlind())
			System.out.print(ANSI_RESET);
		System.out.println(SIGNATURE + " " + VERSION);
		System.out.println();
		if (!config.isBlind())
			System.out.print(ANSI_WHITE);
	}

	/**
	 * Prints an help message.
	 */
	public static void help() {
		System.out.println(SIGNATURE + " " + VERSION);
		System.out.println();
		System.out.println(String.format("Usage:     java -jar %s.jar  [options]  [files]", SIGNATURE));
		System.out.println();
		System.out.println("Options:");
		System.out.println();
		System.out.println("  --all,-a            : Print all the best answers");
		System.out.println("  --blind,-b          : Remove colours from the program output");
		System.out.println("  --clasp,-c <path>   : Use given <path> as path for clasp 3");
		System.out.println("  --debug,-d          : Leave temporary files in ./temp");
		System.out.println("  --format,-f         : Nicely format and print current problem");
		System.out.println("  --gringo,-g <path>  : Use given <path> as path for gringo 3");
		System.out.println("  --help,-h           : Print this help and exit");
		System.out.println("  --kill,-k <num>     : Stop the program after <num> seconds");
		System.out.println("  --mute,-m           : Suppress warning messages");
		System.out.println("  --search,-s         : Search for clasp 3 and gringo 3");
		System.out.println("  --version,-v        : Print version information and exit");
		System.out.println();
		System.out.println(String.format("Example:   java -jar %s.jar  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  example.pl", SIGNATURE));
		System.out.println();
		System.exit(1);
	}

	public static void message(String message) {
		if (null != message)
			System.out.println(message);
	}

	public static void stampAnswers(Answers answers) {
		if (null == answers)
			throw new IllegalArgumentException("Illegal 'answers' argument in Logger.stampAnswers(Answers): " + answers);
		Config config = answers.getConfig();
		Iterator<Answer> iterator = answers.iterator();
		System.out.println();
		if (iterator.hasNext()) {
			for (int id = 1; iterator.hasNext() && config.isAll() || 1 == id; id++) {
				Answer answer = iterator.next();
				stampSection(config, String.format("Answer %d:", id));
				stampSubSection(config, "model", convertAtoms(answer.getModel()));
				stampSubSection(config, "delta", convertAtoms(answer.getDelta()));
				stampSubSection(config, "kernel", convertClauses(answer.getKernel()));
				stampSubSection(config, "hypothesis", convertClauses(answer.getHypothesis()));
				stampSubSection(config, "uncovered", convertLiterals(answer.getCover()));
				stampSignature(config, answer.getSignature());
				System.out.println();
			}
			int remaining = answers.size() - 1;
			if (!config.isAll() && remaining > 0) {
				if (!config.isBlind())
					System.out.print(ANSI_RED);
				System.out.print("NB: ");
				if (!config.isBlind())
					System.out.print(ANSI_RESET);
				System.out.format("%d additional optimal answer/s omitted ", remaining);
				if (!config.isBlind())
					System.out.print(ANSI_WHITE);
				System.out.println("(use '-a' to see them all)\n");
			}
		}
		stampStat(config, String.format("Answers     : %d", answers.count()));
		stampStat(config, String.format("  optimal   : %d", answers.size()));
		stampStat(config, String.format("  shown     : %d", config.isAll() ? answers.size() : 1));
		stampStat(config, String.format("Time        : %.3fs  (loading: %.3fs  1st answer: %.3fs)", //
				(System.nanoTime() - Application.time) / NORMALIZER, //
				(Application.loading - Application.time) / NORMALIZER, //
				Application.answer < 0 ? 0 : (Application.answer - Application.time) / NORMALIZER));
		stampStat(config, String.format("  abduction : %.3fs", answers.getAbduction() / NORMALIZER));
		stampStat(config, String.format("  deduction : %.3fs", answers.getDeduction() / NORMALIZER));
		stampStat(config, String.format("  induction : %.3fs\n", answers.getInduction() / NORMALIZER));
	}

	public static void stampSection(Config config, String label) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.stampSection(Config, String): " + config);
		if (null == label || (label = label.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'label' argument in Utils.stampSection(Config, String): " + label);
		if (!config.isBlind())
			System.out.print(ANSI_RED);
		System.out.println(label);
	}

	public static void stampSignature(Config config, Signature signature) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.stampSignature(Config, Signature): " + config);
		if (null == signature)
			throw new IllegalArgumentException("Illegal 'signature' argument in Utils.stampSignature(Config, Signature): " + signature);
		if (!config.isBlind())
			System.out.print(ANSI_CYAN);
		System.out.format("  signature:\n    %d example/s  %d clause/s  %d literal/s  %d phase/s\n", //
				signature.getExamples() - signature.getUncovers(), signature.getClauses(), signature.getLiterals(), signature.getPhases());
	}

	public static void stampStat(Config config, String value) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.stampStat(Config, String): " + config);
		if (null == value)
			throw new IllegalArgumentException("Illegal 'value' argument in Utils.stampStat(Config, String): " + value);
		if (!config.isBlind())
			System.out.print(ANSI_YELLOW);
		System.out.println(value);
	}

	public static void stampSubSection(Config config, String label, Collection<String> content) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.stampSubSection(Config, String, Collection<String>): " + config);
		if (null == label || (label = label.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'label' argument in Utils.stampSubSection(Config, String, Collection<String>): " + label);
		if (null == content)
			throw new IllegalArgumentException("Illegal 'content' argument in Logger.stampSubSection(Config, String, Collection<String>): " + content);
		if (!config.isBlind())
			System.out.print(ANSI_GREEN);
		System.out.format("  %s:\n", label);
		if (!config.isBlind())
			System.out.print(ANSI_RESET);
		if (0 == content.size())
			System.out.println("    -");
		else
			for (String item : content)
				System.out.println("    " + item);
	}

	public static void stampSubSection(Config config, String label, String content) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Logger.stampSubSection(Config, String, String): " + config);
		if (null == label || (label = label.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'label' argument in Utils.stampSubSection(Config, String, String): " + label);
		if (null == content)
			throw new IllegalArgumentException("Illegal 'content' argument in Logger.stampSubSection(Config, String, String): " + content);
		if (!config.isBlind())
			System.out.print(ANSI_GREEN);
		System.out.format("  %s:\n", label);
		if (!config.isBlind())
			System.out.print(ANSI_RESET);
		if (content.isEmpty())
			System.out.println("    -");
		else
			System.out.println("    " + content);
	}

	/**
	 * Prints a version message.
	 */
	public static void version() {
		System.out.println();
		System.out.println(SIGNATURE + " " + VERSION);
		System.out.println();
		System.out.println("Copyright (c) Stefano Bragaglia");
		System.out.println("Copyright (c) Oliver Ray");
		System.out.println();
		System.out.println("GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>");
		System.out.println(String.format("'%s' is free software: you are free to change and redistribute it.", SIGNATURE));
		System.out.println("There is NO WARRANTY, to the extent permitted by law.");
		System.out.println();
		System.exit(1);
	}

	public static void warning(boolean mute, String message) {
		if (null != message && !mute)
			if (!memory.contains(message)) {
				memory.add(message);
				System.err.println(String.format("* Warning (%s): %s", SIGNATURE, message));
			}
	}

	private Logger() {
	}

}