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
public class Command extends AbstractAction implements Action {

	private Process process;

	private OutputStream output;

	private Notifier notifier;

	private Redirector redirector;

	public Command(final PrintStream error, final String... args) {
		super(error);
		if (null == args)
			throw new IllegalArgumentException("Illegal 'args' argument in Command(PrintError, String[]): " + args);
		try {
			this.process = new ProcessBuilder(args).start();
			this.output = process.getOutputStream(); // input to the command
			this.notifier = new Notifier(this.process.getInputStream(), next());
			this.redirector = new Redirector(this.process.getErrorStream(), this.getError());
		} catch (IOException e) {
			this.getError().println("Error: cannot instantiate child processes");
			System.exit(-1);
		}
		assert invariant() : "Illegal state in Command(PrintStream, String[])";
	}

	public Command(final String... args) {
		this(System.err, args);
		assert invariant() : "Illegal state in Command(String[])";
	}

	@Override
	public int execute() {
		int result = -1;
		try {
			try {
				redirector.start();
				notifier.start();
			} catch (IllegalThreadStateException e) {
				// Processes were already started.
			}
			result = process.waitFor();
		} catch (InterruptedException e) {
			// Process was interrupted.
		} finally {
//			notifier.interrupt();
//			notifier.join();
//			redirector.interrupt();
//			redirector.join();
		}
		assert invariant() : "Illegal state in Command.execute()";
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ac.bristol.bragaglia.xhail.commands.Action#getInput()
	 */
	@Override
	public OutputStream getInput() {
		assert invariant() : "Illegal state in Command.getInput()";
		return output;
	}

	protected boolean invariant() {
		return super.invariant() && (null != notifier && null != output && null != process && null != redirector);
	}

}
