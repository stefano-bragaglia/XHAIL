/**
 * 
 */
package ac.bristol.bragaglia.xhail.application;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/**
 * @author stefano
 *
 */
public class Clever {

	private enum Kind {
		BIDI_DOUBLE, BIDI_SINGLE, MONO
	}

	private class ORF {

		String code; // ///// ex.: "2.7.1.2"
		String formula; // // ex.: "GLK1"
		String id; // /////// ex.: "YCL040W"
		String name; // ///// ex.: "glucokinase"
		String reaction; // / ex.: 838

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			ORF other = (ORF) obj;
			if (!getOuterType().equals(other.getOuterType()))
				return false;
			if (code == null) {
				if (other.code != null)
					return false;
			} else if (!code.equals(other.code))
				return false;
			if (formula == null) {
				if (other.formula != null)
					return false;
			} else if (!formula.equals(other.formula))
				return false;
			if (id == null) {
				if (other.id != null)
					return false;
			} else if (!id.equals(other.id))
				return false;
			if (name == null) {
				if (other.name != null)
					return false;
			} else if (!name.equals(other.name))
				return false;
			if (reaction == null) {
				if (other.reaction != null)
					return false;
			} else if (!reaction.equals(other.reaction))
				return false;
			return true;
		}

		private Clever getOuterType() {
			return Clever.this;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + getOuterType().hashCode();
			result = prime * result + ((code == null) ? 0 : code.hashCode());
			result = prime * result + ((formula == null) ? 0 : formula.hashCode());
			result = prime * result + ((id == null) ? 0 : id.hashCode());
			result = prime * result + ((name == null) ? 0 : name.hashCode());
			result = prime * result + ((reaction == null) ? 0 : reaction.hashCode());
			return result;
		}

