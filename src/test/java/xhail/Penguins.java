/**
 * 
 */
package xhail;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import xhail.core.parser.Parser;
import xhail.core.terms.Atom;
import xhail.core.terms.Placemarker;
import xhail.core.terms.Scheme;
import xhail.core.terms.SchemeTerm;
import xhail.core.terms.Term;

/**
 * @author stefano
 *
 */
public class Penguins {
	// abduced_flies(c) abduced_flies(b) abduced_flies(a)

	private static final String ABDUCED = "flies(a) flies(2) flies(\"c\")";

	private static final String OUTPUT = "bird(a) bird(2) bird(\"c\") bird(d) bird(\"d\") bird(4) penguin(d) penguin(\"d\") penguin(4) flies(a) flies(2) flies(\"c\")";

	private static final String[] MODES = { "flies(+bird)", "penguin(+bird)" };

	public static void main(String[] args) {
		Set<Atom> facts = new HashSet<Atom>(Parser.parseAnswer(OUTPUT));
		Map<SchemeTerm, Set<Atom>> table = s(MODES);
		for (Atom fact : facts)
			for (SchemeTerm current : table.keySet())
				if (SchemeTerm.subsumes(current, fact, facts))
					table.get(current).add(fact);

		Collection<Scheme> modehs = Collections.singleton(Parser.parseModeH(MODES[0]).getScheme());
		Collection<Scheme> modebs = Collections.singleton(Parser.parseModeH(MODES[1]).getScheme());
		Collection<Atom> candidates = Parser.parseAnswer(ABDUCED);

		for (Atom candidate : candidates) {
			for (Scheme modeh : modehs)
				if (SchemeTerm.subsumes(modeh, candidate, facts)) {
					Collection<Term> substitutes = SchemeTerm.findSubstitutes(modeh, candidate);

					System.out.println(candidate + " FOR " + modeh + " WITH " + substitutes);

					for (Scheme modeb : modebs) {
						Collection<Atom> suggestions = table.get(modeb);

						System.out.println("POSITIVE MODE: " + modeb);
						Map.Entry<Collection<Atom>, Collection<Term>> found1 = SchemeTerm.matchAndOutput(modeb, suggestions, substitutes);
						for (Term term : found1.getKey()) {
							System.out.println("  " + term);
							Collection<Term> terms = found1.getValue();
							if (!terms.isEmpty()) {
								System.out.print("   ");
								for (Term next : terms)
									System.out.print(" " + next);
								System.out.println();
							}
						}

						System.out.println("NEGATIVE MODE: not " + modeb);
						Map<Atom, Collection<Term>> found2 = SchemeTerm.generateAndOutput(modeb, substitutes, table, facts);
						for (Term term : found2.keySet()) {
							System.out.println("  not " + term);
							Collection<Term> terms = found2.get(term);
							if (!terms.isEmpty()) {
								System.out.print("   ");
								for (Term next : terms)
									System.out.print(" " + next);
								System.out.println();
							}
						}

						System.out.println("----------");
					}
				}
		}
		
	}

	public static Map<SchemeTerm, Set<Atom>> s(String... schemes) {
		Map<SchemeTerm, Set<Atom>> result = new HashMap<>();
		for (String scheme : schemes) {
			Scheme found = Parser.parseModeH(scheme).getScheme();
			if (!result.containsKey(found))
				result.put(found, new HashSet<>());
			for (Placemarker placemarker : found.getPlacemarkers())
				if (!result.containsKey(placemarker))
					result.put(placemarker, new HashSet<>());
		}
		return result;
	}

}
