#display goodFlag/2.
%#display small_ft/2.


#modeh goodFlag($program,$flag).
%#modeb small_ft($ft,+program).
%#modeb not small_ft($ft,+program).

%*
conflict(P,Q):-
  program(P),
  program(Q),
  small_ft(F1,Q):small_ft(F1,P),
  small_ft(F2,P):small_ft(F2,Q),
  flag(G),
  goodFlag(P,G),
  not goodFlag(Q,G).

  #display conflict/2.
*%
