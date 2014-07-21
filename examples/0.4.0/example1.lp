p :- q, r.
q :- r.

modeh(0,50,min,q).
modeh(0,50,min,r).

goal(obs).
obs :- p.