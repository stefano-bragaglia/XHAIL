/**
 * 
 */
package xhail;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import xhail.core.Config;
import xhail.core.Finder;
import xhail.core.Logger;
import xhail.core.entities.Answers;
import xhail.core.entities.Problem;

/**
 * @author stefano
 *
 */
public class Application implements Callable<Answers> {

	/**
	 * The <code>PATHS</code> where <code>gringo</code> and <code>clasp</code>
	 * most likely are.
	 */
	private static final Path[] PATHS = { Paths.get("/Library/Gringo/"), Paths.get("/Library/Clasp/"), Paths.get("/usr/bin/gringo/"),
			Paths.get("/usr/bin/clasp/"), Paths.get("/usr/bin/"), Paths.get("/usr/local/gringo/"), Paths.get("/usr/local/clasp/"), Paths.get("/usr/local/"),
			Paths.get("C:\\Gringo\\"), Paths.get("C:\\Clasp\\") };
	private static final Path ROOT = Paths.get(".").toAbsolutePath().getRoot().normalize();

	private static final ExecutorService service = Executors.newSingleThreadExecutor();

	public static long answer = -1;

	public static long loading;

	public static long time = System.nanoTime();

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
					case "-s":
					case "--search":
						builder.setSearch(true);
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

	private final long kill;

	private final Problem problem;

	private Application(Config config) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in Application(Config): " + config);

		if (config.isHelp())
			Logger.help();
		if (config.isVersion())
			Logger.version();
		Logger.header(config);
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

		this.kill = config.getKill();
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
		loading = System.nanoTime();
	}

	@Override
	public Answers call() throws Exception {
		Logger.message("\nSolving...");
		return problem.solve();
	}

	/**
	 * 
	 */
	public void execute() {
		try {
			final Future<Answers> task = service.submit(this);
			Answers answers = kill > 0 ? task.get(kill, TimeUnit.SECONDS) : task.get();
			Logger.stampAnswers(answers);
		} catch (final TimeoutException e) {
			Logger.message(String.format("*** Info  (%s): solving interrupted after %d second/s", Logger.SIGNATURE, kill));
		} catch (final Exception e) {
			Logger.error("unexpected runtime error:\n  " + e.getMessage());
		} finally {
			service.shutdownNow();
		}
	}

}
