%% PENGUINS.lp
%%%%%%%%%%%%%%

bird(X) :- penguin(X).
bird(a;b;c).
penguin(d).

#modeh flies(+bird) :0-1.
#modeb penguin(+bird).
#modeb not penguin(+bird).

#example flies(a;b).
#example flies(c).
#example not flies(d).
