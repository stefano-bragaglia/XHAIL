/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.clasp3.Clasp3Lexer;
import ac.bristol.bragaglia.xhail.parsers.clasp3.Clasp3Parser;
import ac.bristol.bragaglia.xhail.predicates.Atom;

/**
 * @author stefano
 *
 */
public class Clasp3FileParser {

	public static Map<List<Integer>, Set<Set<Atom>>> parse(InputStream stream, boolean mute) {
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in Clasp3FileParser.parse(InputStream, boolean): " + stream);
		Map<List<Integer>, Set<Set<Atom>>> result = new LinkedHashMap<>();
		try {
			ANTLRInputStream input = new ANTLRInputStream(stream);
			Clasp3Lexer lexer = new Clasp3Lexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			Clasp3Parser parser = new Clasp3Parser(tokens);
			parser.removeErrorListeners();
			parser.addErrorListener(new Clasp3ErrorListener(mute));
			ParseTree tree = parser.output();
			ParseTreeWalker walker = new ParseTreeWalker();
			Clasp3FileListener.accept(walker, tree, result);
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'stream' argument in Clasp3FileParser.parse(InputStream, boolean): " + stream);
		}
		return result;
	}

	private Clasp3FileParser() {
	}

}
