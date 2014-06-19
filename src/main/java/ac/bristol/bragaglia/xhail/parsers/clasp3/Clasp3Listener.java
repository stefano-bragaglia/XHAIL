// Generated from Clasp3.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.clasp3;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Clasp3Parser}.
 */
public interface Clasp3Listener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#extension}.
	 * @param ctx the parse tree
	 */
	void enterExtension(@NotNull Clasp3Parser.ExtensionContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#extension}.
	 * @param ctx the parse tree
	 */
	void exitExtension(@NotNull Clasp3Parser.ExtensionContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#solving}.
	 * @param ctx the parse tree
	 */
	void enterSolving(@NotNull Clasp3Parser.SolvingContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#solving}.
	 * @param ctx the parse tree
	 */
	void exitSolving(@NotNull Clasp3Parser.SolvingContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#fact}.
	 * @param ctx the parse tree
	 */
	void enterFact(@NotNull Clasp3Parser.FactContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#fact}.
	 * @param ctx the parse tree
	 */
	void exitFact(@NotNull Clasp3Parser.FactContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#optimal}.
	 * @param ctx the parse tree
	 */
	void enterOptimal(@NotNull Clasp3Parser.OptimalContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#optimal}.
	 * @param ctx the parse tree
	 */
	void exitOptimal(@NotNull Clasp3Parser.OptimalContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#values}.
	 * @param ctx the parse tree
	 */
	void enterValues(@NotNull Clasp3Parser.ValuesContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#values}.
	 * @param ctx the parse tree
	 */
	void exitValues(@NotNull Clasp3Parser.ValuesContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#genericFolder}.
	 * @param ctx the parse tree
	 */
	void enterGenericFolder(@NotNull Clasp3Parser.GenericFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#genericFolder}.
	 * @param ctx the parse tree
	 */
	void exitGenericFolder(@NotNull Clasp3Parser.GenericFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#sourceFile}.
	 * @param ctx the parse tree
	 */
	void enterSourceFile(@NotNull Clasp3Parser.SourceFileContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#sourceFile}.
	 * @param ctx the parse tree
	 */
	void exitSourceFile(@NotNull Clasp3Parser.SourceFileContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#AtomPredicate}.
	 * @param ctx the parse tree
	 */
	void enterAtomPredicate(@NotNull Clasp3Parser.AtomPredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#AtomPredicate}.
	 * @param ctx the parse tree
	 */
	void exitAtomPredicate(@NotNull Clasp3Parser.AtomPredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#output}.
	 * @param ctx the parse tree
	 */
	void enterOutput(@NotNull Clasp3Parser.OutputContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#output}.
	 * @param ctx the parse tree
	 */
	void exitOutput(@NotNull Clasp3Parser.OutputContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#result}.
	 * @param ctx the parse tree
	 */
	void enterResult(@NotNull Clasp3Parser.ResultContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#result}.
	 * @param ctx the parse tree
	 */
	void exitResult(@NotNull Clasp3Parser.ResultContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#sourceSTDIN}.
	 * @param ctx the parse tree
	 */
	void enterSourceSTDIN(@NotNull Clasp3Parser.SourceSTDINContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#sourceSTDIN}.
	 * @param ctx the parse tree
	 */
	void exitSourceSTDIN(@NotNull Clasp3Parser.SourceSTDINContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#number}.
	 * @param ctx the parse tree
	 */
	void enterNumber(@NotNull Clasp3Parser.NumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#number}.
	 * @param ctx the parse tree
	 */
	void exitNumber(@NotNull Clasp3Parser.NumberContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#parentFolder}.
	 * @param ctx the parse tree
	 */
	void enterParentFolder(@NotNull Clasp3Parser.ParentFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#parentFolder}.
	 * @param ctx the parse tree
	 */
	void exitParentFolder(@NotNull Clasp3Parser.ParentFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#separation}.
	 * @param ctx the parse tree
	 */
	void enterSeparation(@NotNull Clasp3Parser.SeparationContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#separation}.
	 * @param ctx the parse tree
	 */
	void exitSeparation(@NotNull Clasp3Parser.SeparationContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#optimization}.
	 * @param ctx the parse tree
	 */
	void enterOptimization(@NotNull Clasp3Parser.OptimizationContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#optimization}.
	 * @param ctx the parse tree
	 */
	void exitOptimization(@NotNull Clasp3Parser.OptimizationContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#pathWindows}.
	 * @param ctx the parse tree
	 */
	void enterPathWindows(@NotNull Clasp3Parser.PathWindowsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#pathWindows}.
	 * @param ctx the parse tree
	 */
	void exitPathWindows(@NotNull Clasp3Parser.PathWindowsContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#model}.
	 * @param ctx the parse tree
	 */
	void enterModel(@NotNull Clasp3Parser.ModelContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#model}.
	 * @param ctx the parse tree
	 */
	void exitModel(@NotNull Clasp3Parser.ModelContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#AtomInteger}.
	 * @param ctx the parse tree
	 */
	void enterAtomInteger(@NotNull Clasp3Parser.AtomIntegerContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#AtomInteger}.
	 * @param ctx the parse tree
	 */
	void exitAtomInteger(@NotNull Clasp3Parser.AtomIntegerContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#models}.
	 * @param ctx the parse tree
	 */
	void enterModels(@NotNull Clasp3Parser.ModelsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#models}.
	 * @param ctx the parse tree
	 */
	void exitModels(@NotNull Clasp3Parser.ModelsContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#optimum}.
	 * @param ctx the parse tree
	 */
	void enterOptimum(@NotNull Clasp3Parser.OptimumContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#optimum}.
	 * @param ctx the parse tree
	 */
	void exitOptimum(@NotNull Clasp3Parser.OptimumContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#pathNIX}.
	 * @param ctx the parse tree
	 */
	void enterPathNIX(@NotNull Clasp3Parser.PathNIXContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#pathNIX}.
	 * @param ctx the parse tree
	 */
	void exitPathNIX(@NotNull Clasp3Parser.PathNIXContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#version}.
	 * @param ctx the parse tree
	 */
	void enterVersion(@NotNull Clasp3Parser.VersionContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#version}.
	 * @param ctx the parse tree
	 */
	void exitVersion(@NotNull Clasp3Parser.VersionContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#AtomString}.
	 * @param ctx the parse tree
	 */
	void enterAtomString(@NotNull Clasp3Parser.AtomStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#AtomString}.
	 * @param ctx the parse tree
	 */
	void exitAtomString(@NotNull Clasp3Parser.AtomStringContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#filename}.
	 * @param ctx the parse tree
	 */
	void enterFilename(@NotNull Clasp3Parser.FilenameContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#filename}.
	 * @param ctx the parse tree
	 */
	void exitFilename(@NotNull Clasp3Parser.FilenameContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#answer}.
	 * @param ctx the parse tree
	 */
	void enterAnswer(@NotNull Clasp3Parser.AnswerContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#answer}.
	 * @param ctx the parse tree
	 */
	void exitAnswer(@NotNull Clasp3Parser.AnswerContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#calls}.
	 * @param ctx the parse tree
	 */
	void enterCalls(@NotNull Clasp3Parser.CallsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#calls}.
	 * @param ctx the parse tree
	 */
	void exitCalls(@NotNull Clasp3Parser.CallsContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#optValues}.
	 * @param ctx the parse tree
	 */
	void enterOptValues(@NotNull Clasp3Parser.OptValuesContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#optValues}.
	 * @param ctx the parse tree
	 */
	void exitOptValues(@NotNull Clasp3Parser.OptValuesContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#currentFolder}.
	 * @param ctx the parse tree
	 */
	void enterCurrentFolder(@NotNull Clasp3Parser.CurrentFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#currentFolder}.
	 * @param ctx the parse tree
	 */
	void exitCurrentFolder(@NotNull Clasp3Parser.CurrentFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#time}.
	 * @param ctx the parse tree
	 */
	void enterTime(@NotNull Clasp3Parser.TimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#time}.
	 * @param ctx the parse tree
	 */
	void exitTime(@NotNull Clasp3Parser.TimeContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#cputime}.
	 * @param ctx the parse tree
	 */
	void enterCputime(@NotNull Clasp3Parser.CputimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#cputime}.
	 * @param ctx the parse tree
	 */
	void exitCputime(@NotNull Clasp3Parser.CputimeContext ctx);

	/**
	 * Enter a parse tree produced by {@link Clasp3Parser#statistics}.
	 * @param ctx the parse tree
	 */
	void enterStatistics(@NotNull Clasp3Parser.StatisticsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Clasp3Parser#statistics}.
	 * @param ctx the parse tree
	 */
	void exitStatistics(@NotNull Clasp3Parser.StatisticsContext ctx);
}