/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

/**
 * @author stefano
 *
 */
public class StringSource extends AbstractAction implements Action {

	private byte[] bytes;

	public StringSource(PrintStream error, String source) {
		super(error);
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in StringSource(PrintStream, String): " + source);
		this.bytes = source.getBytes();
		assert invariant() : "Illegal state in StringSource(PrintStream, String)";
	}

	public StringSource(String source) {
		this(System.err, source);
		assert invariant() : "Illegal state in StringSource(String)";
	}

	@Override
	public int execute() {
		try {
			for (Action action : next())
				action.getInput().write(bytes);
		} catch (IOException e) {
			getError().println("Error: cannot feed the processes with data");
			System.exit(-1);
		}
		assert invariant() : "Illegal state in StringSource.execute()";
		return bytes.length;
	}

	@Override
	public OutputStream getInput() {
		throw new UnsupportedOperationException("Unsupported operation StringSource.getInput()");
	}

	protected boolean invariant() {
		return super.invariant() && (null != bytes);
	}

}
