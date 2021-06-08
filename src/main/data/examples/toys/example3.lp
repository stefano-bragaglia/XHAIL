#display p/1.
#display q/3.
#display r/2.
% #display t/1.

q(a,b,c).
q(a,b,d).
r(b,d).
t(a;b;c;d).

#example p(a).
#example not p(b) .
#example not p(c).
#example not p(d).

#modeh p(+t).

#modeb q(+t, -t, $t).
#modeb r(+t, -t).
