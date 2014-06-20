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
		if (msg.startsWith("% warning: ")) {
			msg = msg.substring(11);
			System.err.println(String.format("*** WARNING (%s): %s on %d:%d", Version.get().getTitle(), e.getMessage(), line, charPositionInLine));
		} else if (msg.startsWith("% error: ")) {
			msg = msg.substring(9);
			System.err.println(String.format("*** WARNING (%s): %s on %d:%d", Version.get().getTitle(), e.getMessage(), line, charPositionInLine));
		} else
			System.err.println(String.format("*** WARNING (%s): %s on %d:%d", Version.get().getTitle(), e.getMessage(), line, charPositionInLine));
	}

}
