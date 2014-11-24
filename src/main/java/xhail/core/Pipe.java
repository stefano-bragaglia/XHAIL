/**
 * 
 */
package xhail.core;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

/**
 * @author stefano
 *
 */
public class Pipe implements Runnable {

	private BufferedReader reader;

	private BufferedWriter writer;

	public Pipe(Process source, Process target) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Pipe.Pipe(Process, Process): " + source);
		if (null == target)
			throw new IllegalArgumentException("Illegal 'target' argument in Pipe.Pipe(Process, Process): " + target);
		this.reader = new BufferedReader(new InputStreamReader(source.getInputStream()));
		this.writer = new BufferedWriter(new OutputStreamWriter(target.getOutputStream()));
	}

	@Override
	public void run() {
		try {
			String line;
			while (null != (line = reader.readLine()))
				writer.write(line + "\n");
		} catch (IOException e) {
			Logger.error("broken pipe between Gringo and Clasp");
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				Logger.warning(false, "cannot close the pipe from Gringo");
				e.printStackTrace();
			}
			try {
				writer.close();
			} catch (IOException e) {
				Logger.warning(false, "cannot close the pipe to Clasp");
			}
		}
	}

}