/**
 * 
 */
package xhail.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import xhail.core.entities.Grounding;
import xhail.core.entities.Problem;
import xhail.core.entities.Solvable;
import xhail.core.entities.Values;

/**
 * @author stefano
 *
 */
public class Dialer {

	public static class Builder implements Buildable<Dialer> {

		private Config config;

		private Path path = null;

		private Solvable solvable;

		private Values values;

		public Builder(Config config, Grounding grounding) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Dialer.Builder(Config, Grounding): " + config);
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Dialer.Builder(Config, Grounding): " + grounding);
			this.config = config;
			this.solvable = grounding;
		}

		public Builder(Config config, Grounding grounding, Values values) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Dialer.Builder(Config, Grounding, Values): " + config);
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Dialer.Builder(Config, Grounding, Values): " + grounding);
			if (null == values)
				throw new IllegalArgumentException("Illegal 'values' argument in Dialer.Builder(Config, Grounding, Values): " + values);
			this.config = config;
			this.solvable = grounding;
			this.values = values;
		}

		public Builder(Config config, Problem problem) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Dialer.Builder(Config, Problem): " + config);
			if (null == problem)
				throw new IllegalArgumentException("Illegal 'problem' argument in Dialer.Builder(Config, Problem): " + problem);
			this.config = config;
			this.solvable = problem;
		}

		@Override
		public Dialer build() {
			try {
				this.path = Files.createTempFile("xhail", ".tmp");
				this.path.toFile().deleteOnExit();
			} catch (Exception e) {
				Logger.error("cannot send data to processes");
			}
			return new Dialer(this);
		}

	}

	private static class ErrorHandler implements Runnable {

		private static final String ERROR = "ERROR: ";

		private static final String WARNING = "% warning: ";

		private final boolean mute;

		private final InputStream stream;

		public ErrorHandler(InputStream stream, boolean mute) {
			if (null == stream)
				throw new IllegalArgumentException("Illegal 'stream' argument in Dialer.ErrorHandler.ErrorStuff(InputStream, boolean): " + stream);
			this.mute = mute;
			this.stream = stream;
		}

		@Override
		public void run() {
			String line;
			String message = "";
			try {
				BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
				while (null != (line = reader.readLine())) {
					line = line.trim();
					if (!line.isEmpty()) {
						if (!message.isEmpty())
							message += "\n  " + line;
						else if (line.startsWith(ERROR))
							message = line.substring(ERROR.length());
						else if (line.startsWith(WARNING))
							Logger.warning(mute, line.substring(WARNING.length()));
						else
							System.err.println(line);
					}
				}
				reader.close();
			} catch (IOException e) {
				Logger.error("cannot read from child process' 'stderr'");
			}
			if (!message.isEmpty())
				Logger.error(message);
		}

	}

	private static class OutputHandler implements Callable<Map.Entry<Values, Collection<String>>> {

		private static final String OPTIMIZATION = "Optimization: ";

		private static final String OPTIMUM_FOUND = "SATISFIABLE";

		private static final String SATISFIABLE = "OPTIMUM FOUND";

		private static final String UNKNOWN = "UNKNOWN";

		private static final String UNSATISFIABLE = "UNSATISFIABLE";

		private final InputStream stream;

		public OutputHandler(InputStream stream) {
			if (null == stream)
				throw new IllegalArgumentException("Illegal 'stream' argument in Dialer.OutputHandler.OutputHandler(InputStream): " + stream);
			this.stream = stream;
		}

		@Override
		public Map.Entry<Values, Collection<String>> call() throws Exception {
			Set<String> set = new LinkedHashSet<>();
			String answer = null;
			Values values = new Values();
			try {
				String line;
				BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
				while (null != (line = reader.readLine())) {
					line = line.trim();
					if (line.equals(OPTIMUM_FOUND) || line.equals(SATISFIABLE))
						break;
					if (line.equals(UNKNOWN) || line.equals(UNSATISFIABLE)) {
//						System.out.println(String.format("\n*** Info  (%s): %s problem", Logger.SIGNATURE, line));
//						System.exit(0);
						break;
					}
					if (line.startsWith(OPTIMIZATION)) {
						Values current = new Values(line.substring(OPTIMIZATION.length()));
						if (null == values || !values.equals(current)) {
							set.clear();
							values = current;
						}
						if (null != answer) {
							set.add(answer);
							answer = null;
						}
					} else
						answer = line;
					// answer = new Splitter(OutputStates.INITIAL).parse(new
					// ByteArrayInputStream(line.getBytes()));
				}
				if (null != answer)
					set.add(answer);
				reader.close();
			} catch (IOException e) {
				Logger.error("cannot read from child process' 'stdout'");
			}
			return new AbstractMap.SimpleEntry<Values, Collection<String>>(values, set);
		}

	}

	private static int calls = 0;

	public static final int calls() {
		return calls;
	}

	private final String[] clasp;

	private final String[] gringo;

	private final boolean mute;

	private final boolean debug;

	private final Path path;

	private final Solvable solvable;

	private Dialer(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Dialer(Byprocess.Builder): " + builder);
		this.clasp = new String[null == builder.values ? 3 : 4];
		this.clasp[0] = builder.config.getClasp().toAbsolutePath().toString();
		this.clasp[1] = "--verbose=0";
		this.clasp[2] = "--opt-mode=optN";
		if (null != builder.values)
			this.clasp[3] = "--opt-bound=" + builder.values.toString();
		this.debug = builder.config.isDebug();
		this.gringo = new String[2];
		this.gringo[0] = builder.config.getGringo().toAbsolutePath().toString();
		this.gringo[1] = builder.path.toAbsolutePath().toString();
		this.mute = builder.config.isMute();
		this.path = builder.path;
		this.solvable = builder.solvable;
	}

	public Map.Entry<Values, Collection<String>> execute() {
		Map.Entry<Values, Collection<String>> result = new AbstractMap.SimpleEntry<Values, Collection<String>>(null, Collections.emptySet());
		try {
			calls += 1;
			if (debug)
				Logger.message(String.format("Calling: %s %s | %s %s %s%s", gringo[0], gringo[1], //
						clasp[0], clasp[1], clasp[2], clasp.length > 3 ? " " + clasp[3] : ""));
			OutputStream stream = Files.newOutputStream(path);
			solvable.save(stream);
			try {
				Process gringo = new ProcessBuilder(this.gringo).start();
				try {
					Process clasp = new ProcessBuilder(this.clasp).start();
					try {
						Pipe pipe = new Pipe(gringo, clasp);
						new Thread(pipe).start();
						clasp.waitFor();
						final ExecutorService service = Executors.newFixedThreadPool(2);
						try {
							try {
								service.submit(new ErrorHandler(clasp.getErrorStream(), mute)).get();
							} catch (Exception e) {
								Logger.error("cannot access child process' 'stderr'");
								// } catch (CancellationException e) {
								// } catch (ExecutionException e) {
								// } catch (InterruptedException e) {
								// } catch (NullPointerException e) {
								// } catch (RejectedExecutionException e) {
							}
							try {
								result = service.submit(new OutputHandler(clasp.getInputStream())).get();
							} catch (Exception e) {
								Logger.error("cannot access child process' 'stdout'");
								// } catch (CancellationException e) {
								// } catch (ExecutionException e) {
								// } catch (InterruptedException e) {
								// } catch (NullPointerException e) {
								// } catch (RejectedExecutionException e) {
							}
						} finally {
							service.shutdownNow();
						}
					} catch (IllegalThreadStateException | InterruptedException e) {
						Logger.error("broken pipe among 'gringo' and 'clasp'");
					}
				} catch (IOException e) {
					Logger.error("cannot instantiate the 'clasp' process");
				}
			} catch (IOException e) {
				Logger.error("cannot instantiate the 'gringo' process");
			}
		} catch (Exception e) {
			Logger.error("cannot send data to processes");
		}
		return result;
	}

}
