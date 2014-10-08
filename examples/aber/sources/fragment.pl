%=====================================================================
% reaction(
%	1 - Unique reaction identifier, 
%	2 - List of substrates in the form "reactant(compartment, stoichiometry, id)"
%	3 - kind: (->) mono, <-> bidi-single, <=> bidi-double 
%	4 - List of products in the form "reactant(compartment, stoichiometry, id)"
% ) 

%%% import of additional nutrients

reaction(3001, [reactant(external, 1, "C00074")], (->), [reactant(cytosol, 1, "C00074")]). % retractable, "I00074", 1, 
reaction(81, [reactant(external, 1, 'C00078'), reactant(external, 1, 'C00080')], <->, [reactant(cytosol, 1, 'C00078')]).
reaction(83, [reactant(external, 1, 'C00079'), reactant(external, 1, 'C00080')], <->, [reactant(cytosol, 1, 'C00079')]).
reaction(80, [reactant(external, 1, 'C00082'), reactant(external, 1, 'C00080')], <->, [reactant(cytosol, 1, 'C00082')]).
reaction(3002, [reactant(external, 1, 'C00108')], (->), [reactant(cytosol, 1, 'C00108')]). % retractable, "I00108", 1, 
reaction(3003, [reactant(external, 1, 'C00166')], (->), [reactant(cytosol, 1, 'C00166')]). % retractable, "I00166", 2, <-- SLOW!!!
reaction(3004, [reactant(external, 1, 'C00493')], (->), [reactant(cytosol, 1, 'C00493')]). % retractable, "I00493", 1,
reaction(3005, [reactant(external, 1, 'C01179')], (->), [reactant(cytosol, 1, 'C01179')]). % retractable, "I01179", 2, <-- SLOW!!!



%%% import of start compounds

reaction(3006, [reactant(external, 1, 'C00279')], (->), [reactant(cytosol, 1, 'C00279')]). % retractable, "I00279", 1,
reaction(3007, [reactant(external, 1, 'C00631')], (->), [reactant(cytosol, 1, 'C00631')]). % retractable, "I00631", 1,



%%% import of ubiquitous compounds

reaction(3008, [reactant(external, 1, 'C00001')], (->), [reactant(cytosol, 1, 'C00001')]). % retractable, "I00001", 1,
reaction(3009, [reactant(external, 1, 'C00002')], (->), [reactant(cytosol, 1, 'C00002')]). % retractable, "I00002", 1,
reaction(3010, [reactant(external, 1, 'C00003')], (->), [reactant(cytosol, 1, 'C00003')]). % retractable, "I00003", 1,
reaction(3011, [reactant(external, 1, 'C00004')], (->), [reactant(cytosol, 1, 'C00004')]). % retractable, "I00004", 1,
reaction(3012, [reactant(external, 1, 'C00005')], (->), [reactant(cytosol, 1, 'C00005')]). % retractable, "I00005", 1,
reaction(3013, [reactant(external, 1, 'C00006')], (->), [reactant(cytosol, 1, 'C00006')]). % retractable, "I00006", 1,
reaction(3014, [reactant(external, 1, 'C00007')], (->), [reactant(cytosol, 1, 'C00007')]). % retractable, "I00007", 1,
reaction(3015, [reactant(external, 1, 'C00008')], (->), [reactant(cytosol, 1, 'C00008')]). % retractable, "I00008", 1,
reaction(4, [reactant(external, 1, 'C00011')], <->, [reactant(cytosol, 1, 'C00011')]).
reaction(37, [reactant(external, 1, 'C00014')], <->, [reactant(cytosol, 1, 'C00014')]).
reaction(119, [reactant(external, 1, 'C00025')], <->, [reactant(cytosol, 1, 'C00025')]).
reaction(88, [reactant(external, 1, 'C00064'), reactant(external, 1, 'C00080')], <->, [reactant(cytosol, 1, 'C00064')]).
reaction(78, [reactant(external, 1, 'C00065'), reactant(external, 1, 'C00080')], <->, [reactant(cytosol, 1, 'C00065')]).
reaction(3016, [reactant(external, 1, 'C00119')], (->), [reactant(cytosol, 1, 'C00119')]). % retractable, "I00119", 1,



%%% metabolic reactions

