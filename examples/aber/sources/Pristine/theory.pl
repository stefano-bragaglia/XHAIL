%dbg. 
%%% domain declarations

#domain reactionID(Reaction;R1;R2).
#domain enzymeID(Complex;E1;E2).
#domain metabolite(Metabolite;M1;M2).
#domain day(Day;D1;D2).
#domain orf(ORF).
#domain compartment(Compartment;P1;P2).
#domain experiment(Experiment).

%start compounds, in minimal medium

start_compound("C00631",medium).
start_compound("C00279",medium).
start_compound("C00005",medium).
start_compound("C00000",medium). % h not in KEGG
start_compound("C00002",medium).
start_compound("C00014",medium).
start_compound("C00064",medium).
start_compound("C00119",medium).
start_compound("C00065",medium).
start_compound("C00003",medium).
start_compound("C00006",medium).
start_compound("C00001",medium). % h2o
start_compound("C00011",medium). % co2
start_compound("C00025",medium).

%essential compound, required for growth

essential_compound("C00078",cytosol).
essential_compound("C00079",cytosol).
essential_compound("C00082",cytosol).

%%% program clauses 

inhibited(Experiment,Complex,Day) :-
	inhibitor(Complex,Metabolite,P1),
	in_compartment(Experiment,Metabolite,P1,Day),
	additional_nutrient(Experiment,Metabolite,P2).

deleted(Experiment,Complex) :- 
	component(ORF,Complex),
	knockout(Experiment,ORF).

deficient(Experiment,Metabolite,Day) :-
	essential_compound(Metabolite,Compartment), 
	not in_compartment(Experiment,Metabolite,Compartment,Day).	
	
arrested(Experiment,Day) :- 
	deficient(Experiment,Metabolite,Day).

arrested(Experiment,Day) :- 
	knockout(Experiment,ORF), 
	essential(ORF).

arrested(Experiment,Day) :- 
	additional_nutrient(Experiment, Metabolite, Compartment),
	toxic(Metabolite).
	
predicted_growth(Experiment,Day) :- 
	not arrested(Experiment,Day).

predicted_growth(Experiment,Day) :- 
	additional_nutrient(Experiment, Metabolite, Compartment),
	opaque(Metabolite).

