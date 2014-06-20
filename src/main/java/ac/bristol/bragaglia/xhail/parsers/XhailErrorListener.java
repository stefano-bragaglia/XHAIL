/**
 * 
 */
package ac.bristol.bragaglia.xhail.parsers;

import org.antlr.v4.runtime.BaseErrorListener;
import org.antlr.v4.runtime.RecognitionException;
import org.antlr.v4.runtime.Recognizer;

import ac.bristol.bragaglia.xhail.application.Version;

/**
 * @author stefano
 *
 */
public class XhailErrorListener extends BaseErrorListener {

	private static final XhailErrorListener instance = new XhailErrorListener();

	public static XhailErrorListener get() {
		return instance;
	}

	private XhailErrorListener() {
		super();
	}

	@Override
	public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
		System.err.println(String.format("*** WARNING (%s): %s", Version.get().getTitle(), e.getMessage()));
	}

}
