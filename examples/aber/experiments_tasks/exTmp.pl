% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.

#display predicted_growth/2.
#display observed_growth/3.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(1).
knockout(1, "YER090W").
#example not predicted_growth(1,1).

#modeh component($orf, $enzymeID).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(2).
knockout(2, "YER090W"). additional_nutrient(2, "C00108", medium).
#example predicted_growth(2,1).
