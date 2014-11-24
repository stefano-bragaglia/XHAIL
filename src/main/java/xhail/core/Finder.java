/**
 * 
 */
package xhail.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * @author stefano
 *
 */
public class Finder {

	private static class Walker implements FileVisitor<Path> {

		private static final EnumSet<FileVisitOption> OPTIONS = EnumSet.of(FileVisitOption.FOLLOW_LINKS);

		private final Map<String, PathMatcher> matchers;

		private Map<String, Path> results;

		private final String version;

		private Walker(String version, String... apps) {
			if (null == version || (version = version.trim()).isEmpty())
				throw new IllegalArgumentException("Illegal 'version' argument in Finder.Walker(String, String...): " + version);
			if (null == apps)
				throw new IllegalArgumentException("Illegal 'apps' argument in Finder.Walker(String, String...): " + apps);
			this.matchers = new HashMap<>();
			for (String app : apps)
				this.matchers.put(app, FileSystems.getDefault().getPathMatcher("glob:{" + app + "," + app + ".exe}"));
			this.results = new HashMap<>();
			this.version = version;
		}

		private boolean recurse;

		public boolean find(Path path, boolean recurse) {
			try {
				this.recurse = recurse;
				Files.walkFileTree(path, OPTIONS, Integer.MAX_VALUE, this);
				return results.size() == matchers.size();
			} catch (IOException e) {
				// System.err.println(e);
				return false;
			}
		}

		@Override
		public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
			Objects.nonNull(dir);
			// if (null != exc)
			// throw exc;
			return recurse ? FileVisitResult.CONTINUE : FileVisitResult.SKIP_SUBTREE;
		}

		@Override
		public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
			Objects.nonNull(dir);
			Objects.nonNull(attrs);
			return FileVisitResult.CONTINUE;
		}

		@Override
		public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
			Objects.nonNull(file);
			Objects.nonNull(attrs);
			Path found = file.getFileName();
			for (String name : matchers.keySet())
				if (!results.containsKey(name)) {
					PathMatcher matcher = matchers.get(name);
					if (null != found && matcher.matches(found) && Files.isExecutable(file) && check(file, name, version)) {
						results.put(name, file);
						if (results.size() == matchers.size())
							return FileVisitResult.TERMINATE;
					}
				}
			return FileVisitResult.CONTINUE;
		}

		@Override
		public FileVisitResult visitFileFailed(Path file, IOException exc) throws IOException {
			Objects.nonNull(file);
			// if (null != exc)
			// throw exc;
			return FileVisitResult.CONTINUE;
		}

	}

	public static boolean check(Path executable, String... match) {
		if (null == executable || Files.notExists(executable) || !Files.isExecutable(executable))
			return false;
		if (null == match || String.join(" ", match).trim().isEmpty())
			return false;
		try {
			String[] command = combine(executable, "--version");
			ProcessBuilder builder = new ProcessBuilder(command);
			Process process = builder.start();
			process.waitFor();

			String line;
			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			while (null != (line = reader.readLine())) {
				line = line.toLowerCase();
				int pos = 0;
				for (String pattern : match) {
					pos = line.indexOf(pattern, pos);
					if (pos > -1)
						pos += pattern.length();
				}
				if (pos > -1)
					return true;
			}
			return false;
		} catch (IOException | InterruptedException e) {
			return false;
		}
	}

	public static String[] combine(Path executable, String... args) {
		String[] result = new String[1 + args.length];
		result[0] = executable.toString();
		for (int i = 0; i < args.length; i++)
			result[1 + i] = args[i];
		return result;
	}

	private Walker walker;

	public Finder(String version, String... apps) {
		if (null == version || (version = version.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'version' argument in Finder(String, String...): " + version);
		if (null == apps)
			throw new IllegalArgumentException("Illegal 'apps' argument in Finder(String, String...): " + apps);
		this.walker = new Walker(version, apps);
	}

	public boolean find(Path path, boolean recurse) {
		boolean result = isFound();
		if (!result && null != path && Files.exists(path))
			result = walker.find(path, recurse);
		return result;
	}

	public Path get(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Finder.get(String): " + name);
		return walker.results.get(name);
	}

	public boolean isFound() {
		return walker.results.size() == walker.matchers.size();
	}

	public boolean test(String name, Path file) {
		if (null == name || (name = name.trim()).isEmpty() || !walker.matchers.containsKey(name))
			throw new IllegalArgumentException("Illegal 'name' argument in Finder.test(String, Path): " + name);
		boolean result = walker.results.containsKey(name);
		if (!result && null != file) {
			Path found = file.getFileName();
			if (null != found && walker.matchers.get(name).matches(found) && Files.isExecutable(file) && check(file, name, walker.version)) {
				walker.results.put(name, file);
				result = true;
			}
		}
		return result;
	}

}