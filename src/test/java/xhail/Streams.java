/**
 * 
 */
package xhail;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.Map;

import xhail.core.entities.Values;
import xhail.core.parser.Acquirer;
import xhail.core.parser.Parser;

/**
 * @author stefano
 *
 */
public class Streams {

	public static void main(String[] args) throws IOException {

		// Path path = Paths.get("UNKNOWN.txt").toAbsolutePath();
		// Path path = Paths.get("UNSATISFIABLE.txt").toAbsolutePath();
		// Path path = Paths.get("SATISFIABLE.txt").toAbsolutePath();
		Path path = Paths.get("OPTIMUM_FOUND.txt").toAbsolutePath();

		InputStream stream = Files.newInputStream(path);

		// String token;
		// Tokeniser tokeniser = Tokeniser.from(stream);
		//
		// while (null != (token = tokeniser.next())) {
		// System.out.println(token);
		// }

		Acquirer acquirer = Acquirer.from(stream);

		Map.Entry<Values, Collection<Collection<String>>> optimals = acquirer.parse();

		int i = 0;
		System.out.println("Values: " + optimals.getKey());
		for (Collection<String> answer : optimals.getValue()) {
			System.out.println("Answer " + ++i + " (" + answer.size() + "):");
			for (String atom : answer)
				System.out.println("  " + Parser.parseAnswer(atom));
		}

		System.out.println("Done.");

		// Set<String> set = new LinkedHashSet<>();
		// String answer = null;
		// Values values = new Values();
		// try {
		// String line;
		// BufferedReader reader = new BufferedReader(new
		// InputStreamReader(stream));
		// while (null != (line = reader.readLine())) {
		// line = line.trim();
		// if (line.equals(OPTIMUM_FOUND) || line.equals(SATISFIABLE))
		// break;
		// if (line.equals(UNKNOWN) || line.equals(UNSATISFIABLE)) {
		// // System.out.println(String.format("\n*** Info  (%s): %s problem",
		// // Logger.SIGNATURE, line));
		// // System.exit(0);
		// break;
		// }
		// if (line.startsWith(OPTIMIZATION)) {
		// Values current = new Values(line.substring(OPTIMIZATION.length()));
		// if (null == values || !values.equals(current)) {
		// set.clear();
		// values = current;
		// }
		// if (null != answer) {
		// set.add(answer);
		// answer = null;
		// }
		// } else
		// answer = line;
		// // answer = new Splitter(OutputStates.INITIAL).parse(new
		// // ByteArrayInputStream(line.getBytes()));
		// }
		// if (null != answer)
		// set.add(answer);
		// reader.close();
		// } catch (IOException e) {
		// Logger.error("cannot read from child process' 'stdout'");
		// }
	}

}
