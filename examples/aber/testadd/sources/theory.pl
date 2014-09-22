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
% NbS: commented out entries are duplicated in Ross's section below, or no more present in ABER
% start_compound("C00000",medium). % h not in KEGG
% start_compound("C00001",medium). % h2o
% start_compound("C00002",medium).
% start_compound("C00003",medium).
% start_compound("C00005",medium).
% start_compound("C00006",medium).
start_compound("C00011",medium). % co2
start_compound("C00014",medium).
start_compound("C00025",medium).
start_compound("C00064",medium).
start_compound("C00065",medium).
start_compound("C00119",medium).
start_compound("C00279",medium).
start_compound("C00631",medium).

% NbS: from Table 10 in Ross' paper (http://www.biomedcentral.com/1471-2105/9/97)
start_compound("C00002",medium). % ATP
start_compound("C00003",medium). % NAD+
start_compound("C00004",medium). % NADH
start_compound("C00005",medium). % NADPH
start_compound("C00006",medium). % NADP+
start_compound("C00007",medium). % O2
start_compound("C00008",medium). % ADP
start_compound("C00016",medium). % FAD
start_compound("C00032",medium). % protoheme
start_compound("C00061",medium). % FMN
start_compound("C00137",medium). % myo-inositol
start_compound("C00194",medium). % coenzyme B12
start_compound("C00255",medium). % riboflavin
start_compound("C00342",medium). % Thioredoxin
start_compound("C00346",medium). % phosphoethanolamine
start_compound("C00399",medium). % ubiquinone
start_compound("C00448",medium). % farnesyl pyrophosphate
start_compound("C00575",medium). % 3'5'-Cyclic AMP
start_compound("C00641",medium). % 1 2-Diacyglycerol

% NdS: added by us, not present in Ross' paper
start_compound("C00080",medium). % Hydron




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

predicted_growth(Experiment,Day) :- 
	not arrested(Experiment,Day).

% arrested(Experiment,Day) :- 
%	knockout(Experiment,ORF), 
%	essential(ORF).

% arrested(Experiment,Day) :- 
%	additional_nutrient(Experiment, Metabolite, Compartment),
%	toxic(Metabolite).
	
%predicted_growth(Experiment,Day) :- 
%	additional_nutrient(Experiment, Metabolite, Compartment),
%	opaque(Metabolite).
