/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.abduction;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import ac.bristol.bragaglia.xhail.application.Version;
import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.parsers.Clasp3FileParser;
import ac.bristol.bragaglia.xhail.problem.Explanation;
import ac.bristol.bragaglia.xhail.problem.Problem;

/**
 * @author stefano
 *
 */
public class DefaultAbductiveSolver implements AbductiveStrategy {

	private static AbductiveStrategy instance = null;

	public static AbductiveStrategy get() {
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
	public Explanation solve(Config config, Problem problem) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultAbductiveSolver.solve(Config, Problem): " + config);
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'model' argument in DefaultAbductiveSolver.solve(Config, Problem): " + problem);
		config.getAbducing().start();
		Explanation result = null;
		Path temp = config.createFolder("temp");
		Path errors = config.overwriteFile(temp, "errors_abd.log");
		Path source = config.createFile(temp, config.getFilename() + "_abd.lp");
		if (problem.derive().dump(source.toFile())) {
			try {
				Path grounding = config.createFile(temp, config.getFilename() + "_abd.grounding");
				if (config.isDebug())
					config.runGringoT(source, grounding, errors).waitFor();
				else
					config.deleteFile(grounding);
				Path gringo = config.createFile(temp, config.getFilename() + "_abd.gringo");
				config.runGringo(source, gringo, errors).waitFor();
				Path clasp = config.createFile(temp, config.getFilename() + "_abd.clasp");
				config.runClasp(gringo, clasp, errors).waitFor();
				config.getAbducing().stop();
				config.getParsing().start();
				FileInputStream stream = new FileInputStream(clasp.toFile());
				result = new Explanation(problem, Clasp3FileParser.parse(stream));
				stream.close();
				config.getParsing().stop();
				config.getAbducing().start();
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
