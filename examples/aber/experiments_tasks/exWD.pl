% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.

#display predicted_growth/2.
#display observed_growth/3.

:- predicted_growth(Exp, Day), observed_growth(false, Exp, Day). 
:- not predicted_growth(Exp, Day), observed_growth(true, Exp, Day). 

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(1).
knockout(1, "YER090W").
observed_growth(false, 1, 1). 

#modeh component($orf, $enzymeID) =5 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(2).
knockout(2, "YER090W").
additional_nutrient(2, "C00108", medium).
observed_growth(true, 2, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(3).
knockout(3, "YDR035W").
additional_nutrient(3, "C00082", medium).
observed_growth(false, 3, 1). 

#modeh inhibitor($enzymeID,$metabolite,cytosol) =1 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(4).
additional_nutrient(4, "C00082", medium).
observed_growth(true, 4, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%


experiment(5).
knockout(5, "YKL211C").
additional_nutrient(5, "C00463", medium).
observed_growth(true, 5, 1). 

#modeh include($assertable_reaction) =5 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(6).
knockout(6, "YGL026C").
additional_nutrient(6, "C00463", medium).
observed_growth(false, 6, 1). 

#modeh catalyst($assertable_reaction, $enzymeID) =1 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(7).
knockout(7, "YKL211C").
observed_growth(false, 7, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%


experiment(8).
knockout(8, "YBR166C").
additional_nutrient(8, "C01179", medium).
observed_growth(false, 8, 1). 

#modeh inhibited(+experiment,$enzymeID,$day) : 2-2.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(9).
knockout(9, "YNL316C").
additional_nutrient(9, "C00166", medium).
observed_growth(false, 9, 1). 

#modeh inhibited(+experiment,$enzymeID,$day) : 2-2.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(10).
observed_growth(true, 10, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
