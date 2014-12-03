#display happens/2.

%% B. Background
#domain time(S;T).
holdsAt(F,T) :- happens(E,S), S<T, initiates(E,F,S), not clipped(S,F,T).
clipped(S,F,T) :- happens(E,R), S<R, R<T, terminates(E,F,R).
holdsAt(F,T) :- initially(F), not clipped(0,F,T).
time(0..9).
sugar(lactose ; glucose).
event(add(G) ; use(G)) :- sugar(G).
fluent(available(G)) :- sugar(G).
initiates(add(G), available(G), T) :- sugar(G), time(T).
terminates(use(G), available(G), T) :- sugar(G), time(T).
:- happens(use(G),T), not holdsAt(available(G), T).
happens(add(lactose), 0).
happens(add(glucose), 0).

%% E. Examples
#example holdsAt(available(lactose), 1).
#example holdsAt(available(lactose), 2).
#example not holdsAt(available(lactose), 3).

%% M. Modes
#modeh happens(use($sugar),+time).
#modeb holdsAt($fluent,+time).
#modeb not holdsAt($fluent,+time).

%% H. Hypothesis
% happens(use(glucose),T) :- holdsAt(available(glucose),T).
% happens(use(lactose),T) :- holdsAt(available(lactose),T), not holdsAt(available(glucose),T).

