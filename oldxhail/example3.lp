%% dbg.

% background theory
q(a,b,c). 
q(a,b,d).

r(b,d).

t(a). 
t(b). 
t(c). 
t(d). 

% mode declarations
modeh(0,  50, min, p("+t")).
modeb(0, 100, pos, q("+t", "-t", "#t")).
modeb(0, 150, pos, r("+t", "-t")).

% examples
goal(obs).
obs :-
	p(a),
	not p(b),
	not p(c),
	not p(d).
