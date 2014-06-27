/**
 * Define a grammar for the XHAIL language. 
 */
grammar Xhail;

@header {
package ac.bristol.bragaglia.xhail.parsers.xhail;

/**
 * @author stefano
 *
 */}

//==============================================================================

program
:
	(
		directive
		| clause
		| DOT
	)* EOF
;

//------------------------------------------------------------------------------

directive
:
	compute
	| constant
	| display
	| domain
	| example
	| external
//	| hide
	| maximize
	| minimize
	| modeBody
	| modeHead
//	| show
	//  -----------
;

compute
:
	DIR_COMPUTE INTEGER? CURLY_LEFT literal
	(
		COMMA literal
	)* CURLY_RIGHT DOT
;

constant
:
	DIR_CONST IDENTIFIER EQUALS groundAtom DOT
;

display
:
	DIR_DISPLAY DOT # DisplayAll 
	| DIR_DISPLAY IDENTIFIER SLASH INTEGER DOT #DisplayPredicate 
;



domain
:
	DIR_DOMAIN groundAtom DOT
;

example
:
	DIR_EXAMPLE NOT? groundAtom weight? priority? DOT
;

external
:
	DIR_EXTERNAL IDENTIFIER SLASH INTEGER DOT
	| DIR_EXTERNAL predicate DOT
;

hide
:
	DIR_HIDE DOT # HideAll
	| DIR_HIDE IDENTIFIER SLASH INTEGER DOT # HideImplicit
	| DIR_HIDE IDENTIFIER PAREN_LEFT VARIABLE
	(
		COMMA VARIABLE
	)* PAREN_RIGHT DOT # HideExplicit
;

maximize
:
	DIR_MAXIMIZE SQUARE_LEFT literal weight? priority?
	(
		COMMA literal weight? priority?
	)* SQUARE_RIGHT DOT
	| DIR_MAXIMIZE CURLY_LEFT literal priority?
	(
		COMMA literal priority?
	)* CURLY_RIGHT DOT
;

modeBody
:
	DIR_MODEB NOT? signature bound? weight? priority? DOT
;

modeHead
:
	DIR_MODEH signature bounds? weight? priority? DOT
;

signature
:
	IDENTIFIER (PAREN_LEFT keyList PAREN_RIGHT)?
;

keyList
:
	key
	(
		COMMA key
	)*
;

key
:
	PLUS IDENTIFIER # KeyInput
	| MINUS IDENTIFIER # KeyOutput
	| HASH IDENTIFIER # KeyConstant
	| signature # KeySignature
;

minimize
:
	DIR_MINIMIZE SQUARE_LEFT literal weight? priority?
	(
		COMMA literal weight? priority?
	)* SQUARE_RIGHT DOT
	| DIR_MINIMIZE CURLY_LEFT literal priority?
	(
		COMMA literal priority?
	)* CURLY_RIGHT DOT
;

show
:
	DIR_SHOW DOT # ShowAll
	| DIR_SHOW IDENTIFIER SLASH INTEGER DOT # ShowImplicit
	| DIR_SHOW IDENTIFIER PAREN_LEFT VARIABLE
	(
		COMMA VARIABLE
	)* PAREN_RIGHT DOT # ShowExplicit
;

groundAtom
:
	INTEGER # GroundInteger
	| STRING # GroundString
	| VARIABLE # GroundVariable
	| IDENTIFIER
	(
		PAREN_LEFT groundTerm
		(
			COMMA groundTerm
		)* PAREN_RIGHT
	)? # GroundPredicate
;

