%% dbg.

% background theory
bird(X) :- penguin(X).
bird(a).
bird(b).
bird(c).
penguin(d).

% mode declarations
modeh(0, 1, min, flies("+bird")).
modeb(0, 100, pos, penguin("+bird")).
modeb(0, 100, neg, penguin("+bird")).

% examples
goal(obs).
obs :-
	flies(a), 
	flies(b), 
	flies(c),
	not flies(d).
