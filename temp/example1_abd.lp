#hide typ_q_1_1/1 .
#show abd_q_1_1/1 .
#show q / 1 .
#hide typ_r_1_1/1 .
#show abd_r_1_1/1 .
#show r / 1 .
#show s/1.
#show type/1.

#maximize[ p(a) =1 @1, not p(b) =1 @1 ].

#minimize[ abd_q_1_1(inp_tag(V1, type)) =1 @1 : typ_q_1_1(V1) ].
#minimize[ abd_r_1_1(inp_tag(V1, type)) =1 @1 : typ_r_1_1(V1) ].

0 { abd_q_1_1(inp_tag(V1, type)) : typ_q_1_1(V1) } 2147483647.
0 { abd_r_1_1(inp_tag(V1, type)) : typ_r_1_1(V1) } 2147483647.
p ( X ) :- q ( X ) .
p ( X ) :- r ( X ) .
q(V1) :- typ_q_1_1(V1), abd_q_1_1(inp_tag(V1, type)).
r(V1) :- typ_r_1_1(V1), abd_r_1_1(inp_tag(V1, type)).
typ_q_1_1(V1) :- type(V1).
typ_r_1_1(V1) :- type(V1).

:- not p(a).
:- p(b).

s ( a ) .
type ( a ; b ; c ) .

