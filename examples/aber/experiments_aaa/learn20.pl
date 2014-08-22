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

experiment(2).
knockout(2, "YNL316C").
additional_nutrient(2, "C00108", medium).
#example not predicted_growth(2, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(3).
knockout(3, "YGL026C").
additional_nutrient(3, "C00108", medium).
#example not predicted_growth(3, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(4).
knockout(4, "YDR354W").
additional_nutrient(4, "C00108", medium).
#example not predicted_growth(4, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(5).
knockout(5, "YDR035W").
additional_nutrient(5, "C00108", medium).
#example predicted_growth(5, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(6).
knockout(6, "YBR166C").
additional_nutrient(6, "C00108", medium).
#example not predicted_growth(6, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(7).
knockout(7, "YDR007W").
additional_nutrient(7, "C00108", medium).
#example not predicted_growth(7, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(8).
knockout(8, "YER090W").
additional_nutrient(8, "C00108", medium).
#example not predicted_growth(8, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(9).
knockout(9, "YDR007W").
additional_nutrient(9, "C00078", medium).
#example predicted_growth(9, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(10).
knockout(10, "YDR354W").
additional_nutrient(10, "C00078", medium).
#example predicted_growth(10, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(11).
knockout(11, "YER090W").
additional_nutrient(11, "C00078", medium).
#example predicted_growth(11, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(12).
knockout(12, "YGL026C").
additional_nutrient(12, "C00078", medium).
#example predicted_growth(12, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(13).
knockout(13, "YKL211C").
additional_nutrient(13, "C00078", medium).
#example predicted_growth(13, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(14).
knockout(14, "YNL316C").
additional_nutrient(14, "C00078", medium).
#example not predicted_growth(14, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(15).
knockout(15, "YDR035W").
additional_nutrient(15, "C00166", medium).
#example predicted_growth(15, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(16).
knockout(16, "YBR166C").
additional_nutrient(16, "C00078", medium).
#example not predicted_growth(16, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(17).
knockout(17, "YDR035W").
additional_nutrient(17, "C00166", medium).
additional_nutrient(17, "C00108", medium).
#example predicted_growth(17, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(18).
knockout(18, "YDR007W").
additional_nutrient(18, "C00463", medium).
#example predicted_growth(18, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(19).
knockout(19, "YBR166C").
additional_nutrient(19, "C00082", medium).
additional_nutrient(19, "C00079", medium).
#example predicted_growth(19, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(20).
knockout(20, "YER090W").
additional_nutrient(20, "C00463", medium).
#example predicted_growth(20, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%
