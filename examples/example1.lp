#example fact(a).
#example not fact(b).

#modeh head1(+type).
#modeh head2(+type).

#modeb body(+type).

fact(X) :- head1(X).
fact(X) :- head2(X).

type(a;b;c).
body(a).
