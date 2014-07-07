/**
 * 
 */
package ac.bristol.bragaglia.xhail.config;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;

/**
 * @author stefano
 *
 */
public class Config {

	private static final String STDIN = "stdin";

	public static String[] combine(String command, String... args) {
		if (null == command)
			throw new IllegalArgumentException("Illegal 'command' argument in Config.combine(String, String[]): " + command);
		if (null == args)
			throw new IllegalArgumentException("Illegal 'args' argument in Config.combine(String, String[]): " + args);
		int length = 0;
		String[] result = new String[1 + args.length];
		if (!(command = command.trim()).isEmpty())
			result[length++] = command;
		for (String arg : args)
			if (!(arg = arg.trim()).isEmpty())
				result[length++] = arg;
		return Arrays.copyOf(result, length);
	}

	public static Process process(Path input, Path output, Path error, String command, String... args) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Config.process(Path, Path, Path, String, String[]): " + input);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Config.process(Path, Path, Path, String, String[]): " + output);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Config.process(Path, Path, Path, String, String[]): " + error);
		if (null == command || (command = command.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'command' argument in Config.process(Path, Path, Path, String, String[]): " + command);
		if (null == args)
			throw new IllegalArgumentException("Illegal 'args' argument in Config.process(Path, Path, Path, String, String[]): " + args);
		try {
			ProcessBuilder process = new ProcessBuilder(combine(command, args));
			process.redirectInput(input.toFile());
			process.redirectOutput(output.toFile());
			process.redirectError(Redirect.appendTo(error.toFile()));
			return process.start();
		} catch (NullPointerException | IndexOutOfBoundsException | SecurityException | IOException e) {
			return null;
		}
	}

	private Clock abducing;

	private Clock abducing_clasp;

	private Clock abducing_gringo;

	private String clasp;

	private Path current;

	// private Set<File> files;

	private boolean debug;

	private Clock deducing;

	private String gringo;

	private Clock inducing;

	private Clock inducing_clasp;

	private Clock inducing_gringo;

	private boolean mute;

	private String name;

	private Clock parsing;

	/**
	 * @param gringo
	 * @param clasp
	 * @param debug
	 * @param mute
	 */
	public Config(String gringo, String clasp, boolean debug, boolean mute) {
		File file;
		if (null == gringo || (gringo = gringo.trim()).isEmpty() || !(file = new File(gringo)).isFile() || !file.exists())
			throw new IllegalArgumentException("Illegal 'gringo' argument in Config(String, String, boolean, boolean): " + gringo);
		if (null == clasp || (clasp = clasp.trim()).isEmpty() || !(file = new File(clasp)).isFile() || !file.exists())
			throw new IllegalArgumentException("Illegal 'clasp' argument in Config(String, String, boolean, boolean): " + clasp);
		try {
			this.current = Paths.get(".").toRealPath();
		} catch (IOException | SecurityException e) {
			try {
				this.current = Files.createTempDirectory("XHAIL_").toRealPath();
			} catch (IOException | SecurityException ee) {
				this.current = Paths.get(".");
			}
		}
		this.parsing = new Clock();
		this.abducing = new Clock();
		this.abducing_clasp = new Clock();
		this.abducing_gringo = new Clock();
		this.deducing = new Clock();
		this.inducing = new Clock();
		this.inducing_clasp = new Clock();
		this.inducing_gringo = new Clock();
		this.gringo = gringo;
		this.clasp = clasp;
		this.name = STDIN;
		this.debug = debug;
		this.mute = mute;
		assert invariant() : "Illegal state in Config(String, String, boolean)";
	}

	public Path createFile(Path path, String name) {
		if (null == path)
			throw new IllegalArgumentException("Illegal 'path' argument in Config.createFile(Path, String): " + path);
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFile(Path, String): " + name);
		try {
			Path result = Paths.get(path.toString(), name);
			if (!result.toFile().exists())
				result = Files.createFile(result);
			if (!debug)
				result.toFile().deleteOnExit();
			assert invariant() : "Illegal state in Config.createFile(Path, String)";
			return result;
		} catch (UnsupportedOperationException | IOException | SecurityException e) {
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFile(Path, String): " + name);
		}
	}

	public Path createFile(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFile(String): " + name);
		Path result = createFile(current, name);
		assert invariant() : "Illegal state in Config.createFile(String)";
		return result;

	}

	public Path createFolder(Path path, String name) {
		if (null == path)
			throw new IllegalArgumentException("Illegal 'path' argument in Config.createFolder(Path, String): " + path);
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFolder(Path, String): " + name);
		try {
			Path result;
			if ("." == name)
				result = path;
			else if (".." == name)
				result = path.getParent();
			else {
				result = Paths.get(path.toString(), name);
				if (!result.toFile().exists())
					result = Files.createDirectory(result);
				if (!debug)
					result.toFile().deleteOnExit();
			}
			assert invariant() : "Illegal state in Config.createFolder(Path, String)";
			return result;
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFolder(Path, String): " + name);
		}
	}

	public Path createFolder(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFolder(String): " + name);
		Path result = createFolder(current, name);
		assert invariant() : "Illegal state in Config.createFolder(String)";
		return result;
	}

	public boolean deleteFile(Path file) {
		if (null == file)
			throw new IllegalArgumentException("Illegal 'file' argument in Config.deleteFile(Path): " + file);
		boolean result = false;
		try {
			File f = file.toFile();
			if (f.exists())
				result = f.delete();
		} catch (SecurityException e) {
			result = false;
		}
		assert invariant() : "Illegal state in Config.deleteFile(Path)";
		return result;
	}

	public Clock getAbducing() {
		assert invariant() : "Illegal state in Config.getAbducing()";
		return abducing;
	}

	public Clock getAbducingClasp() {
		assert invariant() : "Illegal state in Config.getAbducingClasp()";
		return abducing_clasp;
	}

	public Clock getAbducingGringo() {
		assert invariant() : "Illegal state in Config.getAbducingGringo()";
		return abducing_gringo;
	}

	public Path getCurrentPath() {
		assert invariant() : "Illegal state in Config.getCurrentPath()";
		return current;
	}

	public Clock getDeducing() {
		assert invariant() : "Illegal state in Config.getDeducing()";
		return deducing;
	}

	public String getFilename() {
		assert invariant() : "Illegal state in Config.getFilename()";
		return name;
	}

	public Clock getInducing() {
		assert invariant() : "Illegal state in Config.getInducing()";
		return inducing;
	}

	public Clock getInducingClasp() {
		assert invariant() : "Illegal state in Config.getInducingClasp()";
		return inducing_clasp;
	}

	public Clock getInducingGringo() {
		assert invariant() : "Illegal state in Config.getInducingGringo()";
		return inducing_gringo;
	}

	public Clock getParsing() {
		assert invariant() : "Illegal state in Config.getParsing()";
		return parsing;
	}

	private boolean invariant() {
		File file;
		return (null != abducing && null != abducing_clasp && null != abducing_gringo && null != clasp && !clasp.isEmpty() && (file = new File(clasp)).isFile()
				&& file.exists() && null != current && null != deducing && null != gringo && !gringo.isEmpty() && (file = new File(gringo)).isFile()
				&& file.exists() && null != inducing && null != inducing_clasp && null != inducing_gringo && null != name && !name.isEmpty() && null != parsing);
	}

	public boolean isDebug() {
		assert invariant() : "Illegal state in Config.isDebug()";
		return debug;
	}

	public boolean isMute() {
		assert invariant() : "Illegal state in Config.isMute()";
		return mute;
	}

	public Path overwriteFile(Path path, String name) {
		if (null == path)
			throw new IllegalArgumentException("Illegal 'path' argument in Config.overwriteFile(Path, String): " + path);
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.overwriteFile(Path, String): " + name);
		try {
			Path result = Paths.get(path.toString(), name);
			if (result.toFile().exists())
				result.toFile().delete();
			result = Files.createFile(result);
			if (!debug)
				result.toFile().deleteOnExit();
			assert invariant() : "Illegal state in Config.overwriteFile(Path, String)";
			return result;
		} catch (UnsupportedOperationException | IOException | SecurityException e) {
			throw new IllegalArgumentException("Illegal 'name' argument in Config.overwriteFile(Path, String): " + name);
		}
	}

	public Path overwriteFile(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.createFile(String): " + name);
		Path result = overwriteFile(current, name);
		assert invariant() : "Illegal state in Config.createFile(String)";
		return result;
	}

	public Process runClasp(Path input, Path output, Path error) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Config.runClasp(Path, Path, Path): " + input);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Config.runClasp(Path, Path, Path): " + output);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Config.runClasp(Path, Path, Path): " + error);
		Process result = process(input, output, error, clasp, "--opt-mode=optN");
		assert invariant() : "Illegal state in Config.runClasp(Path, Path, Path)";
		return result;
	}

	public Process runGringo(Path input, Path output, Path error) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Config.runGringo(Path, Path, Path): " + input);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Config.runGringo(Path, Path, Path): " + output);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Config.runGringo(Path, Path, Path): " + error);
		Process result = process(input, output, error, gringo);
		assert invariant() : "Illegal state in Config.runGringo(Path, Path, Path)";
		return result;
	}

	public Process runGringoT(Path input, Path output, Path error) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Config.runGringo(Path, Path, Path): " + input);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Config.runGringo(Path, Path, Path): " + output);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Config.runGringo(Path, Path, Path): " + error);
		Process result = process(input, output, error, gringo, "-t");
		assert invariant() : "Illegal state in Config.runGringo(Path, Path, Path)";
		return result;
	}

	public void setName(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Config.setName(String): " + name);
		int index = name.lastIndexOf(File.separator);
		if (index > -1)
			this.name = name.substring(index);
		else
			this.name = name;
		assert invariant() : "Illegal state in Config.setName(String)";
	}

}