reaction(823, [reactant(cytosol, 1, 'C00631')], <->, [reactant(cytosol, 1, 'C00074')]).
reaction(376, [reactant(cytosol, 1, 'C00279'), reactant(cytosol, 1, 'C00074')], (->), [reactant(cytosol, 1, 'C00009'), reactant(cytosol, 1, 'C04691')]).
reaction(375, [reactant(cytosol, 1, 'C04691')], (->), [reactant(cytosol, 1, 'C00944'), reactant(cytosol, 1, 'C00009')]).
reaction(374, [reactant(cytosol, 1, 'C00944')], (->), [reactant(cytosol, 1, 'C02637')]).
reaction(373, [reactant(cytosol, 1, 'C02637'), reactant(cytosol, 1, 'C00005')], (->), [reactant(cytosol, 1, 'C00493'), reactant(cytosol, 1, 'C00006')]).
reaction(372, [reactant(cytosol, 1, 'C00493'), reactant(cytosol, 1, 'C00002')], (->), [reactant(cytosol, 1, 'C00008'), reactant(cytosol, 1, 'C03175')]).
reaction(371, [reactant(cytosol, 1, 'C03175'), reactant(cytosol, 1, 'C00074')], (->), [reactant(cytosol, 1, 'C01269'), reactant(cytosol, 1, 'C00009')]).
reaction(370, [reactant(cytosol, 1, 'C01269')], (->), [reactant(cytosol, 1, 'C00009'), reactant(cytosol, 1, 'C00251')]).
reaction(363, [reactant(cytosol, 1, 'C00251'), reactant(cytosol, 1, 'C00064')], (->), [reactant(cytosol, 1, 'C00025'), reactant(cytosol, 1, 'C00022'), reactant(cytosol, 1, 'C00108')]).
reaction(362, [reactant(cytosol, 1, 'C00108'), reactant(cytosol, 1, 'C00119')], (->), [reactant(cytosol, 1, 'C00013'), reactant(cytosol, 1, 'C04302')]).
reaction(361, [reactant(cytosol, 1, 'C04302')], (->), [reactant(cytosol, 1, 'C01302')]).
reaction(360, [reactant(cytosol, 1, 'C01302')], (->), [reactant(cytosol, 1, 'C00011'), reactant(cytosol, 1, 'C03506')]).
reaction(359, [reactant(cytosol, 1, 'C03506'), reactant(cytosol, 1, 'C00065')], (->), [reactant(cytosol, 1, 'C00118'), reactant(cytosol, 1, 'C00078')]).
reaction(369, [reactant(cytosol, 1, 'C00251')], (->), [reactant(cytosol, 1, 'C00254')]).
reaction(368, [reactant(cytosol, 1, 'C00254')], (->), [reactant(cytosol, 1, 'C00011'), reactant(cytosol, 1, 'C00166')]).
reaction(367, [reactant(cytosol, 1, 'C00166'), reactant(cytosol, 1, 'C00025')], <->, [reactant(cytosol, 1, 'C00026'), reactant(cytosol, 1, 'C00079')]).
reaction(366, [reactant(cytosol, 1, 'C00254'), reactant(cytosol, 1, 'C00006')], (->), [reactant(cytosol, 1, 'C01179'), reactant(cytosol, 1, 'C00011'), reactant(cytosol, 1, 'C00005')]).
reaction(357, [reactant(cytosol, 1, 'C01179'), reactant(cytosol, 1, 'C00025')], <->, [reactant(cytosol, 1, 'C00026'), reactant(cytosol, 1, 'C00082')]).



%%% non-saccharomyces reactions

%% reaction(0, assertable, "1.14.16.1", 1, [reactant(cytosol, 1, "C00079")], [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C15522")]).
%% not found in ABER
% NdS: missing from AAA, but we are not going to re-add them
reaction(1090, [reactant(cytosol, 1, 'C03506')], (->), [reactant(cytosol, 1, 'C00463'), reactant(cytosol, 1, 'C00661')]). % indole reactions
reaction(1091, [reactant(cytosol, 1, 'C00065'), reactant(cytosol, 1, 'C00463')], (->), [reactant(cytosol, 1, 'C00001'), reactant(cytosol, 1, 'C00078')]). % indole reactions
reaction(1092, [reactant(external, 1, 'C00463')], (->), [reactant(cytosol, 1, 'C00463')]). % indole import reaction 
%% reaction(2000, [reactant(cytosol, 1, 'C00079')], (->), [reactant(cytosol, 1, 'C00082'), reactant(cytosol, 1, 'C15522')]). % non-saccharomyces reactions



% non-AAA reactions

reaction(350, [reactant(cytosol, 1, 'C00328')], (->), [reactant(cytosol, 1, 'C00041'), reactant(cytosol, 1, 'C00108')]).
reaction(351, [reactant(cytosol, 1, 'C02700')], (->), [reactant(cytosol, 1, 'C00058'), reactant(cytosol, 1, 'C00328')]).
reaction(352, [reactant(cytosol, 1, 'C00078'), reactant(cytosol, 1, 'C00007')], (->), [reactant(cytosol, 1, 'C02700')]).
reaction(219, [reactant(cytosol, 1, 'C03722'), reactant(cytosol, 1, 'C00119')], (->), [reactant(cytosol, 1, 'C01185'), reactant(cytosol, 1, 'C00011'), reactant(cytosol, 1, 'C00013')]).
reaction(624, [reactant(cytosol, 1, 'C00117'), reactant(cytosol, 1, 'C00002')], <->, [reactant(cytosol, 1, 'C00119'), reactant(cytosol, 1, 'C00020')]).
reaction(792, [reactant(cytosol, 1, 'C00199')], <->, [reactant(cytosol, 1, 'C00117')]).
reaction(788, [reactant(cytosol, 1, 'C00121'), reactant(cytosol, 1, 'C00002')], (->), [reactant(cytosol, 1, 'C00117'), reactant(cytosol, 1, 'C00008')]).
reaction(882, [reactant(cytosol, 1, 'C00001'), reactant(cytosol, 1, 'C00301')], <=>, [reactant(cytosol, 1, 'C00117'), reactant(cytosol, 1, 'C00020')]).
