#hide.
#show use_clause_literal/2.

#domain agent ( A ) .
#domain event ( E ) .
#domain fluent ( F ) .
#domain phone ( P ; P1 ; P2 ) .
#domain time ( T ; T1 ; T2 ) .

#maximize[ holdsAt(connected(p1, p2), 3) =1 @1, holdsAt(dialTone(p1), 1) =1 @1, holdsAt(disconnected(p2), 4) =1 @1, holdsAt(idle(p1), 0) =1 @1, holdsAt(idle(p1), 4) =1 @1, holdsAt(idle(p1), 5) =1 @1, holdsAt(idle(p2), 0) =1 @1, holdsAt(idle(p2), 1) =1 @1, holdsAt(idle(p2), 5) =1 @1, holdsAt(ringing(p1, p2), 2) =1 @1, not holdsAt(busySignal(p1), 0) =1 @1, not holdsAt(busySignal(p1), 1) =1 @1, not holdsAt(busySignal(p1), 2) =1 @1, not holdsAt(busySignal(p1), 3) =1 @1, not holdsAt(busySignal(p1), 4) =1 @1, not holdsAt(busySignal(p1), 5) =1 @1, not holdsAt(busySignal(p2), 0) =1 @1, not holdsAt(busySignal(p2), 1) =1 @1, not holdsAt(busySignal(p2), 2) =1 @1, not holdsAt(busySignal(p2), 3) =1 @1, not holdsAt(busySignal(p2), 4) =1 @1, not holdsAt(busySignal(p2), 5) =1 @1, not holdsAt(connected(p1, p1), 0) =1 @1, not holdsAt(connected(p1, p1), 1) =1 @1, not holdsAt(connected(p1, p1), 2) =1 @1, not holdsAt(connected(p1, p1), 3) =1 @1, not holdsAt(connected(p1, p1), 4) =1 @1, not holdsAt(connected(p1, p1), 5) =1 @1, not holdsAt(connected(p1, p2), 0) =1 @1, not holdsAt(connected(p1, p2), 1) =1 @1, not holdsAt(connected(p1, p2), 2) =1 @1, not holdsAt(connected(p1, p2), 4) =1 @1, not holdsAt(connected(p1, p2), 5) =1 @1, not holdsAt(connected(p2, p1), 0) =1 @1, not holdsAt(connected(p2, p1), 1) =1 @1, not holdsAt(connected(p2, p1), 2) =1 @1, not holdsAt(connected(p2, p1), 3) =1 @1, not holdsAt(connected(p2, p1), 4) =1 @1, not holdsAt(connected(p2, p1), 5) =1 @1, not holdsAt(connected(p2, p2), 0) =1 @1, not holdsAt(connected(p2, p2), 1) =1 @1, not holdsAt(connected(p2, p2), 2) =1 @1, not holdsAt(connected(p2, p2), 3) =1 @1, not holdsAt(connected(p2, p2), 4) =1 @1, not holdsAt(connected(p2, p2), 5) =1 @1, not holdsAt(dialTone(p1), 0) =1 @1, not holdsAt(dialTone(p1), 2) =1 @1, not holdsAt(dialTone(p1), 3) =1 @1, not holdsAt(dialTone(p1), 4) =1 @1, not holdsAt(dialTone(p1), 5) =1 @1, not holdsAt(dialTone(p2), 0) =1 @1, not holdsAt(dialTone(p2), 1) =1 @1, not holdsAt(dialTone(p2), 2) =1 @1, not holdsAt(dialTone(p2), 3) =1 @1, not holdsAt(dialTone(p2), 4) =1 @1, not holdsAt(dialTone(p2), 5) =1 @1, not holdsAt(disconnected(p1), 0) =1 @1, not holdsAt(disconnected(p1), 1) =1 @1, not holdsAt(disconnected(p1), 2) =1 @1, not holdsAt(disconnected(p1), 3) =1 @1, not holdsAt(disconnected(p1), 4) =1 @1, not holdsAt(disconnected(p1), 5) =1 @1, not holdsAt(disconnected(p2), 0) =1 @1, not holdsAt(disconnected(p2), 1) =1 @1, not holdsAt(disconnected(p2), 2) =1 @1, not holdsAt(disconnected(p2), 3) =1 @1, not holdsAt(disconnected(p2), 5) =1 @1, not holdsAt(idle(p1), 1) =1 @1, not holdsAt(idle(p1), 2) =1 @1, not holdsAt(idle(p1), 3) =1 @1, not holdsAt(idle(p2), 2) =1 @1, not holdsAt(idle(p2), 3) =1 @1, not holdsAt(idle(p2), 4) =1 @1, not holdsAt(ringing(p1, p1), 0) =1 @1, not holdsAt(ringing(p1, p1), 1) =1 @1, not holdsAt(ringing(p1, p1), 2) =1 @1, not holdsAt(ringing(p1, p1), 3) =1 @1, not holdsAt(ringing(p1, p1), 4) =1 @1, not holdsAt(ringing(p1, p1), 5) =1 @1, not holdsAt(ringing(p1, p2), 0) =1 @1, not holdsAt(ringing(p1, p2), 1) =1 @1, not holdsAt(ringing(p1, p2), 3) =1 @1, not holdsAt(ringing(p1, p2), 4) =1 @1, not holdsAt(ringing(p1, p2), 5) =1 @1, not holdsAt(ringing(p2, p1), 0) =1 @1, not holdsAt(ringing(p2, p1), 1) =1 @1, not holdsAt(ringing(p2, p1), 2) =1 @1, not holdsAt(ringing(p2, p1), 3) =1 @1, not holdsAt(ringing(p2, p1), 4) =1 @1, not holdsAt(ringing(p2, p1), 5) =1 @1, not holdsAt(ringing(p2, p2), 0) =1 @1, not holdsAt(ringing(p2, p2), 1) =1 @1, not holdsAt(ringing(p2, p2), 2) =1 @1, not holdsAt(ringing(p2, p2), 3) =1 @1, not holdsAt(ringing(p2, p2), 4) =1 @1, not holdsAt(ringing(p2, p2), 5) =1 @1 ].

