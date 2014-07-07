/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import java.io.IOException;
import java.io.InputStream;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import ac.bristol.bragaglia.xhail.core.Problem;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailLexer;
import ac.bristol.bragaglia.xhail.parsers.xhail.XhailParser;

/**
 * @author stefano
 *
 */
public class XhailFileParser {

	public static void parse(Problem problem, InputStream stream, boolean mute) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in XhailFileParser.parse(Problem, InputStream, boolean): " + problem);
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in XhailFileParser.parse(Problem, InputStream, boolean): " + stream);
		try {
			ANTLRInputStream input = new ANTLRInputStream(stream);
			XhailLexer lexer = new XhailLexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			XhailParser parser = new XhailParser(tokens);
			parser.removeErrorListeners();
			parser.addErrorListener(new XhailErrorListener(mute));
			ParseTree tree = parser.program();
			ParseTreeWalker walker = new ParseTreeWalker();
			XhailFileListener.accept(walker, tree, problem);
		} catch (IOException e) {
			throw new IllegalArgumentException("Illegal 'stream' argument in XhailFileParser.parse(Problem, InputStream, boolean): " + stream);
		}
	}

	private XhailFileParser() {
	}

}