		@Override
		public String toString() {
			return "ORF [id=" + id + ", code=" + code + ", formula=" + formula + ", name=" + name + ", reaction=" + reaction + "]";
		}

	}

	private class Reactant {

		String compartment; // / ex.: cytosol
		String id; // ////////// ex.: "C00074"
		String stoichiometry; // ex.: 1

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Reactant other = (Reactant) obj;
			if (!getOuterType().equals(other.getOuterType()))
				return false;
			if (compartment == null) {
				if (other.compartment != null)
					return false;
			} else if (!compartment.equals(other.compartment))
				return false;
			if (id == null) {
				if (other.id != null)
					return false;
			} else if (!id.equals(other.id))
				return false;
			if (stoichiometry == null) {
				if (other.stoichiometry != null)
					return false;
			} else if (!stoichiometry.equals(other.stoichiometry))
				return false;
			return true;
		}

		private Clever getOuterType() {
			return Clever.this;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + getOuterType().hashCode();
			result = prime * result + ((compartment == null) ? 0 : compartment.hashCode());
			result = prime * result + ((id == null) ? 0 : id.hashCode());
			result = prime * result + ((stoichiometry == null) ? 0 : stoichiometry.hashCode());
			return result;
		}

		@Override
		public String toString() {
			return "reactant(" + compartment + ", " + stoichiometry + ", " + id + ")";
		}

	}

	private class Reaction {

		String id; // / ex.: 1086
		Kind kind;
		Set<Reactant> source;
		Set<Reactant> target;

		public Reaction() {
			this.source = new LinkedHashSet<>();
			this.target = new LinkedHashSet<>();
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Reaction other = (Reaction) obj;
			if (!getOuterType().equals(other.getOuterType()))
				return false;
			if (id == null) {
				if (other.id != null)
					return false;
			} else if (!id.equals(other.id))
				return false;
			if (kind != other.kind)
				return false;
			if (source == null) {
				if (other.source != null)
					return false;
			} else if (!source.equals(other.source))
				return false;
			if (target == null) {
				if (other.target != null)
					return false;
			} else if (!target.equals(other.target))
				return false;
			return true;
		}

		private Clever getOuterType() {
			return Clever.this;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + getOuterType().hashCode();
			result = prime * result + ((id == null) ? 0 : id.hashCode());
			result = prime * result + ((kind == null) ? 0 : kind.hashCode());
			result = prime * result + ((source == null) ? 0 : source.hashCode());
			result = prime * result + ((target == null) ? 0 : target.hashCode());
			return result;
		}

		public boolean isImport() {
			Set<String> sourcer = new HashSet<>();
			for (Reactant reactant : source)
				sourcer.add(reactant.compartment);
			Set<String> targeter = new HashSet<>();
			for (Reactant reactant : target)
				targeter.add(reactant.compartment);
			return sourcer.size() > 1 || targeter.size() > 1 || !sourcer.toString().equals(targeter.toString());
		}

		@Override
		public String toString() {
			return "Reaction [id=" + id + ", source=" + source + ", kind=" + kind + ", target=" + target + "]";
		}

	}

	private static String file1 = "orf.src.pl";

	private static String file2 = "reactions.src.pl";

	public static void main(String[] args) {
		Clever clever = new Clever();
		clever.loadORFS(file1);
		clever.loadReactions(file2);
		int count = 0;
		count += clever.stampReactions();
		count += clever.stampEnzymes();
		count += clever.stampMetabolites();
		count += clever.stampOrfs();
		count += clever.stampCompartments();
		count += clever.stampDays();
		System.err.println(count + " FACTs written...");
		System.err.println("Done.");
	}

	public static String peek(String line, String delimiter) {
		int pos = line.indexOf(delimiter);
		if (pos < 0) {
			System.err.println("Expected '" + delimiter + "' in line '" + line + "', but not found...");
			System.exit(-1);
		}
		return line.substring(0, pos).replace('\'', '"');
	}

	public static String skip(String line, String delimiter) {
		int pos = line.indexOf(delimiter);
		if (pos < 0) {
			System.err.println("Expected '" + delimiter + "' in line '" + line + "', but not found...");
			System.exit(-1);
		}
		return line.substring(pos + delimiter.length()).trim();
	}

	private Set<String> compartments;

	private Map<String, Map<String, Set<ORF>>> enzymes; // k1: code, k2: id

	private Set<Reaction> imports;

	private Set<Reaction> metabolics;

	private Map<String, Reaction> reactions; // k: id

	private Set<String> metabolites;

	private Map<String, Set<ORF>> orfs;

	private Set<String> sorfs;

	public Clever() {
		compartments = new TreeSet<>();
		enzymes = new TreeMap<>();
		imports = new LinkedHashSet<>();
		metabolics = new LinkedHashSet<>();
		metabolites = new TreeSet<>();
		orfs = new TreeMap<>();
		reactions = new Hashtable<>();
		sorfs = new TreeSet<>();
		clear();
	}

	public void check() {
		for (String reaction : orfs.keySet()) {
			Iterator<ORF> iterator = orfs.get(reaction).iterator();
			boolean exact = true;
			if (iterator.hasNext()) {
				String code = iterator.next().code;
				if (exact && iterator.hasNext())
					exact = code.equals(iterator.next().code);
			}
			if (!exact)
				System.err.println("Not all the ORFs pertaining to reaction " + reaction + " have the same EC code...");
		}
	}

	public void clear() {
		compartments.clear();
		enzymes.clear();
		imports.clear();
		metabolics.clear();
		metabolites.clear();
		orfs.clear();
		sorfs.clear();
	}

	public void loadORFS(String file) {
		try {
			int count = 0;
			String line;
			FileInputStream stream = new FileInputStream(file);
			BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
			while ((line = reader.readLine()) != null) {
				line = line.trim();
				if (line.isEmpty() || line.startsWith("%")) {
					// skip it!
				} else if (line.startsWith("orf_fact(")) {
					line = skip(line, "orf_fact(");
					ORF orf = new ORF();
					// reading id
					orf.id = peek(line, ",");
					sorfs.add(orf.id);
					line = skip(line, ",");
					// reading code
					orf.code = peek(line, ",");
					if (!orf.code.startsWith("\""))
						orf.code = "\"" + orf.code;
					if (!orf.code.endsWith("\""))
						orf.code = orf.code + "\"";
					line = skip(line, ",");
					// skipping expansion
					if ("\"none\"".equals(orf.code))
						line = skip(line, ",");
					else
						line = skip(line, "),");
					// reading formula
					orf.formula = peek(line, "',") + "\"";
					line = skip(line, "',");
					// reading name
					if (line.startsWith("'")) {
						orf.name = peek(line, "',") + "\"";
						line = skip(line, "',");
					} else {
						orf.name = "\"" + peek(line, ",") + "\"";
						line = skip(line, ",");
					}
					// reading reaction
					orf.reaction = peek(line, ").");
					line = skip(line, ").");
					// a check
					try {
						Integer.parseInt(orf.reaction);
					} catch (NumberFormatException e) {
						if (!"none".equals(orf.reaction)) {
							System.err.println("Error reading this ORF: " + orf);
							System.exit(-1);
						}
					}
					if (!line.isEmpty()) {
						System.err.println("Unexpected end of line: '" + line + "'");
						System.exit(-1);
					} else {
						Set<ORF> set = orfs.get(orf.reaction);
						if (null == set) {
							set = new HashSet<>();
							orfs.put(orf.reaction, set);
						}
						set.add(orf);

						Map<String, Set<ORF>> byCode = enzymes.get(orf.code);
						if (null == byCode) {
							byCode = new TreeMap<>();
							enzymes.put(orf.code, byCode);
						}
						Set<ORF> byId = byCode.get(orf.id);
						if (null == byId) {
							byId = new HashSet<>();
							byCode.put(orf.id, byId);
						}
						byId.add(orf);
						count += 1;
					}
				} else {
					System.err.println("Unexpected line: '" + line + "'");
					System.exit(-1);
				}
			}
			reader.close();
			System.err.println(count + " ORFs read...");
		} catch (FileNotFoundException e) {
			System.out.println("Couldn't find '" + file + "'");
			System.exit(-1);
		} catch (IOException e) {
			System.out.println("Couldn't access '" + file + "'");
			System.exit(-1);
		}
	}

	private String loadReactants(String line, Set<Reactant> accumulator) {
		while (line.startsWith("reactant(")) {
			line = skip(line, "reactant(");
			Reactant reactant = new Reactant();
			// reading compartment
			reactant.compartment = peek(line, ",");
			if ("external".equals(reactant.compartment))
				reactant.compartment = "medium";
			compartments.add(reactant.compartment);
			line = skip(line, ",");
			// reading stoichiometry
			reactant.stoichiometry = peek(line, ",");
			line = skip(line, ",");
			// reading id
			reactant.id = peek(line, ")");
			metabolites.add(reactant.id);
			line = skip(line, ")");
			if (line.startsWith(","))
				line = skip(line, ",");
			accumulator.add(reactant);
		}
		return line;
	}

	public void loadReactions(String file) {
		try {
			int count = 0;
			String line;
			FileInputStream stream = new FileInputStream(file);
			BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
			while ((line = reader.readLine()) != null) {
				line = line.trim();
				if (line.isEmpty() || line.startsWith("%")) {
					// skip it!
				} else if (line.startsWith("reaction(")) {
					line = skip(line, "reaction(");
					Reaction reaction = new Reaction();
					// reading id
					reaction.id = peek(line, ",");
					line = skip(line, ",");
					// reading source reactants
					line = skip(line, "[");
					line = loadReactants(line, reaction.source);
					line = skip(line, "],");
					// reading kind
					if (line.startsWith("<=>")) {
						reaction.kind = Kind.BIDI_DOUBLE;
						line = skip(line, "<=>");
					} else if (line.startsWith("<->")) {
						reaction.kind = Kind.BIDI_SINGLE;
						line = skip(line, "<->");
					} else if (line.startsWith("(->)")) {
						reaction.kind = Kind.MONO;
						line = skip(line, "(->)");
					} else {
						System.err.println("Unexpected symbol: '" + line + "'");
						System.exit(-1);
					}
					line = skip(line, ",");
					// reading target reactants
					line = skip(line, "[");
					line = loadReactants(line, reaction.target);
					line = skip(line, "]).");
					if (!line.isEmpty()) {
						System.err.println("Unexpected end of line: '" + line + "'");
						System.exit(-1);
					} else {
						if (reaction.isImport())
							imports.add(reaction);
						else
							metabolics.add(reaction);
						reactions.put(reaction.id, reaction);
					}
					count += 1;
				} else {
					System.err.println("Unexpected line: '" + line + "'");
					System.exit(-1);
				}
			}
			reader.close();
			System.err.println(count + " REACTIONs read...");
		} catch (FileNotFoundException e) {
			System.out.println("Couldn't find '" + file + "'");
			System.exit(-1);
		} catch (IOException e) {
			System.out.println("Couldn't access '" + file + "'");
			System.exit(-1);
		}
	}

	public int stampCompartments() {
		int count = 0;
		if (compartments.size() > 0) {
			System.out.println("% All occurrencies of 'external' have been converted to 'medium' (see below) to match with rules in process.pl");
			for (String compartment : compartments) {
				System.out.println("compartment(" + compartment + ").");
				count += 1;
			}
			System.out.println();
		}
		System.err.println(count + " COMPARTMENTs written...");
		return count;
	}

	public int stampDays() {
		System.out.println("%% This is definitely needed by the process.pl procedure... Se below the extract:");
		System.out.println("%");
		System.out.println("% findall(_,(");
		System.out.println("% 	observed_growth(Exp,Day),");
		System.out.println("% 	\\+ day(Day),");
		System.out.println("% 	format('\\nunknown day \"~a\" in experiment ~a.',[Day,Exp])");
		System.out.println("% ),_),");
		System.out.println("%");
		System.out.println("% of course, we can move it to data.pl.");
		System.out.println("day(1).");
		System.out.println();	
		System.err.println("1 DAYs written...");
		return 1;
	}

	public int stampEnzymes() {
		int count = 0;
		if (enzymes.size() > 0) {
			System.out.println("%=====================================================================");
			System.out.println("% enzyme(");
			System.out.println("%\t1(integer): Unique enzyme-complex identifier,");
			System.out.println("%\t2(modifiable|certian): Whether enzyme-complex is completely known or not");
			System.out.println("%\t3(string): Label (usually EC number, if available)");
			System.out.println("%\t4(list): known ORFs in the enzyme-complex");
			System.out.println("%\t5(list): known reactions catalysed by the enzyme-complex");
			System.out.println("%) ");
			System.out.println("%");
			System.out.println("% n.b.  one enzyme may have several complexes associated");
			System.out.println("% n.b.  the complex lists could be used to generate a set of orfs");
			System.out.println("%\tbut, in fact, only knocked out orfs need be considered");
			System.out.println("%\t(if we assume the knockouts are known in each experiment)");
			System.out.println("% n.b.	enzymes with no known complexes are (dynamically) assigned an *unknown*, which is never inhibited,");
			System.out.println("%\tthus, either there is no information, or the known ones denote all posible complexes.");
			System.out.println();
			for (String code : enzymes.keySet())
				for (String id : enzymes.get(code).keySet()) {
					Set<String> list = new TreeSet<>();
					for (ORF orf : enzymes.get(code).get(id))
						if (reactions.containsKey(orf.reaction)) {
							Reaction reaction = reactions.get(orf.reaction);
							switch (reaction.kind) {
								case MONO:
									list.add("\"" + orf.reaction + "\"");
									break;
								case BIDI_SINGLE:
									list.add("\"" + orf.reaction + "a\"");
									list.add("\"" + orf.reaction + "b\"");
									break;
								case BIDI_DOUBLE:
									list.add("\"" + orf.reaction + "A\"");
									list.add("\"" + orf.reaction + "B\"");
									break;
							}
							System.out.println("enzyme(" + ++count + ", certain, " + code + ", [" + id + "], [" + String.join(",", list) + "]).");
						} else {
							System.out.println("enzyme(" + ++count + ", certain, " + code + ", [" + id + "], []).");
						}
					System.out.println("enzyme(" + ++count + ", certain, " + code + ", [" + id + "], [" + String.join(",", list) + "]).");
				}
			System.out.println();
		}
		System.err.println(count + " ENZYMEs written...");
		return count;
	}

	public int stampMetabolites() {
		int count = 0;
		if (metabolites.size() > 0) {
			for (String metabolite : metabolites) {
				System.out.println("metabolite(" + metabolite + ").");
				count += 1;
			}
			System.out.println("% I had to add it because this metabolite is needed by Experiment 18 in data.pl");
			System.out.println("% It was present in aaa.pl but it doesn't get generated in aber.pl from given sources.");
			System.out.println("metabolite(\"C00463\").");
			count += 1;
			System.out.println();
		}
		System.err.println(count + " METABOLITEs written...");
		return count;
	}

	public int stampOrfs() {
		int count = 0;
		if (orfs.size() > 0) {
			for (String orf : sorfs) {
				System.out.println("orf(" + orf + ").");
				count += 1;
			}
			System.out.println();
		}
		System.err.println(count + " ORFs written...");
		return count;
	}

	public int stampReactions() {
		int count = 0;
		if (imports.size() > 0 || metabolics.size() > 0) {
			System.out.println("%=====================================================================");
			System.out.println("% reaction(");
			System.out.println("%  1(integer): Unique reaction identifier, ");
			System.out.println("%  2(modifiable|assertable|retractable): ");
			System.out.println("%  3(string): Label (usually EC number, if available)");
			System.out.println("%  4(1|2): Rate (day on which product is available)");
			System.out.println("%  5(list): Substrates (compartment, stochiotemetry, ID)");
			System.out.println("%  6(list): Products (compartment, stochiotemetry, ID)");
			System.out.println("% )");
			System.out.println();

			if (imports.size() > 0) {
				System.out.println("% import reactions");
				for (Reaction reaction : imports) {
					Set<String> sources = new TreeSet<>();
					for (Reactant reactant : reaction.source)
						sources.add(reactant.toString());
					Set<String> targets = new TreeSet<>();
					for (Reactant reactant : reaction.target)
						targets.add(reactant.toString());
					if (orfs.containsKey(reaction.id)) {
						for (ORF orf : orfs.get(reaction.id)) {
							switch (reaction.kind) {
								case BIDI_DOUBLE:
									System.out.println("reaction(\"" + reaction.id + "A\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was <=>");
									System.out.println("reaction(\"" + reaction.id + "B\", retractable, " + orf.code + ", 3, [" + String.join(", ", targets)
											+ "], [" + String.join(", ", sources) + "]). % was <=>");
									count += 2;
									break;
								case BIDI_SINGLE:
									System.out.println("reaction(\"" + reaction.id + "a\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was <->");
									System.out.println("reaction(\"" + reaction.id + "b\", retractable, " + orf.code + ", 3, [" + String.join(", ", targets)
											+ "], [" + String.join(", ", sources) + "]). % was <->");
									count += 2;
									break;
								case MONO:
									System.out.println("reaction(\"" + reaction.id + "\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was (->)");
									count += 1;
									break;
							}
						}
					} else {
						switch (reaction.kind) {
							case BIDI_DOUBLE:
								System.out.println("reaction(\"" + reaction.id + "A\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was <=>");
								System.out.println("reaction(\"" + reaction.id + "B\", retractable, unknown, 3, [" + String.join(", ", targets) + "], ["
										+ String.join(", ", sources) + "]). % was <=>");
								count += 2;
								break;
							case BIDI_SINGLE:
								System.out.println("reaction(\"" + reaction.id + "a\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was <->");
								System.out.println("reaction(\"" + reaction.id + "b\", retractable, unknown, 3, [" + String.join(", ", targets) + "], ["
										+ String.join(", ", sources) + "]). % was <->");
								count += 2;
								break;
							case MONO:
								System.out.println("reaction(\"" + reaction.id + "\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was (->)");
								count += 1;
								break;
						}
					}
				}
				System.out.println();
			}

			if (metabolics.size() > 0) {
				System.out.println("% metabolic reactions");
				for (Reaction reaction : metabolics) {
					Set<String> sources = new TreeSet<>();
					for (Reactant reactant : reaction.source)
						sources.add(reactant.toString());
					Set<String> targets = new TreeSet<>();
					for (Reactant reactant : reaction.target)
						targets.add(reactant.toString());
					if (orfs.containsKey(reaction.id)) {
						for (ORF orf : orfs.get(reaction.id)) {
							switch (reaction.kind) {
								case BIDI_DOUBLE:
									System.out.println("reaction(\"" + reaction.id + "A\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was <=>");
									System.out.println("reaction(\"" + reaction.id + "B\", retractable, " + orf.code + ", 3, [" + String.join(", ", targets)
											+ "], [" + String.join(", ", sources) + "]). % was <=>");
									count += 2;
									break;
								case BIDI_SINGLE:
									System.out.println("reaction(\"" + reaction.id + "a\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was <->");
									System.out.println("reaction(\"" + reaction.id + "b\", retractable, " + orf.code + ", 3, [" + String.join(", ", targets)
											+ "], [" + String.join(", ", sources) + "]). % was <->");
									count += 2;
									break;
								case MONO:
									System.out.println("reaction(\"" + reaction.id + "\", retractable, " + orf.code + ", 3, [" + String.join(", ", sources)
											+ "], [" + String.join(", ", targets) + "]). % was (->)");
									count += 1;
									break;
							}
						}
					} else {
						switch (reaction.kind) {
							case BIDI_DOUBLE:
								System.out.println("reaction(\"" + reaction.id + "A\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was <=>");
								System.out.println("reaction(\"" + reaction.id + "B\", retractable, unknown, 3, [" + String.join(", ", targets) + "], ["
										+ String.join(", ", sources) + "]). % was <=>");
								count += 2;
								break;
							case BIDI_SINGLE:
								System.out.println("reaction(\"" + reaction.id + "a\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was <->");
								System.out.println("reaction(\"" + reaction.id + "b\", retractable, unknown, 3, [" + String.join(", ", targets) + "], ["
										+ String.join(", ", sources) + "]). % was <->");
								count += 2;
								break;
							case MONO:
								System.out.println("reaction(\"" + reaction.id + "\", retractable, unknown, 3, [" + String.join(", ", sources) + "], ["
										+ String.join(", ", targets) + "]). % was (->)");
								count += 1;
								break;
						}
					}
				}
				System.out.println();
			}

		}
		System.err.println(count + " REACTIONs written...");
		return count;
	}

}
