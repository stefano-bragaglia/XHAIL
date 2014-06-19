/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.StringJoiner;
import java.util.TreeMap;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.predicates.Literal;

/**
 * @author stefano
 *
 */
public class Kernel {

	private static final String CLAUSE = "clause";

	private static final String HIDE = "#hide";

	private static final String LEVEL = "level";

	private static final String LITERAL = "literal";

	private static final String MIN = "#minimize";

	private static final String SHOW = "#show";

	private static final String TCL = "try_clause_literal";

	static final String UCL = "use_clause_literal";

	private static String join(Atom atom, int index) {
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Kernel.join(Atom, int): " + atom);
		if (index != Explanation.ID_VARS && index != Explanation.ID_TYPES)
			throw new IllegalArgumentException("Illegal 'index' argument in Kernel.join(Atom, int): " + index);
		StringJoiner joiner = new StringJoiner(", ");
		for (Atom term : atom.get(Explanation.ID_ACCESSORS).get(index))
			joiner.add(term.toString());
		return joiner.toString();
	}

	private Clause[] clauses;

	private Set<Clause> kappa;

	private Model model;

	private boolean modified;

	public Kernel(Explanation explanation) {
		if (null == explanation)
			throw new IllegalArgumentException("Illegal 'explanation' argument in Kernel(Explanation): " + explanation);
		this.clauses = explanation.kappa().toArray(new Clause[0]);
		this.kappa = new TreeSet<>();
		this.model = explanation.problem().standard();
		this.setup(explanation);
		this.modified = true;
		assert invariant() : "Illegal state in Kernel(Explanation)";
	}

	public int count() {
		int result = clauses.length;
		assert invariant() : "Illegal state in Kernel.count()";
		return result;
	}

	public int count(int clause) {
		if (clause < 1 || clause > clauses.length)
			throw new IllegalArgumentException("Illegal 'clause' argument in Kernel.clount(int): " + clause);
		int result = clauses[clause].count();
		assert invariant() : "Illegal state in Kernel.count(int)";
		return result;
	}

	public boolean dump(File file) {
		if (null == file)
			throw new IllegalArgumentException("Illegal 'file' argument in Model.dump(File): " + file);
		boolean result = false;
		try {
			PrintStream stream = new PrintStream(file);
			stream.append(this.toString());
			stream.flush();
			stream.close();
			result = true;
		} catch (FileNotFoundException e) {

		}
		assert invariant() : "Illegal state in Model.dump(File)";
		return result;
	}

	public Atom get(int clause) {
		if (clause < 1 || clause > clauses.length)
			throw new IllegalArgumentException("Illegal 'clause' argument in Kernel.get(int): " + clause);
		clause -= 1;
		Atom result = clauses[clause].head().get(Explanation.ID_ATOM);
		assert invariant() : "Illegal state in Kernel.get(int)";
		return result;
	}

	public Literal get(int clause, int literal) {
		if (clause < 1 || clause > clauses.length)
			throw new IllegalArgumentException("Illegal 'clause' argument in Kernel.get(int, int): " + clause);
		clause -= 1;
		if (literal < 1 || literal > clauses[clause].count())
			throw new IllegalArgumentException("Illegal 'literal' argument in Kernel.get(int, int): " + literal);
		literal -= 1;
		Literal result = clauses[clause].get(literal);
		result = new Literal(result.negated(), result.get(Explanation.ID_ATOM));
		assert invariant() : "Illegal state in Kernel.get(int, int)";
		return result;
	}

	private boolean invariant() {
		return (null != clauses && null != kappa && null != model);
	}

	public boolean isGeneralizable() {
		boolean result = !kappa.isEmpty();
		assert invariant() : "Illegal state in Kernel.isGeneralizable()";
		return result;
	}

	public boolean isModified() {
		assert invariant() : "Illegal state in Kernel.isModified()";
		return modified;
	}

	public Collection<Clause> kappa() {
		assert invariant() : "Illegal state in Kernel.kappa()";
		return kappa;
	}

