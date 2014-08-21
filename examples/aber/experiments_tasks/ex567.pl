% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.

#display predicted_growth/2.
#display observed_growth/3.

:- predicted_growth(Exp, Day), observed_growth(false, Exp, Day). 
:- not predicted_growth(Exp, Day), observed_growth(true, Exp, Day). 

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(5).
knockout(5, "YKL211C").
additional_nutrient(5, "C00463", medium).
observed_growth(true, 5, 1). 

#modeh include($assertable_reaction).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(6).
knockout(6, "YGL026C").
additional_nutrient(6, "C00463", medium).
observed_growth(false, 6, 1). 

#modeh catalyst($assertable_reaction, $enzymeID).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(7).
knockout(7, "YKL211C").
observed_growth(false, 7, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%
