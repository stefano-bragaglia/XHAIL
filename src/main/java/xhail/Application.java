/**
 * 
 */
package xhail;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import xhail.core.Config;
import xhail.core.Dialler;
import xhail.core.Finder;
import xhail.core.Logger;
import xhail.core.Utils;
import xhail.core.entities.Answers;
import xhail.core.entities.Problem;

/**
 * @author stefano
 *
 */
public class Application implements Callable<Answers> {

	static {
		Answers.started();
	}

	/**
	 * The <code>PATHS</code> where <code>gringo</code> and <code>clasp</code>
	 * most likely are.
	 */
	private static final Path[] PATHS = { Paths.get("/Library/Gringo/"), Paths.get("/Library/Clasp/"), Paths.get("/usr/bin/gringo/"),
			Paths.get("/usr/bin/clasp/"), Paths.get("/usr/bin/"), Paths.get("/usr/local/gringo/"), Paths.get("/usr/local/clasp/"), Paths.get("/usr/local/"),
			Paths.get("/opt/bin/"), Paths.get("/opt/local/"), Paths.get("/opt/clasp/"), Paths.get("/opt/gringo/"), Paths.get("/opt/local/gringo/"),
			Paths.get("/opt/local/clasp/"), Paths.get("C:\\Gringo\\"), Paths.get("C:\\Clasp\\") };
	private static final Path ROOT = Paths.get(".").toAbsolutePath().getRoot().normalize();

	private static final ExecutorService service = Executors.newSingleThreadExecutor();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Config.Builder builder = new Config.Builder();
		if (null == args)
			builder.missingParameter();
		else
			for (int i = 0; i < args.length; i++)
				switch (args[i]) {
					case "-a":
					case "--all":
						builder.setAll(true);
						break;
					case "-b":
					case "--blind":
						builder.setBlind(true);
						break;
					case "-c":
					case "--clasp":
						if (args.length - i <= 1)
							builder.missingParameter();
						else
							builder.setClasp(args[++i]);
						break;
					case "-d":
					case "--debug":
						builder.setDebug(true);
						break;
					case "-f":
					case "--full":
						builder.setFull(true);
						break;
					case "-g":
					case "--gringo":
						if (args.length - i <= 1)
							builder.missingParameter();
						else
							builder.setGringo(args[++i]);
						break;
					case "-h":
					case "--help":
						builder.setHelp(true);
						break;
					case "-i":
					case "--iter":
						if (args.length - i <= 1)
							builder.missingParameter();
						else
							builder.setIterations(args[++i]);
						break;
					case "-k":
					case "--kill":
						if (args.length - i <= 1)
							builder.missingParameter();
						else
							builder.setKill(args[++i]);
						break;
					case "-m":
					case "--mute":
						builder.setMute(true);
						break;
					case "-o":
					case "--output":
						builder.setOutput(true);
						break;
					case "-p":
					case "--prettify":
						builder.setPrettify(true);
						// if (args.length - i > 1) {
						// String arg = args[i + 1].trim();
						// int index = 0;
						// boolean found = true;
						// for (int p = 0; found && p < arg.length(); p++) {
						// found = Character.isDigit(arg.charAt(p));
						// if (found)
						// index = 10 * index + (arg.charAt(p) - '0');
						// }
						// if (found) {
						// builder.setIndex(index);
						// i += 1;
						// }
						// }
						break;
					case "-s":
					case "--search":
						builder.setSearch(true);
						break;
					case "-t":
					case "--terminate":
						builder.setTerminate(true);
						break;
					case "-v":
					case "--version":
						builder.setVersion(true);
						break;

					default:
						builder.addSource(args[i]);
				}
		Config config = builder.build();

