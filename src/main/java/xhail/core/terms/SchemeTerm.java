/**
 * 
 */
package xhail.core.terms;

import java.util.AbstractMap.SimpleEntry;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Placemarker.Type;

/**
 * @author stefano
 *
 */
/**
 * @author stefano
 *
 */
public interface SchemeTerm {

	public static Map<Atom, Collection<Term>> generateAndOutput(Scheme scheme, Collection<Term> substitutes, Map<SchemeTerm, Set<Atom>> table,
			Collection<Atom> facts) {
		if (null == scheme)
			throw new IllegalArgumentException(
					"Illegal 'scheme' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>, Collection<Atom>): "
							+ scheme);
		if (null == substitutes)
			throw new IllegalArgumentException(
					"Illegal 'substitutes' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>, Collection<Atom>): "
							+ substitutes);
		if (null == table)
			throw new IllegalArgumentException(
					"Illegal 'table' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>, Collection<Atom>): "
							+ table);
		if (null == facts)
			throw new IllegalArgumentException(
					"Illegal 'facts' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>, Collection<Atom>): "
							+ facts);
		Map<Atom, Collection<Term>> generated = generateAndOutput(scheme, substitutes, table);
		Map<Atom, Collection<Term>> result = new HashMap<>();
		for (Atom atom : generated.keySet()) {
			// System.err.println(atom);
			if (!facts.contains(atom))
				result.put(atom, generated.get(atom));
		}
		return result;
	}

	public static Map<Atom, Collection<Term>> generateAndOutput(Scheme scheme, Collection<Term> substitutes, Map<SchemeTerm, Set<Atom>> table) {
		if (null == scheme)
			throw new IllegalArgumentException(
					"Illegal 'scheme' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>): " + scheme);
		if (null == substitutes)
			throw new IllegalArgumentException(
					"Illegal 'substitutes' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>): " + substitutes);
		if (null == table)
			throw new IllegalArgumentException(
					"Illegal 'table' argument in SchemeTerm.generateAndOutput(Scheme, Collection<Term>, Map<SchemeTerm, Set<Atom>>): " + table);
		Map<Atom.Builder, Collection<Term>> builders = new HashMap<>();
		builders.put(new Atom.Builder(scheme.getIdentifier()), Collections.emptySet());
		for (int i = 0; i < scheme.getArity(); i++) {
			SchemeTerm schemeterm = scheme.getTerm(i);
			Map<Atom.Builder, Collection<Term>> temporary = new HashMap<>();
			if (schemeterm instanceof Number) {
				for (Atom.Builder builder : builders.keySet()) {
					Set<Term> value = new HashSet<>(builders.get(builder));
					Atom.Builder key = builder.addTerm((Number) schemeterm);
					temporary.put(key, value);
				}
			} else if (schemeterm instanceof Quotation) {
				for (Atom.Builder builder : builders.keySet()) {
					Set<Term> value = new HashSet<>(builders.get(builder));
					Atom.Builder key = builder.addTerm((Quotation) schemeterm);
					temporary.put(key, value);
				}
			} else if (schemeterm instanceof Placemarker) {
				Placemarker placemarker = (Placemarker) schemeterm;
				if (Type.INPUT == placemarker.getType()) {
					for (Atom.Builder builder : builders.keySet()) {
						for (Term substitute : substitutes) {
							Set<Term> value = new HashSet<>(builders.get(builder));
							Atom.Builder key = builder.clone().addTerm(substitute);
							temporary.put(key, value);
						}
					}
				} else {
					boolean isOutput = Type.OUTPUT == placemarker.getType();
					Collection<Atom> candidates = table.get(placemarker);
					for (Atom.Builder builder : builders.keySet()) {
						for (Atom candidate : candidates) {
							Term utilise;
							if (candidate.getIdentifier().equals(placemarker.getIdentifier()) && 1 == candidate.getArity())
								utilise = candidate.getTerm(0);
							else
								utilise = candidate;
							Set<Term> value = new HashSet<>(builders.get(builder));
							if (isOutput)
								value.add(utilise);
							Atom.Builder key = builder.clone().addTerm(utilise);
							temporary.put(key, value);
						}
					}
				}
			} else { // if (schemeterm instanceof Scheme)
				Map<Atom, Collection<Term>> returned = generateAndOutput((Scheme) schemeterm, substitutes, table);
				for (Atom.Builder builder : builders.keySet()) {
					for (Atom atom : returned.keySet()) {
						Set<Term> value = new HashSet<>(builders.get(builder));
						value.addAll(returned.get(atom));
						Atom.Builder key = builder.clone().addTerm(atom);
						temporary.put(key, value);
					}
				}
			}
			builders = temporary;
		}
		Map<Atom, Collection<Term>> result = new HashMap<>();
		for (Atom.Builder builder : builders.keySet())
			result.put(builder.build(), builders.get(builder));
		return result;
	}

