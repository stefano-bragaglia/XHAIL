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
import ac.bristol.bragaglia.xhail.parsers.Clasp3Parser;
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
				FileInputStream stream = new FileInputStream(clasp.toFile());
				result = new Explanation(problem, Clasp3Parser.parse(stream));
				stream.close();
				List<String> lines = Files.readAllLines(errors);
				for (String line : lines)
					System.err.println(String.format("*** WARNING (%s): %s", Version.get().getTitle(), line));
			} catch (InterruptedException | IOException | SecurityException e) {
				// nothing, so that abduced will remain null.
			}
		}
		assert invariant() : "Illegal state in DefaultAbductiveSolver.solve(Config, Problem)";
		return result;
	}

}
