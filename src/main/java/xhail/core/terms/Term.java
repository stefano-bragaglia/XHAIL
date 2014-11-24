/**
 * 
 */
package xhail.core.terms;

import java.util.Collection;
import java.util.Set;

/**
 * @author stefano
 *
 */
public interface Term {

	/**
	 * Returning <code>null</code> means Term and SchemeTerm don't match.<br/> 
	 * Returning an empty list means no suitable Terms were found while comparing Term and SchemeTerm.<br/>
	 * Otherwise the list of suitable Terms found comparing Term and SchemeTerm is returned.<br/>
	 * A suitable Term is a Term that replaces a +placemarker.
	 * @param term
	 * @return
	 */
	public Collection<Term> filters(SchemeTerm term);

	public Collection<Term> matches(SchemeTerm term, Collection<Term> usables, Set<Atom> facts);
	
	public Collection<Variable> getVariables();
	
}
