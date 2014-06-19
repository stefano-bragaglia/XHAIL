%% PENGUINS.lp
%%%%%%%%%%%%%%

bird(X) :- penguin(X).
bird(a;b;c).
penguin(d).

#modeh flies(+bird) : 0-100 =5.
#modeb penguin(+bird):1.
#modeb not penguin(+bird) :3.

#example flies(a;b) @2.
#example flies(c) =5 @2.
#example not flies(d) =3 @2.
