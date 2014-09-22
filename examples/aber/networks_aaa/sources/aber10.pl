%=====================================================================
% reaction(
%  1(integer): Unique reaction identifier, 
%  2(modifiable|assertable|retractable): 
%  3(string): Label (usually EC number, if available)
%  4(1|2): Rate (day on which product is available)
%  5(list): Substrates (compartment, stoichiometry, ID)
%  6(list): Products (compartment, stoichiometry, ID)
% )
reaction(41, retractable, "none", 1, [reactant(medium, 1, "C00011")], [reactant(cytosol, 1, "C00011")]). % was <->
reaction(42, retractable, "none", 1, [reactant(cytosol, 1, "C00011")], [reactant(medium, 1, "C00011")]). % was <->
reaction(331, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00158")], [reactant(cytosol, 1, "C00158")]). % was <->
reaction(332, retractable, "none", 1, [reactant(cytosol, 1, "C00158")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00158")]). % was <->
reaction(371, retractable, "none", 1, [reactant(medium, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction(372, retractable, "none", 1, [reactant(cytosol, 1, "C00014")], [reactant(medium, 1, "C00014")]). % was <->
reaction(620, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00106")], [reactant(cytosol, 1, "C00106")]). % was (->)
reaction(781, retractable, "none", 1, [reactant(medium, 1, "C00065"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction(782, retractable, "none", 1, [reactant(cytosol, 1, "C00065")], [reactant(medium, 1, "C00065"), reactant(medium, 1, "C00080")]). % was <->
reaction(801, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction(802, retractable, "none", 1, [reactant(cytosol, 1, "C00082")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00082")]). % was <->
reaction(811, retractable, "none", 1, [reactant(medium, 1, "C00078"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction(812, retractable, "none", 1, [reactant(cytosol, 1, "C00078")], [reactant(medium, 1, "C00078"), reactant(medium, 1, "C00080")]). % was <->
reaction(831, retractable, "none", 1, [reactant(medium, 1, "C00079"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction(832, retractable, "none", 1, [reactant(cytosol, 1, "C00079")], [reactant(medium, 1, "C00079"), reactant(medium, 1, "C00080")]). % was <->
reaction(881, retractable, "none", 1, [reactant(medium, 1, "C00064"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction(882, retractable, "none", 1, [reactant(cytosol, 1, "C00064")], [reactant(medium, 1, "C00064"), reactant(medium, 1, "C00080")]). % was <->
reaction(960, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C01083")], [reactant(cytosol, 1, "C01083")]). % was (->)
reaction(1191, retractable, "none", 1, [reactant(medium, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction(1192, retractable, "none", 1, [reactant(cytosol, 1, "C00025")], [reactant(medium, 1, "C00025")]). % was <->
reaction(1581, retractable, "none", 1, [reactant(cytosol, 1, "C00009")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction(1582, retractable, "none", 1, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00009")]). % was <->
reaction(1940, retractable, "1.3.3.4", 1, [reactant(cytosol, 1, "C00007"), reactant(mitochondrion, 1, "C01079")], [reactant(mitochondrion, 1, "C02191")]). % was (->)
reaction(2190, retractable, "2.4.2.19", 1, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C03722")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01185")]). % was (->)
reaction(2670, retractable, "3.1.3.-", 1, [reactant(cytosol, 1, "C00647")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00534")]). % was (->)
reaction(2740, retractable, "2.7.1.35", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00250")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00018")]). % was (->)
reaction(2820, retractable, "2.5.1.9", 1, [reactant(cytosol, 1, "A6RP"), reactant(cytosol, 1, "DB4P")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04332")]). % was (->)
reaction(2891, retractable, "2.7.4.16", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")]). % was <->
reaction(2892, retractable, "2.7.4.16", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")]). % was <->
reaction(2980, retractable, "2.7.6.2", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00378")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00068")]). % was (->)
reaction(3000, retractable, "1.1.99.5", 1, [reactant(mitochondrion, 1, "C00016"), reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00111"), reactant(mitochondrion, 1, "C01352")]). % was (->)
reaction(3200, retractable, "3.5.5.1", 1, [reactant(cytosol, 1, "C05714")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00041")]). % was (->)
reaction(3310, retractable, "2.7.2.11", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03734")]). % was (->)
reaction(3350, retractable, "1.5.3.11", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00612")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C02229"), reactant(cytosol, 1, "C02714")]). % was (->)
reaction(3460, retractable, "4.1.1.45", 1, [reactant(cytosol, 1, "C04409")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03824")]). % was (->)
reaction(3470, retractable, "1.13.11.6", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00632")], [reactant(cytosol, 1, "C04409")]). % was (->)
reaction(3500, retractable, "3.7.1.3", 1, [reactant(cytosol, 1, "C00328")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction(3510, retractable, "3.5.1.9", 1, [reactant(cytosol, 1, "C02700")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C00328")]). % was (->)
reaction(3520, retractable, "1.13.11.11", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00078")], [reactant(cytosol, 1, "C02700")]). % was (->)
reaction(3560, retractable, "1.2.1.5", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction(3571, retractable, "2.6.1.1", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was <->
reaction(3572, retractable, "2.6.1.1", 1, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")]). % was <->
reaction(3590, retractable, "4.2.1.20", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C00118")]). % was (->)
reaction(3600, retractable, "4.1.1.48", 1, [reactant(cytosol, 1, "C01302")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03506")]). % was (->)
reaction(3610, retractable, "5.3.1.24", 1, [reactant(cytosol, 1, "C04302")], [reactant(cytosol, 1, "C01302")]). % was (->)
reaction(3620, retractable, "2.4.2.18", 1, [reactant(cytosol, 1, "C00108"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04302")]). % was (->)
reaction(3630, retractable, "4.1.3.27", 1, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction(3660, retractable, "1.3.1.13", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01179")]). % was (->)
reaction(3671, retractable, "2.6.1.-", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00166")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00079")]). % was <->
reaction(3672, retractable, "2.6.1.-", 1, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00079")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00166")]). % was <->
reaction(3680, retractable, "4.2.1.51", 1, [reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00166")]). % was (->)
reaction(3690, retractable, "5.4.99.5", 1, [reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00254")]). % was (->)
reaction(3700, retractable, "4.2.3.5", 1, [reactant(cytosol, 1, "C01269")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00251")]). % was (->)
reaction(3710, retractable, "2.5.1.19", 1, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C03175")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01269")]). % was (->)
reaction(3720, retractable, "2.7.1.71", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00493")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03175")]). % was (->)
reaction(3730, retractable, "1.1.1.25", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02637")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00493")]). % was (->)
reaction(3740, retractable, "4.2.1.10", 1, [reactant(cytosol, 1, "C00944")], [reactant(cytosol, 1, "C02637")]). % was (->)
reaction(3750, retractable, "4.2.3.4", 1, [reactant(cytosol, 1, "C04691")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00944")]). % was (->)
reaction(3760, retractable, "2.5.1.54", 1, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C00279")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04691")]). % was (->)
reaction(4600, retractable, "1.1.1.3", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00441")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00263")]). % was (->)
reaction(4910, retractable, "1.4.1.4", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction(5040, retractable, "3.2.2.4", 1, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction(5190, retractable, "3.1.3.5", 1, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")]). % was (->)
reaction(5340, retractable, "2.7.1.73", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00294")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00130")]). % was (->)
reaction(5611, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00559")], [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C03496")]). % was <->
reaction(5612, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00559")]). % was <->
reaction(5780, retractable, "3.5.4.5", 1, [reactant(cytosol, 1, "C00475")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00299")]). % was (->)
reaction(6181, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")]). % was <->
reaction(6182, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")]). % was <->
reaction(6191, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")]). % was <->
reaction(6192, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00144")]). % was <->
reaction(6241, retractable, "2.7.6.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction(6242, retractable, "2.7.6.1", 1, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction(6280, retractable, "1.-.-.-", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "ERTEOL")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01694")]). % was (->)
reaction(6290, retractable, "1.14.14.-", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "ERTROL")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "ERTEOL")]). % was (->)
reaction(6560, retractable, "none", 1, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00836")]). % was (->)
reaction(6680, retractable, "none", 1, [reactant(cytosol, 1, "DGPP")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00416")]). % was (->)
reaction(6740, retractable, "2.7.1.68", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01277")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04637")]). % was (->)
reaction(6750, retractable, "2.7.1.67", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01277")]). % was (->)
reaction(7800, retractable, "3.1.3.46", 1, [reactant(cytosol, 1, "C00665")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction(7880, retractable, "2.7.1.15", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00121")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00117")]). % was (->)
reaction(7911, retractable, "2.2.1.1", 1, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction(7912, retractable, "2.2.1.1", 1, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")]). % was <->
reaction(7921, retractable, "5.3.1.6", 1, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C00117")]). % was <->
reaction(7922, retractable, "5.3.1.6", 1, [reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00199")]). % was <->
reaction(8080, retractable, "1.3.99.1", 1, [reactant(cytosol, 1, "C00122"), reactant(mitochondrion, 1, "C01352")], [reactant(mitochondrion, 1, "C00016"), reactant(cytosol, 1, "C00042")]). % was (->)
reaction(8231, retractable, "4.2.1.11", 1, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction(8232, retractable, "4.2.1.11", 1, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction(8390, retractable, "2.7.1.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00221")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction(8621, retractable, "6.1.1.9", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00183"), reactant(cytosol, 1, "C01653")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02554")]). % was <=>
reaction(8622, retractable, "6.1.1.9", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02554")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00183"), reactant(cytosol, 1, "C01653")]). % was <=>
reaction(8631, retractable, "6.1.1.7", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")]). % was <=>
reaction(8632, retractable, "6.1.1.7", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")]). % was <=>
reaction(8781, retractable, "4.1.2.27", 1, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00346"), reactant(cytosol, 1, "C00517")]). % was <=>
reaction(8782, retractable, "4.1.2.27", 1, [reactant(cytosol, 1, "C00346"), reactant(cytosol, 1, "C00517")], [reactant(cytosol, 1, "C01120")]). % was <=>
reaction(8821, retractable, "3.6.1.13", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")]). % was <=>
reaction(8822, retractable, "3.6.1.13", 1, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")]). % was <=>
reaction(8991, retractable, "3.5.4.3", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00242")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00385")]). % was <=>
reaction(8992, retractable, "3.5.4.3", 1, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00385")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00242")]). % was <=>
reaction(9071, retractable, "3.2.1.14", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")], [reactant(cytosol, 1, "C03518")]). % was <=>
reaction(9072, retractable, "3.2.1.14", 1, [reactant(cytosol, 1, "C03518")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")]). % was <=>
reaction(9181, retractable, "3.1.3.33", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")]). % was <=>
reaction(9182, retractable, "3.1.3.33", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")]). % was <=>
reaction(9201, retractable, "3.1.3.2-3.1.3.41", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction(9202, retractable, "3.1.3.2-3.1.3.41", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction(9341, retractable, "3.1.1.3", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00165")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C01885")]). % was <=>
reaction(9342, retractable, "3.1.1.3", 1, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C01885")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00165")]). % was <=>
reaction(9511, retractable, "2.7.7.6", 1, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction(9512, retractable, "2.7.7.6", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction(9661, retractable, "2.5.1.48", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")]). % was <=>
reaction(9662, retractable, "2.5.1.48", 1, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction(9811, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05755")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05754")]). % was <=>
reaction(9812, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05754")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05755")]). % was <=>
reaction(10271, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05485")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")]). % was <=>
reaction(10272, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05485")]). % was <=>
reaction(10731, retractable, "1.2.1.31", 1, [reactant(cytosol, 1, "C05560"), reactant(cytosol, 1, "C11482")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05535")]). % was <=>
reaction(10732, retractable, "1.2.1.31", 1, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05535")], [reactant(cytosol, 1, "C05560"), reactant(cytosol, 1, "C11482")]). % was <=>
reaction(10861, retractable, "1.1.1.41", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")]). % was <=>
reaction(10862, retractable, "1.1.1.41", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00311")]). % was <=>
reaction(10900, assertable, "unknown", 1, [reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00463"), reactant(cytosol, 1, "C00661")]). % was (->)
reaction(10910, retractable, "unknown", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00463")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00078")]). % was (->)
reaction(10920, retractable, "none", 1, [reactant(medium, 1, "C00463")], [reactant(cytosol, 1, "C00463")]). % was (->)
reaction(30010, retractable, "none", 1, [reactant(medium, 1, "C00074")], [reactant(cytosol, 1, "C00074")]). % was (->)
reaction(30020, retractable, "none", 1, [reactant(medium, 1, "C00108")], [reactant(cytosol, 1, "C00108")]). % was (->)
reaction(30030, retractable, "none", 2, [reactant(medium, 1, "C00166")], [reactant(cytosol, 1, "C00166")]). % was (->)
reaction(30040, retractable, "none", 1, [reactant(medium, 1, "C00493")], [reactant(cytosol, 1, "C00493")]). % was (->)
reaction(30050, retractable, "none", 2, [reactant(medium, 1, "C01179")], [reactant(cytosol, 1, "C01179")]). % was (->)
reaction(30060, retractable, "none", 1, [reactant(medium, 1, "C00279")], [reactant(cytosol, 1, "C00279")]). % was (->)
reaction(30070, retractable, "none", 1, [reactant(medium, 1, "C00631")], [reactant(cytosol, 1, "C00631")]). % was (->)
reaction(30080, retractable, "none", 1, [reactant(medium, 1, "C00001")], [reactant(cytosol, 1, "C00001")]). % was (->)
reaction(30090, retractable, "none", 1, [reactant(medium, 1, "C00002")], [reactant(cytosol, 1, "C00002")]). % was (->)
reaction(30100, retractable, "none", 1, [reactant(medium, 1, "C00003")], [reactant(cytosol, 1, "C00003")]). % was (->)
reaction(30110, retractable, "none", 1, [reactant(medium, 1, "C00004")], [reactant(cytosol, 1, "C00004")]). % was (->)
reaction(30120, retractable, "none", 1, [reactant(medium, 1, "C00005")], [reactant(cytosol, 1, "C00005")]). % was (->)
reaction(30130, retractable, "none", 1, [reactant(medium, 1, "C00006")], [reactant(cytosol, 1, "C00006")]). % was (->)
reaction(30140, retractable, "none", 1, [reactant(medium, 1, "C00007")], [reactant(cytosol, 1, "C00007")]). % was (->)
reaction(30150, retractable, "none", 1, [reactant(medium, 1, "C00008")], [reactant(cytosol, 1, "C00008")]). % was (->)
reaction(30160, retractable, "none", 1, [reactant(medium, 1, "C00119")], [reactant(cytosol, 1, "C00119")]). % was (->)

%=====================================================================
% enzyme(
%  1(integer): Unique enzyme-complex identifier, 
%  2(modifiable|certian): Whether enzyme-complex is completely known or not
%  3(string): Label (usually EC number, if available)
%  4(list): known ORFs in the enzyme-complex
%  5(list): known reactions catalysed by the enzyme-complex
%) 
%
% n.b.  one enzyme may have several complexes associated
% n.b.  the complex lists could be used to generate a set of orfs
%	but, in fact, only knocked out orfs need be considered
%	(if we assume the knockouts are known in each experiment)
% n.b.	enzymes with no known complexes are (dynamically) assigned an *unknown*, which is never inhibited,
%	thus, either there is no information, or the known ones denote all posible complexes.
enzyme(80, certain, "1.-.-.-", ["YGL012W"], [6280]).
enzyme(79, certain, "1.1.1.145", ["YGL001C"], [10271, 10272]).
enzyme(55, certain, "1.1.1.25", ["YDR127W"], [3730]).
enzyme(107, certain, "1.1.1.3", ["YJR139C"], [4600]).
enzyme(139, certain, "1.1.1.41", ["YOR136W"], [10861, 10862]).
enzyme(95, certain, "1.1.99.5", ["YIL155C"], [3000]).
enzyme(105, certain, "1.13.11.11", ["YJR078W"], [3520]).
enzyme(102, certain, "1.13.11.6", ["YJR025C"], [3470]).
enzyme(122, certain, "1.14.14.-", ["YMR015C"], [6290]).
enzyme(84, certain, "1.2.1.31", ["YGL154C"], [10731, 10732]).
enzyme(124, certain, "1.2.1.5", ["YMR170C"], [3560]).
enzyme(123, certain, "1.2.1.5", ["YMR169C"], [3560]).
enzyme(39, certain, "1.3.1.13", ["YBR166C"], [3660]).
enzyme(71, certain, "1.3.3.4", ["YER014W"], [1940]).
enzyme(70, certain, "1.3.99.1", ["YEL047C"], [8080]).
enzyme(148, certain, "1.4.1.4", ["YOR375C"], [4910]).
enzyme(29, certain, "1.4.1.4", ["YAL062W"], [4910]).
enzyme(25, certain, "1.5.3.11", ["U62_"], [3350]).
enzyme(157, certain, "2.2.1.1", ["YPR074C"], [7911, 7912]).
enzyme(37, certain, "2.2.1.1", ["YBR117C"], [7911, 7912]).
enzyme(151, certain, "2.3.1.86", ["YPL231W"], [9811, 9812]).
enzyme(116, certain, "2.4.2.1", ["YLR209C"], [5611, 5612]).
enzyme(64, modifiable, "2.4.2.18", ["YDR354W"], [3620]).
enzyme(77, certain, "2.4.2.19", ["YFR047C"], [2190]).
enzyme(56, certain, "2.5.1.19", ["YDR127W"], [3710]).
enzyme(106, certain, "2.5.1.48", ["YJR130C"], [9661, 9662]).
enzyme(51, certain, "2.5.1.54", ["YDR035W"], [3760]).
enzyme(40, certain, "2.5.1.54", ["YBR249C"], [3760]).
enzyme(41, certain, "2.5.1.9", ["YBR256C"], [2820]).
enzyme(90, certain, "2.6.1.-", ["YHR137W"], [3671, 3672]).
enzyme(115, certain, "2.6.1.1", ["YLR027C"], [3571, 3572]).
enzyme(108, certain, "2.6.1.1", ["YKL106W"], [3571, 3572]).
enzyme(85, certain, "2.7.1.1", ["YGL253W"], [8390]).
enzyme(78, certain, "2.7.1.1", ["YFR053C"], [8390]).
enzyme(44, certain, "2.7.1.15", ["YCR036W"], [7880]).
enzyme(27, certain, "2.7.1.35", ["U83_"], [2740]).
enzyme(131, certain, "2.7.1.67", ["YNL267W"], [6750]).
enzyme(120, certain, "2.7.1.67", ["YLR305C"], [6750]).
enzyme(76, certain, "2.7.1.68", ["YFR019W"], [6740]).
enzyme(61, certain, "2.7.1.68", ["YDR208W"], [6740]).
enzyme(57, certain, "2.7.1.71", ["YDR127W"], [3720]).
enzyme(20, certain, "2.7.1.73", ["U20_"], [5340]).
enzyme(63, certain, "2.7.2.11", ["YDR300C"], [3310]).
enzyme(26, certain, "2.7.4.16", ["U76_"], [2891, 2892]).
enzyme(66, certain, "2.7.4.8", ["YDR454C"], [6181, 6182, 6191, 6192]).
enzyme(136, certain, "2.7.6.1", ["YOL061W"], [6241, 6242]).
enzyme(110, certain, "2.7.6.1", ["YKL181W"], [6241, 6242]).
enzyme(89, certain, "2.7.6.1", ["YHL011C"], [6241, 6242]).
enzyme(73, certain, "2.7.6.1", ["YER099C"], [6241, 6242]).
enzyme(30, certain, "2.7.6.1", ["YBL068W"], [6241, 6242]).
enzyme(140, certain, "2.7.6.2", ["YOR143C"], [2980]).
enzyme(161, certain, "2.7.7.6", ["YPR190C"], [9511, 9512]).
enzyme(160, certain, "2.7.7.6", ["YPR187W"], [9511, 9512]).
enzyme(158, certain, "2.7.7.6", ["YPR110C"], [9511, 9512]).
enzyme(154, certain, "2.7.7.6", ["YPR010C"], [9511, 9512]).
enzyme(147, certain, "2.7.7.6", ["YOR341W"], [9511, 9512]).
enzyme(146, certain, "2.7.7.6", ["YOR340C"], [9511, 9512]).
enzyme(144, certain, "2.7.7.6", ["YOR224C"], [9511, 9512]).
enzyme(143, certain, "2.7.7.6", ["YOR210W"], [9511, 9512]).
enzyme(142, certain, "2.7.7.6", ["YOR207C"], [9511, 9512]).
enzyme(141, certain, "2.7.7.6", ["YOR151C"], [9511, 9512]).
enzyme(138, certain, "2.7.7.6", ["YOR116C"], [9511, 9512]).
enzyme(134, certain, "2.7.7.6", ["YOL005C"], [9511, 9512]).
enzyme(133, certain, "2.7.7.6", ["YNR003C"], [9511, 9512]).
enzyme(130, certain, "2.7.7.6", ["YNL248C"], [9511, 9512]).
enzyme(129, certain, "2.7.7.6", ["YNL151C"], [9511, 9512]).
enzyme(127, certain, "2.7.7.6", ["YNL113W"], [9511, 9512]).
enzyme(109, certain, "2.7.7.6", ["YKL144C"], [9511, 9512]).
enzyme(103, certain, "2.7.7.6", ["YJR063W"], [9511, 9512]).
enzyme(100, certain, "2.7.7.6", ["YJL148W"], [9511, 9512]).
enzyme(99, certain, "2.7.7.6", ["YJL140W"], [9511, 9512]).
enzyme(94, certain, "2.7.7.6", ["YIL021W"], [9511, 9512]).
enzyme(91, certain, "2.7.7.6", ["YHR143W-A"], [9511, 9512]).
enzyme(82, certain, "2.7.7.6", ["YGL070C"], [9511, 9512]).
enzyme(74, certain, "2.7.7.6", ["YFL036W"], [9511, 9512]).
enzyme(65, certain, "2.7.7.6", ["YDR404C"], [9511, 9512]).
enzyme(60, certain, "2.7.7.6", ["YDR156W"], [9511, 9512]).
enzyme(52, certain, "2.7.7.6", ["YDR045C"], [9511, 9512]).
enzyme(47, certain, "2.7.7.6", ["YDL150W"], [9511, 9512]).
enzyme(46, certain, "2.7.7.6", ["YDL140C"], [9511, 9512]).
enzyme(38, certain, "2.7.7.6", ["YBR154C"], [9511, 9512]).
enzyme(54, certain, "3.1.1.3", ["YDR058C"], [9341, 9342]).
enzyme(28, certain, "3.1.3.-", ["U84_"], [2670]).
enzyme(156, certain, "3.1.3.2", ["YPR073C"], [9201, 9202]).
enzyme(93, certain, "3.1.3.2", ["YHR215W"], [9201, 9202]).
enzyme(45, certain, "3.1.3.2", ["YDL024C"], [9201, 9202]).
enzyme(35, certain, "3.1.3.2", ["YBR093C"], [9201, 9202]).
enzyme(34, certain, "3.1.3.2", ["YBR092C"], [9201, 9202]).
enzyme(150, certain, "3.1.3.33", ["YPL228W"], [9181, 9182]).
enzyme(125, certain, "3.1.3.33", ["YMR180C"], [9181, 9182]).
enzyme(48, certain, "3.1.3.41", ["YDL236W"], [9201, 9202]).
enzyme(101, certain, "3.1.3.46", ["YJL155C"], [7800]).
enzyme(22, certain, "3.1.3.5", ["U30_"], [5190]).
enzyme(119, certain, "3.2.1.14", ["YLR286C"], [9071, 9072]).
enzyme(121, certain, "3.2.2.4", ["YML035C"], [5040]).
enzyme(96, certain, "3.2.2.4", ["YJL070C"], [5040]).
enzyme(42, certain, "3.2.2.4", ["YBR284W"], [5040]).
enzyme(23, certain, "3.5.1.9", ["U53_"], [3510]).
enzyme(49, certain, "3.5.4.3", ["YDL238C"], [8991, 8992]).
enzyme(118, certain, "3.5.4.5", ["YLR245C"], [5780]).
enzyme(97, certain, "3.5.5.1", ["YJL126W"], [3200]).
enzyme(36, certain, "3.6.1.13", ["YBR111C"], [8821, 8822]).
enzyme(117, certain, "3.7.1.3", ["YLR231C"], [3500]).
enzyme(24, certain, "4.1.1.45", ["U54_"], [3460]).
enzyme(111, modifiable, "4.1.1.48", ["YKL211C"], [3600]).
enzyme(62, certain, "4.1.2.27", ["YDR294C"], [8781, 8782]).
enzyme(112, modifiable, "4.1.3.27", ["YKL211C", "YER090W"], [3630]).
enzyme(72, modifiable, "4.1.3.27", ["YER090W"], [3630]).
enzyme(58, certain, "4.2.1.10", ["YDR127W"], [3740]).
enzyme(153, certain, "4.2.1.11", ["YPL281C"], [8231, 8232]).
enzyme(149, certain, "4.2.1.11", ["YOR393W"], [8231, 8232]).
enzyme(126, certain, "4.2.1.11", ["YMR323W"], [8231, 8232]).
enzyme(92, certain, "4.2.1.11", ["YHR174W"], [8231, 8232]).
enzyme(88, certain, "4.2.1.11", ["YGR254W"], [8231, 8232]).
enzyme(81, modifiable, "4.2.1.20", ["YGL026C"], [3590, 10910]).
enzyme(132, certain, "4.2.1.51", ["YNL316C"], [3680]).
enzyme(59, certain, "4.2.3.4", ["YDR127W"], [3750]).
enzyme(83, certain, "4.2.3.5", ["YGL148W"], [3700]).
enzyme(50, modifiable, "5.3.1.24", ["YDR007W"], [3610]).
enzyme(137, certain, "5.3.1.6", ["YOR095C"], [7921, 7922]).
enzyme(155, certain, "5.4.99.5", ["YPR060C"], [3690]).
enzyme(145, certain, "6.1.1.7", ["YOR335C"], [8631, 8632]).
enzyme(86, certain, "6.1.1.9", ["YGR094W"], [8621, 8622]).
enzyme(159, certain, "none", ["YPR138C"], [371, 372]).
enzyme(152, certain, "none", ["YPL265W"], [781, 782, 881, 882, 1191, 1192]).
enzyme(135, modifiable, "none", ["YOL020W"], [801, 802, 811, 812, 831, 832]).
enzyme(128, certain, "none", ["YNL142W"], [371, 372]).
enzyme(114, certain, "none", ["YKR053C"], [6560]).
enzyme(113, modifiable, "none", ["YKR039W"], [781, 782, 801, 802, 811, 812, 831, 832, 881, 882, 1191, 1192]).
enzyme(104, certain, "none", ["YJR077C"], [1581, 1582]).
enzyme(98, certain, "none", ["YJL134W"], [6560]).
enzyme(87, certain, "none", ["YGR121C"], [371, 372]).
enzyme(75, certain, "none", ["YFL055W"], [781, 782, 1191, 1192]).
enzyme(69, certain, "none", ["YDR536W"], [1191, 1192]).
enzyme(68, certain, "none", ["YDR508C"], [781, 782, 881, 882]).
enzyme(67, certain, "none", ["YDR503C"], [6680]).
enzyme(53, modifiable, "none", ["YDR046C"], [801, 802, 811, 812, 831, 832]).
enzyme(43, certain, "none", ["YCL025C"], [781, 782, 801, 802, 831, 832, 881, 882, 1191, 1192]).
enzyme(33, modifiable, "none", ["YBR069C"], [801, 802, 811, 812]).
enzyme(32, modifiable, "none", ["YBR068C"], [801, 802, 811, 812, 831, 832]).
enzyme(31, certain, "none", ["YBR021W"], [620]).
enzyme(21, certain, "none", ["U228_"], [41, 42]).
enzyme(19, certain, "none", ["U206_"], [331, 332]).
enzyme(18, certain, "none", ["U168_"], [960]).
enzyme(17, certain, "none", ["I01179"], [30050]).
enzyme(16, certain, "none", ["I00631"], [30070]).
enzyme(15, certain, "none", ["I00493"], [30040]).
enzyme(14, modifiable, "none", ["I00463"], [10920]).
enzyme(13, certain, "none", ["I00279"], [30060]).
enzyme(12, certain, "none", ["I00166"], [30030]).
enzyme(11, certain, "none", ["I00119"], [30160]).
enzyme(10, modifiable, "none", ["I00108"], [30020]).
enzyme(9, certain, "none", ["I00074"], [30010]).
enzyme(8, certain, "none", ["I00008"], [30150]).
enzyme(7, certain, "none", ["I00007"], [30140]).
enzyme(6, certain, "none", ["I00006"], [30130]).
enzyme(5, certain, "none", ["I00005"], [30120]).
enzyme(4, certain, "none", ["I00004"], [30110]).
enzyme(3, certain, "none", ["I00003"], [30100]).
enzyme(2, certain, "none", ["I00002"], [30090]).
enzyme(1, certain, "none", ["I00001"], [30080]).

metabolite("A6RP").
metabolite("C00001").
metabolite("C00002").
metabolite("C00003").
metabolite("C00004").
metabolite("C00005").
metabolite("C00006").
metabolite("C00007").
metabolite("C00008").
metabolite("C00009").
metabolite("C00011").
metabolite("C00013").
metabolite("C00014").
metabolite("C00016").
metabolite("C00018").
metabolite("C00020").
metabolite("C00022").
metabolite("C00025").
metabolite("C00026").
metabolite("C00027").
metabolite("C00033").
metabolite("C00035").
metabolite("C00041").
metabolite("C00042").
metabolite("C00044").
metabolite("C00046").
metabolite("C00058").
metabolite("C00060").
metabolite("C00064").
metabolite("C00065").
metabolite("C00068").
metabolite("C00074").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00082").
metabolite("C00084").
metabolite("C00093").
metabolite("C00106").
metabolite("C00108").
metabolite("C00109").
metabolite("C00111").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00121").
metabolite("C00122").
metabolite("C00130").
metabolite("C00144").
metabolite("C00147").
metabolite("C00158").
metabolite("C00165").
metabolite("C00166").
metabolite("C00183").
metabolite("C00199").
metabolite("C00212").
metabolite("C00221").
metabolite("C00242").
metabolite("C00250").
metabolite("C00251").
metabolite("C00254").
metabolite("C00263").
metabolite("C00279").
metabolite("C00281").
metabolite("C00294").
metabolite("C00299").
metabolite("C00301").
metabolite("C00311").
metabolite("C00328").
metabolite("C00346").
metabolite("C00361").
metabolite("C00362").
metabolite("C00378").
metabolite("C00385").
metabolite("C00416").
metabolite("C00419").
metabolite("C00441").
metabolite("C00461").
metabolite("C00463").
metabolite("C00475").
metabolite("C00493").
metabolite("C00517").
metabolite("C00534").
metabolite("C00559").
metabolite("C00612").
metabolite("C00631").
metabolite("C00632").
metabolite("C00647").
metabolite("C00661").
metabolite("C00665").
metabolite("C00668").
metabolite("C00836").
metabolite("C00870").
metabolite("C00886").
metabolite("C00944").
metabolite("C01079").
metabolite("C01081").
metabolite("C01083").
metabolite("C01118").
metabolite("C01120").
metabolite("C01179").
metabolite("C01185").
metabolite("C01194").
metabolite("C01269").
metabolite("C01277").
metabolite("C01302").
metabolite("C01352").
metabolite("C01635").
metabolite("C01653").
metabolite("C01694").
metabolite("C01885").
metabolite("C02191").
metabolite("C02229").
metabolite("C02554").
metabolite("C02637").
metabolite("C02700").
metabolite("C02714").
metabolite("C03175").
metabolite("C03205").
metabolite("C03360").
metabolite("C03475").
metabolite("C03496").
metabolite("C03506").
metabolite("C03518").
metabolite("C03722").
metabolite("C03734").
metabolite("C03824").
metabolite("C04302").
metabolite("C04332").
metabolite("C04409").
metabolite("C04637").
metabolite("C04691").
metabolite("C05345").
metabolite("C05485").
metabolite("C05535").
metabolite("C05560").
metabolite("C05714").
metabolite("C05754").
metabolite("C05755").
metabolite("C06814").
metabolite("C11482").
metabolite("DB4P").
metabolite("DGPP").
metabolite("ERTEOL").
metabolite("ERTROL").

% Active ORFs 
orf("I00001").
orf("I00002").
orf("I00003").
orf("I00004").
orf("I00005").
orf("I00006").
orf("I00007").
orf("I00008").
orf("I00074").
orf("I00108").
orf("I00119").
orf("I00166").
orf("I00279").
orf("I00463").
orf("I00493").
orf("I00631").
orf("I01179").
orf("U168_").
orf("U206_").
orf("U20_").
orf("U228_").
orf("U30_").
orf("U53_").
orf("U54_").
orf("U62_").
orf("U76_").
orf("U83_").
orf("U84_").
orf("YAL062W").
orf("YBL068W").
orf("YBR021W").
orf("YBR068C").
orf("YBR069C").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR117C").
orf("YBR154C").
orf("YBR166C").
orf("YBR249C").
orf("YBR256C").
orf("YBR284W").
orf("YCL025C").
orf("YCR036W").
orf("YDL024C").
orf("YDL140C").
orf("YDL150W").
orf("YDL236W").
orf("YDL238C").
orf("YDR007W").
orf("YDR035W").
orf("YDR045C").
orf("YDR046C").
orf("YDR058C").
orf("YDR127W").
orf("YDR156W").
orf("YDR208W").
orf("YDR294C").
orf("YDR300C").
orf("YDR354W").
orf("YDR404C").
orf("YDR454C").
orf("YDR503C").
orf("YDR508C").
orf("YDR536W").
orf("YEL047C").
orf("YER014W").
orf("YER090W").
orf("YER099C").
orf("YFL036W").
orf("YFL055W").
orf("YFR019W").
orf("YFR047C").
orf("YFR053C").
orf("YGL001C").
orf("YGL012W").
orf("YGL026C").
orf("YGL070C").
orf("YGL148W").
orf("YGL154C").
orf("YGL253W").
orf("YGR094W").
orf("YGR121C").
orf("YGR254W").
orf("YHL011C").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR174W").
orf("YHR215W").
orf("YIL021W").
orf("YIL155C").
orf("YJL070C").
orf("YJL126W").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL155C").
orf("YJR025C").
orf("YJR063W").
orf("YJR077C").
orf("YJR078W").
orf("YJR130C").
orf("YJR139C").
orf("YKL106W").
orf("YKL144C").
orf("YKL181W").
orf("YKL211C").
orf("YKR039W").
orf("YKR053C").
orf("YLR027C").
orf("YLR209C").
orf("YLR231C").
orf("YLR245C").
orf("YLR286C").
orf("YLR305C").
orf("YML035C").
orf("YMR015C").
orf("YMR169C").
orf("YMR170C").
orf("YMR180C").
orf("YMR323W").
orf("YNL113W").
orf("YNL142W").
orf("YNL151C").
orf("YNL248C").
orf("YNL267W").
orf("YNL316C").
orf("YNR003C").
orf("YOL005C").
orf("YOL020W").
orf("YOL061W").
orf("YOR095C").
orf("YOR116C").
orf("YOR136W").
orf("YOR143C").
orf("YOR151C").
orf("YOR207C").
orf("YOR210W").
orf("YOR224C").
orf("YOR335C").
orf("YOR340C").
orf("YOR341W").
orf("YOR375C").
orf("YOR393W").
orf("YPL228W").
orf("YPL231W").
orf("YPL265W").
orf("YPL281C").
orf("YPR010C").
orf("YPR060C").
orf("YPR073C").
orf("YPR074C").
orf("YPR110C").
orf("YPR138C").
orf("YPR187W").
orf("YPR190C").

%% All occurrencies of 'external' have been converted to 'medium' (see below) to match with rules in process.pl
compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

%% This is definitely needed by the process.pl procedure... See the below extract:
%
% findall(_,(
% 	observed_growth(Exp,Day),
% 	\+ day(Day),
% 	format('\nunknown day "~a" in experiment ~a.',[Day,Exp])
% ),_),
%
% of course, we can move it to data.pl.
day(1).

inhibitor(
40,"C00082",cytosol).
inhibitor(
40,"C00082",cytosol).
