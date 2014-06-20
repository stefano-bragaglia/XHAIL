#hide typ_initiates_1_1/3 .
#show abd_initiates_1_1/3 .
#show initiates / 3 .
#hide typ_terminates_1_1/3 .
#show abd_terminates_1_1/3 .
#show terminates / 3 .
#show event/1.
#show pickUp/2.
#show agent/1.
#show dialTone/1.
#show eql/2.
#show fluent/1.
#show holdsAt/2.
#show idle/1.
#show phone/1.
#show time/1.

#domain agent ( A ) .
#domain event ( E ) .
#domain fluent ( F ) .
#domain phone ( P ; P1 ; P2 ) .
#domain time ( T ; T1 ; T2 ) .

#maximize[ holdsAt(connected(p1, p2), 3) =1 @1, holdsAt(dialTone(p1), 1) =1 @1, holdsAt(disconnected(p2), 4) =1 @1, holdsAt(idle(p1), 0) =1 @1, holdsAt(idle(p1), 4) =1 @1, holdsAt(idle(p1), 5) =1 @1, holdsAt(idle(p2), 0) =1 @1, holdsAt(idle(p2), 1) =1 @1, holdsAt(idle(p2), 5) =1 @1, holdsAt(ringing(p1, p2), 2) =1 @1, not holdsAt(busySignal(p1), 0) =1 @1, not holdsAt(busySignal(p1), 1) =1 @1, not holdsAt(busySignal(p1), 2) =1 @1, not holdsAt(busySignal(p1), 3) =1 @1, not holdsAt(busySignal(p1), 4) =1 @1, not holdsAt(busySignal(p1), 5) =1 @1, not holdsAt(busySignal(p2), 0) =1 @1, not holdsAt(busySignal(p2), 1) =1 @1, not holdsAt(busySignal(p2), 2) =1 @1, not holdsAt(busySignal(p2), 3) =1 @1, not holdsAt(busySignal(p2), 4) =1 @1, not holdsAt(busySignal(p2), 5) =1 @1, not holdsAt(connected(p1, p1), 0) =1 @1, not holdsAt(connected(p1, p1), 1) =1 @1, not holdsAt(connected(p1, p1), 2) =1 @1, not holdsAt(connected(p1, p1), 3) =1 @1, not holdsAt(connected(p1, p1), 4) =1 @1, not holdsAt(connected(p1, p1), 5) =1 @1, not holdsAt(connected(p1, p2), 0) =1 @1, not holdsAt(connected(p1, p2), 1) =1 @1, not holdsAt(connected(p1, p2), 2) =1 @1, not holdsAt(connected(p1, p2), 4) =1 @1, not holdsAt(connected(p1, p2), 5) =1 @1, not holdsAt(connected(p2, p1), 0) =1 @1, not holdsAt(connected(p2, p1), 1) =1 @1, not holdsAt(connected(p2, p1), 2) =1 @1, not holdsAt(connected(p2, p1), 3) =1 @1, not holdsAt(connected(p2, p1), 4) =1 @1, not holdsAt(connected(p2, p1), 5) =1 @1, not holdsAt(connected(p2, p2), 0) =1 @1, not holdsAt(connected(p2, p2), 1) =1 @1, not holdsAt(connected(p2, p2), 2) =1 @1, not holdsAt(connected(p2, p2), 3) =1 @1, not holdsAt(connected(p2, p2), 4) =1 @1, not holdsAt(connected(p2, p2), 5) =1 @1, not holdsAt(dialTone(p1), 0) =1 @1, not holdsAt(dialTone(p1), 2) =1 @1, not holdsAt(dialTone(p1), 3) =1 @1, not holdsAt(dialTone(p1), 4) =1 @1, not holdsAt(dialTone(p1), 5) =1 @1, not holdsAt(dialTone(p2), 0) =1 @1, not holdsAt(dialTone(p2), 1) =1 @1, not holdsAt(dialTone(p2), 2) =1 @1, not holdsAt(dialTone(p2), 3) =1 @1, not holdsAt(dialTone(p2), 4) =1 @1, not holdsAt(dialTone(p2), 5) =1 @1, not holdsAt(disconnected(p1), 0) =1 @1, not holdsAt(disconnected(p1), 1) =1 @1, not holdsAt(disconnected(p1), 2) =1 @1, not holdsAt(disconnected(p1), 3) =1 @1, not holdsAt(disconnected(p1), 4) =1 @1, not holdsAt(disconnected(p1), 5) =1 @1, not holdsAt(disconnected(p2), 0) =1 @1, not holdsAt(disconnected(p2), 1) =1 @1, not holdsAt(disconnected(p2), 2) =1 @1, not holdsAt(disconnected(p2), 3) =1 @1, not holdsAt(disconnected(p2), 5) =1 @1, not holdsAt(idle(p1), 1) =1 @1, not holdsAt(idle(p1), 2) =1 @1, not holdsAt(idle(p1), 3) =1 @1, not holdsAt(idle(p2), 2) =1 @1, not holdsAt(idle(p2), 3) =1 @1, not holdsAt(idle(p2), 4) =1 @1, not holdsAt(ringing(p1, p1), 0) =1 @1, not holdsAt(ringing(p1, p1), 1) =1 @1, not holdsAt(ringing(p1, p1), 2) =1 @1, not holdsAt(ringing(p1, p1), 3) =1 @1, not holdsAt(ringing(p1, p1), 4) =1 @1, not holdsAt(ringing(p1, p1), 5) =1 @1, not holdsAt(ringing(p1, p2), 0) =1 @1, not holdsAt(ringing(p1, p2), 1) =1 @1, not holdsAt(ringing(p1, p2), 3) =1 @1, not holdsAt(ringing(p1, p2), 4) =1 @1, not holdsAt(ringing(p1, p2), 5) =1 @1, not holdsAt(ringing(p2, p1), 0) =1 @1, not holdsAt(ringing(p2, p1), 1) =1 @1, not holdsAt(ringing(p2, p1), 2) =1 @1, not holdsAt(ringing(p2, p1), 3) =1 @1, not holdsAt(ringing(p2, p1), 4) =1 @1, not holdsAt(ringing(p2, p1), 5) =1 @1, not holdsAt(ringing(p2, p2), 0) =1 @1, not holdsAt(ringing(p2, p2), 1) =1 @1, not holdsAt(ringing(p2, p2), 2) =1 @1, not holdsAt(ringing(p2, p2), 3) =1 @1, not holdsAt(ringing(p2, p2), 4) =1 @1, not holdsAt(ringing(p2, p2), 5) =1 @1 ].

