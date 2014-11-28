/**
 * 
 */
package xhail.core.parser;

/**
 * @author stefano
 *
 */
public enum InputStates implements State {

	INITIAL {
		public boolean process(Context context) {
			statement = "";
			context.setState(NORMAL);
			return false;
		}
	},
	NORMAL {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\n':
				case '\r':
				case '\f':
					break;
				case '\t':
				case ' ':
					if (!statement.isEmpty() && (statement.endsWith("not") || //
							statement.endsWith("#compute") || //
							statement.endsWith("#const") || //
							statement.endsWith("#display") || //
							statement.endsWith("#domain") || //
							statement.endsWith("#example") || //
							statement.endsWith("#external") || //
							statement.endsWith("#hide") || //
							statement.endsWith("#modeb") || //
							statement.endsWith("#modeh") || //
							statement.endsWith("#show") || //
							false))
						statement += " ";
					break;
				case '\"':
					statement += (char) ch;
					context.setState(STRING);
					break;
				case '.':
					statement += (char) ch;
					context.setState(DOT);
					break;
				case '%':
					context.setState(COMMENT);
					break;
				default:
					statement += (char) ch;
			}
			return false;
		}
	},
	DOT {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\n':
				case '\r':
				case '\f':
				case '\t':
				case ' ':
					context.append(statement);
					statement = "";
					context.setState(NORMAL);
					break;
				case '\"':
					context.append(statement);
					statement = "" + (char) ch;
					context.setState(STRING);
					break;
				case '.':
					statement += (char) ch;
					context.setState(NORMAL);
					break;
				case '%':
					context.append(statement);
					statement = "";
					context.setState(COMMENT);
					break;
				default:
					context.append(statement);
					statement = "" + (char) ch;
					context.setState(NORMAL);
			}
			return false;
		}
	},
	STRING {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\\':
					statement += (char) ch;
					context.setState(ESCAPE);
					break;
				case '\"':
					statement += (char) ch;
					context.setState(NORMAL);
					break;
				default:
					statement += (char) ch;
			}
			return false;
		}
	},
	ESCAPE {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				default:
					statement += (char) ch;
					context.setState(STRING);
			}
			return false;
		}
	},
	COMMENT {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\n':
					context.setState(NORMAL);
					break;
				case '*':
					context.setState(COMMENT_MULTI);
					break;
				default:
					context.setState(COMMENT_SINGLE);
			}
			return false;
		}
	},
	COMMENT_SINGLE {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\n':
					context.setState(NORMAL);
					break;
				default:
			}
			return false;
		}
	},
	COMMENT_MULTI {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '*':
					context.setState(COMMENT_OVER);
					break;
				default:
			}
			return false;
		}
	},
	COMMENT_OVER {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '%':
					context.setState(NORMAL);
					break;
				case '*':
					break;
				default:
					context.setState(COMMENT_MULTI);
			}
			return false;
		}
	},
	EOF {
		public boolean process(Context context) {
			context.setState(EOF);
			return true;
		}
	};

	private static String statement = "";

	@Override
	public boolean process(Context context) {
		System.out.println("Hello world!");
		return true;
	}

}
