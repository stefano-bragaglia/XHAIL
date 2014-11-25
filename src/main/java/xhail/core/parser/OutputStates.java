/**
 * 
 */
package xhail.core.parser;

/**
 * @author stefano
 *
 */
public enum OutputStates implements State {

	NORMAL {
		public boolean process(Context context) {
			int ch = context.read();
			switch (ch) {
				case -1:
					context.append(statement);
					context.setState(EOF);
					break;
				case '\"':
					statement += (char) ch;
					context.setState(STRING);
					break;
				case ' ':	
					context.append(statement);
					statement = "";					
					break;
				default:
					statement += (char) ch;
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
