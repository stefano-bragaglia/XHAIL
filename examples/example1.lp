#example p(a).
#example not p(b).

#modeh q(+type).
#modeh r(+type).
#modeb s(+type).

p(X) :- q(X).
p(X) :- r(X).

type(a;b;c).

s(a).
