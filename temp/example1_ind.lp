#hide.
#show use_clause_literal/2.

#maximize[ p(a) =1 @1, not p(b) =1 @1 ].

#minimize[ use_clause_literal(1, 0) =1 @1, use_clause_literal(1, 1) =1 @1 ].

level(1, 0) :- use_clause_literal(1, 0).
level(1, 1) :- use_clause_literal(1, 1).
p ( X ) :- q ( X ) .
p ( X ) :- r ( X ) .
q(V1) :- use_clause_literal(1, 0), try_clause_literal(1, 1, V1), type(V1).
try_clause_literal(1, 1, V1) :- not use_clause_literal(1, 1), type(V1).
try_clause_literal(1, 1, V1) :- use_clause_literal(1, 1), type(V1), ssss(V1).
{ use_clause_literal(V1, 0) } :- clause(V1).
{ use_clause_literal(V1, V2) } :- literal(V1, V2), clause(V1).

:- not level(1, 0), level(1, 1).
:- not level(1, 1), level(1, 2).
:- not p(a).
:- p(b).

clause(1).
literal(1, 1).
ssss ( a ) .
type ( a ; b ; c ) .

