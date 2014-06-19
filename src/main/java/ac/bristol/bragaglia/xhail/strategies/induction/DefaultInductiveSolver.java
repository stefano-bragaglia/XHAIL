/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.induction;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import ac.bristol.bragaglia.xhail.application.Version;
import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.parsers.Clasp3Parser;
import ac.bristol.bragaglia.xhail.problem.Hypothesis;
import ac.bristol.bragaglia.xhail.problem.Kernel;

/**
 * @author stefano
 *
 */
public class DefaultInductiveSolver implements InductiveStrategy {

	private static InductiveStrategy instance = null;

	public static InductiveStrategy get() {
		if (null == instance)
			instance = new DefaultInductiveSolver();
		return instance;
	}

	private DefaultInductiveSolver() {
	}

	private boolean invariant() {
		return (true);
	}

	@Override
	public Hypothesis solve(Config config, Kernel kernel) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultInductiveSolver.solve(Config, Kernel): " + config);
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in DefaultInductiveSolver.solve(Config, Kernel): " + kernel);
		Hypothesis result = null;
		Path temp = config.createFolder("temp");
		Path errors = config.overwriteFile(temp, "errors_ind.log");
		Path source = config.createFile(temp, config.getFilename() + "_ind.lp");
		if (kernel.dump(source.toFile())) {
			try {
				Path grounding = config.createFile(temp, config.getFilename() + "_ind.grounding");
				if (config.isDebug())
					config.runGringoT(source, grounding, errors).waitFor();
				else
					config.deleteFile(grounding);
				Path gringo = config.createFile(temp, config.getFilename() + "_ind.gringo");
				config.runGringo(source, gringo, errors).waitFor();
				Path clasp = config.createFile(temp, config.getFilename() + "_ind.clasp");
				config.runClasp(gringo, clasp, errors).waitFor();
				FileInputStream stream = new FileInputStream(clasp.toFile());
				result = new Hypothesis(kernel, Clasp3Parser.parse(stream));
				stream.close();
				List<String> lines = Files.readAllLines(errors);
				for (String line : lines)
					System.err.println(String.format("*** WARNING (%s): %s", Version.get().getTitle(), line));
			} catch (InterruptedException | IOException | SecurityException e) {
				// nothing, so that induced will remain null.
			}
		}
		assert invariant() : "Illegal state in DefaultInductiveSolver.solve(Config, Induced)";
		return result;
	}

}