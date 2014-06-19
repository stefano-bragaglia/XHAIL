// Generated from Grammar.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.clasp3;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GrammarParser}.
 */
public interface GrammarListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GrammarParser#extension}.
	 * @param ctx the parse tree
	 */
	void enterExtension(@NotNull GrammarParser.ExtensionContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#extension}.
	 * @param ctx the parse tree
	 */
	void exitExtension(@NotNull GrammarParser.ExtensionContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#solving}.
	 * @param ctx the parse tree
	 */
	void enterSolving(@NotNull GrammarParser.SolvingContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#solving}.
	 * @param ctx the parse tree
	 */
	void exitSolving(@NotNull GrammarParser.SolvingContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#fact}.
	 * @param ctx the parse tree
	 */
	void enterFact(@NotNull GrammarParser.FactContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#fact}.
	 * @param ctx the parse tree
	 */
	void exitFact(@NotNull GrammarParser.FactContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#optimal}.
	 * @param ctx the parse tree
	 */
	void enterOptimal(@NotNull GrammarParser.OptimalContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#optimal}.
	 * @param ctx the parse tree
	 */
	void exitOptimal(@NotNull GrammarParser.OptimalContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#values}.
	 * @param ctx the parse tree
	 */
	void enterValues(@NotNull GrammarParser.ValuesContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#values}.
	 * @param ctx the parse tree
	 */
	void exitValues(@NotNull GrammarParser.ValuesContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#genericFolder}.
	 * @param ctx the parse tree
	 */
	void enterGenericFolder(@NotNull GrammarParser.GenericFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#genericFolder}.
	 * @param ctx the parse tree
	 */
	void exitGenericFolder(@NotNull GrammarParser.GenericFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#sourceFile}.
	 * @param ctx the parse tree
	 */
	void enterSourceFile(@NotNull GrammarParser.SourceFileContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#sourceFile}.
	 * @param ctx the parse tree
	 */
	void exitSourceFile(@NotNull GrammarParser.SourceFileContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#AtomPredicate}.
	 * @param ctx the parse tree
	 */
	void enterAtomPredicate(@NotNull GrammarParser.AtomPredicateContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#AtomPredicate}.
	 * @param ctx the parse tree
	 */
	void exitAtomPredicate(@NotNull GrammarParser.AtomPredicateContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#output}.
	 * @param ctx the parse tree
	 */
	void enterOutput(@NotNull GrammarParser.OutputContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#output}.
	 * @param ctx the parse tree
	 */
	void exitOutput(@NotNull GrammarParser.OutputContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#result}.
	 * @param ctx the parse tree
	 */
	void enterResult(@NotNull GrammarParser.ResultContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#result}.
	 * @param ctx the parse tree
	 */
	void exitResult(@NotNull GrammarParser.ResultContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#sourceSTDIN}.
	 * @param ctx the parse tree
	 */
	void enterSourceSTDIN(@NotNull GrammarParser.SourceSTDINContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#sourceSTDIN}.
	 * @param ctx the parse tree
	 */
	void exitSourceSTDIN(@NotNull GrammarParser.SourceSTDINContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#number}.
	 * @param ctx the parse tree
	 */
	void enterNumber(@NotNull GrammarParser.NumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#number}.
	 * @param ctx the parse tree
	 */
	void exitNumber(@NotNull GrammarParser.NumberContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#parentFolder}.
	 * @param ctx the parse tree
	 */
	void enterParentFolder(@NotNull GrammarParser.ParentFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#parentFolder}.
	 * @param ctx the parse tree
	 */
	void exitParentFolder(@NotNull GrammarParser.ParentFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#separation}.
	 * @param ctx the parse tree
	 */
	void enterSeparation(@NotNull GrammarParser.SeparationContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#separation}.
	 * @param ctx the parse tree
	 */
	void exitSeparation(@NotNull GrammarParser.SeparationContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#optimization}.
	 * @param ctx the parse tree
	 */
	void enterOptimization(@NotNull GrammarParser.OptimizationContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#optimization}.
	 * @param ctx the parse tree
	 */
	void exitOptimization(@NotNull GrammarParser.OptimizationContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#pathWindows}.
	 * @param ctx the parse tree
	 */
	void enterPathWindows(@NotNull GrammarParser.PathWindowsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#pathWindows}.
	 * @param ctx the parse tree
	 */
	void exitPathWindows(@NotNull GrammarParser.PathWindowsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#model}.
	 * @param ctx the parse tree
	 */
	void enterModel(@NotNull GrammarParser.ModelContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#model}.
	 * @param ctx the parse tree
	 */
	void exitModel(@NotNull GrammarParser.ModelContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#AtomInteger}.
	 * @param ctx the parse tree
	 */
	void enterAtomInteger(@NotNull GrammarParser.AtomIntegerContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#AtomInteger}.
	 * @param ctx the parse tree
	 */
	void exitAtomInteger(@NotNull GrammarParser.AtomIntegerContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#models}.
	 * @param ctx the parse tree
	 */
	void enterModels(@NotNull GrammarParser.ModelsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#models}.
	 * @param ctx the parse tree
	 */
	void exitModels(@NotNull GrammarParser.ModelsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#optimum}.
	 * @param ctx the parse tree
	 */
	void enterOptimum(@NotNull GrammarParser.OptimumContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#optimum}.
	 * @param ctx the parse tree
	 */
	void exitOptimum(@NotNull GrammarParser.OptimumContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#pathNIX}.
	 * @param ctx the parse tree
	 */
	void enterPathNIX(@NotNull GrammarParser.PathNIXContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#pathNIX}.
	 * @param ctx the parse tree
	 */
	void exitPathNIX(@NotNull GrammarParser.PathNIXContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#version}.
	 * @param ctx the parse tree
	 */
	void enterVersion(@NotNull GrammarParser.VersionContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#version}.
	 * @param ctx the parse tree
	 */
	void exitVersion(@NotNull GrammarParser.VersionContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#AtomString}.
	 * @param ctx the parse tree
	 */
	void enterAtomString(@NotNull GrammarParser.AtomStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#AtomString}.
	 * @param ctx the parse tree
	 */
	void exitAtomString(@NotNull GrammarParser.AtomStringContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#filename}.
	 * @param ctx the parse tree
	 */
	void enterFilename(@NotNull GrammarParser.FilenameContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#filename}.
	 * @param ctx the parse tree
	 */
	void exitFilename(@NotNull GrammarParser.FilenameContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#answer}.
	 * @param ctx the parse tree
	 */
	void enterAnswer(@NotNull GrammarParser.AnswerContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#answer}.
	 * @param ctx the parse tree
	 */
	void exitAnswer(@NotNull GrammarParser.AnswerContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#calls}.
	 * @param ctx the parse tree
	 */
	void enterCalls(@NotNull GrammarParser.CallsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#calls}.
	 * @param ctx the parse tree
	 */
	void exitCalls(@NotNull GrammarParser.CallsContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#optValues}.
	 * @param ctx the parse tree
	 */
	void enterOptValues(@NotNull GrammarParser.OptValuesContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#optValues}.
	 * @param ctx the parse tree
	 */
	void exitOptValues(@NotNull GrammarParser.OptValuesContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#currentFolder}.
	 * @param ctx the parse tree
	 */
	void enterCurrentFolder(@NotNull GrammarParser.CurrentFolderContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#currentFolder}.
	 * @param ctx the parse tree
	 */
	void exitCurrentFolder(@NotNull GrammarParser.CurrentFolderContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#time}.
	 * @param ctx the parse tree
	 */
	void enterTime(@NotNull GrammarParser.TimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#time}.
	 * @param ctx the parse tree
	 */
	void exitTime(@NotNull GrammarParser.TimeContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#cputime}.
	 * @param ctx the parse tree
	 */
	void enterCputime(@NotNull GrammarParser.CputimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#cputime}.
	 * @param ctx the parse tree
	 */
	void exitCputime(@NotNull GrammarParser.CputimeContext ctx);

	/**
	 * Enter a parse tree produced by {@link GrammarParser#statistics}.
	 * @param ctx the parse tree
	 */
	void enterStatistics(@NotNull GrammarParser.StatisticsContext ctx);
	/**
	 * Exit a parse tree produced by {@link GrammarParser#statistics}.
	 * @param ctx the parse tree
	 */
	void exitStatistics(@NotNull GrammarParser.StatisticsContext ctx);
}