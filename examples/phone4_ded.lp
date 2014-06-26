% AUTHOR:  Oliver Ray 
% DATE:	   22/04/2008
% SYSTEM:  XHAIL ver 0.33
% SUMMARY: EC Telephone Exchange System

%% #display.
#display holdsAt/2.

%%%%%%%%%%%%%%%%%%%%%%%%
%%% TYPE DEFINITIONS %%%
%%%%%%%%%%%%%%%%%%%%%%%%

#domain fluent(F).
#domain event(E).
#domain time(T;T1;T2).
#domain phone(P;P1;P2).
#domain agent(A).

agent(a1 ; a2).
phone(p1 ; p2).
event(pickUp(A,P) ; setDown(A,P) ; dial(A,P1,P2)) :- phone(P), phone(P1), phone(P2), agent(A).
fluent(idle(P) ; dialTone(P); busySignal(P) ; ringing(P1,P2) ; connected(P1,P2) ; disconnected(P)) :- phone(P), phone(P1), phone(P2).
time(0..5).

eql(E,E) :- event(E).
eql(F,F) :- fluent(F).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% EVENT CALCULUS DEFINITIONS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

holdsAt(F,T+1)  :- holdsAt(F,T), not stopped(F,T).
holdsAt(F,T+1)  :- not holdsAt(F,T), started(F,T).
stopped(F,T) :- happens(E,T), terminates(E,F,T).
started(F,T)  :- happens(E,T), initiates(E,F,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DOMAIN DEFINITIONS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

initiates(pickUp(A,P),dialTone(P),T) :- agent(A),holdsAt(idle(P),T). 
terminates(pickUp(A,P),idle(P),T) :- agent(A),holdsAt(idle(P),T). 
initiates(setDown(A,P),idle(P),T) :- agent(A),holdsAt(dialTone(P),T). 
terminates(setDown(A,P),dialTone(P),T) :- agent(A),holdsAt(dialTone(P),T). 
initiates(dial(A,P1,P2),ringing(P1,P2),T) :- agent(A),holdsAt(dialTone(P1),T), holdsAt(idle(P2),T). 
terminates(dial(A,P1,P2),dialTone(P1),T) :- agent(A),holdsAt(dialTone(P1),T), holdsAt(idle(P2),T). 
terminates(dial(A,P1,P2),idle(P2),T) :- agent(A),holdsAt(dialTone(P1),T), holdsAt(idle(P2),T). 
initiates(dial(A,P1,P2),busySignal(P1),T) :- agent(A),holdsAt(dialTone(P1),T), not holdsAt(idle(P2),T). 
terminates(dial(A,P1,P2),dialTone(P1),T) :- agent(A),holdsAt(dialTone(P1),T), not holdsAt(idle(P2),T). 
initiates(setDown(A,P),idle(P),T) :- agent(A),holdsAt(busySignal(P),T). 
terminates(setDown(A,P),busySignal(P),T) :- agent(A),holdsAt(busySignal(P),T). 
initiates(setDown(A,P1),idle(P1),T) :- agent(A),holdsAt(ringing(P1,P2),T). 
initiates(setDown(A,P1),idle(P2),T) :- agent(A),holdsAt(ringing(P1,P2),T). 
terminates(setDown(A,P1),ringing(P1,P2),T) :- agent(A),holdsAt(ringing(P1,P2),T). 
initiates(pickUp(A,P2),connected(P1,P2),T) :- agent(A),holdsAt(ringing(P1,P2),T). 
terminates(pickUp(A,P2),ringing(P1,P2),T) :- agent(A),holdsAt(ringing(P1,P2),T). 
initiates(setDown(A,P1),idle(P1),T) :- agent(A),holdsAt(connected(P1,P2),T). 
initiates(setDown(A,P1),disconnected(P2),T) :- agent(A),holdsAt(connected(P1,P2),T). 
terminates(setDown(A,P1),connected(P1,P2),T) :- agent(A),holdsAt(connected(P1,P2),T). 
initiates(setDown(A,P2),idle(P2),T) :- agent(A),holdsAt(connected(P1,P2),T). 
initiates(setDown(A,P2),disconnected(P1),T) :- agent(A),holdsAt(connected(P1,P2),T). 
terminates(setDown(A,P2),connected(P1,P2),T) :- agent(A),holdsAt(connected(P1,P2),T). 
initiates(setDown(A,P),idle(P),T) :- agent(A),holdsAt(disconnected(P),T). 
terminates(setDown(A,P),disconnected(P),T) :- agent(A),holdsAt(disconnected(P),T). 

%%%%%%%%%%%%%%%%
%%% SCENARIO %%%
%%%%%%%%%%%%%%%%

holdsAt(idle(P),0) :- phone(P).
:- holdsAt(dialTone(P),0), phone(P).
:- holdsAt(busySignal(P),0), phone(P).
:- holdsAt(ringing(P1,P2),0), phone(P1), phone(P2).
:- holdsAt(connected(P1,P2),0), phone(P1), phone(P2).
:- holdsAt(disconnected(P),0), phone(P).

happens(pickUp(a1,p1),0).
happens(dial(a1,p1,p2),1).
happens(pickUp(a2,p2),2).
happens(setDown(a1,p1),3).
happens(setDown(a2,p2),4).

%%%%%%%%%%%%%%%%
%%% EXAMPLES %%%
%%%%%%%%%%%%%%%%

#example holdsAt(idle(p1), 0).
#example holdsAt(idle(p2), 0).
#example not holdsAt(dialTone(p1), 0).
#example not holdsAt(dialTone(p2), 0).
#example not holdsAt(busySignal(p1), 0).
#example not holdsAt(busySignal(p2), 0).
#example not holdsAt(ringing(p1, p1), 0).
#example not holdsAt(ringing(p1, p2), 0).
#example not holdsAt(ringing(p2, p1), 0).
#example not holdsAt(ringing(p2, p2), 0).
#example not holdsAt(connected(p1, p1), 0).
#example not holdsAt(connected(p1, p2), 0).
#example not holdsAt(connected(p2, p1), 0).
#example not holdsAt(connected(p2, p2), 0).
#example not holdsAt(disconnected(p1), 0).
#example not holdsAt(disconnected(p2), 0).
#example not holdsAt(idle(p1), 1).
#example holdsAt(idle(p2), 1).
#example holdsAt(dialTone(p1), 1).
#example not holdsAt(dialTone(p2), 1).
#example not holdsAt(busySignal(p1), 1).
#example not holdsAt(busySignal(p2), 1).
#example not holdsAt(ringing(p1, p1), 1).
#example not holdsAt(ringing(p1, p2), 1).
#example not holdsAt(ringing(p2, p1), 1).
#example not holdsAt(ringing(p2, p2), 1).
#example not holdsAt(connected(p1, p1), 1).
#example not holdsAt(connected(p1, p2), 1).
#example not holdsAt(connected(p2, p1), 1).
#example not holdsAt(connected(p2, p2), 1).
#example not holdsAt(disconnected(p1), 1).
#example not holdsAt(disconnected(p2), 1).
#example not holdsAt(idle(p1), 2).
#example not holdsAt(idle(p2), 2).
#example not holdsAt(dialTone(p1), 2).
#example not holdsAt(dialTone(p2), 2).
#example not holdsAt(busySignal(p1), 2).
#example not holdsAt(busySignal(p2), 2).
#example not holdsAt(ringing(p1, p1), 2).
#example holdsAt(ringing(p1, p2), 2).
#example not holdsAt(ringing(p2, p1), 2).
#example not holdsAt(ringing(p2, p2), 2).
#example not holdsAt(connected(p1, p1), 2).
#example not holdsAt(connected(p1, p2), 2).
#example not holdsAt(connected(p2, p1), 2).
#example not holdsAt(connected(p2, p2), 2).
#example not holdsAt(disconnected(p1), 2).
#example not holdsAt(disconnected(p2), 2).
#example not holdsAt(idle(p1), 3).
#example not holdsAt(idle(p2), 3).
#example not holdsAt(dialTone(p1), 3).
#example not holdsAt(dialTone(p2), 3).
#example not holdsAt(busySignal(p1), 3).
#example not holdsAt(busySignal(p2), 3).
#example not holdsAt(ringing(p1, p1), 3).
#example not holdsAt(ringing(p1, p2), 3).
#example not holdsAt(ringing(p2, p1), 3).
#example not holdsAt(ringing(p2, p2), 3).
#example not holdsAt(connected(p1, p1), 3).
#example holdsAt(connected(p1, p2), 3).
#example not holdsAt(connected(p2, p1), 3).
#example not holdsAt(connected(p2, p2), 3).
#example not holdsAt(disconnected(p1), 3).
#example not holdsAt(disconnected(p2), 3).
#example holdsAt(idle(p1), 4).
#example not holdsAt(idle(p2), 4).
#example not holdsAt(dialTone(p1), 4).
#example not holdsAt(dialTone(p2), 4).
#example not holdsAt(busySignal(p1), 4).
#example not holdsAt(busySignal(p2), 4).
#example not holdsAt(ringing(p1, p1), 4).
#example not holdsAt(ringing(p1, p2), 4).
#example not holdsAt(ringing(p2, p1), 4).
#example not holdsAt(ringing(p2, p2), 4).
#example not holdsAt(connected(p1, p1), 4).
#example not holdsAt(connected(p1, p2), 4).
#example not holdsAt(connected(p2, p1), 4).
#example not holdsAt(connected(p2, p2), 4).
#example not holdsAt(disconnected(p1), 4).
#example holdsAt(disconnected(p2), 4).
#example holdsAt(idle(p1), 5).
#example holdsAt(idle(p2), 5).
#example not holdsAt(dialTone(p1), 5).
#example not holdsAt(dialTone(p2), 5).
#example not holdsAt(busySignal(p1), 5).
#example not holdsAt(busySignal(p2), 5).
#example not holdsAt(ringing(p1, p1), 5).
#example not holdsAt(ringing(p1, p2), 5).
#example not holdsAt(ringing(p2, p1), 5).
#example not holdsAt(ringing(p2, p2), 5).
#example not holdsAt(connected(p1, p1), 5).
#example not holdsAt(connected(p1, p2), 5).
#example not holdsAt(connected(p2, p1), 5).
#example not holdsAt(connected(p2, p2), 5).
#example not holdsAt(disconnected(p1), 5).
#example not holdsAt(disconnected(p2), 5).

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MODE DECLARATIONS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%

%%% None.
