#display p/1.
#display q/3.
#display r/2.
% #display t/1.

#modeh p(+t).

#modeb q(+t, -t, $t).
#modeb r(+t, -t).

#example p(a).
#example not p(b) .
#example not p(c).
#example not p(d).

q(a,b,c).
q(a,b,d).
r(b,d).

t(a;b;c;d).
