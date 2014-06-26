#display pp/1.
#display qq/1.
#display rr/1.
%% #display ss/1.
%% #display tt/1.

#modeh qq(+tt).
#modeh rr(+tt).

#modeb ss(+tt).

#example pp(a).
#example not pp(b).


pp(X) :- qq(X).
pp(X) :- rr(X).

tt(a;b;c).
ss(a).
