% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.

#display predicted_growth/2.
#display observed_growth/3.

:- predicted_growth(Exp, Day), observed_growth(false, Exp, Day). 
:- not predicted_growth(Exp, Day), observed_growth(true, Exp, Day). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(1).
knockout(1, "YBR166C").
observed_growth(false, 1, 1). 

#modeh exclude($retractable_reaction).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(2).
knockout(2, "YBR166C").
additional_nutrient(2, "C01179", medium).
observed_growth(true, 2, 1).
% add to make CERTAIN the import reaction for ubiquitous C00003 (same for other ubiquitous?)


%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(3).
knockout(3, "YER090W").
observed_growth(false, 3, 1). 

#modeh component($orf, $enzymeID).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(4).
knockout(4, "YER090W").
additional_nutrient(4, "C00108", medium).
observed_growth(true, 4, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(5).
knockout(5, "YDR035W").
additional_nutrient(5, "C00082", medium).
observed_growth(false, 5, 1). 

#modeh inhibitor($enzymeID, $metabolite, cytosol).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(6).
additional_nutrient(6, "C00082", medium).
observed_growth(true, 6, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(7).
knockout(7, "YKL211C").
additional_nutrient(7, "C00463", medium).
observed_growth(true, 7, 1). 

#modeh include($assertable_reaction).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(8).
knockout(8, "YGL026C").
additional_nutrient(8, "C00463", medium).
observed_growth(false, 8, 1). 

#modeh catalyst($assertable_reaction, $enzymeID).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(9).
knockout(9, "YKL211C").
observed_growth(false, 9, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(10).
knockout(10, "YBR166C").
additional_nutrient(10, "C01179", medium).
observed_growth(false, 10, 1). 

#modeh inhibited(+experiment, $enzymeID, $day).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(11).
knockout(11, "YNL316C").
additional_nutrient(11, "C00166", medium).
observed_growth(false, 11, 1). 

#modeh inhibited(+experiment, $enzymeID, $day).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(12).
observed_growth(true, 12, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
