/**
 * 
 */
package xhail.core.entities;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Dialer;
import xhail.core.Logger;
import xhail.core.Utils;
import xhail.core.parser.InputStates;
import xhail.core.parser.Parser;
import xhail.core.parser.Splitter;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Clause;
import xhail.core.terms.Placemarker;
import xhail.core.terms.Scheme;

/**
 * @author stefano
 *
 */
public class Problem implements Solvable {

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
			for (String statement : new Splitter(InputStates.INITIAL).parse(stream))
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

	private final String[] background;

	private final Config config;

	private final Display[] displays;

	private final Example[] examples;

	private final ModeB[] modeBs;

	private final ModeH[] modeHs;

	private Set<String> refinements = new HashSet<>();

	private Problem(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Problem(Problem.Builder): " + builder);
		this.background = builder.background.toArray(new String[builder.background.size()]);
		this.config = builder.config;
		this.displays = builder.displays.toArray(new Display[builder.displays.size()]);
		this.examples = builder.examples.toArray(new Example[builder.examples.size()]);
		this.modeBs = builder.modeBs.toArray(new ModeB[builder.modeBs.size()]);
		this.modeHs = builder.modeHs.toArray(new ModeH[builder.modeHs.size()]);
	}

	// public final void addRefinement(String refinement) {
	// if (null == refinement || (refinement = refinement.trim()).isEmpty())
	// throw new
	// IllegalArgumentException("Illegal 'refinement' argument in Problem.addRefinement(String): "
	// + refinement);
	// refinements.add(refinement);
	// }

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Problem other = (Problem) obj;
		if (!Arrays.equals(background, other.background))
			return false;
		if (config == null) {
			if (other.config != null)
				return false;
		} else if (!config.equals(other.config))
			return false;
		if (!Arrays.equals(displays, other.displays))
			return false;
		if (!Arrays.equals(examples, other.examples))
			return false;
		if (!Arrays.equals(modeBs, other.modeBs))
			return false;
		if (!Arrays.equals(modeHs, other.modeHs))
			return false;
		if (refinements == null) {
			if (other.refinements != null)
				return false;
		} else if (!refinements.equals(other.refinements))
			return false;
		return true;
	}

	public final String[] getBackground() {
		return background;
	}

	public final Config getConfig() {
		return config;
	}

	public final Display[] getDisplays() {
		return displays;
	}

	public final Example[] getExamples() {
		return examples;
	}

	public final Collection<String> getFilters() {
		Set<String> result = new TreeSet<>();
		result.add("#hide.");
		result.add("#show display_fact/1.");
		result.add("#show covered_example/2.");
		// result.add("#show number_abduced/1.");
		result.add("#show uncovered_example/2.");
		// result.add("#show use_clause_literal/2.");
		for (ModeH mode : modeHs) {
			Scheme scheme = mode.getScheme();
			result.add(String.format("#show %s/%d.", scheme.getIdentifier(), scheme.getArity()));
			result.add(String.format("#show abduced_%s/%d.", scheme.getIdentifier(), scheme.getArity()));
			for (Placemarker placemarker : scheme.getPlacemarkers())
				result.add(String.format("#show %s/1.", placemarker.getIdentifier()));
		}
		for (ModeB mode : modeBs) {
			Scheme scheme = mode.getScheme();
			result.add(String.format("#show %s/%d.", scheme.getIdentifier(), scheme.getArity()));
			for (Placemarker placemarker : scheme.getPlacemarkers())
				result.add(String.format("#show %s/1.", placemarker.getIdentifier()));
		}
		return result;
	}

	public final ModeB[] getModeBs() {
		return modeBs;
	}

	public final ModeH[] getModeHs() {
		return modeHs;
	}

	public final Collection<String> getRefinements() {
		return refinements;
	}

	public final boolean hasBackground() {
		return background.length > 0;
	}

	public final boolean hasDisplays() {
		return displays.length > 0;
	}

	public final boolean hasExamples() {
		return examples.length > 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(background);
		result = prime * result + ((config == null) ? 0 : config.hashCode());
		result = prime * result + Arrays.hashCode(displays);
		result = prime * result + Arrays.hashCode(examples);
		result = prime * result + Arrays.hashCode(modeBs);
		result = prime * result + Arrays.hashCode(modeHs);
		result = prime * result + ((refinements == null) ? 0 : refinements.hashCode());
		return result;
	}

	public final boolean hasModes() {
		return modeBs.length > 0 || modeHs.length > 0;
	}

	@Override
	public boolean save(OutputStream stream) {
		return Utils.save(this, stream);
	}

	public final Answers solve() {
		Answers.Builder builder = new Answers.Builder(config);
		if (background.length > 0 || examples.length > 0 || modeHs.length > 0 || modeBs.length > 0) {
			int it = 0;
			Set<Clause[]> kernels = new HashSet<>();

			while (builder.isEmpty() && it <= config.getIterations()) {

				Values values = new Values();
				Dialer dialer = new Dialer.Builder(config, this).build();
				Map.Entry<Values, Collection<String>> entry = Answers.timeAbduction(dialer);
				for (String output : entry.getValue()) {
					Grounding grounding = Answers.timeDeduction(this, output);
					Clause[] kernel = grounding.getKernel();
					if (!kernels.contains(kernel)) {
						values = grounding.solve(values, builder);
						// always add refinements, hopefully it won't be used!
						refinements.add(grounding.asBadSolution());
						kernels.add(kernel);
					}

				}

				it += 1;
			}
			if (builder.isEmpty() && it <= config.getIterations()) {
				Logger.message("No answers, try more iterations (--iter,-i <num>)");
			}
		}
		return builder.build();
	}

	@Override
	public String toString() {
		return "Problem [\n  background=" + Arrays.toString(background) + ",\n  config=" + config + ",\n  displays=" + Arrays.toString(displays)
				+ ",\n  examples=" + Arrays.toString(examples) + ",\n  modeBs=" + Arrays.toString(modeBs) + ",\n  modeHs=" + Arrays.toString(modeHs) + "\n]";
	}

}
