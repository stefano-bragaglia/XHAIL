/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.PrintStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * @author stefano
 *
 */
public abstract class AbstractParser extends AbstractAction implements Action {

	/**
	 * 
	 */
	private String[] files;

	/**
	 * @param error
	 * @param files
	 */
	public AbstractParser(final PrintStream error, final String... files) {
		super(error);
		if (null == files)
			throw new IllegalArgumentException("Illegal 'files' argument in AbstractParser(PrintError, String[]): " + files);
		this.files = files;
		assert invariant() : "Illegal state in AbstractParser(PrintStream, String[])";
	}

	/**
	 * @param args
	 */
	public AbstractParser(final String... args) {
		super(System.err);
		if (null == args)
			throw new IllegalArgumentException("Illegal 'files' argument in AbstractParser(String[]): " + args);
		this.files = args;
		assert invariant() : "Illegal state in AbstractParser(String[])";
	}

	/**
	 * @return
	 */
	public Collection<String> files() {
		Set<String> result = new LinkedHashSet<>(Arrays.asList(files));
		assert invariant() : "Illegal state in AbstractParser.files()";
		return result;
	}

}
