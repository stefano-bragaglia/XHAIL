/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;

/**
 * @author stefano
 *
 */
public class Redirector extends Thread {

	private PrintStream error;

	private BufferedReader reader;

	private String signature;

	public Redirector(InputStream input, PrintStream error, String signature) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Redirector(InputStream, PrintStream, String): " + input);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Redirector(InputStream, PrintStream, String): " + error);
		if (null == signature)
			throw new IllegalArgumentException("Illegal 'signature' argument in Redirector(InputStream, PrintStream, String): " + signature);
		this.error = error;
		this.reader = new BufferedReader(new InputStreamReader(input));
		this.signature = signature;
		if (!this.signature.isEmpty() && !this.signature.endsWith(": "))
			this.signature += ": ";
		assert invariant() : "Illegal state in Redirector(InputStream, PrintStream, String)";
	}

	public Redirector(InputStream input, PrintStream error) {
		if (null == input)
			throw new IllegalArgumentException("Illegal 'input' argument in Redirector(InputStream, PrintStream): " + input);
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in Redirector(InputStream, PrintStream): " + error);
		this.error = error;
		this.reader = new BufferedReader(new InputStreamReader(input));
		this.signature = "";
		assert invariant() : "Illegal state in Redirector(InputStream, OutputStream[])";
	}

	private boolean invariant() {
		return (null != error && null != reader && null != signature);
	}

	@Override
	public void run() {
		try {
			String line;
			while (null != (line = reader.readLine()))
				error.println(signature + line);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		assert invariant() : "Illegal state in Redirector.run()";
	}

}
