/**
 * 
 */
package xhail;

import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import xhail.core.Config;
import xhail.core.Dialler;
import xhail.core.entities.Grounding;
import xhail.core.entities.Problem;
import xhail.core.parser.Parser;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;
import xhail.core.terms.Placemarker;
import xhail.core.terms.Scheme;
import xhail.core.terms.SchemeTerm;
import xhail.core.terms.Term;

/**
 * @author stefano
 *
 */
public class EC {

	public static void main(String[] args) {

		Config config = new Config.Builder() //
				.setAll(true).setBlind(true).setDebug(false).setFull(true).setKill("5").setMute(false) //
				.setGringo("/Library/Gringo/gringo").setClasp("/Library/Clasp/clasp").build();

		Problem problem = new Problem.Builder(config).parse(Paths.get("examples/toys/ec.lp")).build();

		Dialler dialer = new Dialler.Builder(config, problem).build();
		
		for (Collection<String> answer : dialer.execute().getValue()) {
			Grounding grounding = new Grounding.Builder(problem).parse(answer).build();
			Collection<Atom> facts = grounding.getFacts();
			Map<SchemeTerm, Set<Atom>> table = grounding.getTable();
			stamp("Facts", facts.toArray(new Atom[facts.size()]));
			stamp(table);
			System.out.println("----------\n");

			for (Atom alpha : grounding.getDelta()) {
				stamp("ALPHA", alpha);

				for (ModeH head : problem.getModeHs()) {
					Scheme headscheme = head.getScheme();
					System.out.println("HEAD MODE: " + headscheme + "\n");
					if (SchemeTerm.subsumes(headscheme, alpha, facts)) {

						Collection<Term> substitutes = SchemeTerm.findSubstitutes(headscheme, alpha);
						stamp("  N_i", substitutes.toArray(new Term[substitutes.size()]));
						System.out.println("----------\n");

						for (ModeB mode : problem.getModeBs()) {
							Scheme bodyscheme = mode.getScheme();
							Collection<Atom> suggestions = table.get(bodyscheme);
							stamp("  SUGGESTIONS", suggestions.toArray(new Atom[suggestions.size()]));
							System.out.println("  BODY MODE: " + (mode.isNegated()? "not " : "") + bodyscheme + "\n");

							if (mode.isNegated()) {
							
								Map<Atom, Collection<Term>> found2 = SchemeTerm.generateAndOutput(bodyscheme, substitutes, table, facts);
								for (Term term : found2.keySet()) {
									System.out.println("    not " + term);
									Collection<Term> terms = found2.get(term);
									if (!terms.isEmpty()) {
										System.out.print("     ");
										for (Term next : terms)
											System.out.print(" " + next);
										System.out.println();
									}
								}
								System.out.println();
								
							} else {
								
								Map.Entry<Collection<Atom>, Collection<Term>> found1 = SchemeTerm.matchAndOutput(bodyscheme, suggestions, substitutes);
								for (Term term : found1.getKey()) {
									System.out.println("    " + term);
									Collection<Term> terms = found1.getValue();
									if (!terms.isEmpty()) {
										System.out.print("     ");
										for (Term next : terms)
											System.out.print(" " + next);
										System.out.println();
									}
								}
								System.out.println();

							}

							System.out.println("----------\n");
						}

					}
				}
			}
		}
		System.out.println("\nShould find at least: not holdsAt(available(\"glucose\"),2)");

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

	public static void stamp(String label, Atom... atoms) {
		int i = 1;
		Arrays.sort(atoms);
		System.out.print(label + ":\n ");
		for (Atom atom : atoms) {
			if (1 + i + atom.toString().length() > LIMIT) {
				System.out.print("\n ");
				i = 1;
			}
			System.out.print(" " + atom);
			i += 1 + atom.toString().length();
		}
		if (i > 1)
			System.out.println();
		System.out.println();
	}

	public static void stamp(String label, Term... terms) {
		int i = 1;
		Arrays.sort(terms);
		System.out.print(label + ":\n ");
		for (Term term : terms) {
			if (1 + i + term.toString().length() > LIMIT) {
				System.out.print("\n ");
				i = 1;
			}
			System.out.print(" " + term);
			i += 1 + term.toString().length();
		}
		if (i > 1)
			System.out.println();
		System.out.println();
	}

	public static void stamp(Map<SchemeTerm, Set<Atom>> table) {
		System.out.println("Table:");
		for (SchemeTerm term : table.keySet()) {
			System.out.println("  " + term);

			int i = 0;
			Atom[] atoms = table.get(term).toArray(new Atom[0]);
			Arrays.sort(atoms);
			for (Atom atom : atoms) {
				if (1 + i + atom.toString().length() > LIMIT) {
					System.out.println();
					i = 0;
				}
				if (i == 0) {
					System.out.print("    " + atom.toString());
					i += 4 + atom.toString().length();
				} else {
					System.out.print(" " + atom.toString());
					i += 1 + atom.toString().length();
				}
			}
			if (i > 0)
				System.out.println();
		}
		System.out.println();
	}

	private static final int LIMIT = 85;
}
