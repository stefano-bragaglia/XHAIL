/**
 * 
 */
package xhail.core.terms;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/**
 * @author stefano
 *
 */
public interface SchemeTerm {

	public Term generalises(Term term, Map<Term, Variable> map);
	
	public Term generalises(Set<Variable> set);

	public Collection<Placemarker> getPlacemarkers();

	public Map<Term, Collection<Term>> matching(Set<Term> usables, Map<SchemeTerm, Set<Atom>> parts);

	public boolean subsumes(final Term term, final Collection<Atom> facts);
	
}
