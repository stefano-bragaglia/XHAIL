%=====================================================================
% reaction(
%  1(integer): Unique reaction identifier, 
%  2(modifiable|assertable|retractable): 
%  3(string): Label (usually EC number, if available)
%  4(1|2): Rate (day on which product is available)
%  5(list): Substrates (compartment, stoichiometry, ID)
%  6(list): Products (compartment, stoichiometry, ID)
% )
reaction(21, retractable, "none", 1, [reactant(medium, 1, "C05437")], [reactant(cytosol, 1, "C05437")]). % was <->
reaction(22, retractable, "none", 1, [reactant(cytosol, 1, "C05437")], [reactant(medium, 1, "C05437")]). % was <->
reaction(41, retractable, "none", 1, [reactant(medium, 1, "C00011")], [reactant(cytosol, 1, "C00011")]). % was <->
reaction(42, retractable, "none", 1, [reactant(cytosol, 1, "C00011")], [reactant(medium, 1, "C00011")]). % was <->
reaction(91, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C01037")], [reactant(cytosol, 1, "C01037")]). % was <->
reaction(92, retractable, "none", 1, [reactant(cytosol, 1, "C01037")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C01037")]). % was <->
reaction(111, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00120")], [reactant(cytosol, 1, "C00120")]). % was <->
reaction(112, retractable, "none", 1, [reactant(cytosol, 1, "C00120")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00120")]). % was <->
reaction(131, retractable, "none", 1, [reactant(medium, 1, "C00178")], [reactant(medium, 1, "C00080"), reactant(cytosol, 1, "C00178")]). % was <->
reaction(132, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(cytosol, 1, "C00178")], [reactant(medium, 1, "C00178")]). % was <->
reaction(141, retractable, "none", 1, [reactant(medium, 1, "C00459")], [reactant(cytosol, 1, "C00459")]). % was <->
reaction(142, retractable, "none", 1, [reactant(cytosol, 1, "C00459")], [reactant(medium, 1, "C00459")]). % was <->
reaction(361, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00238")], [reactant(cytosol, 1, "C00238")]). % was <->
reaction(362, retractable, "none", 1, [reactant(cytosol, 1, "C00238")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00238")]). % was <->
reaction(371, retractable, "none", 1, [reactant(medium, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction(372, retractable, "none", 1, [reactant(cytosol, 1, "C00014")], [reactant(medium, 1, "C00014")]). % was <->
reaction(520, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00294")], [reactant(cytosol, 1, "C00294")]). % was (->)
reaction(560, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00212")], [reactant(cytosol, 1, "C00212")]). % was (->)
reaction(570, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C01762")], [reactant(cytosol, 1, "C01762")]). % was (->)
reaction(581, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00242")], [reactant(cytosol, 1, "C00242")]). % was <->
reaction(582, retractable, "none", 1, [reactant(cytosol, 1, "C00242")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00242")]). % was <->
reaction(660, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00315")], [reactant(cytosol, 1, "C00315")]). % was (->)
reaction(771, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction(772, retractable, "none", 1, [reactant(cytosol, 1, "C00188")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00188")]). % was <->
reaction(781, retractable, "none", 1, [reactant(medium, 1, "C00065"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction(782, retractable, "none", 1, [reactant(cytosol, 1, "C00065")], [reactant(medium, 1, "C00065"), reactant(medium, 1, "C00080")]). % was <->
reaction(801, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction(802, retractable, "none", 1, [reactant(cytosol, 1, "C00082")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00082")]). % was <->
reaction(811, retractable, "none", 1, [reactant(medium, 1, "C00078"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction(812, retractable, "none", 1, [reactant(cytosol, 1, "C00078")], [reactant(medium, 1, "C00078"), reactant(medium, 1, "C00080")]). % was <->
reaction(831, retractable, "none", 1, [reactant(medium, 1, "C00079"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction(832, retractable, "none", 1, [reactant(cytosol, 1, "C00079")], [reactant(medium, 1, "C00079"), reactant(medium, 1, "C00080")]). % was <->
reaction(841, retractable, "none", 1, [reactant(medium, 1, "C00073"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction(842, retractable, "none", 1, [reactant(cytosol, 1, "C00073")], [reactant(medium, 1, "C00073"), reactant(medium, 1, "C00080")]). % was <->
reaction(851, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction(852, retractable, "none", 1, [reactant(cytosol, 1, "C00123")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00123")]). % was <->
reaction(881, retractable, "none", 1, [reactant(medium, 1, "C00064"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction(882, retractable, "none", 1, [reactant(cytosol, 1, "C00064")], [reactant(medium, 1, "C00064"), reactant(medium, 1, "C00080")]). % was <->
reaction(901, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction(902, retractable, "none", 1, [reactant(cytosol, 1, "C00097")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00097")]). % was <->
reaction(931, retractable, "none", 1, [reactant(medium, 1, "C00062"), reactant(medium, 1, "C00080")], [reactant(cytosol, 1, "C00062")]). % was <->
reaction(932, retractable, "none", 1, [reactant(cytosol, 1, "C00062")], [reactant(medium, 1, "C00062"), reactant(medium, 1, "C00080")]). % was <->
reaction(990, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "NAG")], [reactant(cytosol, 1, "NAG")]). % was (->)
reaction(1060, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "GLTL")], [reactant(cytosol, 1, "GLTL")]). % was (->)
reaction(1111, retractable, "none", 1, [reactant(cytosol, 1, "C00026"), reactant(medium, 1, "C00711")], [reactant(medium, 1, "C00026"), reactant(cytosol, 1, "C00711")]). % was <->
reaction(1112, retractable, "none", 1, [reactant(medium, 1, "C00026"), reactant(cytosol, 1, "C00711")], [reactant(cytosol, 1, "C00026"), reactant(medium, 1, "C00711")]). % was <->
reaction(1121, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00711")], [reactant(cytosol, 1, "C00711")]). % was <->
reaction(1122, retractable, "none", 1, [reactant(cytosol, 1, "C00711")], [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00711")]). % was <->
reaction(1160, retractable, "none", 1, [reactant(medium, 1, "C00080"), reactant(medium, 1, "C00137")], [reactant(cytosol, 1, "C00137")]). % was (->)
reaction(1191, retractable, "none", 1, [reactant(medium, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction(1192, retractable, "none", 1, [reactant(cytosol, 1, "C00025")], [reactant(medium, 1, "C00025")]). % was <->
reaction(1471, retractable, "none", 1, [reactant(cytosol, 1, "C00256")], [reactant(mitochondrion, 1, "C00080"), reactant(mitochondrion, 1, "C00256")]). % was <->
reaction(1472, retractable, "none", 1, [reactant(mitochondrion, 1, "C00080"), reactant(mitochondrion, 1, "C00256")], [reactant(cytosol, 1, "C00256")]). % was <->
reaction(1581, retractable, "none", 1, [reactant(cytosol, 1, "C00009")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction(1582, retractable, "none", 1, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00009")]). % was <->
reaction(1850, retractable, "2.1.1.-", 1, [reactant(cytosol, 1, "2N6H"), reactant(cytosol, 1, "C00019")], [reactant(cytosol, 1, "2NPMP"), reactant(cytosol, 1, "C00021")]). % was (->)
reaction(1860, retractable, "1.13.14.-", 1, [reactant(cytosol, 1, "2NPPP"), reactant(cytosol, 1, "C00007")], [reactant(cytosol, 1, "2N6H")]). % was (->)
reaction(1900, retractable, "2.1.1.107", 1, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01051")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C05778")]). % was (->)
reaction(2041, retractable, "2.4.2.1", 1, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00387")], [reactant(mitochondrion, 1, "C00242"), reactant(mitochondrion, 1, "C00442")]). % was <->
reaction(2042, retractable, "2.4.2.1", 1, [reactant(mitochondrion, 1, "C00242"), reactant(mitochondrion, 1, "C00442")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00387")]). % was <->
reaction(2060, retractable, "3.1.2.-", 1, [reactant(mitochondrion, 1, "C00006")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00009")]). % was (->)
reaction(2121, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00442")]). % was <->
reaction(2122, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00442")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")]). % was <->
reaction(2190, retractable, "2.4.2.19", 1, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C03722")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01185")]). % was (->)
reaction(2250, retractable, "4.1.1.11", 1, [reactant(cytosol, 1, "C00049")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00099")]). % was (->)
reaction(2270, retractable, "2.7.1.24", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00882")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00010")]). % was (->)
reaction(2360, retractable, "2.1.2.11", 1, [reactant(cytosol, 1, "C00143"), reactant(cytosol, 1, "OIVAL")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C00966")]). % was (->)
reaction(2380, retractable, "1.5.1.15", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00143")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00445")]). % was (->)
reaction(2480, retractable, "6.3.3.2", 1, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00234")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00440")]). % was (->)
reaction(2560, retractable, "2.7.6.3", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01300")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04807")]). % was (->)
reaction(2631, retractable, "6.3.3.3", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01037")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01909")]). % was <->
reaction(2632, retractable, "6.3.3.3", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01909")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01037")]). % was <->
reaction(2641, retractable, "2.6.1.62", 1, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01092")], [reactant(cytosol, 1, "C01037"), reactant(cytosol, 1, "C04425")]). % was <->
reaction(2642, retractable, "2.6.1.62", 1, [reactant(cytosol, 1, "C01037"), reactant(cytosol, 1, "C04425")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01092")]). % was <->
reaction(2891, retractable, "2.7.4.16", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")]). % was <->
reaction(2892, retractable, "2.7.4.16", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")]). % was <->
reaction(2940, retractable, "2.7.4.7", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C04556")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04752")]). % was (->)
reaction(3100, retractable, "3.2.1.58", 1, [reactant(cytosol, 1, "C00965")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction(3120, retractable, "2.3.2.2", 1, [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00051")], [reactant(cytosol, 1, "C01419"), reactant(cytosol, 1, "C05729")]). % was (->)
reaction(3190, retractable, "3.5.5.1", 1, [reactant(cytosol, 1, "C05715")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction(3230, retractable, "1.5.3.-", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00148")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C03912")]). % was (->)
reaction(3250, retractable, "1.5.1.2", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C04281")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01157")]). % was (->)
reaction(3300, retractable, "1.2.1.41", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C03734")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01165")]). % was (->)
reaction(3350, retractable, "1.5.3.11", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00612")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C02229"), reactant(cytosol, 1, "C02714")]). % was (->)
reaction(3380, retractable, "3.5.1.4", 1, [reactant(cytosol, 1, "C02505")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C07086")]). % was (->)
reaction(3390, retractable, "6.1.1.2", 1, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00066"), reactant(mitochondrion, 1, "C00078")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C03512")]). % was (->)
reaction(3500, retractable, "3.7.1.3", 1, [reactant(cytosol, 1, "C00328")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction(3510, retractable, "3.5.1.9", 1, [reactant(cytosol, 1, "C02700")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C00328")]). % was (->)
reaction(3520, retractable, "1.13.11.11", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00078")], [reactant(cytosol, 1, "C02700")]). % was (->)
reaction(3571, retractable, "2.6.1.1", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was <->
reaction(3572, retractable, "2.6.1.1", 1, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")]). % was <->
reaction(3580, retractable, "1.11.1.6", 1, [reactant(cytosol, 2, "C00027")], [reactant(cytosol, 1, "C00007")]). % was (->)
reaction(3590, retractable, "4.2.1.20", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C00118")]). % was (->)
reaction(3600, retractable, "4.1.1.48", 1, [reactant(cytosol, 1, "C01302")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03506")]). % was (->)
reaction(3610, retractable, "5.3.1.24", 1, [reactant(cytosol, 1, "C04302")], [reactant(cytosol, 1, "C01302")]). % was (->)
reaction(3620, retractable, "2.4.2.18", 1, [reactant(cytosol, 1, "C00108"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04302")]). % was (->)
reaction(3630, retractable, "4.1.3.27", 1, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction(3650, retractable, "2.6.1.-", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was (->)
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
reaction(3880, retractable, "1.5.99.6", 1, [reactant(cytosol, 1, "C00315"), reactant(mitochondrion, 1, "C01967")], [reactant(mitochondrion, 1, "C00390"), reactant(cytosol, 1, "C00986")]). % was (->)
reaction(4141, retractable, "1.1.1.155", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C05662")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C05533")]). % was <->
reaction(4142, retractable, "1.1.1.155", 1, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C05533")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C05662")]). % was <->
reaction(4271, retractable, "2.6.1.42", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04236")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00123")]). % was <->
reaction(4272, retractable, "2.6.1.42", 1, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00123")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04236")]). % was <->
reaction(4281, retractable, "2.6.1.42", 1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "OIVAL")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00183")]). % was <->
reaction(4282, retractable, "2.6.1.42", 1, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00183")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "OIVAL")]). % was <->
reaction(4400, retractable, "2.1.1.98", 1, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C04441")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04692")]). % was (->)
reaction(4460, retractable, "4.4.1.1", 1, [reactant(cytosol, 1, "C02291")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C00109")]). % was (->)
reaction(4510, retractable, "1.1.1.103", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00188")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00037")]). % was (->)
reaction(4520, retractable, "4.3.1.17", 1, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")]). % was (->)
reaction(4650, retractable, "2.1.2.10", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00101")], [reactant(mitochondrion, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00014"), reactant(mitochondrion, 1, "C00143")]). % was (->)
reaction(4671, retractable, "2.1.2.1", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00143")]). % was <->
reaction(4672, retractable, "2.1.2.1", 1, [reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00143")], [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00101")]). % was <->
reaction(4831, retractable, "1.1.1.17", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00644")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05345")]). % was <->
reaction(4832, retractable, "1.1.1.17", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00644")]). % was <->
reaction(4860, retractable, "1.1.1.117", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00216")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00652")]). % was (->)
reaction(5040, retractable, "3.2.2.4", 1, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction(5060, retractable, "3.6.1.-", 1, [reactant(cytosol, 1, "C00044")], [reactant(cytosol, 3, "C00009"), reactant(cytosol, 1, "C00387")]). % was (->)
reaction(5090, retractable, "1.17.4.2", 1, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00286"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction(5120, retractable, "1.17.4.1", 1, [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")]). % was (->)
reaction(5190, retractable, "3.1.3.5", 1, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")]). % was (->)
reaction(5200, retractable, "3.1.3.5", 1, [reactant(cytosol, 1, "C00055")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00475")]). % was (->)
reaction(5250, retractable, "3.1.3.5", 1, [reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")]). % was (->)
reaction(5260, retractable, "3.5.4.13", 1, [reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00460")]). % was (->)
reaction(5281, retractable, "2.1.4.-", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01346")]). % was <->
reaction(5282, retractable, "2.1.4.-", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01346")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00365")]). % was <->
reaction(5381, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00044")]). % was <->
reaction(5382, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00035")]). % was <->
reaction(5411, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00705")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00458")]). % was <->
reaction(5412, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00705")]). % was <->
reaction(5441, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00112")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00063")]). % was <->
reaction(5442, retractable, "2.7.4.6", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00112")]). % was <->
reaction(5511, retractable, "2.7.4.3", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00020")], [reactant(cytosol, 2, "C00008")]). % was <->
reaction(5512, retractable, "2.7.4.3", 1, [reactant(cytosol, 2, "C00008")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00020")]). % was <->
reaction(5540, retractable, "3.2.2.1", 1, [reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00121"), reactant(cytosol, 1, "C00242")]). % was (->)
reaction(5561, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00385"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01762")]). % was <->
reaction(5562, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01762")], [reactant(cytosol, 1, "C00385"), reactant(cytosol, 1, "C00620")]). % was <->
reaction(5601, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00330")], [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C03496")]). % was <->
reaction(5602, retractable, "2.4.2.1", 1, [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00330")]). % was <->
reaction(5650, retractable, "2.4.2.7", 1, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00147")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction(5680, retractable, "6.3.4.2", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00063")]). % was (->)
reaction(5730, retractable, "3.6.1.23", 1, [reactant(cytosol, 1, "C00460")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00365")]). % was (->)
reaction(5750, retractable, "1.8.1.9", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00343")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00342")]). % was (->)
reaction(5791, retractable, "2.4.2.4", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00214")], [reactant(cytosol, 1, "C00178"), reactant(cytosol, 1, "C03496")]). % was <->
reaction(5792, retractable, "2.4.2.4", 1, [reactant(cytosol, 1, "C00178"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00214")]). % was <->
reaction(5801, retractable, "2.4.2.4", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C03496")]). % was <->
reaction(5802, retractable, "2.4.2.4", 1, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")]). % was <->
reaction(5810, retractable, "2.7.1.48", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00299")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction(5830, retractable, "2.7.1.48", 1, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00299")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction(5911, retractable, "1.3.3.1", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00337")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00295")]). % was <->
reaction(5912, retractable, "1.3.3.1", 1, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00295")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00337")]). % was <->
reaction(5980, retractable, "3.1.4.17", 1, [reactant(cytosol, 1, "C00942")], [reactant(cytosol, 1, "C00144")]). % was (->)
reaction(6071, retractable, "2.1.2.3-3.5.4.10", 1, [reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00130")]). % was <->
reaction(6072, retractable, "2.1.2.3-3.5.4.10", 1, [reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C04734")]). % was <->
reaction(6081, retractable, "2.1.2.3", 1, [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")]). % was <->
reaction(6082, retractable, "2.1.2.3", 1, [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")]). % was <->
reaction(6140, retractable, "2.1.2.2", 1, [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C03838")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04376")]). % was (->)
reaction(6171, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00131"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00206")]). % was <->
reaction(6172, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00206")], [reactant(cytosol, 1, "C00131"), reactant(cytosol, 1, "C00144")]). % was <->
reaction(6181, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")]). % was <->
reaction(6182, retractable, "2.7.4.8", 1, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")]). % was <->
reaction(6241, retractable, "2.7.6.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction(6242, retractable, "2.7.6.1", 1, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction(6300, retractable, "1.-.-.-", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "EPST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "ERTROL")]). % was (->)
reaction(6330, retractable, "none", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "IIZYMST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05437")]). % was (->)
reaction(6370, retractable, "5.3.3.1", 1, [reactant(cytosol, 1, "IMZYMST")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "IIMZYMST")]). % was (->)
reaction(6440, retractable, "2.5.1.10", 1, [reactant(cytosol, 1, "C00129"), reactant(cytosol, 1, "C00341")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00448")]). % was (->)
reaction(6461, retractable, "5.3.3.2", 1, [reactant(cytosol, 1, "C00129")], [reactant(cytosol, 1, "C00235")]). % was <->
reaction(6462, retractable, "5.3.3.2", 1, [reactant(cytosol, 1, "C00235")], [reactant(cytosol, 1, "C00129")]). % was <->
reaction(6560, retractable, "none", 1, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00836")]). % was (->)
reaction(6650, retractable, "none", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00836")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "PSPH")]). % was (->)
reaction(6680, retractable, "none", 1, [reactant(cytosol, 1, "DGPP")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00416")]). % was (->)
reaction(6770, retractable, "2.7.8.11", 1, [reactant(cytosol, 1, "C00137"), reactant(cytosol, 1, "C00269")], [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C01194")]). % was (->)
reaction(6820, retractable, "2.7.1.82", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00189")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00346")]). % was (->)
reaction(6980, retractable, "none", 1, [reactant(cytosol, 1, "C00093"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.093, "C182ACP")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C03849")]). % was (->)
reaction(7010, retractable, "1.3.3.6", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016"), reactant(cytosol, 1, "C06424")], [reactant(cytosol, 7, "C00004"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction(7350, retractable, "1.2.1.2", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00058")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011")]). % was (->)
reaction(7360, retractable, "1.1.2.4", 1, [reactant(mitochondrion, 2, "C00125"), reactant(mitochondrion, 1, "C00256")], [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 2, "C00126")]). % was (->)
reaction(7460, retractable, "3.6.1.1", 1, [reactant(cytosol, 1, "C00013")], [reactant(cytosol, 2, "C00009")]). % was (->)
reaction(7530, retractable, "2.3.3.14", 1, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01251")]). % was (->)
reaction(7540, retractable, "3.1.2.1", 1, [reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction(7550, retractable, "4.1.1.1", 1, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was (->)
reaction(7580, retractable, "6.2.1.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00033")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00024")]). % was (->)
reaction(7590, retractable, "2.4.1.11", 1, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00182")]). % was (->)
reaction(7761, retractable, "2.7.7.10", 1, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C03384")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00052")]). % was <->
reaction(7762, retractable, "2.7.7.10", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00052")], [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C03384")]). % was <->
reaction(7880, retractable, "2.7.1.15", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00121")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00117")]). % was (->)
reaction(7911, retractable, "2.2.1.1", 1, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction(7912, retractable, "2.2.1.1", 1, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")]). % was <->
reaction(7921, retractable, "5.3.1.6", 1, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C00117")]). % was <->
reaction(7922, retractable, "5.3.1.6", 1, [reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00199")]). % was <->
reaction(7980, retractable, "6.4.1.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00036")]). % was (->)
reaction(7990, retractable, "3.1.3.11", 1, [reactant(cytosol, 1, "C05378")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction(8031, retractable, "1.1.1.37", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")]). % was <->
reaction(8032, retractable, "1.1.1.37", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")]). % was <->
reaction(8041, retractable, "1.1.1.37", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00711")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00036")]). % was <->
reaction(8042, retractable, "1.1.1.37", 1, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00036")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00711")]). % was <->
reaction(8120, retractable, "1.2.4.2", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00026")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00091")]). % was (->)
reaction(8170, retractable, "1.1.1.41", 1, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00311")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00026")]). % was (->)
reaction(8231, retractable, "4.2.1.11", 1, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction(8232, retractable, "4.2.1.11", 1, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction(8571, retractable, "6.1.1.12", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")]). % was <=>
reaction(8572, retractable, "6.1.1.12", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")]). % was <=>
reaction(8601, retractable, "6.1.1.10", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")]). % was <=>
reaction(8602, retractable, "6.1.1.10", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")]). % was <=>
reaction(8631, retractable, "6.1.1.7", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")]). % was <=>
reaction(8632, retractable, "6.1.1.7", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")]). % was <=>
reaction(8671, retractable, "6.1.1.2", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C01652")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03512")]). % was <=>
reaction(8672, retractable, "6.1.1.2", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03512")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C01652")]). % was <=>
reaction(8681, retractable, "6.1.1.1", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")]). % was <=>
reaction(8682, retractable, "6.1.1.1", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")]). % was <=>
reaction(8751, retractable, "4.3.1.17", 1, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction(8752, retractable, "4.3.1.17", 1, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00065")]). % was <=>
reaction(8811, retractable, "4.1.1.1", 1, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was <=>
reaction(8812, retractable, "4.1.1.1", 1, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00022")]). % was <=>
reaction(8821, retractable, "3.6.1.13", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")]). % was <=>
reaction(8822, retractable, "3.6.1.13", 1, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")]). % was <=>
reaction(8931, retractable, "3.6.1.5", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00015")]). % was <=>
reaction(8932, retractable, "3.6.1.5", 1, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction(8971, retractable, "3.6.1.5", 1, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 2, "C00009"), reactant(cytosol, 1, "C00020")]). % was <=>
reaction(8972, retractable, "3.6.1.5", 1, [reactant(cytosol, 2, "C00009"), reactant(cytosol, 1, "C00020")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction(9041, retractable, "3.2.1.106", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C00267"), reactant(cytosol, 1, "C05874")]). % was <=>
reaction(9042, retractable, "3.2.1.106", 1, [reactant(cytosol, 1, "C00267"), reactant(cytosol, 1, "C05874")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction(9421, retractable, "2.7.7.50", 1, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C02100")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C02407")]). % was <=>
reaction(9422, retractable, "2.7.7.50", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C02407")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C02100")]). % was <=>
reaction(9431, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction(9432, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction(9441, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction(9442, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction(9451, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction(9452, retractable, "2.7.7.7", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction(9491, retractable, "2.7.7.6", 1, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction(9492, retractable, "2.7.7.6", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction(9621, retractable, "2.5.1.48", 1, [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C02291")]). % was <=>
reaction(9622, retractable, "2.5.1.48", 1, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C02291")], [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction(9681, retractable, "2.5.1.8", 1, [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C00129")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04432")]). % was <=>
reaction(9682, retractable, "2.5.1.8", 1, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04432")], [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C00129")]). % was <=>
reaction(9691, retractable, "2.4.1.131", 1, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")]). % was <=>
reaction(9692, retractable, "2.4.1.131", 1, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")], [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")]). % was <=>
reaction(9771, retractable, "2.3.1.86", 1, [reactant(cytosol, "2n", "C00005"), reactant(cytosol, 1, "C00024"), reactant(cytosol, "2n", "C00080"), reactant(cytosol, n, "C00083")], [reactant(cytosol, n, "C00001"), reactant(cytosol, "2n", "C00006"), reactant(cytosol, n, "C00010"), reactant(cytosol, n, "C00011"), reactant(cytosol, 1, "C02843")]). % was <=>
reaction(9772, retractable, "2.3.1.86", 1, [reactant(cytosol, n, "C00001"), reactant(cytosol, "2n", "C00006"), reactant(cytosol, n, "C00010"), reactant(cytosol, n, "C00011"), reactant(cytosol, 1, "C02843")], [reactant(cytosol, "2n", "C00005"), reactant(cytosol, 1, "C00024"), reactant(cytosol, "2n", "C00080"), reactant(cytosol, n, "C00083")]). % was <=>
reaction(9781, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05764")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05763")]). % was <=>
reaction(9782, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05763")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05764")]). % was <=>
reaction(9881, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C04620")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05751")]). % was <=>
reaction(9882, retractable, "2.3.1.86", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05751")], [reactant(cytosol, 1, "C04620")]). % was <=>
reaction(9981, retractable, "2.1.1.61", 1, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04728")]). % was <=>
reaction(9982, retractable, "2.1.1.61", 1, [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04728")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")]). % was <=>
reaction(10141, retractable, "1.6.99.1", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction(10142, retractable, "1.6.99.1", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction(10161, retractable, "1.6.2.2", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")]). % was <=>
reaction(10162, retractable, "1.6.2.2", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")]). % was <=>
reaction(10231, retractable, "1.1.3.37", 1, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00652")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C06316")]). % was <=>
reaction(10232, retractable, "1.1.3.37", 1, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C06316")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00652")]). % was <=>
reaction(10291, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05138")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")]). % was <=>
reaction(10292, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05138")]). % was <=>
reaction(10311, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C03836")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01034")]). % was <=>
reaction(10312, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01034")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C03836")]). % was <=>
reaction(10331, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04295")]). % was <=>
reaction(10332, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04295")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")]). % was <=>
reaction(10381, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01227")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")]). % was <=>
reaction(10382, retractable, "1.1.1.145", 1, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01227")]). % was <=>
reaction(10491, retractable, "2.3.1.41", 1, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction(10492, retractable, "2.3.1.41", 1, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")]). % was <=>
reaction(10781, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")]). % was <=>
reaction(10782, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")]). % was <=>
reaction(10791, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction(10792, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")]). % was <=>
reaction(10841, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")]). % was <=>
reaction(10842, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")]). % was <=>
reaction(10851, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01271")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00685")]). % was <=>
reaction(10852, retractable, "1.1.1.100", 1, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00685")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01271")]). % was <=>
reaction(10900, assertable, "unknown", 1, [reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00463"), reactant(cytosol, 1, "C00661")]). % was (->)
reaction(10910, assertable, "unknown", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00463")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00078")]). % was (->)
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
enzyme(206, certain, "1.-.-.-", ["YLR056W"], [6300]).
enzyme(271, certain, "1.1.1.100", ["YPL231W"], [10781, 10782, 10791, 10792, 10841, 10842, 10851, 10852]).
enzyme(43, certain, "1.1.1.103", ["U46_"], [4510]).
enzyme(63, certain, "1.1.1.117", ["YBR149W"], [4860]).
enzyme(132, certain, "1.1.1.145", ["YGL001C"], [10291, 10292, 10311, 10312, 10331, 10332, 10381, 10382]).
enzyme(164, certain, "1.1.1.155", ["YIL094C"], [4141, 4142]).
enzyme(42, certain, "1.1.1.17", ["U45_"], [4831, 4832]).
enzyme(92, certain, "1.1.1.25", ["YDR127W"], [3730]).
enzyme(248, certain, "1.1.1.37", ["YOL126C"], [8031, 8032]).
enzyme(188, certain, "1.1.1.37", ["YKL085W"], [8041, 8042]).
enzyme(78, certain, "1.1.1.37", ["YDL078C"], [8031, 8032]).
enzyme(226, certain, "1.1.1.41", ["YNL037C"], [8170]).
enzyme(84, certain, "1.1.2.4", ["YDL174C"], [7360]).
enzyme(222, certain, "1.1.3.37", ["YML086C"], [10231, 10232]).
enzyme(146, certain, "1.11.1.6", ["YGR088W"], [3580]).
enzyme(101, certain, "1.11.1.6", ["YDR256C"], [3580]).
enzyme(182, certain, "1.13.11.11", ["YJR078W"], [3520]).
enzyme(20, certain, "1.13.14.-", ["U107_"], [1860]).
enzyme(125, certain, "1.17.4.1", ["YER070W"], [5120]).
enzyme(39, certain, "1.17.4.2", ["U36_"], [5090]).
enzyme(277, certain, "1.2.1.2", ["YPL276W"], [7350]).
enzyme(276, certain, "1.2.1.2", ["YPL275W"], [7350]).
enzyme(264, certain, "1.2.1.2", ["YOR388C"], [7350]).
enzyme(258, certain, "1.2.1.41", ["YOR323C"], [3300]).
enzyme(165, certain, "1.2.4.2", ["YIL125W"], [8120]).
enzyme(65, certain, "1.3.1.13", ["YBR166C"], [3660]).
enzyme(195, certain, "1.3.3.1", ["YKL216W"], [5911, 5912]).
enzyme(196, certain, "1.3.3.6", ["YKR009C"], [7010]).
enzyme(167, certain, "1.3.3.6", ["YIL160C"], [7010]).
enzyme(142, certain, "1.3.3.6", ["YGL205W"], [7010]).
enzyme(200, certain, "1.5.1.15", ["YKR080W"], [2380]).
enzyme(121, certain, "1.5.1.2", ["YER023W"], [3250]).
enzyme(210, certain, "1.5.3.-", ["YLR142W"], [3230]).
enzyme(46, certain, "1.5.3.11", ["U62_"], [3350]).
enzyme(155, certain, "1.5.99.6", ["YHR068W"], [3880]).
enzyme(191, certain, "1.6.2.2", ["YKL150W"], [10161, 10162]).
enzyme(162, certain, "1.6.2.2", ["YIL043C"], [10161, 10162]).
enzyme(270, certain, "1.6.99.1", ["YPL171C"], [10141, 10142]).
enzyme(160, certain, "1.6.99.1", ["YHR179W"], [10141, 10142]).
enzyme(105, certain, "1.8.1.9", ["YDR353W"], [5750]).
enzyme(275, certain, "2.1.1.-", ["YPL266W"], [1850]).
enzyme(199, certain, "2.1.1.107", ["YKR069W"], [1900]).
enzyme(77, certain, "2.1.1.61", ["YDL033C"], [9981, 9982]).
enzyme(212, certain, "2.1.1.98", ["YLR172C"], [4400]).
enzyme(207, certain, "2.1.2.1", ["YLR058C"], [4671, 4672]).
enzyme(87, certain, "2.1.2.10", ["YDR019C"], [4650]).
enzyme(66, certain, "2.1.2.11", ["YBR176W"], [2360]).
enzyme(110, certain, "2.1.2.2", ["YDR408C"], [6140]).
enzyme(223, certain, "2.1.2.3", ["YMR120C"], [6071, 6072, 6081, 6082]).
enzyme(203, certain, "2.1.2.3", ["YLR028C"], [6081, 6082]).
enzyme(186, certain, "2.1.4.-", ["YKL024C"], [5281, 5282]).
enzyme(281, certain, "2.2.1.1", ["YPR074C"], [7911, 7912]).
enzyme(62, certain, "2.2.1.1", ["YBR117C"], [7911, 7912]).
enzyme(272, certain, "2.3.1.41", ["YPL231W"], [10491, 10492]).
enzyme(273, certain, "2.3.1.86", ["YPL231W"], [9771, 9772, 9781, 9782, 9881, 9882]).
enzyme(217, certain, "2.3.2.2", ["YLR299W"], [3120]).
enzyme(85, certain, "2.3.3.14", ["YDL182W"], [7530]).
enzyme(81, certain, "2.3.3.14", ["YDL131W"], [7530]).
enzyme(216, certain, "2.4.1.11", ["YLR258W"], [7590]).
enzyme(130, certain, "2.4.1.11", ["YFR015C"], [7590]).
enzyme(225, certain, "2.4.1.131", ["YNL029C"], [9691, 9692]).
enzyme(163, certain, "2.4.1.131", ["YIL085C"], [9691, 9692]).
enzyme(213, certain, "2.4.2.1", ["YLR209C"], [2041, 2042, 5561, 5562, 5601, 5602]).
enzyme(18, certain, "2.4.2.1", ["U104_"], [2121, 2122]).
enzyme(106, modifiable, "2.4.2.18", ["YDR354W"], [3620]).
enzyme(131, certain, "2.4.2.19", ["YFR047C"], [2190]).
enzyme(214, certain, "2.4.2.4", ["YLR209C"], [5791, 5792, 5801, 5802]).
enzyme(220, certain, "2.4.2.7", ["YML022W"], [5650]).
enzyme(112, certain, "2.4.2.7", ["YDR441C"], [5650]).
enzyme(177, certain, "2.5.1.10", ["YJL167W"], [6440]).
enzyme(93, certain, "2.5.1.19", ["YDR127W"], [3710]).
enzyme(184, certain, "2.5.1.48", ["YJR130C"], [9621, 9622]).
enzyme(88, certain, "2.5.1.54", ["YDR035W"], [3760]).
enzyme(68, certain, "2.5.1.54", ["YBR249C"], [3760]).
enzyme(257, certain, "2.5.1.8", ["YOR274W"], [9681, 9682]).
enzyme(156, certain, "2.6.1.-", ["YHR137W"], [3650, 3671, 3672]).
enzyme(141, certain, "2.6.1.-", ["YGL202W"], [3650]).
enzyme(202, certain, "2.6.1.1", ["YLR027C"], [3571, 3572]).
enzyme(189, certain, "2.6.1.1", ["YKL106W"], [3571, 3572]).
enzyme(185, certain, "2.6.1.42", ["YJR148W"], [4271, 4272, 4281, 4282]).
enzyme(240, certain, "2.6.1.62", ["YNR058W"], [2641, 2642]).
enzyme(76, certain, "2.7.1.15", ["YCR036W"], [7880]).
enzyme(49, certain, "2.7.1.24", ["U96_"], [2270]).
enzyme(238, certain, "2.7.1.48", ["YNR012W"], [5810, 5830]).
enzyme(94, certain, "2.7.1.71", ["YDR127W"], [3720]).
enzyme(97, certain, "2.7.1.82", ["YDR147W"], [6820]).
enzyme(47, certain, "2.7.4.16", ["U76_"], [2891, 2892]).
enzyme(99, certain, "2.7.4.3", ["YDR226W"], [5511, 5512]).
enzyme(187, certain, "2.7.4.6", ["YKL067W"], [5381, 5382, 5411, 5412, 5441, 5442]).
enzyme(243, certain, "2.7.4.7", ["YOL055C"], [2940]).
enzyme(113, certain, "2.7.4.8", ["YDR454C"], [6171, 6172, 6181, 6182]).
enzyme(244, certain, "2.7.6.1", ["YOL061W"], [6241, 6242]).
enzyme(192, certain, "2.7.6.1", ["YKL181W"], [6241, 6242]).
enzyme(153, certain, "2.7.6.1", ["YHL011C"], [6241, 6242]).
enzyme(127, certain, "2.7.6.1", ["YER099C"], [6241, 6242]).
enzyme(56, certain, "2.7.6.1", ["YBL068W"], [6241, 6242]).
enzyme(232, certain, "2.7.6.3", ["YNL256W"], [2560]).
enzyme(58, certain, "2.7.7.10", ["YBR018C"], [7761, 7762]).
enzyme(138, certain, "2.7.7.50", ["YGL130W"], [9421, 9422]).
enzyme(287, certain, "2.7.7.6", ["YPR190C"], [9491, 9492]).
enzyme(286, certain, "2.7.7.6", ["YPR187W"], [9491, 9492]).
enzyme(282, certain, "2.7.7.6", ["YPR110C"], [9491, 9492]).
enzyme(279, certain, "2.7.7.6", ["YPR010C"], [9491, 9492]).
enzyme(262, certain, "2.7.7.6", ["YOR341W"], [9491, 9492]).
enzyme(261, certain, "2.7.7.6", ["YOR340C"], [9491, 9492]).
enzyme(256, certain, "2.7.7.6", ["YOR224C"], [9491, 9492]).
enzyme(255, certain, "2.7.7.6", ["YOR210W"], [9491, 9492]).
enzyme(254, certain, "2.7.7.6", ["YOR207C"], [9491, 9492]).
enzyme(252, certain, "2.7.7.6", ["YOR151C"], [9491, 9492]).
enzyme(251, certain, "2.7.7.6", ["YOR116C"], [9491, 9492]).
enzyme(241, certain, "2.7.7.6", ["YOL005C"], [9491, 9492]).
enzyme(237, certain, "2.7.7.6", ["YNR003C"], [9491, 9492]).
enzyme(231, certain, "2.7.7.6", ["YNL248C"], [9491, 9492]).
enzyme(230, certain, "2.7.7.6", ["YNL151C"], [9491, 9492]).
enzyme(228, certain, "2.7.7.6", ["YNL113W"], [9491, 9492]).
enzyme(190, certain, "2.7.7.6", ["YKL144C"], [9491, 9492]).
enzyme(180, certain, "2.7.7.6", ["YJR063W"], [9491, 9492]).
enzyme(176, certain, "2.7.7.6", ["YJL148W"], [9491, 9492]).
enzyme(175, certain, "2.7.7.6", ["YJL140W"], [9491, 9492]).
enzyme(161, certain, "2.7.7.6", ["YIL021W"], [9491, 9492]).
enzyme(157, certain, "2.7.7.6", ["YHR143W-A"], [9491, 9492]).
enzyme(137, certain, "2.7.7.6", ["YGL070C"], [9491, 9492]).
enzyme(128, certain, "2.7.7.6", ["YFL036W"], [9491, 9492]).
enzyme(109, certain, "2.7.7.6", ["YDR404C"], [9491, 9492]).
enzyme(98, certain, "2.7.7.6", ["YDR156W"], [9491, 9492]).
enzyme(89, certain, "2.7.7.6", ["YDR045C"], [9491, 9492]).
enzyme(83, certain, "2.7.7.6", ["YDL150W"], [9491, 9492]).
enzyme(82, certain, "2.7.7.6", ["YDL140C"], [9491, 9492]).
enzyme(64, certain, "2.7.7.6", ["YBR154C"], [9491, 9492]).
enzyme(285, certain, "2.7.7.7", ["YPR175W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(269, certain, "2.7.7.7", ["YPL167C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(259, certain, "2.7.7.7", ["YOR330C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(247, certain, "2.7.7.7", ["YOL115W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(235, certain, "2.7.7.7", ["YNL299W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(233, certain, "2.7.7.7", ["YNL262W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(227, certain, "2.7.7.7", ["YNL102W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(179, certain, "2.7.7.7", ["YJR043C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(178, certain, "2.7.7.7", ["YJR006W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(171, certain, "2.7.7.7", ["YJL090C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(166, certain, "2.7.7.7", ["YIL139C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(118, certain, "2.7.7.7", ["YEL055C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(111, certain, "2.7.7.7", ["YDR419W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(91, certain, "2.7.7.7", ["YDR121W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(80, certain, "2.7.7.7", ["YDL102W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(75, certain, "2.7.7.7", ["YCR014C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(70, certain, "2.7.7.7", ["YBR278W"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(54, certain, "2.7.7.7", ["YBL035C"], [9431, 9432, 9441, 9442, 9451, 9452]).
enzyme(283, certain, "2.7.8.11", ["YPR113W"], [6770]).
enzyme(19, certain, "3.1.2.-", ["U105_"], [2060]).
enzyme(53, certain, "3.1.2.1", ["YBL015W"], [7540]).
enzyme(219, certain, "3.1.3.11", ["YLR377C"], [7990]).
enzyme(38, certain, "3.1.3.5", ["U30_"], [5190]).
enzyme(37, certain, "3.1.3.5", ["U29_"], [5200]).
enzyme(36, certain, "3.1.3.5", ["U24_"], [5250]).
enzyme(263, certain, "3.1.4.17", ["YOR360C"], [5980]).
enzyme(135, certain, "3.2.1.106", ["YGL027C"], [9041, 9042]).
enzyme(253, certain, "3.2.1.58", ["YOR190W"], [3100]).
enzyme(218, certain, "3.2.1.58", ["YLR300W"], [3100]).
enzyme(152, certain, "3.2.1.58", ["YGR282C"], [3100]).
enzyme(102, certain, "3.2.1.58", ["YDR261C"], [3100]).
enzyme(108, certain, "3.2.2.1", ["YDR400W"], [5540]).
enzyme(221, certain, "3.2.2.4", ["YML035C"], [5040]).
enzyme(170, certain, "3.2.2.4", ["YJL070C"], [5040]).
enzyme(71, certain, "3.2.2.4", ["YBR284W"], [5040]).
enzyme(100, certain, "3.5.1.4", ["YDR242W"], [3380]).
enzyme(45, certain, "3.5.1.9", ["U53_"], [3510]).
enzyme(204, certain, "3.5.4.10", ["YLR028C"], [6071, 6072]).
enzyme(158, certain, "3.5.4.13", ["YHR144C"], [5260]).
enzyme(172, certain, "3.5.5.1", ["YJL126W"], [3190]).
enzyme(40, certain, "3.6.1.-", ["U39_"], [5060]).
enzyme(57, certain, "3.6.1.1", ["YBR011C"], [7460]).
enzyme(61, certain, "3.6.1.13", ["YBR111C"], [8821, 8822]).
enzyme(69, certain, "3.6.1.23", ["YBR252W"], [5730]).
enzyme(120, certain, "3.6.1.5", ["YER005W"], [8931, 8932, 8971, 8972]).
enzyme(215, certain, "3.7.1.3", ["YLR231C"], [3500]).
enzyme(209, certain, "4.1.1.1", ["YLR134W"], [7550]).
enzyme(205, certain, "4.1.1.1", ["YLR044C"], [7550]).
enzyme(145, certain, "4.1.1.1", ["YGR087C"], [7550]).
enzyme(107, certain, "4.1.1.1", ["YDR380W"], [8811, 8812]).
enzyme(79, certain, "4.1.1.1", ["YDL080C"], [8811, 8812]).
enzyme(50, certain, "4.1.1.11", ["U98_"], [2250]).
enzyme(193, modifiable, "4.1.1.48", ["YKL211C"], [3600]).
enzyme(194, modifiable, "4.1.3.27", ["YKL211C"], [3630]).
enzyme(126, modifiable, "4.1.3.27", ["YER090W"], [3630]).
enzyme(95, certain, "4.2.1.10", ["YDR127W"], [3740]).
enzyme(278, certain, "4.2.1.11", ["YPL281C"], [8231, 8232]).
enzyme(265, certain, "4.2.1.11", ["YOR393W"], [8231, 8232]).
enzyme(224, certain, "4.2.1.11", ["YMR323W"], [8231, 8232]).
enzyme(159, certain, "4.2.1.11", ["YHR174W"], [8231, 8232]).
enzyme(150, certain, "4.2.1.11", ["YGR254W"], [8231, 8232]).
enzyme(134, modifiable, "4.2.1.20", ["YGL026C"], [3590]).
enzyme(236, certain, "4.2.1.51", ["YNL316C"], [3680]).
enzyme(96, certain, "4.2.3.4", ["YDR127W"], [3750]).
enzyme(139, certain, "4.2.3.5", ["YGL148W"], [3700]).
enzyme(169, certain, "4.3.1.17", ["YIL168W"], [8751, 8752]).
enzyme(168, certain, "4.3.1.17", ["YIL167W"], [4520]).
enzyme(74, certain, "4.3.1.17", ["YCL064C"], [4520]).
enzyme(51, certain, "4.4.1.1", ["YAL012W"], [4460]).
enzyme(86, modifiable, "5.3.1.24", ["YDR007W"], [3610]).
enzyme(250, certain, "5.3.1.6", ["YOR095C"], [7921, 7922]).
enzyme(133, certain, "5.3.3.1", ["YGL001C"], [6370]).
enzyme(268, certain, "5.3.3.2", ["YPL117C"], [6461, 6462]).
enzyme(280, certain, "5.4.99.5", ["YPR060C"], [3690]).
enzyme(266, certain, "6.1.1.1", ["YPL097W"], [8681, 8682]).
enzyme(149, certain, "6.1.1.1", ["YGR185C"], [8681, 8682]).
enzyme(151, certain, "6.1.1.10", ["YGR264C"], [8601, 8602]).
enzyme(148, certain, "6.1.1.10", ["YGR171C"], [8601, 8602]).
enzyme(267, certain, "6.1.1.12", ["YPL104W"], [8571, 8572]).
enzyme(201, certain, "6.1.1.12", ["YLL018C"], [8571, 8572]).
enzyme(245, certain, "6.1.1.2", ["YOL097C"], [8671, 8672]).
enzyme(103, certain, "6.1.1.2", ["YDR268W"], [3390]).
enzyme(260, certain, "6.1.1.7", ["YOR335C"], [8631, 8632]).
enzyme(211, certain, "6.2.1.1", ["YLR153C"], [7580]).
enzyme(52, certain, "6.2.1.1", ["YAL054C"], [7580]).
enzyme(48, certain, "6.3.3.2", ["U90_"], [2480]).
enzyme(239, certain, "6.3.3.3", ["YNR057C"], [2631, 2632]).
enzyme(183, certain, "6.3.4.2", ["YJR103W"], [5680]).
enzyme(55, certain, "6.3.4.2", ["YBL039C"], [5680]).
enzyme(136, certain, "6.4.1.1", ["YGL062W"], [7980]).
enzyme(67, certain, "6.4.1.1", ["YBR218C"], [7980]).
enzyme(284, certain, "none", ["YPR138C"], [371, 372]).
enzyme(274, certain, "none", ["YPL265W"], [781, 782, 881, 882, 1191, 1192]).
enzyme(249, certain, "none", ["YOR011W"], [21, 22]).
enzyme(246, certain, "none", ["YOL103W"], [1160]).
enzyme(242, modifiable, "none", ["YOL020W"], [801, 802, 811, 812, 831, 832, 901, 902]).
enzyme(234, certain, "none", ["YNL270C"], [931, 932]).
enzyme(229, certain, "none", ["YNL142W"], [371, 372]).
enzyme(208, certain, "none", ["YLR100C"], [6330]).
enzyme(198, certain, "none", ["YKR053C"], [6560]).
enzyme(197, modifiable, "none", ["YKR039W"], [771, 772, 781, 782, 801, 802, 811, 812, 831, 832, 841, 842, 851, 852, 881, 882, 901, 902, 931, 932, 1191, 1192]).
enzyme(181, certain, "none", ["YJR077C"], [1581, 1582]).
enzyme(174, certain, "none", ["YJL134W"], [6560]).
enzyme(173, certain, "none", ["YJL129C"], [361, 362]).
enzyme(154, certain, "none", ["YHL036W"], [841, 842]).
enzyme(147, certain, "none", ["YGR121C"], [371, 372]).
enzyme(144, certain, "none", ["YGR065C"], [111, 112]).
enzyme(143, certain, "none", ["YGR055W"], [841, 842]).
enzyme(140, certain, "none", ["YGL186C"], [581, 582]).
enzyme(129, certain, "none", ["YFL055W"], [781, 782, 1191, 1192]).
enzyme(124, certain, "none", ["YER060W-A"], [581, 582]).
enzyme(123, certain, "none", ["YER060W"], [581, 582]).
enzyme(122, certain, "none", ["YER056C"], [581, 582]).
enzyme(119, certain, "none", ["YEL063C"], [931, 932]).
enzyme(117, certain, "none", ["YDR536W"], [1191, 1192]).
enzyme(116, certain, "none", ["YDR508C"], [771, 772, 781, 782, 841, 842, 851, 852, 881, 882, 901, 902]).
enzyme(115, certain, "none", ["YDR503C"], [6680]).
enzyme(114, certain, "none", ["YDR497C"], [1160]).
enzyme(104, certain, "none", ["YDR297W"], [6650]).
enzyme(90, modifiable, "none", ["YDR046C"], [801, 802, 811, 812, 831, 832, 841, 842, 851, 852, 901, 902]).
enzyme(73, certain, "none", ["YCL025C"], [771, 772, 781, 782, 801, 802, 831, 832, 841, 842, 851, 852, 881, 882, 1191, 1192]).
enzyme(72, certain, "none", ["YBR298C"], [1121, 1122]).
enzyme(60, modifiable, "none", ["YBR069C"], [771, 772, 801, 802, 811, 812, 851, 852, 901, 902]).
enzyme(59, modifiable, "none", ["YBR068C"], [801, 802, 811, 812, 831, 832, 841, 842, 851, 852, 901, 902]).
enzyme(44, certain, "none", ["U4_"], [6980]).
enzyme(41, certain, "none", ["U3_"], [6980]).
enzyme(35, certain, "none", ["U228_"], [41, 42]).
enzyme(34, certain, "none", ["U223_"], [91, 92]).
enzyme(33, certain, "none", ["U220_"], [131, 132]).
enzyme(32, certain, "none", ["U219_"], [141, 142]).
enzyme(31, certain, "none", ["U194_"], [520]).
enzyme(30, certain, "none", ["U191_"], [560]).
enzyme(29, certain, "none", ["U185_"], [560]).
enzyme(28, certain, "none", ["U178_"], [570]).
enzyme(27, certain, "none", ["U177_"], [520]).
enzyme(26, certain, "none", ["U174_"], [560]).
enzyme(25, certain, "none", ["U172_"], [660]).
enzyme(24, certain, "none", ["U165_"], [990]).
enzyme(23, certain, "none", ["U160_"], [1060]).
enzyme(22, certain, "none", ["U155_"], [1111, 1112]).
enzyme(21, certain, "none", ["U132_"], [1471, 1472]).
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

metabolite("2N6H").
metabolite("2NPMP").
metabolite("2NPPP").
metabolite("C00001").
metabolite("C00002").
metabolite("C00003").
metabolite("C00004").
metabolite("C00005").
metabolite("C00006").
metabolite("C00007").
metabolite("C00008").
metabolite("C00009").
metabolite("C00010").
metabolite("C00011").
metabolite("C00013").
metabolite("C00014").
metabolite("C00015").
metabolite("C00016").
metabolite("C00019").
metabolite("C00020").
metabolite("C00021").
metabolite("C00022").
metabolite("C00024").
metabolite("C00025").
metabolite("C00026").
metabolite("C00027").
metabolite("C00028").
metabolite("C00029").
metabolite("C00030").
metabolite("C00033").
metabolite("C00035").
metabolite("C00036").
metabolite("C00037").
metabolite("C00039").
metabolite("C00041").
metabolite("C00042").
metabolite("C00044").
metabolite("C00046").
metabolite("C00049").
metabolite("C00051").
metabolite("C00052").
metabolite("C00055").
metabolite("C00058").
metabolite("C00062").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
metabolite("C00066").
metabolite("C00068").
metabolite("C00073").
metabolite("C00074").
metabolite("C00075").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00082").
metabolite("C00083").
metabolite("C00084").
metabolite("C00091").
metabolite("C00093").
metabolite("C00096").
metabolite("C00097").
metabolite("C00099").
metabolite("C00101").
metabolite("C00105").
metabolite("C00106").
metabolite("C00108").
metabolite("C00109").
metabolite("C00112").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00120").
metabolite("C00121").
metabolite("C00123").
metabolite("C00125").
metabolite("C00126").
metabolite("C00129").
metabolite("C00130").
metabolite("C00131").
metabolite("C00137").
metabolite("C00143").
metabolite("C00144").
metabolite("C00147").
metabolite("C00148").
metabolite("C00166").
metabolite("C00178").
metabolite("C00182").
metabolite("C00183").
metabolite("C00188").
metabolite("C00189").
metabolite("C00199").
metabolite("C00206").
metabolite("C00212").
metabolite("C00214").
metabolite("C00216").
metabolite("C00229").
metabolite("C00234").
metabolite("C00235").
metabolite("C00238").
metabolite("C00242").
metabolite("C00251").
metabolite("C00254").
metabolite("C00256").
metabolite("C00267").
metabolite("C00269").
metabolite("C00279").
metabolite("C00280").
metabolite("C00281").
metabolite("C00286").
metabolite("C00294").
metabolite("C00295").
metabolite("C00299").
metabolite("C00301").
metabolite("C00311").
metabolite("C00315").
metabolite("C00328").
metabolite("C00330").
metabolite("C00337").
metabolite("C00341").
metabolite("C00342").
metabolite("C00343").
metabolite("C00346").
metabolite("C00361").
metabolite("C00362").
metabolite("C00365").
metabolite("C00385").
metabolite("C00387").
metabolite("C00390").
metabolite("C00416").
metabolite("C00440").
metabolite("C00442").
metabolite("C00445").
metabolite("C00448").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00463").
metabolite("C00475").
metabolite("C00493").
metabolite("C00526").
metabolite("C00535").
metabolite("C00612").
metabolite("C00620").
metabolite("C00631").
metabolite("C00644").
metabolite("C00652").
metabolite("C00661").
metabolite("C00677").
metabolite("C00685").
metabolite("C00705").
metabolite("C00711").
metabolite("C00787").
metabolite("C00836").
metabolite("C00882").
metabolite("C00886").
metabolite("C00942").
metabolite("C00944").
metabolite("C00965").
metabolite("C00966").
metabolite("C00986").
metabolite("C00996").
metabolite("C00999").
metabolite("C01034").
metabolite("C01037").
metabolite("C01051").
metabolite("C01081").
metabolite("C01092").
metabolite("C01118").
metabolite("C01120").
metabolite("C01157").
metabolite("C01165").
metabolite("C01176").
metabolite("C01179").
metabolite("C01185").
metabolite("C01194").
metabolite("C01203").
metabolite("C01209").
metabolite("C01227").
metabolite("C01251").
metabolite("C01269").
metabolite("C01271").
metabolite("C01300").
metabolite("C01302").
metabolite("C01346").
metabolite("C01352").
metabolite("C01419").
metabolite("C01635").
metabolite("C01638").
metabolite("C01647").
metabolite("C01652").
metabolite("C01762").
metabolite("C01909").
metabolite("C01967").
metabolite("C02100").
metabolite("C02229").
metabolite("C02291").
metabolite("C02407").
metabolite("C02505").
metabolite("C02637").
metabolite("C02700").
metabolite("C02714").
metabolite("C02839").
metabolite("C02843").
metabolite("C02984").
metabolite("C03175").
metabolite("C03384").
metabolite("C03496").
metabolite("C03506").
metabolite("C03512").
metabolite("C03722").
metabolite("C03734").
metabolite("C03836").
metabolite("C03838").
metabolite("C03849").
metabolite("C03912").
metabolite("C04088").
metabolite("C04236").
metabolite("C04281").
metabolite("C04295").
metabolite("C04302").
metabolite("C04376").
metabolite("C04425").
metabolite("C04432").
metabolite("C04441").
metabolite("C04556").
metabolite("C04618").
metabolite("C04620").
metabolite("C04677").
metabolite("C04691").
metabolite("C04692").
metabolite("C04728").
metabolite("C04734").
metabolite("C04752").
metabolite("C04807").
metabolite("C05138").
metabolite("C05223").
metabolite("C05335").
metabolite("C05336").
metabolite("C05345").
metabolite("C05378").
metabolite("C05437").
metabolite("C05533").
metabolite("C05662").
metabolite("C05715").
metabolite("C05729").
metabolite("C05744").
metabolite("C05745").
metabolite("C05746").
metabolite("C05747").
metabolite("C05751").
metabolite("C05755").
metabolite("C05756").
metabolite("C05757").
metabolite("C05763").
metabolite("C05764").
metabolite("C05778").
metabolite("C05863").
metabolite("C05864").
metabolite("C05873").
metabolite("C05874").
metabolite("C06253").
metabolite("C06316").
metabolite("C06424").
metabolite("C06814").
metabolite("C07086").
metabolite("C161ACP").
metabolite("C182ACP").
metabolite("DGPP").
metabolite("EPST").
metabolite("ERTROL").
metabolite("GLTL").
metabolite("IIMZYMST").
metabolite("IIZYMST").
metabolite("IMZYMST").
metabolite("NAG").
metabolite("OIVAL").
metabolite("PSPH").

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
orf("U104_").
orf("U105_").
orf("U107_").
orf("U132_").
orf("U155_").
orf("U160_").
orf("U165_").
orf("U172_").
orf("U174_").
orf("U177_").
orf("U178_").
orf("U185_").
orf("U191_").
orf("U194_").
orf("U219_").
orf("U220_").
orf("U223_").
orf("U228_").
orf("U24_").
orf("U29_").
orf("U30_").
orf("U36_").
orf("U39_").
orf("U3_").
orf("U45_").
orf("U46_").
orf("U4_").
orf("U53_").
orf("U62_").
orf("U76_").
orf("U90_").
orf("U96_").
orf("U98_").
orf("YAL012W").
orf("YAL054C").
orf("YBL015W").
orf("YBL035C").
orf("YBL039C").
orf("YBL068W").
orf("YBR011C").
orf("YBR018C").
orf("YBR068C").
orf("YBR069C").
orf("YBR111C").
orf("YBR117C").
orf("YBR149W").
orf("YBR154C").
orf("YBR166C").
orf("YBR176W").
orf("YBR218C").
orf("YBR249C").
orf("YBR252W").
orf("YBR278W").
orf("YBR284W").
orf("YBR298C").
orf("YCL025C").
orf("YCL064C").
orf("YCR014C").
orf("YCR036W").
orf("YDL033C").
orf("YDL078C").
orf("YDL080C").
orf("YDL102W").
orf("YDL131W").
orf("YDL140C").
orf("YDL150W").
orf("YDL174C").
orf("YDL182W").
orf("YDR007W").
orf("YDR019C").
orf("YDR035W").
orf("YDR045C").
orf("YDR046C").
orf("YDR121W").
orf("YDR127W").
orf("YDR147W").
orf("YDR156W").
orf("YDR226W").
orf("YDR242W").
orf("YDR256C").
orf("YDR261C").
orf("YDR268W").
orf("YDR297W").
orf("YDR353W").
orf("YDR354W").
orf("YDR380W").
orf("YDR400W").
orf("YDR404C").
orf("YDR408C").
orf("YDR419W").
orf("YDR441C").
orf("YDR454C").
orf("YDR497C").
orf("YDR503C").
orf("YDR508C").
orf("YDR536W").
orf("YEL055C").
orf("YEL063C").
orf("YER005W").
orf("YER023W").
orf("YER056C").
orf("YER060W").
orf("YER060W-A").
orf("YER070W").
orf("YER090W").
orf("YER099C").
orf("YFL036W").
orf("YFL055W").
orf("YFR015C").
orf("YFR047C").
orf("YGL001C").
orf("YGL026C").
orf("YGL027C").
orf("YGL062W").
orf("YGL070C").
orf("YGL130W").
orf("YGL148W").
orf("YGL186C").
orf("YGL202W").
orf("YGL205W").
orf("YGR055W").
orf("YGR065C").
orf("YGR087C").
orf("YGR088W").
orf("YGR121C").
orf("YGR171C").
orf("YGR185C").
orf("YGR254W").
orf("YGR264C").
orf("YGR282C").
orf("YHL011C").
orf("YHL036W").
orf("YHR068W").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR144C").
orf("YHR174W").
orf("YHR179W").
orf("YIL021W").
orf("YIL043C").
orf("YIL085C").
orf("YIL094C").
orf("YIL125W").
orf("YIL139C").
orf("YIL160C").
orf("YIL167W").
orf("YIL168W").
orf("YJL070C").
orf("YJL090C").
orf("YJL126W").
orf("YJL129C").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL167W").
orf("YJR006W").
orf("YJR043C").
orf("YJR063W").
orf("YJR077C").
orf("YJR078W").
orf("YJR103W").
orf("YJR130C").
orf("YJR148W").
orf("YKL024C").
orf("YKL067W").
orf("YKL085W").
orf("YKL106W").
orf("YKL144C").
orf("YKL150W").
orf("YKL181W").
orf("YKL211C").
orf("YKL216W").
orf("YKR009C").
orf("YKR039W").
orf("YKR053C").
orf("YKR069W").
orf("YKR080W").
orf("YLL018C").
orf("YLR027C").
orf("YLR028C").
orf("YLR044C").
orf("YLR056W").
orf("YLR058C").
orf("YLR100C").
orf("YLR134W").
orf("YLR142W").
orf("YLR153C").
orf("YLR172C").
orf("YLR209C").
orf("YLR231C").
orf("YLR258W").
orf("YLR299W").
orf("YLR300W").
orf("YLR377C").
orf("YML022W").
orf("YML035C").
orf("YML086C").
orf("YMR120C").
orf("YMR323W").
orf("YNL029C").
orf("YNL037C").
orf("YNL102W").
orf("YNL113W").
orf("YNL142W").
orf("YNL151C").
orf("YNL248C").
orf("YNL256W").
orf("YNL262W").
orf("YNL270C").
orf("YNL299W").
orf("YNL316C").
orf("YNR003C").
orf("YNR012W").
orf("YNR057C").
orf("YNR058W").
orf("YOL005C").
orf("YOL020W").
orf("YOL055C").
orf("YOL061W").
orf("YOL097C").
orf("YOL103W").
orf("YOL115W").
orf("YOL126C").
orf("YOR011W").
orf("YOR095C").
orf("YOR116C").
orf("YOR151C").
orf("YOR190W").
orf("YOR207C").
orf("YOR210W").
orf("YOR224C").
orf("YOR274W").
orf("YOR323C").
orf("YOR330C").
orf("YOR335C").
orf("YOR340C").
orf("YOR341W").
orf("YOR360C").
orf("YOR388C").
orf("YOR393W").
orf("YPL097W").
orf("YPL104W").
orf("YPL117C").
orf("YPL167C").
orf("YPL171C").
orf("YPL231W").
orf("YPL265W").
orf("YPL266W").
orf("YPL275W").
orf("YPL276W").
orf("YPL281C").
orf("YPR010C").
orf("YPR060C").
orf("YPR074C").
orf("YPR110C").
orf("YPR113W").
orf("YPR138C").
orf("YPR175W").
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

