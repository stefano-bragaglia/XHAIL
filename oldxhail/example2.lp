
pp(X) :- qq(X).
pp(X) :- rr(X).

tt(a).
tt(b).
tt(c).
ss(a).

modeh(0,50,min,qq("+tt")).
modeh(0,50,min,rr("+tt")).
modeb(0,50,pos,ss("+tt")).

obs :- pp(a), not pp(b).
goal(obs).