#minimize[ use_clause_literal(1, 0) =1 @1, use_clause_literal(1, 1) =1 @1, use_clause_literal(1, 2) =1 @1, use_clause_literal(1, 3) =1 @1, use_clause_literal(1, 4) =1 @1, use_clause_literal(1, 5) =1 @1, use_clause_literal(1, 6) =1 @1, use_clause_literal(1, 7) =1 @1, use_clause_literal(1, 8) =1 @1, use_clause_literal(2, 0) =1 @1, use_clause_literal(2, 1) =1 @1, use_clause_literal(2, 2) =1 @1, use_clause_literal(2, 3) =1 @1, use_clause_literal(2, 4) =1 @1, use_clause_literal(2, 5) =1 @1, use_clause_literal(2, 6) =1 @1, use_clause_literal(2, 7) =1 @1, use_clause_literal(2, 8) =1 @1 ].

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
initiates(V1, V2, V3) :- use_clause_literal(1, 0), try_clause_literal(1, 1, V1, V4, V5), try_clause_literal(1, 2, V1, V4, V5), try_clause_literal(1, 3, V2, V5), try_clause_literal(1, 4, V3, V6), try_clause_literal(1, 5, V3, V5), try_clause_literal(1, 6, V2, V5), try_clause_literal(1, 7, V3, V6), try_clause_literal(1, 8, V3, V5), event(V1), fluent(V2), time(V3).
level(1, 0) :- use_clause_literal(1, 0).
level(1, 1) :- use_clause_literal(1, 1), use_clause_literal(1, 6), use_clause_literal(1, 7), use_clause_literal(1, 8).
level(1, 2) :- use_clause_literal(1, 2), use_clause_literal(1, 3), use_clause_literal(1, 4), use_clause_literal(1, 5).
level(2, 0) :- use_clause_literal(2, 0).
level(2, 1) :- use_clause_literal(1, 1), use_clause_literal(1, 6), use_clause_literal(1, 7), use_clause_literal(1, 8), use_clause_literal(2, 1), use_clause_literal(2, 6), use_clause_literal(2, 7), use_clause_literal(2, 8).
level(2, 2) :- use_clause_literal(1, 2), use_clause_literal(1, 3), use_clause_literal(1, 4), use_clause_literal(1, 5), use_clause_literal(2, 2), use_clause_literal(2, 3), use_clause_literal(2, 4), use_clause_literal(2, 5).
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
terminates(V1, V2, V3) :- use_clause_literal(2, 0), try_clause_literal(2, 1, V1, V4, V5), try_clause_literal(2, 2, V1, V4, V5), try_clause_literal(2, 3, V2, V5), try_clause_literal(2, 4, V3, V6), try_clause_literal(2, 5, V3, V5), try_clause_literal(2, 6, V2, V5), try_clause_literal(2, 7, V3, V6), try_clause_literal(2, 8, V3, V5), event(V1), fluent(V2), time(V3).
try_clause_literal(1, 1, V1, V4, V5) :- not use_clause_literal(1, 1), agent(V4), event(V1), phone(V5).
try_clause_literal(1, 1, V1, V4, V5) :- use_clause_literal(1, 1), agent(V4), event(V1), phone(V5), eql(V1, pickUp(V4, V5)).
try_clause_literal(1, 2, V1, V4, V5) :- not use_clause_literal(1, 2), agent(V4), event(V1), phone(V5).
try_clause_literal(1, 2, V1, V4, V5) :- use_clause_literal(1, 2), agent(V4), event(V1), phone(V5), eql(V1, pickUp(V4, V5)).
try_clause_literal(1, 3, V2, V5) :- not use_clause_literal(1, 3), fluent(V2), phone(V5).
try_clause_literal(1, 3, V2, V5) :- use_clause_literal(1, 3), fluent(V2), phone(V5), eql(V2, dialTone(V5)).
try_clause_literal(1, 4, V3, V6) :- not use_clause_literal(1, 4), phone(V6), time(V3).
try_clause_literal(1, 4, V3, V6) :- use_clause_literal(1, 4), phone(V6), time(V3), holdsAt(idle(V6), V3).
try_clause_literal(1, 5, V3, V5) :- not use_clause_literal(1, 5), phone(V5), time(V3).
try_clause_literal(1, 5, V3, V5) :- use_clause_literal(1, 5), phone(V5), time(V3), holdsAt(idle(V5), V3).
try_clause_literal(1, 6, V2, V5) :- not use_clause_literal(1, 6), fluent(V2), phone(V5).
try_clause_literal(1, 6, V2, V5) :- use_clause_literal(1, 6), fluent(V2), phone(V5), eql(V2, dialTone(V5)).
try_clause_literal(1, 7, V3, V6) :- not use_clause_literal(1, 7), phone(V6), time(V3).
try_clause_literal(1, 7, V3, V6) :- use_clause_literal(1, 7), phone(V6), time(V3), holdsAt(idle(V6), V3).
try_clause_literal(1, 8, V3, V5) :- not use_clause_literal(1, 8), phone(V5), time(V3).
try_clause_literal(1, 8, V3, V5) :- use_clause_literal(1, 8), phone(V5), time(V3), holdsAt(idle(V5), V3).
try_clause_literal(2, 1, V1, V4, V5) :- not use_clause_literal(2, 1), agent(V4), event(V1), phone(V5).
try_clause_literal(2, 1, V1, V4, V5) :- use_clause_literal(2, 1), agent(V4), event(V1), phone(V5), eql(V1, pickUp(V4, V5)).
try_clause_literal(2, 2, V1, V4, V5) :- not use_clause_literal(2, 2), agent(V4), event(V1), phone(V5).
try_clause_literal(2, 2, V1, V4, V5) :- use_clause_literal(2, 2), agent(V4), event(V1), phone(V5), eql(V1, pickUp(V4, V5)).
try_clause_literal(2, 3, V2, V5) :- not use_clause_literal(2, 3), fluent(V2), phone(V5).
try_clause_literal(2, 3, V2, V5) :- use_clause_literal(2, 3), fluent(V2), phone(V5), eql(V2, idle(V5)).
try_clause_literal(2, 4, V3, V6) :- not use_clause_literal(2, 4), phone(V6), time(V3).
try_clause_literal(2, 4, V3, V6) :- use_clause_literal(2, 4), phone(V6), time(V3), holdsAt(idle(V6), V3).
try_clause_literal(2, 5, V3, V5) :- not use_clause_literal(2, 5), phone(V5), time(V3).
try_clause_literal(2, 5, V3, V5) :- use_clause_literal(2, 5), phone(V5), time(V3), holdsAt(idle(V5), V3).
try_clause_literal(2, 6, V2, V5) :- not use_clause_literal(2, 6), fluent(V2), phone(V5).
try_clause_literal(2, 6, V2, V5) :- use_clause_literal(2, 6), fluent(V2), phone(V5), eql(V2, idle(V5)).
try_clause_literal(2, 7, V3, V6) :- not use_clause_literal(2, 7), phone(V6), time(V3).
try_clause_literal(2, 7, V3, V6) :- use_clause_literal(2, 7), phone(V6), time(V3), holdsAt(idle(V6), V3).
try_clause_literal(2, 8, V3, V5) :- not use_clause_literal(2, 8), phone(V5), time(V3).
try_clause_literal(2, 8, V3, V5) :- use_clause_literal(2, 8), phone(V5), time(V3), holdsAt(idle(V5), V3).
{ use_clause_literal(V1, 0) } :- clause(V1).
{ use_clause_literal(V1, V2) } :- literal(V1, V2), clause(V1).

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
:- not level(1, 0), level(1, 1).
:- not level(1, 1), level(1, 2).
:- not level(1, 2), level(1, 3).
:- not level(2, 0), level(2, 1).
:- not level(2, 1), level(2, 2).
:- not level(2, 2), level(2, 3).

agent ( a1 ; a2 ) .
clause(1).
clause(2).
happens ( dial ( a1 , p1 , p2 ) , 1 ) .
happens ( pickUp ( a1 , p1 ) , 0 ) .
happens ( pickUp ( a2 , p2 ) , 2 ) .
happens ( setDown ( a1 , p1 ) , 3 ) .
happens ( setDown ( a2 , p2 ) , 4 ) .
literal(1, 1).
literal(1, 2).
literal(1, 3).
literal(1, 4).
literal(1, 5).
literal(1, 6).
literal(1, 7).
literal(1, 8).
literal(2, 1).
literal(2, 2).
literal(2, 3).
literal(2, 4).
literal(2, 5).
literal(2, 6).
literal(2, 7).
literal(2, 8).
phone ( p1 ; p2 ) .
time ( 0 .. 5 ) .