	private void setup(Explanation explanation) {
		if (null == explanation)
			throw new IllegalArgumentException("Illegal 'generalization' argument in Kernel.populate(Explanation): " + explanation);
		if (clauses.length > 0) {
			Clause clause;
			Atom clean, head;
			Literal desired, literal;
			int cc, count, level, ll;
			String heads, types, vars;
			String priority, tryCL, useCL, weight;
			StringJoiner useJoiner = new StringJoiner(", ");
			Map<Integer, StringJoiner> levels = new TreeMap<>();
			for (int c = 0; c < clauses.length; c++) {
				StringJoiner tryJoiner = new StringJoiner(", ");
				cc = c + 1;
				head = clauses[c].head();
				count = clauses[c].count();
				clean = head.get(Explanation.ID_ATOM);
				clause = new Clause(clean);
				heads = join(head, Explanation.ID_TYPES);
				priority = head.get(Explanation.ID_PRIORITY).toString();
				weight = head.get(Explanation.ID_WEIGHT).toString();
				useCL = String.format("use_clause_literal(%d, 0) =%s @%s", cc, weight, priority);

				useJoiner.add(useCL);
				for (int l = 0; l < count; l++) {
					ll = l + 1;
					literal = clauses[c].get(l);
					desired = new Literal(literal.negated(), literal.get(Explanation.ID_ATOM));
					level = Integer.parseInt(literal.get(Explanation.ID_LEVEL).toString());
					StringJoiner levelJoiner = levels.get(level);
					if (null == levelJoiner) {
						levelJoiner = new StringJoiner(", ");
						levels.put(level, levelJoiner);
					}
					priority = literal.get(Explanation.ID_PRIORITY).toString();
					types = join(literal.atom(), Explanation.ID_TYPES);
					vars = join(literal.atom(), Explanation.ID_VARS);
					weight = literal.get(Explanation.ID_WEIGHT).toString();

					clause.append(desired);
					levelJoiner.add(String.format("%s(%d, %d)", UCL, cc, ll)); // use_clause_literal(%cc,
																				// %ll)
					tryJoiner.add(tryCL = String.format("%s(%d, %d, %s)", TCL, cc, ll, vars)); // try_clause_literal(%cc,
																								// %ll,
																								// %vars)
					useJoiner.add(String.format("%s(%d, %d) =%s @%s", UCL, cc, ll, weight, priority)); // use_clause_literal(%xx,
																										// %ll)
																										// =%weight
																										// @%priority
					model.addClause(String.format("%s :- %s(%d, %d), %s, %s.", tryCL, UCL, cc, ll, types, desired.toString())); // try_clause_literal(%cc,
																																// %ll,
																																// %vars)
																																// :-
					model.addClause(String.format("%s :- not %s(%d, %d), %s.", tryCL, UCL, cc, ll, types));
					model.addConstraint(String.format(":- not %s(%d, %d), %s(%d, %d).", LEVEL, cc, level, LEVEL, cc, level + 1));
					model.addFact(String.format("%s(%d, %d).", LITERAL, cc, ll));
				}
				kappa.add(clause);
				for (int lvl : levels.keySet())
					model.addClause(String.format("%s(%d, %d) :- %s.", LEVEL, cc, lvl, levels.get(lvl).toString()));
				model.addClause(String.format("%s(%d, %d) :- %s(%d, %d).", LEVEL, cc, 0, UCL, cc, 0));
				if (count > 0) {
					model.addClause(String.format("%s :- %s(%d, 0), %s, %s.", clean.toString(), UCL, cc, tryJoiner.toString(), heads));
					model.addClause(String.format("{ %s(V1, V2) } :- %s(V1, V2), %s(V1).", UCL, LITERAL, CLAUSE));
				}else
					model.addClause(String.format("%s :- %s(%d, 0).", clean.toString(), UCL, cc));
				model.addConstraint(String.format(":- not %s(%d, %d), %s(%d, %d).", LEVEL, cc, 0, LEVEL, cc, 1));
				model.addFact(String.format("%s(%d).", CLAUSE, cc));
			}
			if (clauses.length > 0) {
				model.addClause(String.format("{ %s(V1, 0) } :- %s(V1).", UCL, CLAUSE));
				model.addMinimize(String.format("%s[ %s ].", MIN, useJoiner.toString()));
			}
		}
		model.addHide(String.format("%s.", HIDE));
		model.addShow(String.format("%s %s/2.", SHOW, UCL));
		assert invariant() : "Illegal state in Kernel.populate(Explanation)";
	}

	@Override
	public String toString() {
		assert invariant() : "Illegal state in Kernel.toString()";
		return model.toString();
	}
}
