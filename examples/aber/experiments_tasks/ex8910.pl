% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.

#display predicted_growth/2.
#display observed_growth/3.

:- predicted_growth(Exp, Day), observed_growth(false, Exp, Day). 
:- not predicted_growth(Exp, Day), observed_growth(true, Exp, Day). 

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(8).
knockout(8, "YBR166C").
additional_nutrient(8, "C01179", medium).
observed_growth(false, 8, 1). 

#modeh inhibited(+experiment,$enzymeID,$day).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(9).
knockout(9, "YNL316C").
additional_nutrient(9, "C00166", medium).
observed_growth(false, 9, 1). 

#modeh inhibited(+experiment,$enzymeID,$day).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(10).
observed_growth(true, 10, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
