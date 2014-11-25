/**
 * 
 */
package xhail.core.entities;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import xhail.Application;
import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Logger;
import xhail.core.Utils;
import xhail.core.parser.InputStates;
import xhail.core.parser.Parser;
import xhail.core.parser.Splitter;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;

/**
 * @author stefano
 *
 */
public class Problem {

	public static class Builder implements Buildable<Problem> {

		private Set<String> background = new LinkedHashSet<>();

		private Config config;

		private Set<Display> displays = new LinkedHashSet<>();

		private Set<Example> examples = new LinkedHashSet<>();

		private Set<ModeB> modeBs = new LinkedHashSet<>();

		private Set<ModeH> modeHs = new LinkedHashSet<>();

		public Builder(Config config) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Problem.Builder(Config): " + config);
			this.config = config;
		}

		public Builder addBackground(String statement) {
			if (null != statement) {
				statement = statement.trim();
				if (statement.startsWith("#compute"))
					Logger.warning(config.isMute(), "'#compute' statements are not supported and will be ignored");
				else if (statement.startsWith("#hide"))
					Logger.warning(config.isMute(), "'#hide' statements are not supported and will be ignored");
				else if (statement.startsWith("#show"))
					Logger.warning(config.isMute(), "'#show' statements are not supported and will be ignored");
				else if (statement.startsWith("#display") && statement.endsWith(".")) {
					addDisplay(Parser.parseDisplay(statement.substring("#display".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#example") && statement.endsWith(".")) {
					addExample(Parser.parseExample(statement.substring("#example".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#modeb") && statement.endsWith(".")) {
					addMode(Parser.parseModeB(statement.substring("#modeb".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#modeh") && statement.endsWith(".")) {
					addMode(Parser.parseModeH(statement.substring("#modeh".length(), statement.length() - 1).trim()));
				} else
					background.add(statement);
			}
			return this;
		}

		public Builder addDisplay(Display display) {
			if (null == display)
				throw new IllegalArgumentException("Illegal 'display' argument in Problem.Builder.addDisplay(Display): " + display);
			this.displays.add(display);
			return this;
		}

		public Builder addExample(Example example) {
			if (null != example)
				examples.add(example);
			return this;
		}

		public Builder addMode(ModeB mode) {
			if (null != mode)
				modeBs.add(mode);
			return this;
		}

		public Builder addMode(ModeH mode) {
			if (null != mode)
				modeHs.add(mode);
			return this;
		}

		@Override
		public Problem build() {
			return new Problem(this);
		}

		public Builder clear() {
			this.background.clear();
			this.displays.clear();
			this.examples.clear();
			this.modeBs.clear();
			this.modeHs.clear();
			return this;
		}

		public Builder clearDisplay() {
			this.displays.clear();
			return this;
		}

		public Builder clearExamples() {
			this.examples.clear();
			return this;
		}

		public Builder clearModeBs() {
			this.modeBs.clear();
			return this;
		}

		public Builder clearModeHs() {
			this.modeHs.clear();
			return this;
		}

		public Builder parse(InputStream stream) {
			if (null == stream)
				throw new IllegalArgumentException("Illegal 'stream' argument in Problem.Builder.parse(InputStream): " + stream);
			for (String statement : new Splitter(InputStates.NORMAL).parse(stream))
				addBackground(statement);
			return this;
		}

		public Builder parse(Path path) {
			if (null == path)
				throw new IllegalArgumentException("Illegal 'path' argument in Problem.Builder.parse(Path): " + path);
			try {
				parse(new FileInputStream(path.toFile()));
			} catch (FileNotFoundException e) {
				Logger.error("cannot find file '" + path.getFileName().toString() + "'");
			}
			return this;
		}

		public Builder removeBackground(String statement) {
			if (null != statement) {
				statement = statement.trim();
				if (statement.startsWith("#compute")) {
				} else if (statement.startsWith("#hide")) {
				} else if (statement.startsWith("#show")) {
				} else if (statement.startsWith("#display") && statement.endsWith(".")) {
					removeDisplay(Parser.parseDisplay(statement.substring("#display".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#example") && statement.endsWith(".")) {
					removeExample(Parser.parseExample(statement.substring("#example".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#modeb") && statement.endsWith(".")) {
					removeMode(Parser.parseModeB(statement.substring("#modeb".length(), statement.length() - 1).trim()));
				} else if (statement.startsWith("#modeh") && statement.endsWith(".")) {
					removeMode(Parser.parseModeH(statement.substring("#modeh".length(), statement.length() - 1).trim()));
				} else
					background.remove(statement);
			}
			return this;
		}

		public Builder removeDisplay(Display display) {
			if (null == display)
				throw new IllegalArgumentException("Illegal 'display' argument in Problem.Builder.removeDisplay(Display): " + display);
			this.displays.remove(display);
			return this;
		}

		public Builder removeExample(Example example) {
			if (null != example)
				examples.remove(example);
			return this;
		}

		public Builder removeMode(ModeB mode) {
			if (null != mode)
				modeBs.remove(mode);
			return this;
		}

		public Builder removeMode(ModeH mode) {
			if (null != mode)
				modeHs.remove(mode);
			return this;
		}

	}

	private final Set<String> background;

	private final Config config;

	private final Set<Display> displays;

	private final Set<Example> examples;

	private final Set<ModeB> modeBs;

	private final Set<ModeH> modeHs;

	private Problem(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Problem(Problem.Builder): " + builder);
		this.background = new LinkedHashSet<>(builder.background);
		this.config = builder.config;
		this.displays = new LinkedHashSet<>(builder.displays);
		this.examples = new LinkedHashSet<>(builder.examples);
		this.modeBs = new LinkedHashSet<>(builder.modeBs);
		this.modeHs = new LinkedHashSet<>(builder.modeHs);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Problem other = (Problem) obj;
		if (background == null) {
			if (other.background != null)
				return false;
		} else if (!background.equals(other.background))
			return false;
		if (displays == null) {
			if (other.displays != null)
				return false;
		} else if (!displays.equals(other.displays))
			return false;
		if (examples == null) {
			if (other.examples != null)
				return false;
		} else if (!examples.equals(other.examples))
			return false;
		if (modeBs == null) {
			if (other.modeBs != null)
				return false;
		} else if (!modeBs.equals(other.modeBs))
			return false;
		if (modeHs == null) {
			if (other.modeHs != null)
				return false;
		} else if (!modeHs.equals(other.modeHs))
			return false;
		return true;
	}

	public Collection<String> getBackground() {
		return background;
	}

	public final Config getConfig() {
		return config;
	}

	public Collection<Display> getDisplays() {
		return displays;
	}

	public Collection<Example> getExamples() {
		return examples;
	}

	public Collection<ModeB> getModeBs() {
		return modeBs;
	}

	public Collection<ModeH> getModeHs() {
		return modeHs;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((background == null) ? 0 : background.hashCode());
		result = prime * result + ((displays == null) ? 0 : displays.hashCode());
		result = prime * result + ((examples == null) ? 0 : examples.hashCode());
		result = prime * result + ((modeBs == null) ? 0 : modeBs.hashCode());
		result = prime * result + ((modeHs == null) ? 0 : modeHs.hashCode());
		return result;
	}

	public final Answers solve() {
		int i = 1;
		long time;
		Answers.Builder result = new Answers.Builder(config);
		if (config.isDebug())
			Utils.save(Paths.get(config.getName() + "_0_abd.lp"), Utils.toString(this));
		// 1. Run the abductive + deductive phases
		time = System.nanoTime();
		Solution abdPhase = new Solution.Builder(config).parse(this).build();
		result.addAbduction(System.nanoTime() - time);
		for (Set<Atom> abdAtoms : abdPhase.getAnswers()) {
			// 2. For each grounding (or best answer for phase), start to build
			// an answer
			Grounding grounding = new Grounding.Builder(this).addAtoms(abdAtoms).build();
			Answer.Builder builder = new Answer.Builder(grounding);
			if (config.isDebug())
				Utils.save(Paths.get(config.getName() + "_" + i++ + "_ind.lp"), Utils.toString(grounding));
			// 3. If the grounding has no generalised clauses
			time = System.nanoTime();
			grounding.getGeneralisation();
			result.addDeduction(System.nanoTime() - time);
			if (!grounding.isInducible()) {
				// 3a. Append the grounding as an answer
				result.addAnswer(builder.build());
				if (Application.answer < 0)
					Application.answer = System.nanoTime();
			} else {
				// 3b. Run the inductive phases
				time = System.nanoTime();
				Solution indPhase = new Solution.Builder(config).parse(grounding).build();
				result.addInduction(System.nanoTime() - time);
				for (Set<Atom> indAtoms : indPhase.getAnswers()) {
					// 4. For each hypothesis (or best answer for phase),
					// complete the answer
					Hypothesis hypothesis = new Hypothesis.Builder(grounding).addAtoms(indAtoms).build();
					// 5. Append the grounding + hypothesis as an answer
					result.addAnswer(builder.clone().setHypothesis(hypothesis).build());
					if (Application.answer < 0)
						Application.answer = System.nanoTime();
				}
			}
			// NB: 'Answers' organises answers and only show the optimal ones
		}
		return result.build();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		if (displays.size() > 0) {
			for (Display display : displays)
				builder.append(String.format("%s\n", display.toString()));
			builder.append("\n");
		}
		if (background.size() > 0) {
			builder.append("%% B. Background\n");
			for (String statement : background)
				builder.append(String.format("%s\n", statement));
			builder.append("\n");
		}
		if (examples.size() > 0) {
			builder.append("%% E. Examples\n");
			for (Example example : examples)
				builder.append(String.format("%s\n", example));
			builder.append("\n");
		}
		if (modeHs.size() > 0 || modeBs.size() > 0) {
			builder.append("%% M. Modes\n");
			for (ModeH mode : modeHs)
				builder.append(String.format("%s\n", mode));
			for (ModeB mode : modeBs)
				builder.append(String.format("%s\n", mode));
			builder.append("\n");
		}
		return builder.toString();
	}

}
