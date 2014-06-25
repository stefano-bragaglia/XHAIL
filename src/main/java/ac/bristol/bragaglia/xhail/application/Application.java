/**
 * 
 */
package ac.bristol.bragaglia.xhail.application;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.StringJoiner;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.problem.Program;

/**
 * The main command-line application.
 * 
 * @author stefano
 */
public class Application {

	/**
	 * The path to the <code>clasp</code> application.
	 */
	private static String clasp = null;

	/**
	 * The signature of <code>clasp 3</code>.
	 */
	private static final String CLASP_SIGNATURE = "clasp version 3.";

	/**
	 * The <code>debug</code> flag.
	 */
	private static boolean debug = false;

	/**
	 * The <code>files</code> to process.
	 */
	private static Set<File> files = new LinkedHashSet<>();

	/**
	 * Java NIO filter to retrieve subfolders.
	 */
	private static DirectoryStream.Filter<Path> filter = new DirectoryStream.Filter<Path>() {
		/*
		 * (non-Javadoc)
		 * 
		 * @see java.nio.file.DirectoryStream.Filter#accept(java.lang.Object)
		 */
		@Override
		public boolean accept(Path file) throws IOException {
			return (Files.isDirectory(file));
		}
	};

	/**
	 * The path to the <code>gringo</code> application.
	 */
	private static String gringo = null;

	/**
	 * The signature of <code>gringo 3</code>.
	 */
	private static final String GRINGO_SIGNATURE = "gringo 3.";

	/**
	 * The <code>PATHS</code> where <code>gringo</code> and <code>clasp</code>
	 * most likely are.
	 */
	private static final String[] PATHS = { "/Library/Gringo/", "/Library/Clasp/", "/usr/local/gringo/", "/usr/local/clasp/", "C:\\Gringo\\", "C:\\Clasp\\" };

	/**
	 * Checks whether the program described by the non-\code>null</code>
	 * non-empty <code>program</code> string is an executable file whose version
	 * number matches with the given <code>signature</code>.
	 * 
	 * @param program
	 *            the program to check
	 * @param signature
	 *            the signature to match
	 * @return <code>true</code> in case of a match, <code>false</code>
	 *         otherwise
	 */
	private static boolean check(String program, String signature) {
		try {
			if (null == program || (program = program.trim()).isEmpty())
				return false;
			File file = new File(program);
			if (file.isDirectory() || !file.isFile() || !file.canExecute())
				return false;
			if (null == signature || (signature = signature.trim()).isEmpty())
				return true;
			Process process = new ProcessBuilder(program, "--version").start();
			process.waitFor();
			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			boolean result = reader.readLine().indexOf(signature) > -1;
			reader.close();
			return result;
		} catch (IOException | InterruptedException e) {
			return false;
		}
	}

	/**
	 * Executes the application's main task.
	 */
	private static void execute() {
		long time = System.currentTimeMillis();
		Config config = new Config(gringo, clasp, debug);
		Program program = new Program(config);
		if (0 == files.size()) {
			System.out.println("Reading from stdin");
			program.load(System.in);
		} else
			for (File file : files) {
				System.out.println("Reading from " + file);
				program.load(file);
			}
		System.out.println("Solving...");
		// long cpu = System.currentTimeMillis();
		if (program.solve()) {
			// long end = System.currentTimeMillis();
			// cpu = end - cpu;
			// time = end - time;
			System.out.println();
			print("Model", program.model());
			System.out.println();
			print("Delta", program.delta());
			System.out.println();
			println("Kappa", program.kappa());
			System.out.println();
			printall(program.guess());
			System.out.println();
			System.out.println();
			time = System.currentTimeMillis() - time;
			System.out.println(String.format("Answers     : %d", program.guess().size()));
			System.out.println(String.format("Runtime     : %.3fs", time / 1000.0));
			System.out.println(String.format("  parsing   : %.3fs", config.getParsing().getTime() / 1000.0));
			System.out.println(String.format("  abducing  : %.3fs", config.getAbducing().getTime() / 1000.0));
			System.out.println(String.format("   a.gringo : %.3fs", config.getAbducingGringo().getTime() / 1000.0));
			System.out.println(String.format("   a.clasp  : %.3fs", config.getAbducingClasp().getTime() / 1000.0));
			System.out.println(String.format("  deducing  : %.3fs", config.getDeducing().getTime() / 1000.0));
			System.out.println(String.format("  inducing  : %.3fs", config.getInducing().getTime() / 1000.0));
			System.out.println(String.format("   i.gringo : %.3fs", config.getInducingGringo().getTime() / 1000.0));
			System.out.println(String.format("   i.clasp  : %.3fs", config.getInducingClasp().getTime() / 1000.0));
			// System.out.println(String.format("CPU Time : %d.%ds", cpu / 1000,
			// cpu % 1000));
		} else
			System.err.println(String.format("*** ERROR (%s): Unexpected error while trying to solve current program", Version.get().getTitle()));
	}

