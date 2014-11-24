%% penguins.lp
%%%%%%%%%%%%%%%

#display flies/1.
#display penguin/1.

%% B. Background
bird(X):-penguin(X).
bird(a;b;c).
penguin(d).

%% E. Examples
#example flies(a) @2.
#example flies(b) @2.
#example flies(c) =5 @2.
#example not flies(d) =3 @2.

%% M. Modes
#modeh flies(+bird) :0-100 =4.
#modeb penguin(+bird) :1 @2.
#modeb not penguin(+bird) :3.
