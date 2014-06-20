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
public class Clasp3ErrorListener extends BaseErrorListener {

	private static final Clasp3ErrorListener instance = new Clasp3ErrorListener();

	public static Clasp3ErrorListener get() {
		return instance;
	}

	private Clasp3ErrorListener() {
		super();
	}

	@Override
	public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
		if (msg.startsWith("% warning: ")) {
			msg = msg.substring(11);
			System.err.println(String.format("*** WARNING (%s): %s on output at position %d:%d", Version.get().getTitle(), e.getMessage(), line,
					charPositionInLine));
		} else if (msg.startsWith("% error: ")) {
			msg = msg.substring(9);
			System.err.println(String.format("*** WARNING (%s): %s on output at position %d:%d", Version.get().getTitle(), e.getMessage(), line,
					charPositionInLine));
		} else
			System.err.println(String.format("*** WARNING (%s): %s on output at position %d:%d", Version.get().getTitle(), e.getMessage(), line,
					charPositionInLine));
	}

}
