
%=====================================================================
% reaction(
%  1(integer): Unique reaction identifier, 
%  2(modifiable|assertable|retractable): 
%  3(string): Label (usually EC number, if available)
%  4(1|2): Rate (day on which product is available)
%  5(list): Substrates (compartment, stochiotemetry, ID)
%  6(list): Products (compartment, stochiotemetry, ID)
% ) 

% import of additional nutrients
reaction(1, retractable, "I00074", 1, [reactant(medium, 1, "C00074")], [reactant(cytosol, 1, "C00074")]).
reaction(2, retractable, "I00078", 1, [reactant(medium, 1, "C00078")], [reactant(cytosol, 1, "C00078")]).
reaction(3, retractable, "I00079", 1, [reactant(medium, 1, "C00079")], [reactant(cytosol, 1, "C00079")]).
reaction(4, retractable, "I00082", 1, [reactant(medium, 1, "C00082")], [reactant(cytosol, 1, "C00082")]).
reaction(5, retractable, "I00108", 1," [reactant(medium, 1, "C00108")], [reactant(cytosol, 1, "C00108")]). %
reaction(6, retractable, "I00166", 2, [reactant(medium, 1, "C00166")], [reactant(cytosol, 1, "C00166")]).
reaction(7, retractable, "I00463", 1, [reactant(medium, 1, "C00463")], [reactant(cytosol, 1, "C00463")]).
reaction(8, retractable, "I00493", 1, [reactant(medium, 1, "C00493")], [reactant(cytosol, 1, "C00493")]).
reaction(9, retractable, "I01179", 2, [reactant(medium, 1, "C01179")], [reactant(cytosol, 1, "C01179")]).

% import of start compounds
reaction(10, certain, "I00631", 1, [reactant(medium, 1, "C00631")], [reactant(cytosol, 1, "C00631")]).
reaction(11, certain, "I00279", 1, [reactant(medium, 1, "C00279")], [reactant(cytosol, 1, "C00279")]).
% import of ubiquitous compounds
reaction(12, certain, "I00005", 1, [reactant(medium, 1, "C00005")], [reactant(cytosol, 1, "C00005")]).
reaction(13, certain, "I00000", 1, [reactant(medium, 1, "C00000")], [reactant(cytosol, 1, "C00000")]).
reaction(14, certain, "I00002", 1, [reactant(medium, 1, "C00002")], [reactant(cytosol, 1, "C00002")]).
reaction(15, certain, "I00014", 1, [reactant(medium, 1, "C00014")], [reactant(cytosol, 1, "C00014")]).
reaction(16, certain, "I00064", 1, [reactant(medium, 1, "C00064")], [reactant(cytosol, 1, "C00064")]).
reaction(17, certain, "I00119", 1, [reactant(medium, 1, "C00119")], [reactant(cytosol, 1, "C00119")]).
reaction(18, certain, "I00065", 1, [reactant(medium, 1, "C00065")], [reactant(cytosol, 1, "C00065")]).
reaction(19, certain, "I00003", 1, [reactant(medium, 1, "C00003")], [reactant(cytosol, 1, "C00003")]).
reaction(20, certain, "I00006", 1, [reactant(medium, 1, "C00006")], [reactant(cytosol, 1, "C00006")]).
reaction(21, certain, "I00001", 1, [reactant(medium, 1, "C00001")], [reactant(cytosol, 1, "C00001")]).
reaction(22, certain, "I00011", 1, [reactant(medium, 1, "C00011")], [reactant(cytosol, 1, "C00011")]).
reaction(23, certain, "I00025", 1, [reactant(medium, 1, "C00025")], [reactant(cytosol, 1, "C00025")]).

% metabolic reactions
reaction(24, retractable, "4.2.1.11", 1, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00074")]).
reaction(25, retractable, "2.5.1.54", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C00279")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04691")]).
reaction(26, retractable, "4.2.3.4",  1, [reactant(cytosol, 1, "C04691")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00944")]).
reaction(27, retractable, "4.2.1.10", 1, [reactant(cytosol, 1, "C00944")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C02637")]).
reaction(28, retractable, "?",        1, [reactant(cytosol, 1, "C02637")], [reactant(cytosol, 1, "C02652")]).
reaction(29, retractable, "1.1.1.25", 1, [reactant(cytosol, 1, "C00000"), reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02652")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00493")]).
reaction(30, retractable, "2.7.1.71", 1, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00493")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03175")]).
reaction(31, retractable, "2.5.1.19", 1, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C03175")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01269")]).
reaction(32, retractable, "4.2.3.5",  1, [reactant(cytosol, 1, "C01269")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00251")]).
reaction(33, retractable, "4.1.3.27", 1, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00108")]).
reaction(34, retractable, "4.1.3.27", 1, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00108")]).
reaction(35, retractable, "2.4.2.18", 1, [reactant(cytosol, 1, "C00108"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04302")]).
reaction(36, retractable, "5.3.1.24", 1, [reactant(cytosol, 1, "C04302")], [reactant(cytosol, 1, "C01302")]).
reaction(37, retractable, "4.1.1.48", 1, [reactant(cytosol, 1, "C01302")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03506")]).
reaction(38, retractable, "4.2.1.20", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C00661")]).
reaction(39, retractable, "4.2.1.20", 1, [reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00463"), reactant(cytosol, 1, "C00661")]).
reaction(40, retractable, "4.2.1.20", 1, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00463")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00078")]).
reaction(41, retractable, "5.4.99.5", 1, [reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00254")]).
reaction(42, retractable, "4.2.1.51", 1, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00166")]).
reaction(43, retractable, "1.3.1.13", 1, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00000"), reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01179")]).
reaction(44, retractable, "2.6.1.7",  1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00166")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00079")]).
reaction(45, retractable, "2.6.1.7",  1, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]).

% non-saccharomyces reactions
reaction(0, assertable, "1.14.16.1", 1, [reactant(cytosol, 1, "C00079")], [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C15522")]).

% non-AAA reactions
reaction(350, assertable, "3.7.1.3",    1, [reactant(cytosol, 1, "C00328")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00108")]).
reaction(351, assertable, "3.5.1.9",    1, [reactant(cytosol, 1, "C02700")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C00328")]).
reaction(352, assertable, "1.13.11.11", 1, [reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C00007")], [reactant(cytosol, 1, "C02700")]).

reaction(219, assertable, "A", 1, [reactant(cytosol, 1, "C03722"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1,"C01185"), reactant(cytosol, 1, "C00011"), reactant(cytosol,1, "C00013")]).
reaction(624, assertable, "B", 1, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00020")]).
reaction(792, assertable, "C", 1, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C00117")]).
reaction(788, assertable, "D", 1, [reactant(cytosol, 1, "C00121"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00008")]).
reaction(882, assertable, "E", 1, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00020")]).


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

enzyme(1,  certain, "2.6.1.7",  ["YHR137W"], [44,45]).
enzyme(2,  certain, "2.6.1.7",  ["YGL202W"], [44,45]).
enzyme(3,  certain, "1.3.1.13", ["YBR166C"], [43]).
enzyme(4,  certain, "4.2.1.51", ["YNL316C"], [42]). 
enzyme(5,  certain, "5.4.99.5", ["YPR060C"], [41]).
enzyme(6,  certain, "4.2.1.20", ["YGL026C"], [38,39,40]).
enzyme(7,  certain, "4.1.1.48", ["YKL211C"], [37]).
enzyme(8,  certain, "5.3.1.24", ["YDR007W"], [36]).
enzyme(9,  certain, "2.4.2.18", ["YDR354W"], [35]).
enzyme(10, certain, "4.1.3.27", ["YKL211C","YER090W"], [34]).
enzyme(11, certain, "4.1.3.27", ["YER090W"], [33]).
enzyme(12, certain, "4.2.3.5",  ["YGL148W"], [32]).
enzyme(13, certain, "4.2.3.4-2.5.1.19", ["YDR127W"], [31,30,29,28,27,26]).
enzyme(14, certain, "2.5.1.54", ["YBR249C"], [25]).
enzyme(15, certain, "2.5.1.54", ["YDR035W"], [25]).
enzyme(16, certain, "4.2.1.11", ["YGR254W"], [24]).
enzyme(17, certain, "4.2.1.11", ["YHR174W"], [24]).
enzyme(18, certain, "4.2.1.11", ["YMR323W"], [24]).

enzyme(21, certain, "IMPORT", ["I00074"], [1]).
enzyme(22, certain, "IMPORT", ["I00078"], [2]).
enzyme(23, certain, "IMPORT", ["I00079"], [3]).
enzyme(24, certain, "IMPORT", ["I00082"], [4]).
enzyme(25, certain, "IMPORT", ["I00108"], [5]).
enzyme(26, certain, "IMPORT", ["I00166"], [6]).
enzyme(27, certain, "IMPORT", ["I00463"], [7]).
enzyme(28, certain, "IMPORT", ["I00493"], [8]).
enzyme(29, certain, "IMPORT", ["I01179"], [9]).

%=====================================================================
%inhibitor(
% 1(integer): Unique Complex Identifier, 
% 2(string): Compound ID
% 3(cytosol|medium): compartment 
%)

inhibitor(14,"C00082",cytosol).

%=====================================================================

metabolite("C00000").
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
metabolite("C00020").
metabolite("C00022").
metabolite("C00025").
metabolite("C00026").
metabolite("C00041").
metabolite("C00058").
metabolite("C00064").
metabolite("C00065").
metabolite("C00074").
metabolite("C00078").
metabolite("C00079").
metabolite("C00082").
metabolite("C00108").
metabolite("C00117").
metabolite("C00119").
metabolite("C00121").
metabolite("C00166").
metabolite("C00199").
metabolite("C00251").
metabolite("C00254").
metabolite("C00272").
metabolite("C00279").
metabolite("C00301").
metabolite("C00328").
metabolite("C00463").
metabolite("C00493").
metabolite("C00631").
metabolite("C00661").
metabolite("C00944").
metabolite("C01179").
metabolite("C01185").
metabolite("C01269").
metabolite("C01302").
metabolite("C02637").
metabolite("C02652").
metabolite("C02700").
metabolite("C03175").
metabolite("C03506").
metabolite("C03722").
metabolite("C04302").
metabolite("C04691").
metabolite("C15522").

orf("YBR166C").
orf("YBR249C").
orf("YDR007W").
orf("YDR035W").
orf("YDR127W").
orf("YDR354W").
orf("YER090W").
orf("YGL026C").
orf("YGL148W").
orf("YGL202W").
orf("YGR254W").
orf("YHR137W").
orf("YHR174W").
orf("YKL211C").
orf("YMR323W").
orf("YNL316C").
orf("YPR060C").

orf("I00074").
orf("I00078").
orf("I00079").
orf("I00082").
orf("I00108").
orf("I00166").
orf("I00463").
orf("I00493").
orf("I01179").

compartment(cytosol).
compartment(medium).

%% day(1).
