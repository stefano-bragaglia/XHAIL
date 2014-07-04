/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.abduction;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import ac.bristol.bragaglia.xhail.application.Version;
import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Grounding;
import ac.bristol.bragaglia.xhail.core.Model;
import ac.bristol.bragaglia.xhail.core.Problem;
import ac.bristol.bragaglia.xhail.parsers.Clasp3FileParser;
import ac.bristol.bragaglia.xhail.predicates.Atom;

/**
 * @author stefano
 *
 */
public class DefaultAbductiveSolver implements AbductivePhase {

	private static AbductivePhase instance = null;

	public static AbductivePhase get() {
		if (null == instance)
			instance = new DefaultAbductiveSolver();
		return instance;
	}

	private DefaultAbductiveSolver() {
	}

	private boolean invariant() {
		return (true);
	}

	@Override
	public Collection<Grounding> solve(Config config, Problem problem) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultAbductiveSolver.solve(Config, Problem): " + config);
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in DefaultAbductiveSolver.solve(Config, Problem): " + problem);
		config.getAbducing().start();
		Collection<Grounding> result = null;
		// Preparing the temporary folder and files for abduction
		Path temp = config.createFolder("temp");
		Path errors = config.overwriteFile(temp, "errors_abd.log");
		Path source = config.createFile(temp, config.getFilename() + "_abd.lp");
		Model model = problem.isAbducible() ? problem.derive() : problem.reduce();
		if (model.dump(source.toFile())) {
			try {
				Path grounding = config.createFile(temp, config.getFilename() + "_abd.grounding");
				if (config.isDebug()) {
					config.getAbducingGringo().start();
					config.runGringoT(source, grounding, errors).waitFor();
					config.getAbducingGringo().stop();
				} else
					config.deleteFile(grounding);
				Path gringo = config.createFile(temp, config.getFilename() + "_abd.gringo");
				config.getAbducingGringo().start();
				config.runGringo(source, gringo, errors).waitFor();
				config.getAbducingGringo().stop();
				Path clasp = config.createFile(temp, config.getFilename() + "_abd.clasp");
				config.getAbducingClasp().start();
				config.runClasp(gringo, clasp, errors).waitFor();
				config.getAbducingClasp().stop();
				config.getAbducing().stop();
				config.getParsing().start();
				// Acquiring the output
				FileInputStream stream = new FileInputStream(clasp.toFile());
				Map<List<Integer>, Set<Set<Atom>>> answers = Clasp3FileParser.parse(stream);
				result = Grounding.loadAll(problem, answers);
				// returns the class on answers corresponding to the optimal
				// value or the whole set of answers if no optimal value is
				// found
				stream.close();
				config.getParsing().stop();
				config.getAbducing().start();
				// passing the error/warning messages over
				List<String> lines = Files.readAllLines(errors);
				for (String line : lines) {
					line = line.trim();
					if (!line.isEmpty()) {
						if (line.startsWith("% warning: ")) {
							line = line.substring(11);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** WARNING (%s): %s on abduction", Version.get().getTitle(), line));
						} else if (line.startsWith("ERROR: ")) {
							line = line.substring(7);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on abduction", Version.get().getTitle(), line));
						} else if (line.startsWith("*** ERROR: ")) {
							line = line.substring(11);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on abduction", Version.get().getTitle(), line));
						} else if (line.startsWith("% error: ")) {
							line = line.substring(9);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on abduction", Version.get().getTitle(), line));
						} else
							System.err.println(String.format("*** WARNING (%s): %s on abduction", Version.get().getTitle(), line));
					}
				}
			} catch (InterruptedException | IOException | SecurityException e) {
				// nothing, so that Explanation will remain null.
			}
			config.getAbducing().stop();
		}
		assert invariant() : "Illegal state in DefaultAbductiveSolver.solve(Config, Problem)";
		return result;
	}

}
