/**
 * 
 */
package xhail.core;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * @author stefano
 *
 */
public class Pipe implements Runnable {

	private InputStream input;

	private OutputStream output;

	public Pipe(Process source, Process target) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Pipe.Pipe(Process, Process): " + source);
		if (null == target)
			throw new IllegalArgumentException("Illegal 'target' argument in Pipe.Pipe(Process, Process): " + target);
		this.input = source.getInputStream();
		this.output = target.getOutputStream();
	}

	@Override
	public void run() {
		System.err.println("I'm in!");
		try {
			int read = 1;
			byte[] buffer = new byte[512];
			while (read > -1) {
				System.err.print(".");
				read = input.read(buffer, 0, buffer.length);
				if (read > -1)
					output.write(buffer, 0, read);
			}
			System.err.println("\nI'm done.");
		} catch (IOException e) {
			Logger.error("broken pipe between Gringo and Clasp");
		} finally {
			try {
				input.close();
			} catch (IOException e) {
				Logger.warning(false, "cannot close the pipe from Gringo");
				e.printStackTrace();
			}
			try {
				output.close();
			} catch (IOException e) {
				Logger.warning(false, "cannot close the pipe to Clasp");
			}
		}
		System.err.println("I'm leaving...");
	}

}