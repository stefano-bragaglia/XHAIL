#example p(a).
#example not p(b).

#modeh q(+type).
#modeh r(+type).
#modeb ssss(+type).

p(X) :- q(X).
p(X) :- r(X).

type(a;b;c).

ssss(a).
