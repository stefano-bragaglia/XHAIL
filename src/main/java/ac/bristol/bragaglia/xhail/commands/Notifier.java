/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Collection;

/**
 * @author stefano
 *
 */
public class Notifier extends Thread {

	private OutputStream[] outputs;

	private BufferedReader reader;

	public Notifier(InputStream input, Collection<Action> next) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Notifier(InputStream, Collection<Action>): " + input);
		if (null == next)
			throw new IllegalArgumentException("Illegal 'next' argument in Notifier(InputStream, Collection<Action>): " + next);
		this.outputs = new OutputStream[next.size()];
		int i = 0;
		for (Action command : next)
			this.outputs[i++] = command.getInput();
		this.reader = new BufferedReader(new InputStreamReader(input));
		assert invariant() : "Illegal state in Notifier(InputStream, OutputStream[])";
	}

	private boolean invariant() {
		return (null != outputs && null != reader);
	}

	@Override
	public void run() {
		try {
			String line;
			while (null != (line = reader.readLine())) {
				byte[] bytes = line.concat("\n").getBytes();
				for (OutputStream output : outputs)
					output.write(bytes);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		assert invariant() : "Illegal state in Notifier.run()";
	}

}