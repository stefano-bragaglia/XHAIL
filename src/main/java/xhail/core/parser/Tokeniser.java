/**
 * 
 */
package xhail.core.parser;

import java.io.IOException;
import java.io.InputStream;

import xhail.core.Logger;

/**
 * @author stefano
 *
 */
public class Tokeniser {

	private static interface State {
		public boolean process(Tokeniser tokeniser);
	}

	private static enum States implements State {

		EOF {
			public boolean process(Tokeniser tokeniser) {
				tokeniser.setToken(null);
				tokeniser.setState(EOF);
				return true;
			}
		},
		ESCAPE {
			public boolean process(Tokeniser tokeniser) {
				int ch = tokeniser.read();
				switch (ch) {
					case -1:
						tokeniser.setToken(token);
						tokeniser.setState(EOF);
						return false;
					default:
						token += (char) ch;
						tokeniser.setState(STRING);
						return false;
				}
			}
		},
		NORMAL {
			public boolean process(Tokeniser tokeniser) {
				int ch = tokeniser.read();
				switch (ch) {
					case -1:
						tokeniser.setToken(token);
						tokeniser.setState(EOF);
						return false;
					case '\"':
						token += (char) ch;
						tokeniser.setState(STRING);
						return false;
					case '\r':
					case '\n':
					case ' ':
						tokeniser.setToken(token);
						tokeniser.setState(SKIP);
						token = "";
						return true;
					default:
						token += (char) ch;
						return false;
				}
			}
		},
		SKIP {
			public boolean process(Tokeniser tokeniser) {
				int ch = tokeniser.read();
				switch (ch) {
					case -1:
						tokeniser.setToken(token);
						tokeniser.setState(EOF);
						return false;
					case '\r':
					case '\n':
					case ' ':
						return false;
					default:
						token += (char) ch;
						tokeniser.setState(NORMAL);
						return false;
				}
			}
		},
		STRING {
			public boolean process(Tokeniser tokeniser) {
				int ch = tokeniser.read();
				switch (ch) {
					case -1:
						tokeniser.setToken(token);
						tokeniser.setState(EOF);
						return false;
					case '\\':
						token += (char) ch;
						tokeniser.setState(ESCAPE);
						return false;
					case '\"':
						token += (char) ch;
						tokeniser.setState(NORMAL);
						return false;
					default:
						token += (char) ch;
						return false;
				}
			}
		};

		private static String token = "";

		@Override
		public boolean process(Tokeniser tokeniser) {
			System.out.println("Hello world!");
			return true;
		}

	}

	public static Tokeniser from(InputStream stream) {
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in Tokeniser.from(InputStream): " + stream);
		return new Tokeniser(stream);
	}

	private State state;

	private InputStream stream;

	private String token;

	private Tokeniser(InputStream stream) {
		if (null == stream)
			throw new IllegalArgumentException("Illegal 'stream' argument in Tokeniser.Tokeniser(InputStream): " + stream);
		this.stream = stream;
		this.setState(States.SKIP);
	}

	public String next() {
		boolean finished = false;
		while (!finished)
			finished = state.process(this);
		return token;
	}

	private int read() {
		try {
			if (null == stream)
				return -1;
			return stream.read();
		} catch (IOException e) {
			Logger.error("cannot read for the input stream");
			return -1;
		}
	}

	private void setState(State next) {
		if (null == next)
			throw new IllegalArgumentException("Illegal 'next' argument in Tokeniser.setState(State): " + next);
		state = next;
	}

	private void setToken(String token) {
		this.token = token;
	}

}
