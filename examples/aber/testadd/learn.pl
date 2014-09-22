% #display catalyst/2.
% #display component/2.
% #display deleted/2.
% #display deficient/3.
% #display inhibitor/3.

% #display predicted_growth/2.
#display observed_growth/3.

#display violated/2.

violated(Exp,Day) :- predicted_growth(Exp,Day), observed_growth(false,Exp,Day).
violated(Exp,Day) :- not predicted_growth(Exp,Day), observed_growth(true,Exp,Day).

%*
#modeh inhibited(+experiment,$modifiable_enzyme,$day).
#modeh additional_nutrient(+experiment, $metabolite, medium).
#modeb additional_nutrient(+experiment, $metabolite, medium).
*%

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(1).
knockout(1, "YKL211C").
additional_nutrient(1, "C00108", medium).
observed_growth(false,1, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(2).
knockout(2, "YNL316C").
additional_nutrient(2, "C00108", medium).
observed_growth(false,2, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(3).
knockout(3, "YGL026C").
additional_nutrient(3, "C00108", medium).
observed_growth(false,3, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(4).
knockout(4, "YDR354W").
additional_nutrient(4, "C00108", medium).
observed_growth(false,4, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(5).
knockout(5, "YDR035W").
additional_nutrient(5, "C00108", medium).
observed_growth(true,5, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(6).
knockout(6, "YBR166C").
additional_nutrient(6, "C00108", medium).
observed_growth(false,6, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(7).
knockout(7, "YDR007W").
additional_nutrient(7, "C00108", medium).
observed_growth(false,7, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(8).
knockout(8, "YER090W").
additional_nutrient(8, "C00108", medium).
observed_growth(false,8, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(9).
knockout(9, "YDR007W").
additional_nutrient(9, "C00078", medium).
observed_growth(true,9, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(10).
knockout(10, "YDR354W").
additional_nutrient(10, "C00078", medium).
observed_growth(true,10, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(11).
knockout(11, "YER090W").
additional_nutrient(11, "C00078", medium).
observed_growth(true,11, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(12).
knockout(12, "YGL026C").
additional_nutrient(12, "C00078", medium).
observed_growth(true,12, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(13).
knockout(13, "YKL211C").
additional_nutrient(13, "C00078", medium).
observed_growth(true,13, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(14).
knockout(14, "YNL316C").
additional_nutrient(14, "C00078", medium).
observed_growth(false,14, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(15).
knockout(15, "YDR035W").
additional_nutrient(15, "C00166", medium).
observed_growth(true,15, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(16).
knockout(16, "YBR166C").
additional_nutrient(16, "C00078", medium).
observed_growth(false,16, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(17).
knockout(17, "YDR035W").
additional_nutrient(17, "C00166", medium).
additional_nutrient(17, "C00108", medium).
observed_growth(true,17, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(18).
knockout(18, "YDR007W").
additional_nutrient(18, "C00463", medium).
observed_growth(true,18, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(19).
knockout(19, "YBR166C").
additional_nutrient(19, "C00082", medium).
additional_nutrient(19, "C00079", medium).
observed_growth(true,19, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(20).
knockout(20, "YER090W").
additional_nutrient(20, "C00463", medium).
observed_growth(true,20, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(21).
knockout(21, "YDR354W").
additional_nutrient(21, "C00463", medium).
observed_growth(true,21, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(22).
knockout(22, "YGL026C").
additional_nutrient(22, "C00463", medium).
observed_growth(true,22, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(23).
knockout(23, "YKL211C").
additional_nutrient(23, "C00463", medium).
observed_growth(true,23, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(24).
knockout(24, "YNL316C").
additional_nutrient(24, "C00082", medium).
additional_nutrient(24, "C00079", medium).
observed_growth(true,24, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(25).
knockout(25, "YBR166C").
additional_nutrient(25, "C00082", medium).
observed_growth(true,25, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(26).
knockout(26, "YNL316C").
additional_nutrient(26, "C00082", medium).
observed_growth(false,26, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(27).
knockout(27, "YGL026C").
additional_nutrient(27, "C00166", medium).
observed_growth(false,27, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(28).
knockout(28, "YER090W").
additional_nutrient(28, "C00166", medium).
observed_growth(false,28, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(29).
knockout(29, "YDR007W").
additional_nutrient(29, "C00166", medium).
observed_growth(false,29, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(30).
knockout(30, "YDR354W").
additional_nutrient(30, "C00166", medium).
observed_growth(false,30, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(31).
knockout(31, "YKL211C").
additional_nutrient(31, "C00166", medium).
observed_growth(false,31, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(32).
knockout(32, "YDR035W").
additional_nutrient(32, "C00078", medium).
observed_growth(true,32, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(33).
knockout(33, "YBR166C").
additional_nutrient(33, "C00166", medium).
observed_growth(false,33, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(34).
knockout(34, "YDR007W").
additional_nutrient(34, "C00166", medium).
additional_nutrient(34, "C00108", medium).
observed_growth(false,34, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(35).
knockout(35, "YNL316C").
additional_nutrient(35, "C00079", medium).
observed_growth(true,35, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(36).
knockout(36, "YGL026C").
additional_nutrient(36, "C00166", medium).
additional_nutrient(36, "C00108", medium).
observed_growth(false,36, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(37).
knockout(37, "YKL211C").
additional_nutrient(37, "C00166", medium).
additional_nutrient(37, "C00108", medium).
observed_growth(false,37, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(38).
knockout(38, "YDR035W").
additional_nutrient(38, "C00079", medium).
observed_growth(true,38, 1). 

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(39).
knockout(39, "YER090W").
additional_nutrient(39, "C00166", medium).
additional_nutrient(39, "C00108", medium).
observed_growth(false,39, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(40).
knockout(40, "YDR354W").
additional_nutrient(40, "C00166", medium).
additional_nutrient(40, "C00108", medium).
observed_growth(false,40, 1).

%%%%%%%%%%%%%%%%%%%%%%%%%%
