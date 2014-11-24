#hide.
#show abduced/3.

#maximize[ flies(a)=1@1, flies(b)=1@1, flies(c)=1@1, not flies(d)=1@1 ].
#minimize[ abduced(A,W,P) =W @P ].

0 { abduced(flies(inp(V1,bird)),1,1) : type(V1,flies) } 2147483647.
flies(V1) :- type(V1,flies), abduced(flies(inp(V1,bird)),W,P).
type(V1,flies) :- bird(V1).

bird(X) :- penguin(X).

bird(a).
bird(b).
bird(c).
penguin(d).

:- not flies(a).
:- not flies(b).
:- not flies(c).
:- flies(d).