	/**
	 * Main application.
	 * 
	 * @param args
	 *            the command line arguments
	 */
	public static void main(String[] args) {
		if (null == args)
			throw new IllegalArgumentException("Illegal 'args' argument in Application.main(String[]): " + args);
		boolean errors = false;
		boolean help = false;
		boolean search = false;
		boolean version = false;
		for (int i = 0; i < args.length; i++)
			switch (args[i]) {
				case "-c":
				case "--clasp":
					clasp = args[++i];
					break;
				case "-d":
				case "--debug":
					debug = true;
					break;
				case "-g":
				case "--gringo":
					gringo = args[++i];
					break;
				case "-h":
				case "--help":
					help = true;
					break;
				case "-s":
				case "--search":
					search = true;
					break;
				case "-v":
				case "--version":
					version = true;
					break;
				default:
					File file = new File(args[i]);
					if (file.exists())
						files.add(file);
					else {
						System.err.println(String.format("*** ERROR (%s): Unknown argument '%s' for %s", Version.get().getTitle(), args[i], Version.get()
								.getTitle()));
						System.err.println(String.format("*** Info  (%s): Try '-h' or '--help' for usage information", Version.get().getTitle()));
						errors = true;
					}
			}
		if (!errors) {
			if (help)
				printHelp();
			else if (version)
				printVersion();
			else {
				System.out.println(Version.get().toString());
				System.out.println();
				if (search)
					printSearch();
				if (!check(gringo, GRINGO_SIGNATURE) || !check(clasp, CLASP_SIGNATURE)) {
					if (!check(gringo, GRINGO_SIGNATURE))
						System.err.println(String.format("*** ERROR (%s): '%s*' needed to run %s", Version.get().getTitle(), GRINGO_SIGNATURE, Version.get()
								.getTitle()));
					if (!check(clasp, CLASP_SIGNATURE))
						System.err.println(String.format("*** ERROR (%s): '%s*' needed to run %s", Version.get().getTitle(), CLASP_SIGNATURE, Version.get()
								.getTitle()));
					System.err.println(String.format("*** Info  (%s): Try '-h' or '--help' for usage information", Version.get().getTitle()));
				} else
					execute();
			}
		}
	}

