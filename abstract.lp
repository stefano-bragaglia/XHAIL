#display p/1.
#display r/2.
#display q/3.

%% B. Background
q(a,b,c;d).
r(b,d).
t(a;b;c;d).

%% E. Examples
#example p(a).
#example not p(b).
#example not p(c).
#example not p(d).

%% M. Modes
#modeh p(+t).
#modeb q(+t,-t,$t).
#modeb r(+t,-t).
