%% PENGUINS.lp
%%%%%%%%%%%%%%

% #display flies/1.
% #display penguin/1.

% #modeh test(+bird,-flies,$penguin).

% #modeh flies(+bird) : 0-100 =5.
% #modeb penguin(+bird):1.
% #modeb not penguin(+bird) :3.

% #example flies(a;b) @2.
% #example flies(c) =5 @2.
% #example not flies(d) =3 @2.







#maximise[ flies(a) =1 @2, flies(b) =1 @2, flies(c) =5 @2, not flies(d) =3 @2 ].

#minimise[ abducible(flies(inpar(V1,bird)),X,Y) =X @Y : type(flies(V1)) ].
0 { abducible(flies(inpar(V1,bird),5,1)) : type(flies(V1)) } 100.
flies(V1) :- type(flies(V1)), abducible(flies(inpar(V1,bird)),5,1).
type(flies(V1)) :- bird(V1).

% #minimise[ abducible(test(inpar(V1,bird),outpar(V2,flies),conpar(V3,penguin)),X,Y) =X @Y : type(test(V1,V2,V3)) ].
% 0 { abducible(test(inpar(V1,bird),outpar(V2,flies),conpar(V3,penguin)),1,1) : type(test(V1,V2,V3)) } #supremum.
% test(V1,V2,V3) :- type(test(V1, V2, V3)), abducible(test(inpar(V1,bird),outpar(V2,flies),conpar(V3,penguin)),1,1).
% type(test(V1,V2,V3)) :- bird(V1), flies(V2), penguin(V3).

examples(false,flies(a;b),1,2).
examples(false,flies(c),5,2).
examples(true,flies(d),3,2).

:- not flies(a).
:- not flies(b).



bird(X) :- penguin(X).
bird(a;b;c).
penguin(d).
