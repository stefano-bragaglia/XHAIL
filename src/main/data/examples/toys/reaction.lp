#display in_compartment/4.
#display predicted_growth/2.

%% B. Background
#domain orf(ORF).
#domain reaction(Reaction;R1;R2).
#domain metabolite(Metabolite;M1;M2).
#domain complex(Complex;Cplx1;Cplx2).
#domain compartment(Compartment;Cpmt1;Cpmt2).
#domain direction(Direction).
#domain day(Day;D1;D2).
#domain experiment(Experiment;Ex1;Ex2).

orf("I00166").
orf("YHR137W").

complex("E00026").
  complex_label("E00026","IMPORT").
    component("I00166","E00026").
    catalyst("R00006","E00026").
complex("E00001").
  complex_label("E00001","2.6.1.7").
  component("YHR137W","E00001").
    catalyst("R00044","E00001").
    catalyst("R00045","E00001").

reaction("R00006").
  substrate("C00166",medium,"R00006",forward).
  product("C00166",cytosol,"R00006",forward).
reaction("R00044").
  substrate("C00025",cytosol,"R00044",forward).
  substrate("C00166",cytosol,"R00044",forward).
  product("C00026",cytosol,"R00044",forward).
  product("C00079",cytosol,"R00044",forward).
reaction("R00045").
  substrate("C00025",cytosol,"R00045",forward).
  substrate("C01179",cytosol,"R00045",forward).
  product("C00026",cytosol,"R00045",forward).
  product("C00082",cytosol,"R00045",forward).

metabolite("C00025").
metabolite("C00026").
metabolite("C00079").
metabolite("C00166").
metabolite("C01179").

compartment(cytosol).
compartment(medium).

direction(forward).

start_compound("C00166",medium).
ubiquitous_compound("C00025",cytosol).
essential_compound("C00079",cytosol).
retractable_reaction("R00044").

day(1).
experiment(1).

error("No catalyst/complex defined for given reaction",Rctn) :-
	reaction(Rctn),
	not catalyst(Rctn,X) : complex(X).
	
predicted_growth(Experiment,Day) :-
	not arrested(Experiment,Day).

arrested(Experiment,Day) :-
	deficient(Experiment,Metabolite,Day).

deficient(Experiment,Metabolite,Day) :-
	essential_compound(Metabolite,Compartment),
	not in_compartment(Experiment,Metabolite,Compartment,Day).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
	start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
	ubiquitous_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
	additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
	product(Metabolite,Compartment,Reaction,Direction),
	in_compartment(Experiment,Subs,Comp,Day) : substrate(Subs,Comp,Reaction,Direction),
	not exclude(Reaction) : retractable_reaction(Reaction),
	include(Reaction) : assertable_reaction(Reaction),
	catalyst(Reaction,Complex),
	not remove_reaction(Reaction,Complex) : modifiable_enzyme(Complex),
	not inhibited(Experiment,Complex,Day),
	not deleted(Experiment,Complex).

inhibited(Experiment,Complex,Day) :-
	inhibitor(Complex,Metabolite,P1),
	in_compartment(Experiment,Metabolite,P1,Day),
	additional_nutrient(Experiment,Metabolite,P2).

deleted(Experiment,Complex) :-
	component(ORF,Complex),
	not remove_orf(ORF,Complex) : modifiable_enzyme(Complex),
	knockout(Experiment,ORF).

% #modeh remove_orf($orf,$modifiable_enzyme).
% #modeh component($orf,$modifiable_enzyme).
:- remove_orf(ORF,Complex), not component(ORF,Complex).

% #modeh remove_reaction($reactionID,$modifiable_enzyme).
% #modeh catalyst($reactionID,$modifiable_enzyme).
:- remove_reaction(Reaction,Complex), not catalyst(Reaction,Complex).

% #modeh exclude($retractable_reaction).
% #modeh include($assertable_reaction).
:- retractable_reaction(Reaction), assertable_reaction(Reaction).

%% E. Examples
#example not predicted_growth(1,1).

%% M. Modes
#modeh inhibited($experiment,$complex,$day).