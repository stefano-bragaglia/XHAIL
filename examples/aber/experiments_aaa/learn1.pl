% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.
% #display inhibitor/3.

% #display predicted_growth/2.
% #display observed_growth/3.

#modeh inhibited(+experiment,$modifiable_enzyme,$day).
#modeh additional_nutrient(+experiment, $metabolite, medium).
#modeb additional_nutrient(+experiment, $metabolite, medium).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(1).
knockout(1, "YKL211C").
additional_nutrient(1, "C00108", medium).
#example not predicted_growth(1, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%
