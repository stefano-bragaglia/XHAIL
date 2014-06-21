#example pp ( a ) .
#example not pp ( b ) .

#modeh qq ( +tt ) .
#modeh rr ( +tt ) .

#modeb ss ( +tt ) .

pp ( X ) :- qq ( X ) .
pp ( X ) :- rr ( X ) .

tt ( a ; b ; c ) .
ss ( a ) .
