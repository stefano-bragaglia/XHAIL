% Task A: YER090W as enzyme complex in 4.1.3.27
knockout(1, "YER090W").
#example not predicted_growth(1, 1) =4.
#modeh component($orf, $enzymeID) : 1 =3.
knockout(2, "YER090W"). additional_nutrient(2, "C00108", medium).
#example predicted_growth(2, 1) =4.
% Task B: C00082 inhibits YBR249C in 2.5.1.54
knockout(3, "YDR035W"). additional_nutrient(3, "C00082", medium).
#example not predicted_growth(3, 1) =4.
#modeh inhibitor($enzymeID,$metabolite,cytosol) : 1 =2.
additional_nutrient(4, "C00082", medium).
#example predicted_growth(4, 1) =4.
 ...
% Task E: Noisy data
#example not predicted_growth(11, 1) =1.