%% PENGUINS.lp
%%%%%%%%%%%%%%

#display flies/1.
#display penguin/1.

#modeh flies(+bird) :0-1.
#modeb penguin(+bird).
#modeb not penguin(+bird).

#example flies(a).
#example flies(b).
#example flies(c).
#example not flies(d).

bird(X) :- penguin(X).
bird(a;b;c).
penguin(d).