groundTerm
:
	groundAtom ASSIGN groundTerm # GroundAssign1
	| groundAtom EQUALS groundTerm # GroundAssign2
	| groundAtom BIT_AND groundTerm # GroundAnd
	| BIT_NOT groundAtom # GroundNot
	| groundAtom BIT_OR groundTerm # GroundOr
	| groundAtom BIT_XOR groundTerm # GroundXor
	| groundAtom COMP_EQ groundTerm # GroundEquals
	| groundAtom COMP_GE groundTerm # GroundGreaterEquals
	| groundAtom COMP_GT groundTerm # GroundGreater
	| groundAtom COMP_LE groundTerm # GroundLessEquals
	| groundAtom COMP_LT groundTerm # GroundLess
	| groundAtom COMP_NE groundTerm # GroundNotEquals
	| groundAtom PLUS groundTerm # GroundPlus
	| MINUS groundAtom # GroundMinus1
	| groundAtom MINUS groundTerm # GroundMinus2
	| groundAtom ASTERISK groundTerm # GroundTimes
	| groundAtom SLASH groundTerm # GroundDivide1
	| groundAtom ARITH_DIVIDE groundTerm # GroundDivide2
	| ARITH_DIVIDE PAREN_LEFT groundAtom COMMA groundTerm PAREN_RIGHT #
	GroundDivide3
	| groundAtom BACKSLASH groundTerm # GroundModulus1
	| groundAtom ARITH_MODULUS groundTerm # GroundModulus2
	| ARITH_MODULUS PAREN_LEFT groundAtom COMMA groundTerm PAREN_RIGHT #
	GroundModulus3
	| BAR groundAtom BAR # GroundAbsolute1
	| ARITH_ABS PAREN_LEFT groundAtom PAREN_RIGHT # GroundAbsolute2
	| groundAtom ASTERISKS groundTerm # GroundPower1
	| groundAtom ARITH_POWER groundTerm # GroundPower2
	| ARITH_POWER PAREN_LEFT groundAtom COMMA groundTerm PAREN_RIGHT # GroundPower3
	| groundAtom
	(
		SEMICOLON groundAtom
	)* # GroundPooling
	|
	(
		IDENTIFIER
		| INTEGER
		| VARIABLE
	) DOTS
	(
		IDENTIFIER
		| INTEGER
		| VARIABLE
	) # GroundInterval
;

bound
:
	COLON INTEGER
;

bounds
:
	COLON ALL # BoundsAll
	| COLON INTEGER # BoundSingle
	| COLON INTEGER MINUS INTEGER # BoundsBoth
;

weight
:
	EQUALS MINUS? INTEGER
;

priority
:
	AT MINUS? INTEGER
;

//------------------------------------------------------------------------------

clause
:
	head DOT # FactClause
	| head IF body DOT # FullClause
	| IF body DOT # ConstraintClause
;

head
:
	atom
	(
		BAR atom
	)*
;

body
:
	literal
	(
		COMMA literal
	)*
;

literal
:
	NOT? atom
;

predicate
:
	aggregate
	| aggregatew
	| VARIABLE
	| INTEGER
	| IDENTIFIER
	(
		PAREN_LEFT group PAREN_RIGHT
	)?
	(
		COLON predicate
	)*
;

aggregate
:
	(
		number
	)?
	(
		AGGR_COUNT
		| AGGR_EVEN
		| AGGR_ODD
	)? CURLY_LEFT literal
	(
		COMMA literal
	)* CURLY_RIGHT
	(
		number
	)?
;

aggregatew
:
	(
		number
	)?
	(
		AGGR_AVG
		| AGGR_MAX
		| AGGR_MIN
		| AGGR_SUM
	)? SQUARE_LEFT literal weight?
	(
		COMMA literal weight?
	)* SQUARE_RIGHT
	(
		number
	)?
;

group
:
	atomList
	(
		SEMICOLONS atomList
	)*
;

atomList
:
	atom
	(
		COMMA atom
	)*
;

atom
:
	INTEGER
	| SUPREMUM
	| INFIMUM
	| STRING
	| VARIABLE
	| predicate
	| interval
	| pooling
	| number ASSIGN predicate
	| number EQUALS predicate
	| number BIT_AND number
	| number BIT_OR number
	| number BIT_XOR number
	| predicate COMP_EQ predicate
	| predicate COMP_GE predicate
	| predicate COMP_GT predicate
	| predicate COMP_LE predicate
	| predicate COMP_LT predicate
	| predicate COMP_NE predicate
	| BAR number BAR
	| ARITH_ABS PAREN_LEFT number PAREN_RIGHT
	| number MINUS number
	| number SLASH number
	| number ARITH_DIVIDE number
	| ARITH_DIVIDE PAREN_LEFT number COMMA number PAREN_RIGHT
	| number BACKSLASH number
	| number ARITH_MODULUS number
	| ARITH_MODULUS PAREN_LEFT number COMMA number PAREN_RIGHT
	| number PLUS number
	| number ASTERISK number
	| number ASTERISKS number
	| number ARITH_POWER number
	| ARITH_POWER PAREN_LEFT number COMMA number PAREN_RIGHT
	| BIT_NOT number
	| MINUS number
