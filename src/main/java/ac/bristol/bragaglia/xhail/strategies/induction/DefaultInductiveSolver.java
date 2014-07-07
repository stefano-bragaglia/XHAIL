/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.induction;

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
import ac.bristol.bragaglia.xhail.core.Hypothesis;
import ac.bristol.bragaglia.xhail.core.Kernel;
import ac.bristol.bragaglia.xhail.parsers.Clasp3FileParser;
import ac.bristol.bragaglia.xhail.predicates.Atom;

/**
 * @author stefano
 *
 */
public class DefaultInductiveSolver implements InductivePhase {

	private static InductivePhase instance = null;

	public static InductivePhase get() {
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
	public Collection<Hypothesis> solve(Config config, Kernel kernel) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultInductiveSolver.solve(Config, Kernel): " + config);
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in DefaultInductiveSolver.solve(Config, Kernel): " + kernel);
		config.getInducing().start();
		// Preparing the temporary folder and files for induction
		Collection<Hypothesis> result = null;
		Path temp = config.createFolder("temp");
		Path errors = config.overwriteFile(temp, "errors_ind.log");
		Path source = config.createFile(temp, config.getFilename() + "_ind.lp");
		if (kernel.derive().dump(source.toFile())) {
			try {
				Path grounding = config.createFile(temp, config.getFilename() + "_ind.grounding");
				if (config.isDebug()) {
					config.getInducingGringo().start();
					config.runGringoT(source, grounding, errors).waitFor();
					config.getInducingGringo().stop();
				} else
					config.deleteFile(grounding);
				Path gringo = config.createFile(temp, config.getFilename() + "_ind.gringo");
				config.getInducingGringo().start();
				config.runGringo(source, gringo, errors).waitFor();
				config.getInducingGringo().stop();
				Path clasp = config.createFile(temp, config.getFilename() + "_ind.clasp");
				config.getInducingClasp().start();
				config.runClasp(gringo, clasp, errors).waitFor();
				config.getInducingClasp().stop();
				config.getInducing().stop();
				config.getParsing().start();
				// Acquiring the output (to be refactored!!!)
				FileInputStream stream = new FileInputStream(clasp.toFile());
				Map<List<Integer>, Set<Set<Atom>>> answers = Clasp3FileParser.parse(stream, config.isMute());
				// result = new Hypothesis(kernel,
				// Clasp3FileParser.parse(stream));
				result = Hypothesis.loadAll(kernel, answers);
				// returns the class on answers corresponding to the optimal
				// value or the whole set of answers if no optimal value is
				// found
				stream.close();
				config.getParsing().stop();
				config.getInducing().start();
				// passing the error/warning messages over
				boolean blocking = false;
				List<String> lines = Files.readAllLines(errors);
				for (String line : lines) {
					line = line.trim();
					blocking |= line.toLowerCase().contains("error");
					if (!line.isEmpty()) {
						if (line.startsWith("ERROR: ")) {
							line = line.substring(7);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on induction", Version.get().getTitle(), line));
						} else if (line.startsWith("*** ERROR: ")) {
							line = line.substring(11);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on induction", Version.get().getTitle(), line));
						} else if (line.startsWith("% error: ")) {
							line = line.substring(9);
							if (line.endsWith(":") || line.endsWith("!"))
								line = line.substring(0, line.length() - 1);
							System.err.println(String.format("*** ERROR (%s): %s on induction", Version.get().getTitle(), line));
						} else if (!config.isMute()) {
							if (line.startsWith("% warning: ")) {
								line = line.substring(11);
								if (line.endsWith(":") || line.endsWith("!"))
									line = line.substring(0, line.length() - 1);
								System.err.println(String.format("*** WARNING (%s): %s on induction", Version.get().getTitle(), line));
							} else
								System.err.println(String.format("*** WARNING (%s): %s on induction", Version.get().getTitle(), line));
						}
					}
				}
				if (blocking)
					result = null;
			} catch (InterruptedException | IOException | SecurityException e) {
				// nothing, so that induced will remain null.
			}
		}
		config.getInducing().stop();
		assert invariant() : "Illegal state in DefaultInductiveSolver.solve(Config, Induced)";
		return result;
	}

}