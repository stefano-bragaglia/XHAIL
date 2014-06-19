/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.OutputStream;
import java.io.PrintStream;

/**
 * @author stefano
 *
 */
public class StandardOutput implements Action {

	private static Action instance;

	public static Action get() {
		if (null == instance)
			instance = new StandardOutput();
		return instance;
	}

	private PrintStream output;

	private StandardOutput() {
		this.output = System.out;
		assert invariant() : "Illegal state in StandardOutput()";
	}

	private boolean invariant() {
		return (null != output);
	}

	@Override
	public OutputStream getInput() {
		assert invariant() : "Illegal state in StandardOutput.getInput()";
		return output;
	}

	@Override
	public int execute() {
		throw new UnsupportedOperationException("Unsupported operation StandardOutput.execute()");
	}

}