	public static Map.Entry<Collection<Atom>, Collection<Term>> matchAndOutput(Scheme scheme, Collection<Atom> atoms, Collection<Term> substitutes) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.matchAndOutput(Scheme, Collection<Atom>, Collection<Term>): " + scheme);
		if (null == atoms)
			throw new IllegalArgumentException("Illegal 'atoms' argument in SchemeTerm.matchAndOutput(Scheme, Collection<Atom>, Collection<Term>): " + atoms);
		if (null == substitutes)
			throw new IllegalArgumentException("Illegal 'substitutes' argument in SchemeTerm.matchAndOutput(Scheme, Collection<Atom>, Collection<Term>): "
					+ substitutes);
		Set<Atom> matches = new HashSet<>();
		Set<Term> outputs = new HashSet<>();
		for (Atom atom : atoms) {
			Collection<Term> output = matchAndOutput(scheme, atom, substitutes);
			if (null != output) {
				matches.add(atom);
				outputs.addAll(output);
			}
		}
		return new SimpleEntry<Collection<Atom>, Collection<Term>>(matches, outputs);
	}

	public static Collection<Term> matchAndOutput(Scheme scheme, Atom atom, Collection<Term> substitutes) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.matchAndOutput(Scheme, Atom, Collection<Term>): " + scheme);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in SchemeTerm.matchAndOutput(Scheme, Atom, Collection<Term>): " + atom);
		if (null == substitutes)
			throw new IllegalArgumentException("Illegal 'substitutes' argument in SchemeTerm.matchAndOutput(Scheme, Atom, Collection<Term>): " + substitutes);
		if (!atom.getIdentifier().equals(scheme.getIdentifier()) || atom.getArity() != scheme.getArity())
			return null;
		Set<Term> result = new HashSet<>();
		for (int i = 0; i < scheme.getArity(); i++) {
			SchemeTerm schemeterm = scheme.getTerm(i);
			if (schemeterm instanceof Number) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Number))
					return null;
				if (((Number) term).getValue() != ((Number) schemeterm).getValue())
					return null;
			} else if (schemeterm instanceof Quotation) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Quotation))
					return null;
				if (((Quotation) term).getContent() == ((Quotation) schemeterm).getContent())
					return null;
			} else if (schemeterm instanceof Placemarker) {
				Placemarker placemarker = (Placemarker) schemeterm;
				if (Type.INPUT == placemarker.getType()) {
					if (!substitutes.contains(atom.getTerm(i)))
						return null;
				} else if (Type.OUTPUT == placemarker.getType())
					result.add(atom.getTerm(i));
			} else if (schemeterm instanceof Scheme) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Atom))
					return null;
				Collection<Term> subresult = matchAndOutput((Scheme) schemeterm, (Atom) term, substitutes);
				if (null == subresult)
					return null;
				result.addAll(subresult);
			} else
				return null;
		}
		return result;
	}

	/**
	 * POSSIBLY NOT NEEDED
	 * 
	 * @param scheme
	 * @param atom
	 * @param substitutes
	 * @return
	 */
	public static boolean isMatching(Scheme scheme, Atom atom, Collection<Term> substitutes) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.isMatching(Scheme, Atom, Collection<Term>): " + scheme);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in SchemeTerm.isMatching(Scheme, Atom, Collection<Term>): " + atom);
		if (null == substitutes)
			throw new IllegalArgumentException("Illegal 'substitutes' argument in SchemeTerm.isMatching(Scheme, Atom, Collection<Term>): " + substitutes);
		if (!atom.getIdentifier().equals(scheme.getIdentifier()) || atom.getArity() != scheme.getArity())
			return false;
		for (int i = 0; i < scheme.getArity(); i++) {
			SchemeTerm schemeterm = scheme.getTerm(i);
			if (schemeterm instanceof Number) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Number))
					return false;
				if (((Number) term).getValue() != ((Number) schemeterm).getValue())
					return false;
			} else if (schemeterm instanceof Quotation) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Quotation))
					return false;
				if (((Quotation) term).getContent() == ((Quotation) schemeterm).getContent())
					return false;
			} else if (schemeterm instanceof Placemarker) {
				Placemarker placemarker = (Placemarker) schemeterm;
				if (Type.INPUT == placemarker.getType())
					if (!substitutes.contains(atom.getTerm(i)))
						return false;
			} else if (schemeterm instanceof Scheme) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Atom))
					return false;
				if (!isMatching((Scheme) schemeterm, (Atom) term, substitutes))
					return false;
			} else
				return false;
		}
		return true;
	}

	/**
	 * POSSIBLY NOT NEEDED
	 * 
	 * @param scheme
	 * @param atom
	 * @return
	 */
	public static boolean isMatching(Scheme scheme, Atom atom) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.isMatching(Scheme, Atom): " + scheme);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in SchemeTerm.isMatching(Scheme, Atom): " + atom);
		if (!atom.getIdentifier().equals(scheme.getIdentifier()) || atom.getArity() != scheme.getArity())
			return false;
		for (int i = 0; i < scheme.getArity(); i++) {
			SchemeTerm schemeterm = scheme.getTerm(i);
			if (schemeterm instanceof Number) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Number))
					return false;
				if (((Number) term).getValue() != ((Number) schemeterm).getValue())
					return false;
			} else if (schemeterm instanceof Quotation) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Quotation))
					return false;
				if (((Quotation) term).getContent() == ((Quotation) schemeterm).getContent())
					return false;
			} else if (schemeterm instanceof Placemarker) {
			} else if (schemeterm instanceof Scheme) {
				Term term = atom.getTerm(i);
				if (!(term instanceof Atom))
					return false;
				if (!isMatching((Scheme) schemeterm, (Atom) term))
					return false;
			} else
				return false;
		}
		return true;
	}

	public static Map<SchemeTerm, Set<Atom>> lookup(final ModeH[] modeHs, final ModeB[] modeBs, final Collection<Atom> facts) {
		if (null == modeHs)
			throw new IllegalArgumentException("Illegal 'modeHs' argument in SchemeTerm.getParts(ModeH[], ModeB[], Collection<Atom>): " + modeHs);
		if (null == modeBs)
			throw new IllegalArgumentException("Illegal 'modeBs' argument in SchemeTerm.getParts(ModeH[], ModeB[], Collection<Atom>): " + modeBs);
		if (null == facts)
			throw new IllegalArgumentException("Illegal 'facts' argument in SchemeTerm.getParts(ModeH[], ModeB[], Collection<Atom>): " + facts);
		Map<SchemeTerm, Set<Atom>> result = new HashMap<>();
		for (ModeH mode : modeHs) {
			Scheme scheme = mode.getScheme();
			result.put(scheme, new HashSet<>());
			for (Placemarker placemarker : scheme.getPlacemarkers())
				if (!result.containsKey(placemarker))
					result.put(placemarker, new HashSet<>());
		}
		for (ModeB mode : modeBs) {
			Scheme scheme = mode.getScheme();
			result.put(scheme, new HashSet<>());
			for (Placemarker placemarker : scheme.getPlacemarkers())
				if (!result.containsKey(placemarker))
					result.put(placemarker, new HashSet<>());
		}
		for (SchemeTerm scheme : result.keySet()) {
			Set<Atom> part = result.get(scheme);
			for (Atom fact : facts) {
				if (SchemeTerm.subsumes(scheme, fact, facts))
					part.add(fact);
			}
		}
		return result;
	}

	public static boolean subsumes(SchemeTerm scheme, Term term, Collection<Atom> facts) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.subsumes(SchemeTerm, Term, Collection<Atom>): " + scheme);
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in SchemeTerm.subsumes(SchemeTerm, Term, Collection<Atom>): " + term);
		if (null == facts)
			throw new IllegalArgumentException("Illegal 'facts' argument in SchemeTerm.subsumes(SchemeTerm, Term, Collection<Atom>): " + facts);
		if (scheme instanceof Scheme) {
			Scheme current = (Scheme) scheme;
			if (!(term instanceof Atom))
				return false;
			Atom atom = (Atom) term;
			if (!atom.getIdentifier().equals(current.getIdentifier()) || atom.getArity() != current.getArity())
				return false;
			for (int i = 0; i < current.getArity(); i++)
				if (!subsumes(current.getTerm(i), atom.getTerm(i), facts))
					return false;
			return true;
		} else if (scheme instanceof Placemarker) {
			Placemarker current = (Placemarker) scheme;
			if (term instanceof Variable)
				return false;
			if (facts.contains(new Atom.Builder(current.getIdentifier()).addTerm(term).build()))
				return true;
			if (term instanceof Atom) {
				Atom atom = (Atom) term;
				return atom.getIdentifier().equals(current.getIdentifier()) && 1 == atom.getArity();
			}
			return false;
		} else
			return false;
	}

	public static Collection<Term> findSubstitutes(Scheme scheme, Term candidate) {
		if (null == scheme)
			throw new IllegalArgumentException("Illegal 'scheme' argument in SchemeTerm.findSubstitutes(Scheme, Term): " + scheme);
		if (null == candidate)
			throw new IllegalArgumentException("Illegal 'candidate' argument in Scheme.findSubstitutes(Scheme, Term): " + candidate);
		if (!(candidate instanceof Atom))
			return Collections.emptySet();
		Atom atom = (Atom) candidate;
		if (!atom.getIdentifier().equals(scheme.getIdentifier()) || atom.getArity() != scheme.getArity())
			return Collections.emptySet();
		Set<Term> result = new HashSet<>();
		for (int i = 0; i < scheme.getArity(); i++) {
			SchemeTerm term = scheme.getTerm(i);
			if (term instanceof Placemarker) {
				Placemarker placemarker = (Placemarker) term;
				if (placemarker.getType() == Type.INPUT)
					result.add(atom.getTerm(i));
			} else if (term instanceof Scheme)
				result.addAll(findSubstitutes((Scheme) term, atom.getTerm(i)));
		}
		return result;
	}

	public Term generalises(Term term, Map<Term, Variable> map);

	public Term generalises(Set<Variable> set);

	// public Map<Term, Collection<Atom>> matching(Set<Term> usables,
	// Map<SchemeTerm, Set<Atom>> parts);

}
