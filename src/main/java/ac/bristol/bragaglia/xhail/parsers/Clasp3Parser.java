/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarLexer;
import ac.bristol.bragaglia.xhail.parsers.clasp3.GrammarParser;
import ac.bristol.bragaglia.xhail.predicates.Atom;

/**
 * @author stefano
 *
 */
public class Clasp3Parser {

	private static final Clasp3Parser INSTANCE = new Clasp3Parser();

	private static final String PENGUINS = "ac/bristol/bragaglia/clasp3/parser/other.cl";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int i = 0;
		Collection<Set<Atom>> models = parse(open(PENGUINS));
		for (Set<Atom> model : models) {
			System.out.println("-[ Model #" + i++ + " ]-------");
			for (Atom atom : model)
				System.out.println(atom.toString());
		}
		System.out.println("Done.");
	}

	public static InputStream open(String resource) {
		if (null == resource || (resource = resource.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'resource' argument in Clasp3Parser.open(String): " + resource);
		InputStream result = null;
		try {
			ClassLoader cl = Thread.currentThread().getContextClassLoader();
			URL url = cl.getResource(resource);
			if (null == url) {
				cl = INSTANCE.getClass().getClassLoader();
				url = cl.getResource(resource);
			}
			result = url.openStream();
		} catch (IOException | NullPointerException e) {
			throw new IllegalArgumentException("Illegal 'resource' argument in Clasp3Parser.open(String): " + resource);
		}
		return result;
	}

	public static Collection<Set<Atom>> parse(InputStream stream) {
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in Clasp3Parser.parse(InputStream): " + stream);
		Set<Set<Atom>> result = new LinkedHashSet<>();
		try {
			ANTLRInputStream input = new ANTLRInputStream(stream);
			GrammarLexer lexer = new GrammarLexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			GrammarParser parser = new GrammarParser(tokens);
			parser.removeErrorListeners();
			parser.addErrorListener(XhailErrorListener.get());
			ParseTree tree = parser.output();
			ParseTreeWalker walker = new ParseTreeWalker();
			Clasp3Listener.accept(walker, tree, result);
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'stream' argument in Clasp3Parser.parse(InputStream): " + stream);
		}
		return result;
	}

	private Clasp3Parser() {
	}

}