;

interval
:
	number DOTS number
;

pooling
:
	predicate
	(
		SEMICOLON predicate
	)*
;

number
:
	INTEGER
	| VARIABLE
	| IDENTIFIER
;

//==============================================================================

AGGR_AVG
:
	'#avg'
;

AGGR_COUNT
:
	'#count'
;

AGGR_EVEN
:
	'#even'
;

AGGR_MAX
:
	'#max'
;

AGGR_MIN
:
	'#min'
;

AGGR_ODD
:
	'#odd'
;

AGGR_SUM
:
	'#sum'
;

//------------------------------------------------------------------------------

ARITH_ABS
:
	'#abs'
;

ARITH_DIVIDE
:
	'#div'
;

ARITH_MODULUS
:
	'#mod'
;

ARITH_POWER
:
	'#pow'
;

//------------------------------------------------------------------------------

BIT_AND
:
	'&'
;

BIT_NOT
:
	'~'
;

BIT_OR
:
	'?'
;

BIT_XOR
:
	'^'
;

//------------------------------------------------------------------------------

COMP_EQ
:
	'=='
;

COMP_GE
:
	'>='
;

COMP_GT
:
	'>'
;

COMP_LE
:
	'<='
;

COMP_LT
:
	'<'
;

COMP_NE
:
	'!='
;

//------------------------------------------------------------------------------

DIR_COMPUTE
:
	'#compute'
;

DIR_CONST
:
	'#const'
;

DIR_DISPLAY
:
	'#display'
;

DIR_DOMAIN
:
	'#domain'
;

DIR_EXAMPLE
:
	'#example'
;

DIR_EXTERNAL
:
	'#external'
;

DIR_HIDE
:
	'#hide'
;

DIR_MAXIMIZE
:
	'#maximize'
	| '#maximise'
;

DIR_MINIMIZE
:
	'#minimize'
	| '#minimise'
;

DIR_MODEB
:
	'#modeb'
;

DIR_MODEH
:
	'#modeh'
;

DIR_SHOW
:
	'#show'
;

//------------------------------------------------------------------------------

ASTERISK
:
	'*'
;

ASTERISKS
:
	'**'
;

ASSIGN
:
	':='
;

AT
:
	'@'
;

BACKSLASH
:
	'\\'
;

BAR
:
	'|'
;

COLON
:
	':'
;

COMMA
:
	','
;

CURLY_LEFT
:
	'{'
;

CURLY_RIGHT
:
	'}'
;

DOT
:
	'.'
;

DOTS
:
	'..'
;

EQUALS
:
	'='
;

HASH
:
	'$'
;

IF
:
	':-'
;

MINUS
:
	'-'
;

NOT
:
	'not'
;

PAREN_LEFT
:
	'('
;

PAREN_RIGHT
:
	')'
;

SEMICOLON
:
	';'
;

PLUS
:
	'+'
;

SEMICOLONS
:
	';;'
;

SLASH
:
	'/'
;

SQUARE_LEFT
:
	'['
;

SQUARE_RIGHT
:
	']'
;

//------------------------------------------------------------------------------

INFIMUM
:
	'#infimum'
;

SUPREMUM
:
	'#supremum'
;

//------------------------------------------------------------------------------

ALL
:
	'all'
;

//------------------------------------------------------------------------------

COMMENT_INLINE
:
	'%' ~'\n'* -> skip
;

COMMENT_MULTI
:
	'%*' .*? '*%' -> skip
;

IDENTIFIER
:
	LOWERCASE FOLLOWUP*
;

INTEGER
:
	DIGIT+
;

STRING
:
	'"'
	(
		~["\\]
		| ESCAPE
	)+? '"'
;

VARIABLE
:
	(
		UPPERCASE
		| UNDERSCORE
	) FOLLOWUP*
;

WHITESPACES
:
	[ \t\r\n]+ -> skip
; // skip spaces, tabs, newlines

//------------------------------------------------------------------------------

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
FOLLOWUP
:
	LOWERCASE
	| UPPERCASE
	| DIGIT
	| UNDERSCORE
;

fragment
LOWERCASE
:
	[a-z]
;

fragment
NONZERO
:
	[1-9]
;

fragment
UPPERCASE
:
	[A-Z]
;

fragment
UNDERSCORE
:
	'_'
;
