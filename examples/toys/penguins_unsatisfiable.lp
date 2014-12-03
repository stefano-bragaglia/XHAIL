%% PENGUINS.lp
%%%%%%%%%%%%%%

#display flies/1.
#display penguin/1.

%% B. Background
bird(X):-penguin(X).
bird(a;b;c).
penguin(d).

%% E. Examples
#example flies(a).
#example flies(b).
#example flies(c).
#example not flies(d).

%% M. Modes
#modeh flies(+bird) :0-1.
#modeb penguin(+bird).
#modeb not penguin(+bird).

