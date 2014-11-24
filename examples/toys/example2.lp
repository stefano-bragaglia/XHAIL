#display p/1.
#display q/1.
#display r/1.
%% #display s/1.
%% #display t/1.

p(X):-q(X).
p(X):-r(X).
t(a;b;c).
s(a).

#example p(a).
#example not p(b).

#modeh q(+t).
#modeh r(+t).

#modeb s(+t).

