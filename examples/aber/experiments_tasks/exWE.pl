experiment(1).
knockout(1, "YER090W").
#example not predicted_growth(1, 1) =4. 

experiment(2).
knockout(2, "YER090W").
additional_nutrient(2, "C00108", medium).
#example predicted_growth(2, 1) =4. 

#modeh component($orf, $enzymeID) =10 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(3).
knockout(3, "YDR035W").
additional_nutrient(3, "C00082", medium).
#example not predicted_growth(3, 1) =4. 

experiment(4).
additional_nutrient(4, "C00082", medium).
#example predicted_growth(4, 1) =4. 

#modeh inhibitor($enzymeID,$metabolite,cytosol) =1 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(5).
knockout(5, "YKL211C").
additional_nutrient(5, "C00463", medium).
#example predicted_growth(5, 1) =4. 

experiment(6).
knockout(6, "YGL026C").
additional_nutrient(6, "C00463", medium).
#example not predicted_growth(6, 1) =4. 

experiment(7).
knockout(7, "YKL211C").
#example not predicted_growth(7, 1) =4. 

#modeh include($assertable_reaction) =10 @1.
#modeh catalyst($assertable_reaction, $enzymeID) =1 @1.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(8).
knockout(8, "YBR166C").
additional_nutrient(8, "C01179", medium).
#example not predicted_growth(8, 1) =4. 

experiment(9).
knockout(9, "YNL316C").
additional_nutrient(9, "C00166", medium).
#example not predicted_growth(9, 1) =4. 

experiment(10).
#example predicted_growth(10, 1) =4. 

#modeh inhibited(+experiment,$enzymeID,$day) : 2-2.

%%%%%%%%%%%%%%%%%%%%%%%%%%

experiment(11).
#example not predicted_growth(11, 1) =4. 