	private static void print(String label, Collection<Atom> list) {
		if (null == label || (label = label.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'tag' argument in Application.print(String, Collection<Atom>): " + label);
		if (null == list)
			throw new IllegalArgumentException("Illegal 'list' argument in Application.print(String, Collection<Atom>): " + list);
		StringJoiner joiner = new StringJoiner(" ");
		for (Atom atom : list)
			joiner.add(atom.toString());
		System.out.println(String.format("%s: %s", label, list.isEmpty() ? "[]" : joiner.toString()));
	}

	private static void printall(Collection<Set<Clause>> list) {
		if (null == list)
			throw new IllegalArgumentException("Illegal 'list' argument in Application.printall(Collection<Set<Clause>>): " + list);
		int count = 0;
		for (Set<? extends Object> objects : list) {
			System.out.println(String.format("Answer: %d", ++count));
			if (objects.isEmpty())
				System.out.println("    []");
			else
				for (Object object : objects)
					System.out.println(String.format("    %s", object.toString()));
		}
	}

	/**
	 * Prints an help message.
	 */
	private static void printHelp() {
		System.out.println(Version.get().toString());
		System.out.println();
		System.out.println(String.format("Usage:     java -jar %s.jar  [options]  [files]", Version.get().getTitle()));
		System.out.println();
		System.out.println("Options:");
		System.out.println();
		System.out.println("  --clasp,-c <path>   : Use given <path> as path for clasp 3");
		System.out.println("  --debug,-d          : Leave temporary files in ./temp");
		System.out.println("  --gringo,-g <path>  : Use given <path> as path for gringo 3");
		System.out.println("  --help,-h           : Print this help and exit");
		System.out.println("  --search,-s         : Search for clasp 3 and gringo 3");
		System.out.println("  --version,-v        : Print version information and exit");
		System.out.println();
		System.out.println(String.format("Example:   java -jar %s.jar  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  example.pl", Version.get()
				.getTitle()));
		System.out.println();
	}

	private static void println(String label, Collection<Clause> list) {
		if (null == label || (label = label.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'tag' argument in Application.println(String, Collection<Clause>): " + label);
		if (null == list)
			throw new IllegalArgumentException("Illegal 'list' argument in Application.println(String, Collection<Clause>): " + list);

		Iterator<? extends Object> iterator = list.iterator();
		if (iterator.hasNext()) {
			System.out.println(String.format("%s: %s", label, iterator.next().toString()));
			while (iterator.hasNext())
				System.out.println(String.format("       %s", iterator.next().toString()));
		} else
			System.out.println(String.format("%s: []", label));
	}

	/**
	 * Prints some messages while searching for the needed applications.
	 */
	private static void printSearch() {
		System.out.println("Locating needed applications...");
		boolean found;
		found = printSearchLocations();
		found |= printSearchEverywhere();
		if (found) {
			String list = "";
			for (File file : files)
				list += " " + file.getPath();
			System.out.println();
			System.out.println("Next time try to invoke the application with the following parameters:");
			System.out.println(String.format("  java -jar %s.jar -c %s -g %s%s%s", Version.get().getTitle(), clasp, gringo, debug ? " debug" : "", list));
		}
		System.out.println();
	}

	/**
	 * Searches for the needed applications everywhere on the target machine. If
	 * it finds something, it prints a message.
	 * 
	 * @return <code>true</code> if at least an application was found and a
	 *         message was printed, <code>false</code> otherwise
	 */
	private static boolean printSearchEverywhere() {
		boolean gringoPrint = false;
		boolean gringoValid = check(gringo, GRINGO_SIGNATURE);
		boolean claspPrint = false;
		boolean claspValid = check(clasp, CLASP_SIGNATURE);
		if (!gringoValid || !claspValid) {
			Iterator<Path> iterator = FileSystems.getDefault().getRootDirectories().iterator();
			while ((!gringoValid || !claspValid) && iterator.hasNext())
				searchFolder(iterator.next(), gringoValid, claspValid, gringoPrint, claspPrint);
		}
		return gringoPrint || claspPrint;
	}

	/**
	 * Searches for the needed applications in the most plausible folders. If it
	 * finds something, it prints a message. It should be executed before
	 * <code>printSearchEverywhere()</code>, so that a potentially long search
	 * is avoided.
	 * 
	 * @return <code>true</code> if at least an application was found and a
	 *         message was printed, <code>false</code> otherwise
	 */
	private static boolean printSearchLocations() {
		boolean gringoPrint = false;
		boolean gringoValid = check(gringo, GRINGO_SIGNATURE);
		boolean claspPrint = false;
		boolean claspValid = check(clasp, CLASP_SIGNATURE);
		Iterator<String> iterator = Arrays.asList(PATHS).iterator();
		while ((!gringoValid || !claspValid) && iterator.hasNext()) {
			String path = iterator.next();
			if (!gringoValid) {
				gringo = path + "gringo";
				gringoValid = check(gringo, GRINGO_SIGNATURE);
				if (!gringoValid) {
					gringo += ".exe";
					gringoValid = check(gringo, GRINGO_SIGNATURE);
				}
			}
			if (!claspValid) {
				clasp = path + "clasp";
				claspValid = check(clasp, CLASP_SIGNATURE);
				if (!claspValid) {
					clasp += ".exe";
					claspValid = check(clasp, CLASP_SIGNATURE);
				}
			}
			if (gringoValid && !gringoPrint) {
				System.out.println(String.format("Using '%s'...", gringo));
				gringoPrint = true;
			}
			if (claspValid && !claspPrint) {
				System.out.println(String.format("Using '%s'...", clasp));
				claspPrint = true;
			}
		}
		return gringoPrint || claspPrint;
	}

	/**
	 * Prints an help message.
	 */
	private static void printVersion() {
		System.out.println();
		// System.out.println(String.format(" ,---------------,   %s",
		// Version.get().toString()));
		// System.out.println(" | _|_||___||_|_ |   ");
		// System.out.println(" |'-.-..---..-.-'|   Copyright (c) Oliver Ray");
		// System.out.println(" |  | ||   || |  |   Copyright (c) Stefano Bragaglia");
		// System.out.println(" | _|_||___||_|_ |   ");
		// System.out.println(" |'-.-..---..-.-'|   License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>");
		// System.out.println(String.format(" |,-'-||---||-'-.|   '%s' is free software: you are free to change and redistribute it.",
		// Version.get().getTitle()));
		// System.out.println(" '---------------'   There is NO WARRANTY, to the extent permitted by law.");

		System.out.println(Version.get().toString());
		System.out.println();
		System.out.println("Copyright (c) Oliver Ray");
		System.out.println("Copyright (c) Stefano Bragaglia");
		System.out.println();
		System.out.println("GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>");
		System.out.println(String.format("'%s' is free software: you are free to change and redistribute it.", Version.get().getTitle()));
		System.out.println("There is NO WARRANTY, to the extent permitted by law.");
		System.out.println();
	}

	/**
	 * Searches the given path for the application needed. If they are not
	 * found, its sub-folders are recursively searched. The process updates the
	 * following flags so that the recursion is stopped as soon as the missing
	 * application are found.
	 * 
	 * @param path
	 *            the path to search
	 * @param gringoValid
	 *            the flag for <code>gringo</code> validity
	 * @param claspValid
	 *            the flag for <code>clasp</code> validity
	 * @param gringoPrint
	 *            the flag for <code>gringo</code> message
	 * @param claspPrint
	 *            the flag for <code>clasp</code> message
	 */
	private static void searchFolder(Path path, boolean gringoValid, boolean claspValid, boolean gringoPrint, boolean claspPrint) {
		if (!gringoValid) {
			gringo = path + "gringo";
			gringoValid = check(gringo, GRINGO_SIGNATURE);
			if (!gringoValid) {
				gringo += ".exe";
				gringoValid = check(gringo, GRINGO_SIGNATURE);
			}
			if (gringoValid && !gringoPrint) {
				System.out.println(String.format("Using '%s'...", gringo));
				gringoPrint = true;
			}
		}
		if (!claspValid) {
			clasp = path + "clasp";
			claspValid = check(clasp, CLASP_SIGNATURE);
			if (!claspValid) {
				clasp += ".exe";
				claspValid = check(clasp, CLASP_SIGNATURE);
			}
			if (claspValid && !claspPrint) {
				System.out.println(String.format("Using '%s'...", clasp));
				claspPrint = true;
			}
		}
		if (!gringoValid || !claspValid)
			try (DirectoryStream<Path> stream = Files.newDirectoryStream(path, filter)) {
				Iterator<Path> iterator = stream.iterator();
				while ((!gringoValid || !claspValid) && iterator.hasNext())
					searchFolder(iterator.next(), gringoValid, claspValid, gringoPrint, claspPrint);
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

	/**
	 * Default constructor. The constructor is empty and <code>private</code> to
	 * avoid any instance that might interfere with the value of the static
	 * fields of this class. The only way to run this application is through its
	 * <code>main</code> <code>static</code> method.
	 */
	private Application() {
	}

}
