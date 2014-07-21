/**
 * 
 */
package ac.bristol.bragaglia.xhail.application;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Hashtable;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/**
 * @author stefano
 *
 */
public class Cruncher {

	private static String file1 = "orf.src.pl";
	private static String file2 = "reactions.src.pl";

	/**
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Set<String> compartments = new TreeSet<>();
		Map<Integer, String> orfs = new Hashtable<>();
		Map<String, Set<String>> rev = new TreeMap<>();
		try {
			String line;
			FileInputStream stream = new FileInputStream(file1);
			BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
			while ((line = reader.readLine()) != null) {
				line = line.trim();
				if (line.startsWith("orf_fact(") && line.endsWith(").")) {
					String label = line.substring("orf_fact(".length(), line.indexOf(",")).replace('\'', '"');
					Set<String> set = rev.get(label);
					if (null == set) {
						set = new TreeSet<>();
						rev.put(label, set);
					}
					while (line.indexOf(",") > 0)
						line = line.substring(line.indexOf(",") + 1).trim();
					String tmp = line.substring(0, line.indexOf(")"));
					set.add(tmp);
					try {
						int id = Integer.parseInt(tmp);
						if (orfs.containsKey(id) && !label.equals(orfs.get(id)))
							System.err.println("§§ Couple " + id + ":" + orfs.get(id) + " found, skipping to replace the value to " + label + "...");
						else
							orfs.put(id, label);
					} catch (NumberFormatException e) {
						System.err.println("§ ORF " + label + " apparently has no reaction IDs associated with it...");
					}
				}
			}
			reader.close();
		} catch (FileNotFoundException e) {
			System.out.println("Couldn't access '" + file1 + "'");
			return;
		}

		Set<String> imports = new LinkedHashSet<>();
		Set<String> reactions = new LinkedHashSet<>();
		try {
			int i = 0;
			String line, tmp, val;
			FileInputStream stream = new FileInputStream(file2);
			BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
			// Read File Line By Line
			boolean last, reaction = true;
			while ((line = reader.readLine()) != null) {
				last = reaction;
				reaction = true;
				line = line.trim();
				// Print the content on the console
				if (line.isEmpty()) {
				} else if (line.startsWith("%")) {
					if (last)
						reactions.add(line);
					else
						imports.add(line);
				} else if (line.startsWith("reaction(")) {
					line = line.substring("reaction(".length());
					int id = Integer.parseInt(line.substring(0, line.indexOf(",")));
					line = line.substring(line.indexOf(",") + 2);
					String kind = "retractable";
					String descr = orfs.get(id);
					if (null == descr) {
						descr = "" + ++i;
						while (descr.length() < 5)
							descr = "0" + descr;
						descr = "\"DSC" + descr + "\"";
					}
					int growth = 1;
					String source = line.substring(0, line.indexOf("]") + 1).replace('\'', '"');
					tmp = source;
					while (tmp.indexOf("reactant(") > 0) {
						tmp = tmp.substring(tmp.indexOf("reactant("));
						tmp = tmp.substring("reactant(".length());
						val = tmp.substring(0, tmp.indexOf(","));
						reaction &= "cytosol".equals(val);
						compartments.add(val);
					}
					line = line.substring(line.indexOf("]") + 2).trim();

					if (line.startsWith("(->),")) {
						line = line.substring("(->),".length()).trim();
						String target = line.substring(0, line.indexOf("]") + 1).replace('\'', '"');
						tmp = target;
						while (tmp.indexOf("reactant(") > 0) {
							tmp = tmp.substring(tmp.indexOf("reactant("));
							tmp = tmp.substring("reactant(".length());
							val = tmp.substring(0, tmp.indexOf(","));
							reaction &= "cytosol".equals(val);
							compartments.add(val);
						}
						line = line.substring(line.indexOf("]") + 1).trim();
						if (!line.equals(").")) {
							System.err.println(">>> " + line);
							reader.close();
							return;
						}
						if (reaction)
							reactions.add("reaction(" + id + ", " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was (->)");
						else
							imports.add("reaction(" + id + ", " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was (->)");
					} else if (line.startsWith("<->,")) {
						line = line.substring("<->,".length()).trim();
						String target = line.substring(0, line.indexOf("]") + 1).replace('\'', '"');
						tmp = target;
						while (tmp.indexOf("reactant(") > 0) {
							tmp = tmp.substring(tmp.indexOf("reactant("));
							tmp = tmp.substring("reactant(".length());
							val = tmp.substring(0, tmp.indexOf(","));
							reaction &= "cytosol".equals(val);
							compartments.add(val);
						}
						line = line.substring(line.indexOf("]") + 1).trim();
						if (!line.equals(").")) {
							System.err.println(">>> " + line);
							reader.close();
							return;
						}
						if (reaction) {
							reactions.add("reaction(" + id + "A, " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was <->");
							reactions.add("reaction(" + id + "B, " + kind + ", " + descr + ", " + growth + ",\n\t" + target + ",\n\t" + source + line
									+ " % was <->");
						} else {
							imports.add("reaction(" + id + "A, " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was <->");
							imports.add("reaction(" + id + "B, " + kind + ", " + descr + ", " + growth + ",\n\t" + target + ",\n\t" + source + line
									+ " % was <->");
						}
					} else if (line.startsWith("<=>,")) {
						line = line.substring("<=>,".length()).trim();
						String target = line.substring(0, line.indexOf("]") + 1).replace('\'', '"');
						tmp = target;
						while (tmp.indexOf("reactant(") > 0) {
							tmp = tmp.substring(tmp.indexOf("reactant("));
							tmp = tmp.substring("reactant(".length());
							val = tmp.substring(0, tmp.indexOf(","));
							reaction &= "cytosol".equals(val);
							compartments.add(val);
						}
						line = line.substring(line.indexOf("]") + 1).trim();
						if (!line.equals(").")) {
							System.err.println(">>> " + line);
							reader.close();
							return;
						}
						if (reaction) {
							reactions.add("reaction(" + id + "A, " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was <=>");
							reactions.add("reaction(" + id + "B, " + kind + ", " + descr + ", " + growth + ",\n\t" + target + ",\n\t" + source + line
									+ " % was <=>");
						} else {
							imports.add("reaction(" + id + "A, " + kind + ", " + descr + ", " + growth + ",\n\t" + source + ",\n\t" + target + line
									+ " % was <=>");
							imports.add("reaction(" + id + "B, " + kind + ", " + descr + ", " + growth + ",\n\t" + target + ",\n\t" + source + line
									+ " % was <=>");
						}
					} else {
						System.err.println(">> " + line);
						reader.close();
						return;
					}
				} else {
					System.err.println("> " + line);
					reader.close();
					return;
				}
			}
			// Close the input stream
			reader.close();
		} catch (FileNotFoundException e) {
			System.out.println("Couldn't access '" + file2 + "'");
			return;
		}

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
			for (String line : imports)
				System.out.println(line);
			System.out.println();
		}
		if (reactions.size() > 0) {
			System.out.println("% metabolic reactions");
			for (String line : reactions)
				System.out.println(line);
			System.out.println();
		}
		if (rev.size() > 0) {
			System.out.println();
			for (String label : rev.keySet()) {
				System.out.print("orf(" + label + ").");
				if (rev.get(label).size() > 0)
					System.out.print(" % reactions: " + String.join(", ", rev.get(label)));
				System.out.println();
			}
		}
		System.out.println();
		for (String compartment : compartments)
			System.out.println("compartment(" + compartment + ").");
		System.err.println("Done.");
	}
}