		Application application = new Application(config);
		application.execute();
	}

	private final Config config;

	private final Problem problem;

	private Application(Config config) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Application(Config): " + config);
		this.config = config;

		if (config.isHelp())
			Logger.help();
		if (config.isVersion())
			Logger.version();
		Logger.header(config);
		if (!config.isPrettify()) { // || config.getIndex() > 0
			Finder finder = new Finder(" 3.", "gringo", "clasp");
			finder.test("gringo", config.getGringo());
			finder.test("clasp", config.getClasp());
			if (!finder.isFound() && config.isSearch()) {
				Logger.message("Locating needed applications...");
				boolean found = false;
				for (int i = 0; !found && i < PATHS.length; i++)
					found = finder.find(PATHS[i], false);
				if (!found)
					found = finder.find(ROOT, true);
				config.setGringo(finder.get("gringo"));
				config.setClasp(finder.get("clasp"));
				if (found)
					Logger.found(config);
			}
			if (!finder.isFound()) {
				String message = "";
				if (null == finder.get("gringo"))
					message += String.format("'gringo v3.*' needed to run %s", Logger.SIGNATURE);
				if (null == finder.get("clasp"))
					if (message.isEmpty())
						message += String.format("'clasp v3.*' needed to run %s", Logger.SIGNATURE);
					else
						message += String.format("\n*** ERROR (%s): 'clasp v3.*' needed to run %s", Logger.SIGNATURE, Logger.SIGNATURE);
				Logger.error(message);
			}
		}

		Problem.Builder problem = new Problem.Builder(config);
		if (config.hasSources())
			for (Path path : config.getSources()) {
				Logger.message(String.format("Reading from '%s'...", path.toString()));
				problem.parse(path);
			}
		else {
			Logger.message("Reading from 'stdin'...");
			problem.parse(System.in);
		}
		this.problem = problem.build();
		Answers.loaded();
	}

	@Override
	public Answers call() throws Exception {
		Logger.message("\nSolving...\n");
		return problem.solve();
	}

	/**
	 * 
	 */
	public void execute() {
		if (config.isPrettify()) {
			System.out.println();
			Utils.dump(problem, System.err);
			// int index = config.getIndex();
			// switch (index) {
			// case -1:
			// Utils.dump(problem, System.err);
			// break;
			// case 0:
			// Utils.save(problem, System.err);
			// break;
			// default:
			// Dialler dialer = new Dialler.Builder(config, problem).build();
			// String[] outputs = dialer.execute().getValue().toArray(new
			// String[0]);
			// if (index <= outputs.length)
			// Utils.save(new
			// Grounding.Builder(problem).addAtoms(Parser.parseAnswer(outputs[index
			// - 1])).build(), System.err);
			// else
			// Logger.message(String.format("*** Info  (%s): no such inductive phase for this problem",
			// Logger.SIGNATURE));
			// }
		} else {
			long kill = config.getKill();
			try {
				final Future<Answers> task = service.submit(this);
				Answers answers = kill > 0L ? task.get(kill, TimeUnit.SECONDS) : task.get();
				Logger.stamp(answers);
			} catch (CancellationException e) {
				Logger.message(String.format("*** Info  (%s): computation was cancelled", Logger.SIGNATURE));
			} catch (ExecutionException e) {
				Logger.message(String.format("*** Info  (%s): computation threw an exception", Logger.SIGNATURE));
			} catch (InterruptedException e) {
				Logger.message(String.format("*** Info  (%s): current thread was interrupted while waiting", Logger.SIGNATURE));
			} catch (TimeoutException e) {
				Logger.message(String.format("*** Info  (%s): solving interrupted after %d second/s", Logger.SIGNATURE, kill));
				if (config.isOutput()) {
					System.out.println("Problem,Answers,Calls,Loading,Abduction,Deduction,Induction,Wall");
					System.err.format("interrupted,%d,%d,%.3f,%.3f,%.3f,%.3f,%.3f\n", problem.count(), Dialler.calls(), //
							Answers.getLoading(), Answers.getAbduction(), Answers.getDeduction(), Answers.getInduction(), kill * 1.0);
				}
			} catch (final Exception e) {
				// If something independent by our will happens...
				String message = "unexpected runtime error:\n  " + e.getMessage();
				for (StackTraceElement element : e.getStackTrace())
					message += "\n    " + element.toString();
				Logger.error(message);
			} finally {
				service.shutdownNow();
			}
		}
	}
}
