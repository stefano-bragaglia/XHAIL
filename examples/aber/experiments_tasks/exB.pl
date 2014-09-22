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

#modeh component($orf, $enzymeID).

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

#modeh inhibitor($enzymeID,$metabolite,cytosol).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(4).
additional_nutrient(4, "C00082", medium).
observed_growth(true, 4, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%