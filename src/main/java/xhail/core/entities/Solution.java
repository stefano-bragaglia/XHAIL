/**
 * 
 */
package xhail.core.entities;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Logger;
import xhail.core.Pipe;
import xhail.core.Utils;
import xhail.core.parser.OutputStates;
import xhail.core.parser.Parser;
import xhail.core.parser.Splitter;
import xhail.core.terms.Atom;

/**
 * @author stefano
 *
 */
public class Solution implements Iterable<Set<Atom>> {

	public static int calls = 0;

	public static class Builder implements Buildable<Solution> {

		private static final String[] ARGS = { "--opt-mode=optN", "--verbose=0" };

		private static final String ERROR = "ERROR: ";

		private static final String OPTIMIZATION = "Optimization: ";

		private static final String WARNING = "% warning: ";

		private Set<String> answer = null;

		private Set<Set<String>> answers = new HashSet<>();

		private final String[] clasp;

		private Config config;

		private final String[] gringo;

		private String[] values = new String[0];

		public Builder(Config config) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Solution.Builder(Config): " + config);
			this.config = config;
			this.clasp = Utils.combine(config.getClasp(), ARGS);
			this.gringo = Utils.combine(config.getGringo(), " ");
		}

		@Override
		public Solution build() {
			return new Solution(this);
		}

		private void handle(InputStream stream) {
			if (null == stream)
				throw new IllegalArgumentException("Illegal 'stream' argument in Solution.Builder.parse(InputStream): " + stream);
			try {
				String line;
				BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
				while (null != (line = reader.readLine())) {
					line = line.trim();
					if (line.startsWith("OPTIMUM FOUND") || line.startsWith("SATISFIABLE") || line.startsWith("UNKNOWN"))
						break;
					if (line.startsWith("UNSATISFIABLE")) {
						System.out.println(String.format("\n*** Info  (%s): UNSATISFIABLE problem", Logger.SIGNATURE));
						System.exit(0);
						break;
					}
					if (line.startsWith(OPTIMIZATION)) {
						String[] values = line.substring(OPTIMIZATION.length()).split(" ");
						if (!Arrays.equals(values, this.values)) {
							this.answers.clear();
							this.values = values;
						}
						if (null != answer) {
							this.answers.add(answer);
							this.answer = null;
						}
					} else
						this.answer = new HashSet<>(new Splitter(OutputStates.NORMAL).parse(new ByteArrayInputStream(line.getBytes())));
				}
				reader.close();
			} catch (IOException e) {
				Logger.error("cannot read from process");
			}
		}

		private void parse(String tempfile) {
			if (null == tempfile || (tempfile = tempfile.trim()).isEmpty())
				throw new IllegalArgumentException("Illegal 'name' argument in Solution.Builder.parse(String): " + tempfile);
			this.answer = null;
			this.answers.clear();
			this.values = new String[0];
			this.gringo[1] = tempfile;
			calls += 1;
			String line;
			BufferedReader reader;
			try {
				// Input
				Process gringo = new ProcessBuilder(this.gringo).start();
				try {
					Process clasp = new ProcessBuilder(this.clasp).start();
					// Pipe
					try {
						Pipe pipe = new Pipe(gringo, clasp);
						new Thread(pipe).start();
						clasp.waitFor();
						// Error
						String message = "";
						reader = new BufferedReader(new InputStreamReader(clasp.getErrorStream()));
						while (null != (line = reader.readLine())) {
							line = line.trim();
							if (!line.isEmpty()) {
								if (!message.isEmpty())
									message += "\n  " + line;
								else if (line.startsWith(ERROR))
									message = line.substring(ERROR.length());
								else if (line.startsWith(WARNING))
									Logger.warning(config.isMute(), line.substring(WARNING.length()));
								else
									System.err.println(line);
							}
						}
						if (!message.isEmpty())
							Logger.error(message);
						reader.close();
						// Output
						handle(clasp.getInputStream());
					} catch (IllegalThreadStateException | InterruptedException e) {
						Logger.error("broken pipe among 'gringo' and 'clasp'");
					}
				} catch (IOException e) {
					Logger.error("cannot instantiate the 'clasp' process");
				}
			} catch (IOException e) {
				Logger.error("cannot instantiate the 'gringo' process");
			}
		}

		public Builder parse(Grounding grounding) {
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Solution.Builder.parse(Grounding): " + grounding);
			try {
				final Path path = Files.createTempFile("xhail", ".tmp");
				path.toFile().deleteOnExit();
				Utils.save(grounding, Files.newOutputStream(path));
				parse(path.toAbsolutePath().toString());
			} catch (IOException e) {
				Logger.error("cannot send data to processes");
			}
			return this;
		}

		public Builder parse(Problem problem) {
			if (null == problem)
				throw new IllegalArgumentException("Illegal 'problem' argument in Solution.Builder.parse(Problem): " + problem);
			try {
				final Path path = Files.createTempFile("xhail", ".tmp");
				path.toFile().deleteOnExit();
				Utils.save(problem, Files.newOutputStream(path));
				parse(path.toAbsolutePath().toString());
			} catch (IOException e) {
				Logger.error("cannot send data to processes");
			}
			return this;
		}

	}

	private final LinkedHashSet<Set<Atom>> answers;

	private final Config config;

	private Solution(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Solution.Builder(Solution.Builder): " + builder);
		this.answers = new LinkedHashSet<>();
		for (Set<String> answer : builder.answers) {
			Set<Atom> set = new HashSet<>();
			for (String item : answer)
				set.addAll(Parser.parseAnswer(item));
			this.answers.add(set);
		}
		this.config = builder.config;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Solution other = (Solution) obj;
		if (answers == null) {
			if (other.answers != null)
				return false;
		} else if (!answers.equals(other.answers))
			return false;
		return true;
	}

	public final Collection<Atom> getAnswer(int index) {
		if (index < 0 || index >= answers.size())
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Solution.getAnswer(int): " + index);
		Iterator<Set<Atom>> iterator = answers.iterator();
		int pos = 0;
		Set<Atom> result = Collections.emptySet();
		while (pos < index && iterator.hasNext())
			result = iterator.next();
		return result;
	}

	public final Collection<Set<Atom>> getAnswers() {
		return answers;
	}

	public final Config getConfig() {
		return config;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answers == null) ? 0 : answers.hashCode());
		return result;
	}

	@Override
	public Iterator<Set<Atom>> iterator() {
		return answers.iterator();
	}

	public final int size() {
		return answers.size();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		int i = 1;
		for (Set<Atom> answer : answers)
			for (String line : Utils.listAtoms("Answer " + i++, answer))
				builder.append(line + "\n");
		return builder.toString();
	}

}
