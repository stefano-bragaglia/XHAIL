/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.parsers.xhail.XhailLexer;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser;
import ac.bristol.bragaglia.xhail.problem.Problem;

/**
 * @author stefano
 *
 */
public class XhailFileParser {

	private static final XhailFileParser INSTANCE = new XhailFileParser();

	private static final String PENGUINS = "ac/bristol/bragaglia/xhail/ec.lp";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Problem problem = new Problem();
		parse(problem, open(PENGUINS));
		System.out.println("-[ Original ]-------");
		System.out.println(problem.toString());
		System.out.println("-[ Derived ]--------");
		System.out.println(problem.derive().toString());
		System.out.println("Done.");
	}

	public static InputStream open(String resource) {
		if (null == resource || (resource = resource.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'resource' argument in XhailFileParser.open(String): " + resource);
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
			throw new IllegalArgumentException("Illegal 'resource' argument in XhailFileParser.open(String): " + resource);
		}
		return result;
	}

	public static void parse(Problem problem, InputStream stream) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailFileParser.parse(Problem, InputStream): " + problem);
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in XhailFileParser.parse(Problem, InputStream): " + stream);
		try {
			ANTLRInputStream input = new ANTLRInputStream(stream);
			XhailLexer lexer = new XhailLexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			XhailParser parser = new XhailParser(tokens);
			parser.removeErrorListeners();
			parser.addErrorListener(XhailErrorListener.get());
			ParseTree tree = parser.program();
			ParseTreeWalker walker = new ParseTreeWalker();
			XhailFileListener.accept(walker, tree, problem);
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'stream' argument in XhailFileParser.parse(Problem, InputStream): " + stream);
		}
	}

	private XhailFileParser() {
	}

}
