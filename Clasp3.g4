/**
 * Define a grammar for the CLASP 3 output.
 */
 grammar Clasp3;

 @header {
package ac.bristol.bragaglia.xhail.parsers.clasp3;

/**
 * @author stefano
 *
 */}

// Steve Gregory

 output
 :
 	version source solving? answer* result separation statistics NEWLINE* EOF
 ;

 version
 :
 	'clasp version 3.' FLOAT NEWLINE
 ;

 source
 :
 	'Reading from stdin' NEWLINE # sourceSTDIN
 	| 'Reading from ' path NEWLINE # sourceFile // TODO fix

 ;

 path
 :
 	DRIVE? folder
 	(
 		BACKSLASH folder
 	)* filename # pathWindows
 	| SLASH? folder
 	(
 		SLASH folder
 	)* filename # pathNIX
 ;

 folder
 :
 	LETTER+ # genericFolder
 	| DOTDOT # parentFolder
 	| DOT # currentFolder
 ;

 filename
 :
 	LETTER+ extension?
 ;

 extension
 :
 	DOT LETTER*
 ;

 solving
 :
 	'Solving...' NEWLINE
 ;

 answer
 :
 	'Answer: ' INTEGER NEWLINE // 
 	model? NEWLINE // 
 	('Optimization: ' values)?
 ;

 model
 :
 	fact
 	(
 		SPACE fact
 	)*
 ;

 fact
 :
 	atom
 ;

 atom
 :
 	MINUS? INTEGER # AtomInteger
 	| STRING # AtomString
 	| IDENTIFIER
 	(
 		PAREN_LEFT atom
 		(
 			COMMA atom
 		)* PAREN_RIGHT
 	)? # AtomPredicate
 ;

 values
 :
 	INTEGER
 	(
 		SPACE INTEGER
 	)* NEWLINE
 ;

 //------------------------------------------------------------------------------

 number
 :
 	INTEGER
 	| FLOAT
 ;

 //------------------------------------------------------------------------------

 result
 :
 	'OPTIMUM FOUND' NEWLINE
 	| 'SATISFIABLE' NEWLINE
 	| 'UNKNOWN' NEWLINE
 	| 'UNSATISFIABLE' NEWLINE
 ;

 //------------------------------------------------------------------------------
 //------------------------------------------------------------------------------

 separation
 :
 	NEWLINE
 ;

 statistics
 :
 	models (optimum)? (optimization)? calls time cputime
 ;

 models
 :
 	'Models       : ' INTEGER PLUS? SPACE* NEWLINE
 ;

 optimum
 :
 	'  Optimum    : yes' NEWLINE optimal?
 	| '  Optimum    : no' NEWLINE
 ;

 optimal
 :
 	'  Optimal    : ' INTEGER NEWLINE
 ;

 optimization
 :
 	'Optimization : ' optValues
 ;

 optValues
 :
 	INTEGER
 	(
 		SPACE INTEGER
 	)* NEWLINE
 ;

 calls
 :
 	'Calls        : ' INTEGER NEWLINE
 ;

 time
 :
 	'Time         : ' FLOAT 's (Solving: ' FLOAT 's 1st Model: ' FLOAT
 	's Unsat: ' FLOAT 's)' NEWLINE
 ;

 cputime
 :
 	'CPU Time     : ' FLOAT 's'
 ;

 //------------------------------------------------------------------------------

 BACKSLASH
 :
 	'\\'
 ;

 COLON
 :
 	':'
 ;

 COMMA
 :
 	','
 ;

 DOT
 :
 	'.'
 ;

 DOTDOT
 :
 	'..'
 ;

 SLASH
 :
 	'/'
 ;

 PAREN_LEFT
 :
 	'('
 ;

 PAREN_RIGHT
 :
 	')'
 ;

 SPACE
 :
 	' '
 ;

 DRIVE
 :
 	(
 		LOWER
 		| UPPER
 	) COLON BACKSLASH?
 ;

 IDENTIFIER
 :
 	LOWER FOLLOW*
 ;

 INTEGER
 :
 	DIGIT+
 ;

 FLOAT
 :
 	DIGIT+ DOT DIGIT+
 ;

 LETTER
 :
 	LOWER
 	| UPPER
 	| DIGIT
 	| SPACE
 ;

 NEWLINE
 :
 	'\r'? '\n'
 ;

 QUOTED
 :
 	'\''
 	(
 		~[\'\\]
 		| ESCAPE
 	)+? '\''
 ;

 STRING
 :
 	'"'
 	(
 		~["\\]
 		| ESCAPE
 	)+? '"'
 ;

 PLUS
 :
 	'+'
 ;

 MINUS
 :
 	'-'
 ;

 fragment
 DIGIT
 :
 	[0]
 	| NONZERO
 ;

 fragment
 ESCAPE
 :
 	'\\' [btnr"\\]
 	| '\\' [0-3]? [0-7]? [0-7]
 	| '\\' 'u' [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F]
 ;

 fragment
 FOLLOW
 :
 	LOWER
 	| UPPER
 	| DIGIT
 	| UNDERSCORE
 ;

 fragment
 LOWER
 :
 	[a-z]
 ;

 fragment
 NONZERO
 :
 	[1-9]
 ;

 fragment
 UNDERSCORE
 :
 	[_]
 ;

 fragment
 UPPER
 :
 	[A-Z]
 ;