%*****************************************************************
% VALIDATION
%*****************************************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Generate Predictions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% task(deduce).
% disp(predicted_growth(_,_)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Confirm Predictions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add predicted growth to predictions clause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% task(deduce).
% disp(predictions).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%*****************************************************************


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Re-learn Inhibitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% remove inhibitor(14,"C00082",cytosol).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% task(abduce).
% goal(predictions).
% modeh(0,10,min,inhibitor("#enzymeID","#metabolite",cytosol)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7 Seconds, 2 solutions
% [inhibitor(14, "C00082"", cytosol)]
% [inhibitor(14, "C00078"", cytosol)]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%*****************************************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add/remove reactions 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make reaction 45 assertable, 
% make reaction 0 retractable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modeh(0,10,min,include("#assertable_reaction")).
% modeh(0,10,min,exclude("#retractable_reaction")).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12 seconds, 1 solution
% [exclude(0), include(45)]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add/remove reactions 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make reaction 21-45 assertable, 
% make reaction 0 retractable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modeh(0,25,min,include("#assertable_reaction")).
% modeh(0,25,min,exclude("#retractable_reaction")).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 14 seconds, 4 solutions
% leave out 1 of 33 or 34 (complex)
% and one of 38 or 39 (indole loop)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%*****************************************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% infer complexes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% remove enzyme(4,  certain, "4.2.1.51", ["YNL316C"], [42]).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% newcomplex("C1"). enzymeID("C1").
% modeh(0,2,min,catalyst("#reactionID","#newcomplex")).
% modeh(0,2,min,component("#orf","#newcomplex")).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 14 seconds, 2 solutions
% [catalyst(19, "C1"), component("YNL316C"", "C1")] % I00003
% [catalyst(42, "C1"), component("YNL316C"", "C1")] % 4.2.1.51
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%*****************************************************************
% APPLICATION
%*****************************************************************

% verification of hypotheses for indole treated separately
% from anthranilate by setting antranilate import rate to 2 (in reaction 5).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% induce contamination
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 false :-  observed_growth(Experiment,Day), not predicted_growth(Experiment,Day). 	% , not inconsistent(Experiment,Day).
 false :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day). 		% , not incomplete(Experiment,Day).
 task(induce).
 modeh(0,1,min,additional_nutrient("+exp", "#metabolite", medium)).
 modeb(0,1,pos,additional_nutrient("+exp", "#metabolite", medium)).
 exp(21..22;-2). %exp limits scope of the learnt rule too much
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 22 seconds, 1 solution
% additional_nutrient(VAR1,"C00078",medium) :- additional_nutrient(VAR1,"C00463",medium),exp(VAR1). 
% additional_nutrient(Experiment,"C00078",medium) :- additional_nutrient(Experiment,"C00463",medium).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% induce opacity
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% false :-  observed_growth(Experiment,Day), not predicted_growth(Experiment,Day). 	% , not inconsistent(Experiment,Day).
% false :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day). 		% , not incomplete(Experiment,Day).
% task(induce).
% modeh(0,1,min,predicted_growth("+experiment", "+day")).
% modeb(0,1,pos,additional_nutrient("+experiment", "#metabolite", medium)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 22 seconds, 1 solution
% predicted_growth(VAR1,VAR2) :- additional_nutrient(VAR1,"C00463",medium),experiment(VAR1),day(VAR2).
% predicted_growth(Experiment,Day) :- additional_nutrient(Experiment,"C00463",medium).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% verification of hypotheses for anthranilate treated separately
% from indole by removing experiment 22.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% abduce YER090W complex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% false :-  observed_growth(Experiment,Day), not predicted_growth(Experiment,Day). 	% , not inconsistent(Experiment,Day).
% false :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day). 		% , not incomplete(Experiment,Day).
% task(abduce).
% new_complex(c1).
% trp_complex(6..11).
% trp_orf("YER090W";"YGL026C";"YKL211C";"YDR007W";"YDR354W").
%
% modeh(0,5,min,catalyst("#enzyme","#new_complex")).
% modeh(0,5,min,component("#trp_orf","#trp_complex")).
% modeh(0,5,min,remove("#trp_orf","#trp_complex")).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 13 seconds, 3 solutions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [component("YER090W", 9)] % "5.3.1.24"
% [component("YER090W", 8)] % "2.4.2.18"
% [component("YER090W", 7)] % "4.1.1.48"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% induce slow anthranilate import
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% false :-  observed_growth(Experiment,Day), not predicted_growth(Experiment,Day). 	% , not inconsistent(Experiment,Day).
% false :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day). 		% , not incomplete(Experiment,Day).
% task(induce).
% day(2).
% less(D1,D2) :- D1 < D2.
% modeh(0,5,min,inhibited("+experiment", 25, "+day")).
% modeb(0,5,pos,less("+day", "#day")).
% false :- inhibited(Experiment,unknown,Day).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 60 seconds, 1 solutions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% inhibited(VAR1,25,VAR2) :- experiment(VAR1),day(VAR2).
% inhibited(Experiment,25,Day).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% If provide day two data then Day < 2 in body 




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% other effects
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% modeh(0,5,min,essential("#orf")).
% modeh(0,5,min,toxic("#metabolite")).
% modeh(0,5,min,opaque("#metabolite")).
% modeh(0,5,min,contaminated("#metabolite","#metabolite")).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
















%task(deduce).  
%disp(inconsistent(_,_)).
%disp(other_effect(_,_)).
%inconsistent(Experiment,Day) :- observed_growth(Experiment,Day), not predicted_growth(Experiment,Day).
%other_effect(Experiment,Day) :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day).

%task(abduce).
%modeh(0,5,min,essential("#orf")).
%modeh(0,5,min,toxic("#metabolite")).
%modeh(0,5,min,opaque("#metabolite")).
%modeh(0,5,min,contaminated("#metabolite","#metabolite")).
%modeh(0,5,min,incomplete("#experiment","#day")).
%modeh(0,5,min,inconsistent("#experiment","#day")).
%modeh(0,5,min,inhibitor("#complex","#metabolite",cytosol)).


%false :- observed_growth(Experiment,Day), not predicted_growth(Experiment,Day). % , not inconsistent(Experiment,Day).
%false :- -observed_growth(Experiment,Day), predicted_growth(Experiment,Day). %, not incomplete(Experiment,Day).

%trp_complex(5..8).
%trp_orf("YER090C";"YPR060C";"YGL026C";"YKL211C";"YDR007W";"YDR354W").
%new_complex(c1).

%modeh(0,5,min,enzyme_complex("#enzyme","#new_complex")).
%modeh(0,5,min,orf_complex("#trp_orf","#trp_complex")).
%modeh(0,5,min,remove("#trp_orf","#trp_complex")).


%...To Give Assumptions
%###############################
%### [opaque("C00463"")]
%### [orf_complex("YER090C"", 8)]
%###############################
%###############################
%### [contaminated("C00463"", "C00078"")]
%### [orf_complex("YER090C"", 8)]
%###############################
%
%###############################
%### [contaminated("C00463"", "C00078"")]
%### [orf_complex("YER090C"", 7)]
%###############################
%###############################
%### [opaque("C00463"")]
%### [orf_complex("YER090C"", 7)]
%###############################
%
%###############################
%### [contaminated("C00463"", "C00078"")]
%### [orf_complex("YER090C"", 6)]
%###############################
%###############################
%### [opaque("C00463"")]
%### [orf_complex("YER090C"", 6)]
%###############################

%###############################
%### [opaque("C00463"")]
%### [orf_complex("YER090C"", 5)]
%###############################
%###############################
%### [contaminated("C00463"", "C00078"")]
%### [orf_complex("YER090C"", 5)]
%###############################
%-*-*-*-*-*-*-




%###############################
%### [contaminated("C00463"", "C00078"")]
%### [incomplete(39, 1)]
%### [incomplete(8, 1)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [opaque("C00463"")]
%### [incomplete(39, 1)]
%### [incomplete(8, 1)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [incomplete(39, 1)]
%### [incomplete(8, 1)]
%### [inconsistent(22, 1)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [essential("YER090C"")]
%### [opaque("C00463"")]
%### [inconsistent(11, 1)]
%###############################

%modeh(0,5,min,include("#out")).
%modeh(0,5,min,exclude("#in")).

%modeh(0,5,min,inhibitor("#complex","#metabolite",cytosol)).

%Seconds Elapsed:9.359
%----------------------
%Computing Minimal Seed Size...
%
%
%Seconds Elapsed:265.248
%# = 2
%
%----------------------
%Computing All 2-ary Seed(s)...
%
%
%Seconds Elapsed:273.712
%
%Seconds Elapsed:470.88
%# = 3
%
%----------------------
%
%...To Give Assumptions
%
%###############################
%### [inconsistent(22, 1)]
%### [exclude(5)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [opaque("C00463"")]
%### [exclude(5)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [contaminated("C00463"", "C00078"")]
%### [exclude(5)]
%###############################
%
%...Having Sub-Model
%
%[ ]
%-*-*-*-*-*-*-


%complex("C1").     complex("C2").    
%newcomplex("C1").  newcomplex("C2"). 

%modeh(0,5,min,enzyme_complex("#enzyme","#newcomplex")).
%modeh(0,5,min,orf_complex("#orf","#newcomplex")).

%false :- enzyme_complex("I00119",Complex),not eq(Complex,unknown).
%
%...To Give Assumptions
%
%###############################
%### [enzyme_complex("I00108"", "C2"")]
%### [enzyme_complex("I00064"", "C2"")]
%### [enzyme_complex("I00014"", "C2"")]
%### [enzyme_complex("4.2.1.20"", "C1"")]
%### [orf_complex("YER090C"", "C2"")]
%### [orf_complex("YGL026C"", "C2"")]
%###############################
%
%...Having Sub-Model
%
%[ ]
%
%...To Give Assumptions
%
%###############################
%### [enzyme_complex("I00108"", "C1"")]
%### [enzyme_complex("I00064"", "C1"")]
%### [enzyme_complex("I00014"", "C1"")]
%### [enzyme_complex("4.2.1.20"", "C2"")]
%### [orf_complex("YER090C"", "C1"")]
%### [orf_complex("YGL026C"", "C1"")]
%###############################



