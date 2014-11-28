/**
 * 
 */
package xhail.core;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedHashSet;

/**
 * @author stefano
 *
 */
public class Config {

	public static class Builder implements Buildable<Config> {

		private boolean all = false;
		private boolean blind = false;
		private Path clasp = null;
		private boolean debug = false;
		String errors = "";
		private boolean full = false;
		private Path gringo = null;
		private boolean help = false;
		private int index = -1;
		private long kill = 0L;
		private boolean mute = false;
		private boolean prettify = false;
		private boolean search = false;
		private LinkedHashSet<Path> sources = new LinkedHashSet<>();

		private boolean version = false;

		public Builder addSource(String source) {
			if (null == source)
				throw new IllegalArgumentException("Illegal 'source' argument in Application.Builder.addSource(Path): " + source);
			Path temp = Paths.get(source);
			if (Files.exists(temp) && !Files.isDirectory(temp))
				sources.add(temp);
			else if (Files.isReadable(temp))
				errors += String.format("  file '%s' cannot be accessed\n", source);
			else
				errors += String.format("  unknown argument '%s'\n", source);
			return this;
		}

		@Override
		public Config build() {
			if (!errors.isEmpty())
				Logger.error("errors found:\n" + errors);
			return new Config(this);
		}

		public Builder clearSources() {
			sources.clear();
			return this;
		}

		public Builder missingParameter() {
			errors += "  a parameter is missing on the command line\n";
			return this;
		}

		public Builder removeSource(String source) {
			if (null == source)
				throw new IllegalArgumentException("Illegal 'source' argument in Application.Builder.removeSource(Path): " + source);
			sources.remove(Paths.get(source));
			return this;
		}

		public Builder setAll(boolean all) {
			this.all = all;
			return this;
		}

		public Builder setBlind(boolean blind) {
			this.blind = blind;
			return this;
		}

		public Builder setClasp(String clasp) {
			if (null == clasp || (clasp = clasp.trim()).isEmpty())
				throw new IllegalArgumentException("Illegal 'clasp' argument in Application.Builder.setClasp(String): " + clasp);
			this.clasp = Paths.get(clasp);
			return this;
		}

		public Builder setDebug(boolean debug) {
			this.debug = debug;
			return this;
		}

		public Builder setFull(boolean full) {
			this.full = full;
			return this;
		}

		public Builder setGringo(String gringo) {
			if (null == gringo || (gringo = gringo.trim()).isEmpty())
				throw new IllegalArgumentException("Illegal 'gringo' argument in Application.Builder.setGringo(String): " + gringo);
			this.gringo = Paths.get(gringo);
			return this;
		}

		public Builder setHelp(boolean help) {
			this.help = help;
			return this;
		}

		public Builder setIndex(int index) {
			this.index = index < -1 ? -1 : index;
			return this;
		}

		public Builder setKill(String kill) {
			try {
				this.kill = Long.parseUnsignedLong(kill);
			} catch (NullPointerException | NumberFormatException e) {
				errors += String.format("  '%s' is not a valid amount of seconds\n", kill);
			}
			return this;
		}

		public Builder setMute(boolean mute) {
			this.mute = mute;
			return this;
		}

		public Builder setPrettify(boolean prettify) {
			this.prettify = prettify;
			return this;
		}

		public Builder setSearch(boolean search) {
			this.search = search;
			return this;
		}

		public Builder setVersion(boolean version) {
			this.version = version;
			return this;
		}

	}

	private final boolean all;

	private final boolean blind;

	private Path clasp;

	private final boolean debug;

	private final boolean full;

	private Path gringo;

	private final boolean help;

	private final int index;

	private final long kill;

	private final boolean mute;

	private final String name;

	private final boolean prettify;

	private final boolean search;

	private final Path[] sources;

	private final boolean version;

	private Config(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Application(Application.Builder): " + builder);
		this.all = builder.all;
		this.blind = builder.blind;
		this.clasp = builder.clasp;
		this.debug = builder.debug;
		this.full = builder.full;
		this.gringo = builder.gringo;
		this.index = builder.index;
		this.help = builder.help;
		this.kill = builder.kill;
		String name = "stdin";
		if (builder.sources.size() > 0) {
			name = builder.sources.iterator().next().getFileName().toString();
			int pos = name.lastIndexOf(".");
			if (pos > -1)
				name = name.substring(0, pos);
			if (name.isEmpty())
				name = "file";
		}
		this.mute = builder.mute;
		this.name = name;
		this.prettify = builder.prettify;
		this.search = builder.search;
		this.sources = builder.sources.toArray(new Path[builder.sources.size()]);
		this.version = builder.version;
	}

	public Path getClasp() {
		return clasp;
	}

	public Path getGringo() {
		return gringo;
	}

	public final int getIndex() {
		return index;
	}

	public final long getKill() {
		return kill;
	}

	public final String getName() {
		return name;
	}

	public final Path[] getSources() {
		return sources;
	}

	public final boolean hasSources() {
		return sources.length > 0;
	}

	public final boolean isAll() {
		return all;
	}

	public final boolean isBlind() {
		return blind;
	}

	public final boolean isDebug() {
		return debug;
	}

	public final boolean isFull() {
		return full;
	}

	public final boolean isHelp() {
		return help;
	}

	public final boolean isMute() {
		return mute;
	}

	public final boolean isPrettify() {
		return prettify;
	}

	public final boolean isSearch() {
		return search;
	}

	public final boolean isVersion() {
		return version;
	}

	public void setClasp(Path clasp) {
		this.clasp = clasp;
	}

	public void setGringo(Path gringo) {
		this.gringo = gringo;
	}

}
