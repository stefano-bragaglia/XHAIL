/**
 * 
 */
package xhail.core.parser;

import java.io.InputStream;
import java.util.Collection;

/**
 * @author stefano
 *
 */
public interface Context {

	/**
	 * @param statement
	 */
	public void append(String statement);
	
	/**
	 * @param stream
	 * @return
	 */
	public Collection<String> parse(InputStream stream);
	
	/**
	 * @return
	 */
	public int read();

	/**
	 * @param next
	 */
	public void setState(final State next);
	
}