#minimize[ abd_initiates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)) =1 @1 : typ_initiates_1_1(V1, V2, V3) ].
#minimize[ abd_terminates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)) =1 @1 : typ_terminates_1_1(V1, V2, V3) ].

0 { abd_initiates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)) : typ_initiates_1_1(V1, V2, V3) } 5.
0 { abd_terminates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)) : typ_terminates_1_1(V1, V2, V3) } 5.
eql ( E , E ) :- event ( E ) .
eql ( F , F ) :- fluent ( F ) .
event ( pickUp ( A , P ) ; setDown ( A , P ) ; dial ( A , P1 , P2 ) ) :- phone ( P ) , phone ( P1 ) , phone ( P2 ) , agent ( A ) .
fluent ( idle ( P ) ; dialTone ( P ) ; busySignal ( P ) ; ringing ( P1 , P2 ) ; connected ( P1 , P2 ) ; disconnected ( P ) ) :- phone ( P ) , phone ( P1 ) , phone ( P2 ) .
holdsAt ( F , T + 1 ) :- holdsAt ( F , T ) , not stopped ( F , T ) .
holdsAt ( F , T + 1 ) :- not holdsAt ( F , T ) , started ( F , T ) .
holdsAt ( idle ( P ) , 0 ) :- phone ( P ) .
initiates ( dial ( A , P1 , P2 ) , busySignal ( P1 ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P1 ) , T ) , not holdsAt ( idle ( P2 ) , T ) .
initiates ( dial ( A , P1 , P2 ) , ringing ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P1 ) , T ) , holdsAt ( idle ( P2 ) , T ) .
initiates ( pickUp ( A , P2 ) , connected ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( ringing ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P ) , idle ( P ) , T ) :- agent ( A ) , holdsAt ( busySignal ( P ) , T ) .
initiates ( setDown ( A , P ) , idle ( P ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P ) , T ) .
initiates ( setDown ( A , P ) , idle ( P ) , T ) :- agent ( A ) , holdsAt ( disconnected ( P ) , T ) .
initiates ( setDown ( A , P1 ) , disconnected ( P2 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P1 ) , idle ( P1 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P1 ) , idle ( P1 ) , T ) :- agent ( A ) , holdsAt ( ringing ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P1 ) , idle ( P2 ) , T ) :- agent ( A ) , holdsAt ( ringing ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P2 ) , disconnected ( P1 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
initiates ( setDown ( A , P2 ) , idle ( P2 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
initiates(V1, V2, V3) :- typ_initiates_1_1(V1, V2, V3), abd_initiates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)).
started ( F , T ) :- happens ( E , T ) , initiates ( E , F , T ) .
stopped ( F , T ) :- happens ( E , T ) , terminates ( E , F , T ) .
terminates ( dial ( A , P1 , P2 ) , dialTone ( P1 ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P1 ) , T ) , holdsAt ( idle ( P2 ) , T ) .
terminates ( dial ( A , P1 , P2 ) , dialTone ( P1 ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P1 ) , T ) , not holdsAt ( idle ( P2 ) , T ) .
terminates ( dial ( A , P1 , P2 ) , idle ( P2 ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P1 ) , T ) , holdsAt ( idle ( P2 ) , T ) .
terminates ( pickUp ( A , P2 ) , ringing ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( ringing ( P1 , P2 ) , T ) .
terminates ( setDown ( A , P ) , busySignal ( P ) , T ) :- agent ( A ) , holdsAt ( busySignal ( P ) , T ) .
terminates ( setDown ( A , P ) , dialTone ( P ) , T ) :- agent ( A ) , holdsAt ( dialTone ( P ) , T ) .
terminates ( setDown ( A , P ) , disconnected ( P ) , T ) :- agent ( A ) , holdsAt ( disconnected ( P ) , T ) .
terminates ( setDown ( A , P1 ) , connected ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
terminates ( setDown ( A , P1 ) , ringing ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( ringing ( P1 , P2 ) , T ) .
terminates ( setDown ( A , P2 ) , connected ( P1 , P2 ) , T ) :- agent ( A ) , holdsAt ( connected ( P1 , P2 ) , T ) .
terminates(V1, V2, V3) :- typ_terminates_1_1(V1, V2, V3), abd_terminates_1_1(inp_tag(V1, event), inp_tag(V2, fluent), inp_tag(V3, time)).
typ_initiates_1_1(V1, V2, V3) :- event(V1), fluent(V2), time(V3).
typ_terminates_1_1(V1, V2, V3) :- event(V1), fluent(V2), time(V3).

:- holdsAt ( busySignal ( P ) , 0 ) , phone ( P ) .
:- holdsAt ( connected ( P1 , P2 ) , 0 ) , phone ( P1 ) , phone ( P2 ) .
:- holdsAt ( dialTone ( P ) , 0 ) , phone ( P ) .
:- holdsAt ( disconnected ( P ) , 0 ) , phone ( P ) .
:- holdsAt ( ringing ( P1 , P2 ) , 0 ) , phone ( P1 ) , phone ( P2 ) .
:- holdsAt(busySignal(p1), 0).
:- holdsAt(busySignal(p1), 1).
:- holdsAt(busySignal(p1), 2).
:- holdsAt(busySignal(p1), 3).
:- holdsAt(busySignal(p1), 4).
:- holdsAt(busySignal(p1), 5).
:- holdsAt(busySignal(p2), 0).
:- holdsAt(busySignal(p2), 1).
:- holdsAt(busySignal(p2), 2).
:- holdsAt(busySignal(p2), 3).
:- holdsAt(busySignal(p2), 4).
:- holdsAt(busySignal(p2), 5).
:- holdsAt(connected(p1, p1), 0).
:- holdsAt(connected(p1, p1), 1).
:- holdsAt(connected(p1, p1), 2).
:- holdsAt(connected(p1, p1), 3).
:- holdsAt(connected(p1, p1), 4).
:- holdsAt(connected(p1, p1), 5).
:- holdsAt(connected(p1, p2), 0).
:- holdsAt(connected(p1, p2), 1).
:- holdsAt(connected(p1, p2), 2).
:- holdsAt(connected(p1, p2), 4).
:- holdsAt(connected(p1, p2), 5).
:- holdsAt(connected(p2, p1), 0).
:- holdsAt(connected(p2, p1), 1).
:- holdsAt(connected(p2, p1), 2).
:- holdsAt(connected(p2, p1), 3).
:- holdsAt(connected(p2, p1), 4).
:- holdsAt(connected(p2, p1), 5).
:- holdsAt(connected(p2, p2), 0).
:- holdsAt(connected(p2, p2), 1).
:- holdsAt(connected(p2, p2), 2).
:- holdsAt(connected(p2, p2), 3).
:- holdsAt(connected(p2, p2), 4).
:- holdsAt(connected(p2, p2), 5).
:- holdsAt(dialTone(p1), 0).
:- holdsAt(dialTone(p1), 2).
:- holdsAt(dialTone(p1), 3).
:- holdsAt(dialTone(p1), 4).
:- holdsAt(dialTone(p1), 5).
:- holdsAt(dialTone(p2), 0).
:- holdsAt(dialTone(p2), 1).
:- holdsAt(dialTone(p2), 2).
:- holdsAt(dialTone(p2), 3).
:- holdsAt(dialTone(p2), 4).
:- holdsAt(dialTone(p2), 5).
:- holdsAt(disconnected(p1), 0).
:- holdsAt(disconnected(p1), 1).
:- holdsAt(disconnected(p1), 2).
:- holdsAt(disconnected(p1), 3).
:- holdsAt(disconnected(p1), 4).
:- holdsAt(disconnected(p1), 5).
:- holdsAt(disconnected(p2), 0).
:- holdsAt(disconnected(p2), 1).
:- holdsAt(disconnected(p2), 2).
:- holdsAt(disconnected(p2), 3).
:- holdsAt(disconnected(p2), 5).
:- holdsAt(idle(p1), 1).
:- holdsAt(idle(p1), 2).
:- holdsAt(idle(p1), 3).
:- holdsAt(idle(p2), 2).
:- holdsAt(idle(p2), 3).
:- holdsAt(idle(p2), 4).
:- holdsAt(ringing(p1, p1), 0).
:- holdsAt(ringing(p1, p1), 1).
:- holdsAt(ringing(p1, p1), 2).
:- holdsAt(ringing(p1, p1), 3).
:- holdsAt(ringing(p1, p1), 4).
:- holdsAt(ringing(p1, p1), 5).
:- holdsAt(ringing(p1, p2), 0).
:- holdsAt(ringing(p1, p2), 1).
:- holdsAt(ringing(p1, p2), 3).
:- holdsAt(ringing(p1, p2), 4).
:- holdsAt(ringing(p1, p2), 5).
:- holdsAt(ringing(p2, p1), 0).
:- holdsAt(ringing(p2, p1), 1).
:- holdsAt(ringing(p2, p1), 2).
:- holdsAt(ringing(p2, p1), 3).
:- holdsAt(ringing(p2, p1), 4).
:- holdsAt(ringing(p2, p1), 5).
:- holdsAt(ringing(p2, p2), 0).
:- holdsAt(ringing(p2, p2), 1).
:- holdsAt(ringing(p2, p2), 2).
:- holdsAt(ringing(p2, p2), 3).
:- holdsAt(ringing(p2, p2), 4).
:- holdsAt(ringing(p2, p2), 5).
:- not holdsAt(connected(p1, p2), 3).
:- not holdsAt(dialTone(p1), 1).
:- not holdsAt(disconnected(p2), 4).
:- not holdsAt(idle(p1), 0).
:- not holdsAt(idle(p1), 4).
:- not holdsAt(idle(p1), 5).
:- not holdsAt(idle(p2), 0).
:- not holdsAt(idle(p2), 1).
:- not holdsAt(idle(p2), 5).
:- not holdsAt(ringing(p1, p2), 2).

agent ( a1 ; a2 ) .
happens ( dial ( a1 , p1 , p2 ) , 1 ) .
happens ( pickUp ( a1 , p1 ) , 0 ) .
happens ( pickUp ( a2 , p2 ) , 2 ) .
happens ( setDown ( a1 , p1 ) , 3 ) .
happens ( setDown ( a2 , p2 ) , 4 ) .
phone ( p1 ; p2 ) .
time ( 0 .. 5 ) .

