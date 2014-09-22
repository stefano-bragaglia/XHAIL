in_compartment(Experiment,Metabolite,Compartment,Day) :-
  start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
  additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,M1,Compartment,Day) :-
  additional_nutrient(Experiment,M2,Compartment),
  contaminated(M2,M1).

in_compartment(Experiment,"C05437",cytosol,Day) :-
  not exclude(21),
  Day >= 1,
  in_compartment(Experiment,"C05437",medium,Day),
  catalyst(21,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05437",medium,Day) :-
  not exclude(22),
  Day >= 1,
  in_compartment(Experiment,"C05437",cytosol,Day),
  catalyst(22,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(41),
  Day >= 1,
  in_compartment(Experiment,"C00011",medium,Day),
  catalyst(41,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",medium,Day) :-
  not exclude(42),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  catalyst(42,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01037",cytosol,Day) :-
  not exclude(91),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01037",medium,Day),
  catalyst(91,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(92),
  Day >= 1,
  in_compartment(Experiment,"C01037",cytosol,Day),
  catalyst(92,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01037",medium,Day) :-
  not exclude(92),
  Day >= 1,
  in_compartment(Experiment,"C01037",cytosol,Day),
  catalyst(92,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(111),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00120",medium,Day),
  catalyst(111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(112),
  Day >= 1,
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",medium,Day) :-
  not exclude(112),
  Day >= 1,
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(131),
  Day >= 1,
  in_compartment(Experiment,"C00178",medium,Day),
  catalyst(131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00178",cytosol,Day) :-
  not exclude(131),
  Day >= 1,
  in_compartment(Experiment,"C00178",medium,Day),
  catalyst(131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00178",medium,Day) :-
  not exclude(132),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00178",cytosol,Day),
  catalyst(132,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00459",cytosol,Day) :-
  not exclude(141),
  Day >= 1,
  in_compartment(Experiment,"C00459",medium,Day),
  catalyst(141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00459",medium,Day) :-
  not exclude(142),
  Day >= 1,
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(220),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(220),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(220),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(321),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00122",medium,Day),
  catalyst(321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(322),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  catalyst(322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",medium,Day) :-
  not exclude(322),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  catalyst(322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",cytosol,Day) :-
  not exclude(331),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00158",medium,Day),
  catalyst(331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(332),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  catalyst(332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",medium,Day) :-
  not exclude(332),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  catalyst(332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00238",cytosol,Day) :-
  not exclude(361),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00238",medium,Day),
  catalyst(361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(362),
  Day >= 1,
  in_compartment(Experiment,"C00238",cytosol,Day),
  catalyst(362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00238",medium,Day) :-
  not exclude(362),
  Day >= 1,
  in_compartment(Experiment,"C00238",cytosol,Day),
  catalyst(362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(371),
  Day >= 1,
  in_compartment(Experiment,"C00014",medium,Day),
  catalyst(371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",medium,Day) :-
  not exclude(372),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  catalyst(372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(431),
  Day >= 1,
  in_compartment(Experiment,"C00033",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",medium,Day) :-
  not exclude(432),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(432),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00559",cytosol,Day) :-
  not exclude(480),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00559",medium,Day),
  catalyst(480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00330",cytosol,Day) :-
  not exclude(490),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00330",medium,Day),
  catalyst(490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05512",cytosol,Day) :-
  not exclude(500),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C05512",medium,Day),
  catalyst(500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00294",cytosol,Day) :-
  not exclude(520),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00294",medium,Day),
  catalyst(520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",cytosol,Day) :-
  not exclude(560),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00212",medium,Day),
  catalyst(560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01762",cytosol,Day) :-
  not exclude(570),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01762",medium,Day),
  catalyst(570,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(581),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00242",medium,Day),
  catalyst(581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(582),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",medium,Day) :-
  not exclude(582),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(620),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00106",medium,Day),
  catalyst(620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00315",cytosol,Day) :-
  not exclude(660),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00315",medium,Day),
  catalyst(660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00114",cytosol,Day) :-
  not exclude(710),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00114",medium,Day),
  catalyst(710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(771),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00188",medium,Day),
  catalyst(771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(772),
  Day >= 1,
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",medium,Day) :-
  not exclude(772),
  Day >= 1,
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(781),
  Day >= 1,
  in_compartment(Experiment,"C00065",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",medium,Day) :-
  not exclude(782),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(782),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(801),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00082",medium,Day),
  catalyst(801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(802),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",medium,Day) :-
  not exclude(802),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(811),
  Day >= 1,
  in_compartment(Experiment,"C00078",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",medium,Day) :-
  not exclude(812),
  Day >= 1,
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(812),
  Day >= 1,
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(831),
  Day >= 1,
  in_compartment(Experiment,"C00079",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",medium,Day) :-
  not exclude(832),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(832),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(841),
  Day >= 1,
  in_compartment(Experiment,"C00073",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",medium,Day) :-
  not exclude(842),
  Day >= 1,
  in_compartment(Experiment,"C00073",cytosol,Day),
  catalyst(842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(842),
  Day >= 1,
  in_compartment(Experiment,"C00073",cytosol,Day),
  catalyst(842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00123",cytosol,Day) :-
  not exclude(851),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00123",medium,Day),
  catalyst(851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(852),
  Day >= 1,
  in_compartment(Experiment,"C00123",cytosol,Day),
  catalyst(852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00123",medium,Day) :-
  not exclude(852),
  Day >= 1,
  in_compartment(Experiment,"C00123",cytosol,Day),
  catalyst(852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(881),
  Day >= 1,
  in_compartment(Experiment,"C00064",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",medium,Day) :-
  not exclude(882),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(882),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(901),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00097",medium,Day),
  catalyst(901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(902),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",medium,Day) :-
  not exclude(902),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00152",cytosol,Day) :-
  not exclude(921),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00152",medium,Day),
  catalyst(921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(922),
  Day >= 1,
  in_compartment(Experiment,"C00152",cytosol,Day),
  catalyst(922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00152",medium,Day) :-
  not exclude(922),
  Day >= 1,
  in_compartment(Experiment,"C00152",cytosol,Day),
  catalyst(922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00062",cytosol,Day) :-
  not exclude(931),
  Day >= 1,
  in_compartment(Experiment,"C00062",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00062",medium,Day) :-
  not exclude(932),
  Day >= 1,
  in_compartment(Experiment,"C00062",cytosol,Day),
  catalyst(932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(932),
  Day >= 1,
  in_compartment(Experiment,"C00062",cytosol,Day),
  catalyst(932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01684",cytosol,Day) :-
  not exclude(980),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01684",medium,Day),
  catalyst(980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"NAG",cytosol,Day) :-
  not exclude(990),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"NAG",medium,Day),
  catalyst(990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"GLTL",cytosol,Day) :-
  not exclude(1060),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"GLTL",medium,Day),
  catalyst(1060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",medium,Day) :-
  not exclude(1111),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00711",medium,Day),
  catalyst(1111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(1111),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00711",medium,Day),
  catalyst(1111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(1112),
  Day >= 1,
  in_compartment(Experiment,"C00026",medium,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",medium,Day) :-
  not exclude(1112),
  Day >= 1,
  in_compartment(Experiment,"C00026",medium,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(1121),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00711",medium,Day),
  catalyst(1121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(1122),
  Day >= 1,
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",medium,Day) :-
  not exclude(1122),
  Day >= 1,
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00089",cytosol,Day) :-
  not exclude(1130),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00089",medium,Day),
  catalyst(1130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00208",cytosol,Day) :-
  not exclude(1150),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00208",medium,Day),
  catalyst(1150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00137",cytosol,Day) :-
  not exclude(1160),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00137",medium,Day),
  catalyst(1160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(1191),
  Day >= 1,
  in_compartment(Experiment,"C00025",medium,Day),
  catalyst(1191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",medium,Day) :-
  not exclude(1192),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",mitochondrion,Day) :-
  not exclude(1220),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(1220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",mitochondrion,Day) :-
  not exclude(1261),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  catalyst(1261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(1262),
  Day >= 1,
  in_compartment(Experiment,"C00021",mitochondrion,Day),
  catalyst(1262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",mitochondrion,Day) :-
  not exclude(1321),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  catalyst(1321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(1322),
  Day >= 1,
  in_compartment(Experiment,"C00147",mitochondrion,Day),
  catalyst(1322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01134",mitochondrion,Day) :-
  not exclude(1331),
  Day >= 1,
  in_compartment(Experiment,"C01134",cytosol,Day),
  catalyst(1331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01134",cytosol,Day) :-
  not exclude(1332),
  Day >= 1,
  in_compartment(Experiment,"C01134",mitochondrion,Day),
  catalyst(1332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(1390),
  Day >= 1,
  in_compartment(Experiment,"C00016",cytosol,Day),
  in_compartment(Experiment,"C00061",mitochondrion,Day),
  catalyst(1390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00061",cytosol,Day) :-
  not exclude(1390),
  Day >= 1,
  in_compartment(Experiment,"C00016",cytosol,Day),
  in_compartment(Experiment,"C00061",mitochondrion,Day),
  catalyst(1390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"OIVAL",mitochondrion,Day) :-
  not exclude(1411),
  Day >= 1,
  in_compartment(Experiment,"OIVAL",cytosol,Day),
  catalyst(1411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"OIVAL",cytosol,Day) :-
  not exclude(1412),
  Day >= 1,
  in_compartment(Experiment,"OIVAL",mitochondrion,Day),
  catalyst(1412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1471),
  Day >= 1,
  in_compartment(Experiment,"C00256",cytosol,Day),
  catalyst(1471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",mitochondrion,Day) :-
  not exclude(1471),
  Day >= 1,
  in_compartment(Experiment,"C00256",cytosol,Day),
  catalyst(1471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",cytosol,Day) :-
  not exclude(1472),
  Day >= 1,
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  in_compartment(Experiment,"C00256",mitochondrion,Day),
  catalyst(1472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02504",mitochondrion,Day) :-
  not exclude(1481),
  Day >= 1,
  in_compartment(Experiment,"C02504",cytosol,Day),
  catalyst(1481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02504",cytosol,Day) :-
  not exclude(1482),
  Day >= 1,
  in_compartment(Experiment,"C02504",mitochondrion,Day),
  catalyst(1482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(1571),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01328",mitochondrion,Day),
  catalyst(1571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(1572),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  catalyst(1572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01328",mitochondrion,Day) :-
  not exclude(1572),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  catalyst(1572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(1581),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1581),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(1582),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  catalyst(1582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(1611),
  Day >= 1,
  in_compartment(Experiment,"C00188",mitochondrion,Day),
  catalyst(1611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",mitochondrion,Day) :-
  not exclude(1612),
  Day >= 1,
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(1612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(1751),
  Day >= 1,
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(1751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",mitochondrion,Day) :-
  not exclude(1752),
  Day >= 1,
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(1752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(1791),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  catalyst(1791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(1792),
  Day >= 1,
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  catalyst(1792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",mitochondrion,Day) :-
  not exclude(1801),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  catalyst(1801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(1802),
  Day >= 1,
  in_compartment(Experiment,"C00007",mitochondrion,Day),
  catalyst(1802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"2NPMP",cytosol,Day) :-
  not exclude(1850),
  Day >= 1,
  in_compartment(Experiment,"2N6H",cytosol,Day),
  in_compartment(Experiment,"C00019",cytosol,Day),
  catalyst(1850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(1850),
  Day >= 1,
  in_compartment(Experiment,"2N6H",cytosol,Day),
  in_compartment(Experiment,"C00019",cytosol,Day),
  catalyst(1850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"2N6H",cytosol,Day) :-
  not exclude(1860),
  Day >= 1,
  in_compartment(Experiment,"2NPPP",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  catalyst(1860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(1890),
  Day >= 1,
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(1890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00156",cytosol,Day) :-
  not exclude(1890),
  Day >= 1,
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(1890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(1900),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01051",cytosol,Day),
  catalyst(1900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05778",cytosol,Day) :-
  not exclude(1900),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01051",cytosol,Day),
  catalyst(1900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",mitochondrion,Day) :-
  not exclude(2041),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00387",mitochondrion,Day),
  catalyst(2041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00442",mitochondrion,Day) :-
  not exclude(2041),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00387",mitochondrion,Day),
  catalyst(2041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(2042),
  Day >= 1,
  in_compartment(Experiment,"C00242",mitochondrion,Day),
  in_compartment(Experiment,"C00442",mitochondrion,Day),
  catalyst(2042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",mitochondrion,Day) :-
  not exclude(2042),
  Day >= 1,
  in_compartment(Experiment,"C00242",mitochondrion,Day),
  in_compartment(Experiment,"C00442",mitochondrion,Day),
  catalyst(2042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",mitochondrion,Day) :-
  not exclude(2051),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00212",mitochondrion,Day),
  catalyst(2051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00442",mitochondrion,Day) :-
  not exclude(2051),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00212",mitochondrion,Day),
  catalyst(2051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(2052),
  Day >= 1,
  in_compartment(Experiment,"C00147",mitochondrion,Day),
  in_compartment(Experiment,"C00442",mitochondrion,Day),
  catalyst(2052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",mitochondrion,Day) :-
  not exclude(2052),
  Day >= 1,
  in_compartment(Experiment,"C00147",mitochondrion,Day),
  in_compartment(Experiment,"C00442",mitochondrion,Day),
  catalyst(2052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(2060),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  catalyst(2060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(2060),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  catalyst(2060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(2070),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  catalyst(2070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(2070),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  catalyst(2070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(2121),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(2121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00442",cytosol,Day) :-
  not exclude(2121),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(2121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2122),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C00442",cytosol,Day),
  catalyst(2122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",cytosol,Day) :-
  not exclude(2122),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C00442",cytosol,Day),
  catalyst(2122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(2170),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00857",cytosol,Day),
  catalyst(2170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2170),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00857",cytosol,Day),
  catalyst(2170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(2170),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00857",cytosol,Day),
  catalyst(2170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2180),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01185",cytosol,Day),
  catalyst(2180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00857",cytosol,Day) :-
  not exclude(2180),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01185",cytosol,Day),
  catalyst(2180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2200),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  in_compartment(Experiment,"ISUCC",cytosol,Day),
  catalyst(2200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03722",cytosol,Day) :-
  not exclude(2200),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  in_compartment(Experiment,"ISUCC",cytosol,Day),
  catalyst(2200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(2210),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(2210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"ISUCC",cytosol,Day) :-
  not exclude(2210),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(2210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00054",cytosol,Day) :-
  not exclude(2240),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  catalyst(2240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(2240),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  catalyst(2240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2250),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(2250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00099",cytosol,Day) :-
  not exclude(2250),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(2250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(2260),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00882",mitochondrion,Day),
  catalyst(2260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(2260),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00882",mitochondrion,Day),
  catalyst(2260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2270),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00882",cytosol,Day),
  catalyst(2270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(2270),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00882",cytosol,Day),
  catalyst(2270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2290),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01134",cytosol,Day),
  catalyst(2290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00882",cytosol,Day) :-
  not exclude(2290),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01134",cytosol,Day),
  catalyst(2290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2300),
  Day >= 1,
  in_compartment(Experiment,"C04352",cytosol,Day),
  catalyst(2300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01134",cytosol,Day) :-
  not exclude(2300),
  Day >= 1,
  in_compartment(Experiment,"C04352",cytosol,Day),
  catalyst(2300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2330),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00099",cytosol,Day),
  in_compartment(Experiment,"C00522",cytosol,Day),
  catalyst(2330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(2330),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00099",cytosol,Day),
  in_compartment(Experiment,"C00522",cytosol,Day),
  catalyst(2330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00864",cytosol,Day) :-
  not exclude(2330),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00099",cytosol,Day),
  in_compartment(Experiment,"C00522",cytosol,Day),
  catalyst(2330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(2340),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00966",mitochondrion,Day),
  catalyst(2340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00522",mitochondrion,Day) :-
  not exclude(2340),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00966",mitochondrion,Day),
  catalyst(2340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(2360),
  Day >= 1,
  in_compartment(Experiment,"C00143",cytosol,Day),
  in_compartment(Experiment,"OIVAL",cytosol,Day),
  catalyst(2360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00966",cytosol,Day) :-
  not exclude(2360),
  Day >= 1,
  in_compartment(Experiment,"C00143",cytosol,Day),
  in_compartment(Experiment,"OIVAL",cytosol,Day),
  catalyst(2360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",mitochondrion,Day) :-
  not exclude(2370),
  Day >= 1,
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  in_compartment(Experiment,"C02430",mitochondrion,Day),
  catalyst(2370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03294",mitochondrion,Day) :-
  not exclude(2370),
  Day >= 1,
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  in_compartment(Experiment,"C02430",mitochondrion,Day),
  catalyst(2370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(2380),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(2380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",cytosol,Day) :-
  not exclude(2380),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(2380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00234",mitochondrion,Day) :-
  not exclude(2401),
  Day >= 1,
  in_compartment(Experiment,"C00445",mitochondrion,Day),
  catalyst(2401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",mitochondrion,Day) :-
  not exclude(2402),
  Day >= 1,
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  catalyst(2402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00234",cytosol,Day) :-
  not exclude(2410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(2420),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00058",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(2420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(2420),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00058",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(2420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00234",mitochondrion,Day) :-
  not exclude(2420),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00058",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(2420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(2431),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(2431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",cytosol,Day) :-
  not exclude(2431),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(2431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(2432),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00445",cytosol,Day),
  catalyst(2432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",cytosol,Day) :-
  not exclude(2432),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00445",cytosol,Day),
  catalyst(2432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(2480),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  catalyst(2480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(2480),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  catalyst(2480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00440",mitochondrion,Day) :-
  not exclude(2480),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00234",mitochondrion,Day),
  catalyst(2480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(2490),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00415",cytosol,Day),
  catalyst(2490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(2490),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00415",cytosol,Day),
  catalyst(2490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(2550),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(2550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C11355",cytosol,Day) :-
  not exclude(2550),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(2550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(2560),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01300",cytosol,Day),
  catalyst(2560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04807",cytosol,Day) :-
  not exclude(2560),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01300",cytosol,Day),
  catalyst(2560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2580),
  Day >= 1,
  in_compartment(Experiment,"C05925",cytosol,Day),
  catalyst(2580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04874",cytosol,Day) :-
  not exclude(2580),
  Day >= 1,
  in_compartment(Experiment,"C05925",cytosol,Day),
  catalyst(2580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(2621),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01909",cytosol,Day),
  catalyst(2621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(2622),
  Day >= 1,
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(2622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01909",cytosol,Day) :-
  not exclude(2622),
  Day >= 1,
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(2622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01037",cytosol,Day),
  catalyst(2631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01037",cytosol,Day),
  catalyst(2631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01909",cytosol,Day) :-
  not exclude(2631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01037",cytosol,Day),
  catalyst(2631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(2632),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01909",cytosol,Day),
  catalyst(2632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2632),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01909",cytosol,Day),
  catalyst(2632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01037",cytosol,Day) :-
  not exclude(2632),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01909",cytosol,Day),
  catalyst(2632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01037",cytosol,Day) :-
  not exclude(2641),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(2641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04425",cytosol,Day) :-
  not exclude(2641),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(2641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(2642),
  Day >= 1,
  in_compartment(Experiment,"C01037",cytosol,Day),
  in_compartment(Experiment,"C04425",cytosol,Day),
  catalyst(2642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01092",cytosol,Day) :-
  not exclude(2642),
  Day >= 1,
  in_compartment(Experiment,"C01037",cytosol,Day),
  in_compartment(Experiment,"C04425",cytosol,Day),
  catalyst(2642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2680),
  Day >= 1,
  in_compartment(Experiment,"C06055",cytosol,Day),
  catalyst(2680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06056",cytosol,Day) :-
  not exclude(2680),
  Day >= 1,
  in_compartment(Experiment,"C06055",cytosol,Day),
  catalyst(2680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2740),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00018",cytosol,Day) :-
  not exclude(2740),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2800),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00255",cytosol,Day),
  catalyst(2800,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00061",cytosol,Day) :-
  not exclude(2800),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00255",cytosol,Day),
  catalyst(2800,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2870),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(2870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(2870),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(2870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01304",cytosol,Day) :-
  not exclude(2870),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(2870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2880),
  Day >= 1,
  in_compartment(Experiment,"C01081",cytosol,Day),
  catalyst(2880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00378",cytosol,Day) :-
  not exclude(2880),
  Day >= 1,
  in_compartment(Experiment,"C01081",cytosol,Day),
  catalyst(2880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2891),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01081",cytosol,Day),
  catalyst(2891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(2891),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01081",cytosol,Day),
  catalyst(2891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(2892),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(2892,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01081",cytosol,Day) :-
  not exclude(2892),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(2892,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2920),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"DTP",cytosol,Day),
  catalyst(2920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04294",cytosol,Day) :-
  not exclude(2920),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"DTP",cytosol,Day),
  catalyst(2920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"HBA",cytosol,Day) :-
  not exclude(2920),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"DTP",cytosol,Day),
  catalyst(2920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2940),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04556",cytosol,Day),
  catalyst(2940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04752",cytosol,Day) :-
  not exclude(2940),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04556",cytosol,Day),
  catalyst(2940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01279",cytosol,Day) :-
  not exclude(2960),
  Day >= 1,
  in_compartment(Experiment,"C03373",cytosol,Day),
  catalyst(2960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(2970),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(2970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03028",cytosol,Day) :-
  not exclude(2970),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(2970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(2980),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00378",cytosol,Day),
  catalyst(2980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(2980),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00378",cytosol,Day),
  catalyst(2980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(2990),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(2990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00422",cytosol,Day) :-
  not exclude(2990),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(2990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00116",cytosol,Day),
  catalyst(3010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",cytosol,Day) :-
  not exclude(3010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00116",cytosol,Day),
  catalyst(3010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(3100),
  Day >= 1,
  in_compartment(Experiment,"C00965",cytosol,Day),
  catalyst(3100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(3110),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(3110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00965",cytosol,Day) :-
  not exclude(3110),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(3110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01419",cytosol,Day) :-
  not exclude(3120),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  catalyst(3120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05729",cytosol,Day) :-
  not exclude(3120),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  catalyst(3120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3150),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00669",cytosol,Day),
  catalyst(3150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3150),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00669",cytosol,Day),
  catalyst(3150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(3150),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00669",cytosol,Day),
  catalyst(3150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3160),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(3160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3160),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(3160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00669",cytosol,Day) :-
  not exclude(3160),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(3160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(3190),
  Day >= 1,
  in_compartment(Experiment,"C05715",cytosol,Day),
  catalyst(3190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3190),
  Day >= 1,
  in_compartment(Experiment,"C05715",cytosol,Day),
  catalyst(3190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(3230),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00148",mitochondrion,Day),
  catalyst(3230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03912",mitochondrion,Day) :-
  not exclude(3230),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00148",mitochondrion,Day),
  catalyst(3230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3250),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C04281",cytosol,Day),
  catalyst(3250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01157",cytosol,Day) :-
  not exclude(3250),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C04281",cytosol,Day),
  catalyst(3250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3260),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03912",cytosol,Day),
  catalyst(3260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00148",cytosol,Day) :-
  not exclude(3260),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03912",cytosol,Day),
  catalyst(3260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03912",mitochondrion,Day) :-
  not exclude(3271),
  Day >= 1,
  in_compartment(Experiment,"C01165",mitochondrion,Day),
  catalyst(3271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",mitochondrion,Day) :-
  not exclude(3272),
  Day >= 1,
  in_compartment(Experiment,"C03912",mitochondrion,Day),
  catalyst(3272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(3300),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3300),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",cytosol,Day) :-
  not exclude(3300),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(3320),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02567",cytosol,Day),
  catalyst(3320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00612",cytosol,Day) :-
  not exclude(3320),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02567",cytosol,Day),
  catalyst(3320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02229",cytosol,Day) :-
  not exclude(3320),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02567",cytosol,Day),
  catalyst(3320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(3350),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00612",cytosol,Day),
  catalyst(3350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02229",cytosol,Day) :-
  not exclude(3350),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00612",cytosol,Day),
  catalyst(3350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02714",cytosol,Day) :-
  not exclude(3350),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00612",cytosol,Day),
  catalyst(3350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(3360),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00315",cytosol,Day),
  catalyst(3360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00612",cytosol,Day) :-
  not exclude(3360),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00315",cytosol,Day),
  catalyst(3360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(3380),
  Day >= 1,
  in_compartment(Experiment,"C02505",cytosol,Day),
  catalyst(3380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C07086",cytosol,Day) :-
  not exclude(3380),
  Day >= 1,
  in_compartment(Experiment,"C02505",cytosol,Day),
  catalyst(3380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(3390),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  in_compartment(Experiment,"C00078",mitochondrion,Day),
  catalyst(3390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(3390),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  in_compartment(Experiment,"C00078",mitochondrion,Day),
  catalyst(3390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03512",mitochondrion,Day) :-
  not exclude(3390),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  in_compartment(Experiment,"C00078",mitochondrion,Day),
  catalyst(3390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(3450),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C03824",cytosol,Day),
  catalyst(3450,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02220",cytosol,Day) :-
  not exclude(3450),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C03824",cytosol,Day),
  catalyst(3450,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04409",cytosol,Day) :-
  not exclude(3470),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00632",cytosol,Day),
  catalyst(3470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(3500),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(3500),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(3510),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(3510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00328",cytosol,Day) :-
  not exclude(3510),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(3510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02700",cytosol,Day) :-
  not exclude(3520),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(3520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",mitochondrion,Day) :-
  not exclude(3540),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(3540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",mitochondrion,Day) :-
  not exclude(3540),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(3540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3571),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(3571),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3572),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(3572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(3572),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(3572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(3580),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  catalyst(3580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(3590),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(3590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(3590),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(3590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3600),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(3600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03506",cytosol,Day) :-
  not exclude(3600),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(3600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01302",cytosol,Day) :-
  not exclude(3610),
  Day >= 1,
  in_compartment(Experiment,"C04302",cytosol,Day),
  catalyst(3610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3620),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04302",cytosol,Day) :-
  not exclude(3620),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  include(3640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  include(3640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  include(3640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3650),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(3650),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3671),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(3671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(3671),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(3671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3672),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(3672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(3672),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(3672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3680),
  Day >= 1,
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(3680),
  Day >= 1,
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00254",cytosol,Day) :-
  not exclude(3690),
  Day >= 1,
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3690,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3700),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(3700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00251",cytosol,Day) :-
  not exclude(3700),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(3700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3710),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(3710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01269",cytosol,Day) :-
  not exclude(3710),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(3710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3720),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(3720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03175",cytosol,Day) :-
  not exclude(3720),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(3720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3730),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02637",cytosol,Day),
  catalyst(3730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(3730),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02637",cytosol,Day),
  catalyst(3730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02637",cytosol,Day) :-
  not exclude(3740),
  Day >= 1,
  in_compartment(Experiment,"C00944",cytosol,Day),
  catalyst(3740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3750),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(3750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00944",cytosol,Day) :-
  not exclude(3750),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(3750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3760),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(3760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04691",cytosol,Day) :-
  not exclude(3760),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(3760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3820),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01267",cytosol,Day),
  catalyst(3820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01100",cytosol,Day) :-
  not exclude(3820),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01267",cytosol,Day),
  catalyst(3820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(3880),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(3880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00986",cytosol,Day) :-
  not exclude(3880),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(3880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(4020),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C01250",mitochondrion,Day),
  catalyst(4020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00437",mitochondrion,Day) :-
  not exclude(4020),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C01250",mitochondrion,Day),
  catalyst(4020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(4030),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C04133",mitochondrion,Day),
  catalyst(4030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(4030),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C04133",mitochondrion,Day),
  catalyst(4030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01250",mitochondrion,Day) :-
  not exclude(4030),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C04133",mitochondrion,Day),
  catalyst(4030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(4141),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C05662",mitochondrion,Day),
  catalyst(4141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(4141),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C05662",mitochondrion,Day),
  catalyst(4141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05533",mitochondrion,Day) :-
  not exclude(4141),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C05662",mitochondrion,Day),
  catalyst(4141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(4142),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(4142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05662",mitochondrion,Day) :-
  not exclude(4142),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(4142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4170),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C02504",cytosol,Day),
  catalyst(4170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(4170),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C02504",cytosol,Day),
  catalyst(4170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04236",cytosol,Day) :-
  not exclude(4170),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C02504",cytosol,Day),
  catalyst(4170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(4200),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"OIVAL",mitochondrion,Day),
  catalyst(4200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02504",mitochondrion,Day) :-
  not exclude(4200),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"OIVAL",mitochondrion,Day),
  catalyst(4200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00141",mitochondrion,Day) :-
  not exclude(4210),
  Day >= 1,
  in_compartment(Experiment,"C04272",mitochondrion,Day),
  catalyst(4210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(4230),
  Day >= 1,
  in_compartment(Experiment,"ABUT",mitochondrion,Day),
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  catalyst(4230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04272",mitochondrion,Day) :-
  not exclude(4230),
  Day >= 1,
  in_compartment(Experiment,"ABUT",mitochondrion,Day),
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  catalyst(4230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4271),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C04236",cytosol,Day),
  catalyst(4271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00123",cytosol,Day) :-
  not exclude(4271),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C04236",cytosol,Day),
  catalyst(4271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4272),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00123",cytosol,Day),
  catalyst(4272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04236",cytosol,Day) :-
  not exclude(4272),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00123",cytosol,Day),
  catalyst(4272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4281),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"OIVAL",cytosol,Day),
  catalyst(4281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00183",cytosol,Day) :-
  not exclude(4281),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"OIVAL",cytosol,Day),
  catalyst(4281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4282),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00183",cytosol,Day),
  catalyst(4282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"OIVAL",cytosol,Day) :-
  not exclude(4282),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00183",cytosol,Day),
  catalyst(4282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4291),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00141",cytosol,Day),
  catalyst(4291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00407",cytosol,Day) :-
  not exclude(4291),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00141",cytosol,Day),
  catalyst(4291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4292),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00407",cytosol,Day),
  catalyst(4292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00141",cytosol,Day) :-
  not exclude(4292),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00407",cytosol,Day),
  catalyst(4292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00054",cytosol,Day) :-
  not exclude(4330),
  Day >= 1,
  in_compartment(Experiment,"C00053",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(4330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00094",cytosol,Day) :-
  not exclude(4330),
  Day >= 1,
  in_compartment(Experiment,"C00053",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(4330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(4330),
  Day >= 1,
  in_compartment(Experiment,"C00053",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(4330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(4350),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C00979",cytosol,Day),
  catalyst(4350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(4350),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C00979",cytosol,Day),
  catalyst(4350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(4360),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(4360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00979",cytosol,Day) :-
  not exclude(4360),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(4360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(4371),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00094",cytosol,Day),
  catalyst(4371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00283",cytosol,Day) :-
  not exclude(4371),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00094",cytosol,Day),
  catalyst(4371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(4372),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00283",cytosol,Day),
  catalyst(4372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00094",cytosol,Day) :-
  not exclude(4372),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00283",cytosol,Day),
  catalyst(4372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4380),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00224",cytosol,Day),
  catalyst(4380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00053",cytosol,Day) :-
  not exclude(4380),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00224",cytosol,Day),
  catalyst(4380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(4400),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04441",cytosol,Day),
  catalyst(4400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04692",cytosol,Day) :-
  not exclude(4400),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04441",cytosol,Day),
  catalyst(4400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(4430),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05330",cytosol,Day) :-
  not exclude(4430),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4460),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(4460),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00109",cytosol,Day) :-
  not exclude(4460),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(4470),
  Day >= 1,
  in_compartment(Experiment,"C00440",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(4470),
  Day >= 1,
  in_compartment(Experiment,"C00440",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",cytosol,Day) :-
  not exclude(4490),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  catalyst(4490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05330",cytosol,Day) :-
  not exclude(4490),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  catalyst(4490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4510),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(4510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(4510),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(4510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(4510),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  catalyst(4510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4520),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(4520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(4520),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(4520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(4560),
  Day >= 1,
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(4560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4590),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00263",cytosol,Day),
  catalyst(4590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01102",cytosol,Day) :-
  not exclude(4590),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00263",cytosol,Day),
  catalyst(4590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(4650),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(4650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(4650),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(4650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4650),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(4650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",mitochondrion,Day) :-
  not exclude(4650),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00101",mitochondrion,Day),
  catalyst(4650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(4661),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00048",cytosol,Day),
  catalyst(4661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(4661),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00048",cytosol,Day),
  catalyst(4661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(4662),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  catalyst(4662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00048",cytosol,Day) :-
  not exclude(4662),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  catalyst(4662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(4671),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",cytosol,Day) :-
  not exclude(4671),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(4672),
  Day >= 1,
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(4672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(4672),
  Day >= 1,
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(4672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4730),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(4730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(4730),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(4730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03402",cytosol,Day) :-
  not exclude(4730),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(4730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(4740),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00049",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  catalyst(4740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(4740),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00049",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  catalyst(4740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03402",mitochondrion,Day) :-
  not exclude(4740),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00049",mitochondrion,Day),
  in_compartment(Experiment,"C00066",mitochondrion,Day),
  catalyst(4740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(4771),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(4771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",mitochondrion,Day) :-
  not exclude(4771),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(4771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",mitochondrion,Day) :-
  not exclude(4772),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00041",mitochondrion,Day),
  catalyst(4772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4772),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00041",mitochondrion,Day),
  catalyst(4772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4831),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00644",cytosol,Day),
  catalyst(4831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(4831),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00644",cytosol,Day),
  catalyst(4831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(4832),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(4832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00644",cytosol,Day) :-
  not exclude(4832),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(4832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(4850),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(4850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00652",cytosol,Day) :-
  not exclude(4850),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(4850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4860),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(4860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00652",cytosol,Day) :-
  not exclude(4860),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(4860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4870),
  Day >= 1,
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(4870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(4870),
  Day >= 1,
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(4870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(4940),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C03912",mitochondrion,Day),
  catalyst(4940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4940),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C03912",mitochondrion,Day),
  catalyst(4940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(5010),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00232",cytosol,Day),
  catalyst(5010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(5010),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00232",cytosol,Day),
  catalyst(5010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(5020),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00334",cytosol,Day),
  catalyst(5020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00232",cytosol,Day) :-
  not exclude(5020),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00334",cytosol,Day),
  catalyst(5020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(5030),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(5030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00334",cytosol,Day) :-
  not exclude(5030),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(5030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(5040),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(5040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(5040),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(5040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5050),
  Day >= 1,
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(5050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00330",cytosol,Day) :-
  not exclude(5050),
  Day >= 1,
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(5050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5060),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",cytosol,Day) :-
  not exclude(5060),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00286",cytosol,Day) :-
  not exclude(5090),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5090),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5110),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01346",cytosol,Day) :-
  not exclude(5110),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5120),
  Day >= 1,
  in_compartment(Experiment,"C00112",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00705",cytosol,Day) :-
  not exclude(5120),
  Day >= 1,
  in_compartment(Experiment,"C00112",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5130),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00361",cytosol,Day) :-
  not exclude(5130),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00206",cytosol,Day) :-
  not exclude(5140),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5140),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5150),
  Day >= 1,
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(5150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00299",cytosol,Day) :-
  not exclude(5150),
  Day >= 1,
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(5150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5180),
  Day >= 1,
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(5180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",cytosol,Day) :-
  not exclude(5180),
  Day >= 1,
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(5180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5190),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(5190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",cytosol,Day) :-
  not exclude(5190),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(5190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5200),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00475",cytosol,Day) :-
  not exclude(5200),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5230),
  Day >= 1,
  in_compartment(Experiment,"C00360",cytosol,Day),
  catalyst(5230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00559",cytosol,Day) :-
  not exclude(5230),
  Day >= 1,
  in_compartment(Experiment,"C00360",cytosol,Day),
  catalyst(5230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5240),
  Day >= 1,
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(5240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00214",cytosol,Day) :-
  not exclude(5240),
  Day >= 1,
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(5240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5250),
  Day >= 1,
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00526",cytosol,Day) :-
  not exclude(5250),
  Day >= 1,
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5260),
  Day >= 1,
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(5260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00460",cytosol,Day) :-
  not exclude(5260),
  Day >= 1,
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(5260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5281),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01346",cytosol,Day) :-
  not exclude(5281),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5282),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(5282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00365",cytosol,Day) :-
  not exclude(5282),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(5282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5381),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(5381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",cytosol,Day) :-
  not exclude(5381),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(5381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5382),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(5382),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5391),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(5391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00131",cytosol,Day) :-
  not exclude(5391),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(5391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5392),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00131",cytosol,Day),
  catalyst(5392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00206",cytosol,Day) :-
  not exclude(5392),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00131",cytosol,Day),
  catalyst(5392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5411),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(5411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00458",cytosol,Day) :-
  not exclude(5411),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(5411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5412),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(5412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00705",cytosol,Day) :-
  not exclude(5412),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(5412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5441),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(5441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(5441),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(5441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5442),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(5442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(5442),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(5442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5451),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(5451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(5451),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(5451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5452),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(5452),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(5461),
  Day >= 1,
  in_compartment(Experiment,"C00020",mitochondrion,Day),
  in_compartment(Experiment,"C00081",mitochondrion,Day),
  catalyst(5461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",mitochondrion,Day) :-
  not exclude(5461),
  Day >= 1,
  in_compartment(Experiment,"C00020",mitochondrion,Day),
  in_compartment(Experiment,"C00081",mitochondrion,Day),
  catalyst(5461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(5462),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00104",mitochondrion,Day),
  catalyst(5462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00081",mitochondrion,Day) :-
  not exclude(5462),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00104",mitochondrion,Day),
  catalyst(5462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(5471),
  Day >= 1,
  in_compartment(Experiment,"C00020",mitochondrion,Day),
  in_compartment(Experiment,"C00044",mitochondrion,Day),
  catalyst(5471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",mitochondrion,Day) :-
  not exclude(5471),
  Day >= 1,
  in_compartment(Experiment,"C00020",mitochondrion,Day),
  in_compartment(Experiment,"C00044",mitochondrion,Day),
  catalyst(5471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(5472),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00035",mitochondrion,Day),
  catalyst(5472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",mitochondrion,Day) :-
  not exclude(5472),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00035",mitochondrion,Day),
  catalyst(5472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5511),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(5511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5512),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(5512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(5512),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(5512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00121",cytosol,Day) :-
  not exclude(5540),
  Day >= 1,
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(5540),
  Day >= 1,
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5561),
  Day >= 1,
  in_compartment(Experiment,"C00385",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01762",cytosol,Day) :-
  not exclude(5561),
  Day >= 1,
  in_compartment(Experiment,"C00385",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00385",cytosol,Day) :-
  not exclude(5562),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01762",cytosol,Day),
  catalyst(5562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(5562),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01762",cytosol,Day),
  catalyst(5562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5571),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",cytosol,Day) :-
  not exclude(5571),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(5572),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(5572),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(5601),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00330",cytosol,Day),
  catalyst(5601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03496",cytosol,Day) :-
  not exclude(5601),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00330",cytosol,Day),
  catalyst(5601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5602),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00330",cytosol,Day) :-
  not exclude(5602),
  Day >= 1,
  in_compartment(Experiment,"C00242",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5640),
  Day >= 1,
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00294",cytosol,Day) :-
  not exclude(5640),
  Day >= 1,
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5650),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00147",cytosol,Day),
  catalyst(5650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(5650),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00147",cytosol,Day),
  catalyst(5650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01168",cytosol,Day) :-
  not exclude(5661),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(5661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(5662),
  Day >= 1,
  in_compartment(Experiment,"C01168",cytosol,Day),
  catalyst(5662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(5662),
  Day >= 1,
  in_compartment(Experiment,"C01168",cytosol,Day),
  catalyst(5662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5680),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5680),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(5680),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(5680),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5730),
  Day >= 1,
  in_compartment(Experiment,"C00460",cytosol,Day),
  catalyst(5730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00365",cytosol,Day) :-
  not exclude(5730),
  Day >= 1,
  in_compartment(Experiment,"C00460",cytosol,Day),
  catalyst(5730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(5750),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  catalyst(5750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(5750),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  catalyst(5750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5761),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(5761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00363",cytosol,Day) :-
  not exclude(5761),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(5761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5762),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(5762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00364",cytosol,Day) :-
  not exclude(5762),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(5762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5780),
  Day >= 1,
  in_compartment(Experiment,"C00475",cytosol,Day),
  catalyst(5780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00299",cytosol,Day) :-
  not exclude(5780),
  Day >= 1,
  in_compartment(Experiment,"C00475",cytosol,Day),
  catalyst(5780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00178",cytosol,Day) :-
  not exclude(5791),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00214",cytosol,Day),
  catalyst(5791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03496",cytosol,Day) :-
  not exclude(5791),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00214",cytosol,Day),
  catalyst(5791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5792),
  Day >= 1,
  in_compartment(Experiment,"C00178",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00214",cytosol,Day) :-
  not exclude(5792),
  Day >= 1,
  in_compartment(Experiment,"C00178",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(5801),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00526",cytosol,Day),
  catalyst(5801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03496",cytosol,Day) :-
  not exclude(5801),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00526",cytosol,Day),
  catalyst(5801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5802),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00526",cytosol,Day) :-
  not exclude(5802),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5810),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(5810),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(5820),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00475",cytosol,Day),
  catalyst(5820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(5820),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00475",cytosol,Day),
  catalyst(5820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(5830),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(5830),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5860),
  Day >= 1,
  in_compartment(Experiment,"C00380",cytosol,Day),
  catalyst(5860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(5860),
  Day >= 1,
  in_compartment(Experiment,"C00380",cytosol,Day),
  catalyst(5860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(5911),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00337",cytosol,Day),
  catalyst(5911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00295",cytosol,Day) :-
  not exclude(5911),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00337",cytosol,Day),
  catalyst(5911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(5912),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00295",cytosol,Day),
  catalyst(5912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00337",cytosol,Day) :-
  not exclude(5912),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00295",cytosol,Day),
  catalyst(5912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5930),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(5930,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00438",cytosol,Day) :-
  not exclude(5930),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(5930,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5960),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(5960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01260",cytosol,Day) :-
  not exclude(5960),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(5960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(5980),
  Day >= 1,
  in_compartment(Experiment,"C00942",cytosol,Day),
  catalyst(5980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(6040),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00655",cytosol,Day) :-
  not exclude(6040),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6051),
  Day >= 1,
  in_compartment(Experiment,"C03794",cytosol,Day),
  catalyst(6051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(6051),
  Day >= 1,
  in_compartment(Experiment,"C03794",cytosol,Day),
  catalyst(6051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03794",cytosol,Day) :-
  not exclude(6052),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00122",cytosol,Day),
  catalyst(6052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6060),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(6060),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03794",cytosol,Day) :-
  not exclude(6060),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(6071),
  Day >= 1,
  in_compartment(Experiment,"C04734",cytosol,Day),
  catalyst(6071,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04734",cytosol,Day) :-
  not exclude(6072),
  Day >= 1,
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(6072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(6081),
  Day >= 1,
  in_compartment(Experiment,"C00234",cytosol,Day),
  in_compartment(Experiment,"C04677",cytosol,Day),
  catalyst(6081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04734",cytosol,Day) :-
  not exclude(6081),
  Day >= 1,
  in_compartment(Experiment,"C00234",cytosol,Day),
  in_compartment(Experiment,"C04677",cytosol,Day),
  catalyst(6081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00234",cytosol,Day) :-
  not exclude(6082),
  Day >= 1,
  in_compartment(Experiment,"C00101",cytosol,Day),
  in_compartment(Experiment,"C04734",cytosol,Day),
  catalyst(6082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04677",cytosol,Day) :-
  not exclude(6082),
  Day >= 1,
  in_compartment(Experiment,"C00101",cytosol,Day),
  in_compartment(Experiment,"C04734",cytosol,Day),
  catalyst(6082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6111),
  Day >= 1,
  in_compartment(Experiment,"C04751",cytosol,Day),
  catalyst(6111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03373",cytosol,Day) :-
  not exclude(6111),
  Day >= 1,
  in_compartment(Experiment,"C04751",cytosol,Day),
  catalyst(6111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04751",cytosol,Day) :-
  not exclude(6112),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C03373",cytosol,Day),
  catalyst(6112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(6140),
  Day >= 1,
  in_compartment(Experiment,"C00234",cytosol,Day),
  in_compartment(Experiment,"C03838",cytosol,Day),
  catalyst(6140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04376",cytosol,Day) :-
  not exclude(6140),
  Day >= 1,
  in_compartment(Experiment,"C00234",cytosol,Day),
  in_compartment(Experiment,"C03838",cytosol,Day),
  catalyst(6140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6151),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C03090",cytosol,Day),
  catalyst(6151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6151),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C03090",cytosol,Day),
  catalyst(6151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03838",cytosol,Day) :-
  not exclude(6151),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C03090",cytosol,Day),
  catalyst(6151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6152),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03838",cytosol,Day),
  catalyst(6152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(6152),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03838",cytosol,Day),
  catalyst(6152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03090",cytosol,Day) :-
  not exclude(6152),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03838",cytosol,Day),
  catalyst(6152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(6171),
  Day >= 1,
  in_compartment(Experiment,"C00131",cytosol,Day),
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(6171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00206",cytosol,Day) :-
  not exclude(6171),
  Day >= 1,
  in_compartment(Experiment,"C00131",cytosol,Day),
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(6171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00131",cytosol,Day) :-
  not exclude(6172),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(6172,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(6172),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(6172,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6181),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(6181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00361",cytosol,Day) :-
  not exclude(6181),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(6181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6182),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(6182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00362",cytosol,Day) :-
  not exclude(6182),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(6182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6241),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(6241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  not exclude(6241),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(6241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6242),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(6242),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(6250),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05437",cytosol,Day),
  catalyst(6250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01694",cytosol,Day) :-
  not exclude(6250),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05437",cytosol,Day),
  catalyst(6250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6280),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"ERTEOL",cytosol,Day),
  catalyst(6280,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01694",cytosol,Day) :-
  not exclude(6280),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"ERTEOL",cytosol,Day),
  catalyst(6280,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6300),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"EPST",cytosol,Day),
  catalyst(6300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"ERTROL",cytosol,Day) :-
  not exclude(6300),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"EPST",cytosol,Day),
  catalyst(6300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6330),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IIZYMST",cytosol,Day),
  catalyst(6330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05437",cytosol,Day) :-
  not exclude(6330),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IIZYMST",cytosol,Day),
  catalyst(6330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6370),
  Day >= 1,
  in_compartment(Experiment,"IMZYMST",cytosol,Day),
  catalyst(6370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"IIMZYMST",cytosol,Day) :-
  not exclude(6370),
  Day >= 1,
  in_compartment(Experiment,"IMZYMST",cytosol,Day),
  catalyst(6370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6390),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IGST",cytosol,Day),
  catalyst(6390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"DMZYMST",cytosol,Day) :-
  not exclude(6390),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IGST",cytosol,Day),
  catalyst(6390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6440),
  Day >= 1,
  in_compartment(Experiment,"C00129",cytosol,Day),
  in_compartment(Experiment,"C00341",cytosol,Day),
  catalyst(6440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00448",cytosol,Day) :-
  not exclude(6440),
  Day >= 1,
  in_compartment(Experiment,"C00129",cytosol,Day),
  in_compartment(Experiment,"C00341",cytosol,Day),
  catalyst(6440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00235",cytosol,Day) :-
  not exclude(6461),
  Day >= 1,
  in_compartment(Experiment,"C00129",cytosol,Day),
  catalyst(6461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00129",cytosol,Day) :-
  not exclude(6462),
  Day >= 1,
  in_compartment(Experiment,"C00235",cytosol,Day),
  catalyst(6462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6520),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01107",cytosol,Day) :-
  not exclude(6520),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(6541),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(6541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00332",cytosol,Day) :-
  not exclude(6541),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(6541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(6542),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00332",cytosol,Day),
  catalyst(6542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00356",cytosol,Day) :-
  not exclude(6542),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00332",cytosol,Day),
  catalyst(6542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6560),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(6560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00836",cytosol,Day) :-
  not exclude(6560),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(6560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6580),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00836",cytosol,Day),
  catalyst(6580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01120",cytosol,Day) :-
  not exclude(6580),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00836",cytosol,Day),
  catalyst(6580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(6640),
  Day >= 1,
  in_compartment(Experiment,"C260COA",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"CER2",cytosol,Day) :-
  not exclude(6640),
  Day >= 1,
  in_compartment(Experiment,"C260COA",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6650),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00836",cytosol,Day),
  catalyst(6650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"PSPH",cytosol,Day) :-
  not exclude(6650),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00836",cytosol,Day),
  catalyst(6650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6680),
  Day >= 1,
  in_compartment(Experiment,"DGPP",cytosol,Day),
  catalyst(6680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(6680),
  Day >= 1,
  in_compartment(Experiment,"DGPP",cytosol,Day),
  catalyst(6680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(6710),
  Day >= 1,
  in_compartment(Experiment,"C03892",mitochondrion,Day),
  catalyst(6710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00344",mitochondrion,Day) :-
  not exclude(6710),
  Day >= 1,
  in_compartment(Experiment,"C03892",mitochondrion,Day),
  catalyst(6710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(6770),
  Day >= 1,
  in_compartment(Experiment,"C00137",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01194",cytosol,Day) :-
  not exclude(6770),
  Day >= 1,
  in_compartment(Experiment,"C00137",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6780),
  Day >= 1,
  in_compartment(Experiment,"C01177",cytosol,Day),
  catalyst(6780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00137",cytosol,Day) :-
  not exclude(6780),
  Day >= 1,
  in_compartment(Experiment,"C01177",cytosol,Day),
  catalyst(6780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6820),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00189",cytosol,Day),
  catalyst(6820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00346",cytosol,Day) :-
  not exclude(6820),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00189",cytosol,Day),
  catalyst(6820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(6860),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04308",cytosol,Day),
  catalyst(6860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00157",cytosol,Day) :-
  not exclude(6860),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04308",cytosol,Day),
  catalyst(6860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(6870),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01241",cytosol,Day),
  catalyst(6870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04308",cytosol,Day) :-
  not exclude(6870),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C01241",cytosol,Day),
  catalyst(6870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(6890),
  Day >= 1,
  in_compartment(Experiment,"C02737",mitochondrion,Day),
  catalyst(6890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00350",mitochondrion,Day) :-
  not exclude(6890),
  Day >= 1,
  in_compartment(Experiment,"C02737",mitochondrion,Day),
  catalyst(6890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6931),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(6931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00269",cytosol,Day) :-
  not exclude(6931),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(6931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(6932),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(6932),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6960),
  Day >= 1,
  in_compartment(Experiment,"AT3P2",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  catalyst(6960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03849",cytosol,Day) :-
  not exclude(6960),
  Day >= 1,
  in_compartment(Experiment,"AT3P2",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  catalyst(6960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"AT3P2",cytosol,Day) :-
  not exclude(6970),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(6970),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(6980),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03849",cytosol,Day) :-
  not exclude(6980),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(6990),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C01530",cytosol,Day),
  catalyst(6990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6990),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C01530",cytosol,Day),
  catalyst(6990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6990),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C01530",cytosol,Day),
  catalyst(6990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(6990),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C01530",cytosol,Day),
  catalyst(6990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(6990),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C01530",cytosol,Day),
  catalyst(6990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(7000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(7000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(7000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(7000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(7000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(7000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(7000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C06424",cytosol,Day),
  catalyst(7010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C06424",cytosol,Day),
  catalyst(7010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(7010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C06424",cytosol,Day),
  catalyst(7010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C06424",cytosol,Day),
  catalyst(7010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(7010),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C06424",cytosol,Day),
  catalyst(7010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7070),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7070),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7070),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C161ACP",cytosol,Day) :-
  not exclude(7070),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7110),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7110),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7110),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05223",cytosol,Day) :-
  not exclude(7110),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(7271),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  catalyst(7271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00332",mitochondrion,Day) :-
  not exclude(7271),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  catalyst(7271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",mitochondrion,Day) :-
  not exclude(7272),
  Day >= 1,
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00332",mitochondrion,Day),
  catalyst(7272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7281),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00332",cytosol,Day) :-
  not exclude(7281),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7282),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00332",cytosol,Day),
  catalyst(7282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7290),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00264",cytosol,Day),
  catalyst(7290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00040",cytosol,Day) :-
  not exclude(7290),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00264",cytosol,Day),
  catalyst(7290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7301),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00640",cytosol,Day),
  catalyst(7301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00264",cytosol,Day) :-
  not exclude(7301),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00640",cytosol,Day),
  catalyst(7301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7302),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00264",cytosol,Day),
  catalyst(7302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00640",cytosol,Day) :-
  not exclude(7302),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00264",cytosol,Day),
  catalyst(7302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7350),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  catalyst(7350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7350),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  catalyst(7350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",mitochondrion,Day) :-
  not exclude(7360),
  Day >= 1,
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00256",mitochondrion,Day),
  catalyst(7360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",mitochondrion,Day) :-
  not exclude(7360),
  Day >= 1,
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00256",mitochondrion,Day),
  catalyst(7360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",mitochondrion,Day) :-
  not exclude(7380),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  catalyst(7380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(7380),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  catalyst(7380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7460),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  catalyst(7460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7501),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00469",cytosol,Day),
  catalyst(7501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00084",cytosol,Day) :-
  not exclude(7501),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00469",cytosol,Day),
  catalyst(7501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7502),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(7502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00469",cytosol,Day) :-
  not exclude(7502),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(7502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7530),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(7530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01251",cytosol,Day) :-
  not exclude(7530),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(7530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7540),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(7540),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7550),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(7550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00084",cytosol,Day) :-
  not exclude(7550),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(7550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(7561),
  Day >= 1,
  in_compartment(Experiment,"C01031",cytosol,Day),
  catalyst(7561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(7561),
  Day >= 1,
  in_compartment(Experiment,"C01031",cytosol,Day),
  catalyst(7561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01031",cytosol,Day) :-
  not exclude(7562),
  Day >= 1,
  in_compartment(Experiment,"C00051",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  catalyst(7562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7571),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  in_compartment(Experiment,"C00067",cytosol,Day),
  catalyst(7571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01031",cytosol,Day) :-
  not exclude(7571),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  in_compartment(Experiment,"C00067",cytosol,Day),
  catalyst(7571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7572),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01031",cytosol,Day),
  catalyst(7572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(7572),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01031",cytosol,Day),
  catalyst(7572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00067",cytosol,Day) :-
  not exclude(7572),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01031",cytosol,Day),
  catalyst(7572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7580),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(7580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(7580),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(7580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7580),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(7580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(7590),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(7590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00182",cytosol,Day) :-
  not exclude(7590),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(7590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7660),
  Day >= 1,
  in_compartment(Experiment,"C00208",cytosol,Day),
  catalyst(7660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00029",cytosol,Day) :-
  not exclude(7751),
  Day >= 1,
  in_compartment(Experiment,"C00052",cytosol,Day),
  catalyst(7751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00052",cytosol,Day) :-
  not exclude(7752),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(7752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7761),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C03384",cytosol,Day),
  catalyst(7761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00052",cytosol,Day) :-
  not exclude(7761),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C03384",cytosol,Day),
  catalyst(7761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(7762),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00052",cytosol,Day),
  catalyst(7762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03384",cytosol,Day) :-
  not exclude(7762),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00052",cytosol,Day),
  catalyst(7762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7870),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01801",cytosol,Day),
  catalyst(7870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00673",cytosol,Day) :-
  not exclude(7870),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01801",cytosol,Day),
  catalyst(7870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7880),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00121",cytosol,Day),
  catalyst(7880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7880),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00121",cytosol,Day),
  catalyst(7880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(7911),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C06814",cytosol,Day),
  catalyst(7911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00281",cytosol,Day) :-
  not exclude(7911),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C06814",cytosol,Day),
  catalyst(7911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7912),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(7912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06814",cytosol,Day) :-
  not exclude(7912),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(7912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7921),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(7921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00199",cytosol,Day) :-
  not exclude(7922),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(7922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7980),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(7980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7980),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(7980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00036",cytosol,Day) :-
  not exclude(7980),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(7980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7990),
  Day >= 1,
  in_compartment(Experiment,"C05378",cytosol,Day),
  catalyst(7990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(7990),
  Day >= 1,
  in_compartment(Experiment,"C05378",cytosol,Day),
  catalyst(7990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(8000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(8000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(8031),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(8031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00036",cytosol,Day) :-
  not exclude(8031),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(8031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(8032),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(8032),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(8041),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(8041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00036",mitochondrion,Day) :-
  not exclude(8041),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(8041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(8042),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(8042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",mitochondrion,Day) :-
  not exclude(8042),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(8042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(8051),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  catalyst(8051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(8052),
  Day >= 1,
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(8052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(8120),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  catalyst(8120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(8120),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  catalyst(8120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00091",mitochondrion,Day) :-
  not exclude(8120),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  catalyst(8120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(8130),
  Day >= 1,
  in_compartment(Experiment,"C05379",cytosol,Day),
  catalyst(8130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(8130),
  Day >= 1,
  in_compartment(Experiment,"C05379",cytosol,Day),
  catalyst(8130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(8170),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(8170),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(8170),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00311",mitochondrion,Day) :-
  not exclude(8181),
  Day >= 1,
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  catalyst(8181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",mitochondrion,Day) :-
  not exclude(8182),
  Day >= 1,
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(8210),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  catalyst(8210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(8210),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  catalyst(8210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",mitochondrion,Day) :-
  not exclude(8210),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  catalyst(8210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8220),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00074",cytosol,Day),
  catalyst(8220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(8220),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00074",cytosol,Day),
  catalyst(8220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(8231),
  Day >= 1,
  in_compartment(Experiment,"C00631",cytosol,Day),
  catalyst(8231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  not exclude(8232),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  catalyst(8232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  not exclude(8241),
  Day >= 1,
  in_compartment(Experiment,"C00197",cytosol,Day),
  catalyst(8241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00197",cytosol,Day) :-
  not exclude(8242),
  Day >= 1,
  in_compartment(Experiment,"C00631",cytosol,Day),
  catalyst(8242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8261),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00197",cytosol,Day) :-
  not exclude(8261),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8262),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00197",cytosol,Day),
  catalyst(8262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00236",cytosol,Day) :-
  not exclude(8262),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00197",cytosol,Day),
  catalyst(8262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8320),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(8320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05378",cytosol,Day) :-
  not exclude(8320),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(8320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01172",cytosol,Day) :-
  not exclude(8341),
  Day >= 1,
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(8341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(8342),
  Day >= 1,
  in_compartment(Experiment,"C01172",cytosol,Day),
  catalyst(8342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8360),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00095",cytosol,Day),
  catalyst(8360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(8360),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00095",cytosol,Day),
  catalyst(8360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8380),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00267",cytosol,Day),
  catalyst(8380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(8380),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00267",cytosol,Day),
  catalyst(8380,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8481),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04736",cytosol,Day),
  catalyst(8481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8481),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04736",cytosol,Day),
  catalyst(8481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04682",cytosol,Day) :-
  not exclude(8481),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04736",cytosol,Day),
  catalyst(8481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8482),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04682",cytosol,Day),
  catalyst(8482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(8482),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04682",cytosol,Day),
  catalyst(8482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04736",cytosol,Day) :-
  not exclude(8482),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04682",cytosol,Day),
  catalyst(8482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8491),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03479",cytosol,Day),
  catalyst(8491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8491),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03479",cytosol,Day),
  catalyst(8491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",cytosol,Day) :-
  not exclude(8491),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03479",cytosol,Day),
  catalyst(8491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8492),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00445",cytosol,Day),
  catalyst(8492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03479",cytosol,Day) :-
  not exclude(8492),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00445",cytosol,Day),
  catalyst(8492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8531),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C01640",cytosol,Day),
  catalyst(8531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8531),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C01640",cytosol,Day),
  catalyst(8531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02282",cytosol,Day) :-
  not exclude(8531),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C01640",cytosol,Day),
  catalyst(8531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8532),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02282",cytosol,Day),
  catalyst(8532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(8532),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02282",cytosol,Day),
  catalyst(8532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01640",cytosol,Day) :-
  not exclude(8532),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02282",cytosol,Day),
  catalyst(8532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8541),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01639",cytosol,Day),
  catalyst(8541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8541),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01639",cytosol,Day),
  catalyst(8541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03125",cytosol,Day) :-
  not exclude(8541),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01639",cytosol,Day),
  catalyst(8541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8542),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03125",cytosol,Day),
  catalyst(8542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(8542),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03125",cytosol,Day),
  catalyst(8542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01639",cytosol,Day) :-
  not exclude(8542),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03125",cytosol,Day),
  catalyst(8542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8551),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00148",cytosol,Day),
  in_compartment(Experiment,"C01649",cytosol,Day),
  catalyst(8551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8551),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00148",cytosol,Day),
  in_compartment(Experiment,"C01649",cytosol,Day),
  catalyst(8551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02702",cytosol,Day) :-
  not exclude(8551),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00148",cytosol,Day),
  in_compartment(Experiment,"C01649",cytosol,Day),
  catalyst(8551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8552),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02702",cytosol,Day),
  catalyst(8552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00148",cytosol,Day) :-
  not exclude(8552),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02702",cytosol,Day),
  catalyst(8552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01649",cytosol,Day) :-
  not exclude(8552),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02702",cytosol,Day),
  catalyst(8552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8571),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C01638",cytosol,Day),
  catalyst(8571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8571),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C01638",cytosol,Day),
  catalyst(8571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02984",cytosol,Day) :-
  not exclude(8571),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C01638",cytosol,Day),
  catalyst(8571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8572),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02984",cytosol,Day),
  catalyst(8572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(8572),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02984",cytosol,Day),
  catalyst(8572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01638",cytosol,Day) :-
  not exclude(8572),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02984",cytosol,Day),
  catalyst(8572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8601),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  in_compartment(Experiment,"C05335",cytosol,Day),
  catalyst(8601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8601),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  in_compartment(Experiment,"C05335",cytosol,Day),
  catalyst(8601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05336",cytosol,Day) :-
  not exclude(8601),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  in_compartment(Experiment,"C05335",cytosol,Day),
  catalyst(8601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8602),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C05336",cytosol,Day),
  catalyst(8602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01647",cytosol,Day) :-
  not exclude(8602),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C05336",cytosol,Day),
  catalyst(8602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05335",cytosol,Day) :-
  not exclude(8602),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C05336",cytosol,Day),
  catalyst(8602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01635",cytosol,Day),
  catalyst(8631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01635",cytosol,Day),
  catalyst(8631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00886",cytosol,Day) :-
  not exclude(8631),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01635",cytosol,Day),
  catalyst(8631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8632),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00886",cytosol,Day),
  catalyst(8632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(8632),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00886",cytosol,Day),
  catalyst(8632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01635",cytosol,Day) :-
  not exclude(8632),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00886",cytosol,Day),
  catalyst(8632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8671),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00078",cytosol,Day),
  in_compartment(Experiment,"C01652",cytosol,Day),
  catalyst(8671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8671),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00078",cytosol,Day),
  in_compartment(Experiment,"C01652",cytosol,Day),
  catalyst(8671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03512",cytosol,Day) :-
  not exclude(8671),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00078",cytosol,Day),
  in_compartment(Experiment,"C01652",cytosol,Day),
  catalyst(8671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8672),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03512",cytosol,Day),
  catalyst(8672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(8672),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03512",cytosol,Day),
  catalyst(8672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01652",cytosol,Day) :-
  not exclude(8672),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03512",cytosol,Day),
  catalyst(8672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8681),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00787",cytosol,Day),
  catalyst(8681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8681),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00787",cytosol,Day),
  catalyst(8681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02839",cytosol,Day) :-
  not exclude(8681),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  in_compartment(Experiment,"C00787",cytosol,Day),
  catalyst(8681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8682),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02839",cytosol,Day),
  catalyst(8682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(8682),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02839",cytosol,Day),
  catalyst(8682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00787",cytosol,Day) :-
  not exclude(8682),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02839",cytosol,Day),
  catalyst(8682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(8751),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(8751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(8751),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(8751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(8752),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(8752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8761),
  Day >= 1,
  in_compartment(Experiment,"C02225",cytosol,Day),
  catalyst(8761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04225",cytosol,Day) :-
  not exclude(8761),
  Day >= 1,
  in_compartment(Experiment,"C02225",cytosol,Day),
  catalyst(8761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02225",cytosol,Day) :-
  not exclude(8762),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04225",cytosol,Day),
  catalyst(8762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(8791),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(8791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(8792),
  Day >= 1,
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(8792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00084",cytosol,Day) :-
  not exclude(8792),
  Day >= 1,
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(8792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(8811),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(8811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00084",cytosol,Day) :-
  not exclude(8811),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(8811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(8812),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(8812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8821),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(8821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(8821),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(8821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8822),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(8822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00301",cytosol,Day) :-
  not exclude(8822),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(8822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8881),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00081",cytosol,Day),
  catalyst(8881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",cytosol,Day) :-
  not exclude(8881),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00081",cytosol,Day),
  catalyst(8881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8882),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(8882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00081",cytosol,Day) :-
  not exclude(8882),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(8882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8931),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(8931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(8931),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(8931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8932),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(8932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(8932),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(8932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8971),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(8971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8971),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(8971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8972),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(8972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8972),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(8972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04734",cytosol,Day) :-
  not exclude(8981),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(8981,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8982),
  Day >= 1,
  in_compartment(Experiment,"C04734",cytosol,Day),
  catalyst(8982,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(8982),
  Day >= 1,
  in_compartment(Experiment,"C04734",cytosol,Day),
  catalyst(8982,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(9041),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05873",cytosol,Day),
  catalyst(9041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05874",cytosol,Day) :-
  not exclude(9041),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05873",cytosol,Day),
  catalyst(9041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9042),
  Day >= 1,
  in_compartment(Experiment,"C00267",cytosol,Day),
  in_compartment(Experiment,"C05874",cytosol,Day),
  catalyst(9042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05873",cytosol,Day) :-
  not exclude(9042),
  Day >= 1,
  in_compartment(Experiment,"C00267",cytosol,Day),
  in_compartment(Experiment,"C05874",cytosol,Day),
  catalyst(9042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00333",cytosol,Day) :-
  not exclude(9061),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00470",cytosol,Day),
  catalyst(9061,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9062),
  Day >= 1,
  in_compartment(Experiment,"C00333",cytosol,Day),
  catalyst(9062,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00470",cytosol,Day) :-
  not exclude(9062),
  Day >= 1,
  in_compartment(Experiment,"C00333",cytosol,Day),
  catalyst(9062,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00140",cytosol,Day) :-
  not exclude(9081),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00461",cytosol,Day),
  catalyst(9081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9082),
  Day >= 1,
  in_compartment(Experiment,"C00140",cytosol,Day),
  catalyst(9082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00461",cytosol,Day) :-
  not exclude(9082),
  Day >= 1,
  in_compartment(Experiment,"C00140",cytosol,Day),
  catalyst(9082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",cytosol,Day) :-
  not exclude(9101),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01233",cytosol,Day),
  catalyst(9101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00189",cytosol,Day) :-
  not exclude(9101),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01233",cytosol,Day),
  catalyst(9101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9102),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C00189",cytosol,Day),
  catalyst(9102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01233",cytosol,Day) :-
  not exclude(9102),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C00189",cytosol,Day),
  catalyst(9102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00114",cytosol,Day) :-
  not exclude(9141),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00157",cytosol,Day),
  catalyst(9141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(9141),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00157",cytosol,Day),
  catalyst(9141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9142),
  Day >= 1,
  in_compartment(Experiment,"C00114",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(9142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00157",cytosol,Day) :-
  not exclude(9142),
  Day >= 1,
  in_compartment(Experiment,"C00114",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(9142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9151),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C06369",cytosol,Day),
  catalyst(9151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00586",cytosol,Day) :-
  not exclude(9151),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C06369",cytosol,Day),
  catalyst(9151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9152),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00586",cytosol,Day),
  catalyst(9152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06369",cytosol,Day) :-
  not exclude(9152),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00586",cytosol,Day),
  catalyst(9152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9171),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01167",cytosol,Day),
  catalyst(9171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00585",cytosol,Day) :-
  not exclude(9171),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01167",cytosol,Day),
  catalyst(9171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9172),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00585",cytosol,Day),
  catalyst(9172,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01167",cytosol,Day) :-
  not exclude(9172),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00585",cytosol,Day),
  catalyst(9172,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9201),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03360",cytosol,Day),
  catalyst(9201,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00870",cytosol,Day) :-
  not exclude(9201),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03360",cytosol,Day),
  catalyst(9201,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9202),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00870",cytosol,Day),
  catalyst(9202,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03360",cytosol,Day) :-
  not exclude(9202),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00870",cytosol,Day),
  catalyst(9202,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9221),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(9221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00255",cytosol,Day) :-
  not exclude(9221),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(9221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9222),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00255",cytosol,Day),
  catalyst(9222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00061",cytosol,Day) :-
  not exclude(9222),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00255",cytosol,Day),
  catalyst(9222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C07091",cytosol,Day) :-
  not exclude(9261),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C07090",cytosol,Day),
  catalyst(9261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9262),
  Day >= 1,
  in_compartment(Experiment,"C07091",cytosol,Day),
  catalyst(9262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C07090",cytosol,Day) :-
  not exclude(9262),
  Day >= 1,
  in_compartment(Experiment,"C07091",cytosol,Day),
  catalyst(9262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00066",cytosol,Day) :-
  not exclude(9281),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03880",cytosol,Day),
  catalyst(9281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03523",cytosol,Day) :-
  not exclude(9281),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03880",cytosol,Day),
  catalyst(9281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9282),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C03523",cytosol,Day),
  catalyst(9282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03880",cytosol,Day) :-
  not exclude(9282),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C03523",cytosol,Day),
  catalyst(9282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9291),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04517",cytosol,Day),
  catalyst(9291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06015",cytosol,Day) :-
  not exclude(9291),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04517",cytosol,Day),
  catalyst(9291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9292),
  Day >= 1,
  in_compartment(Experiment,"C00670",cytosol,Day),
  in_compartment(Experiment,"C06015",cytosol,Day),
  catalyst(9292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04517",cytosol,Day) :-
  not exclude(9292),
  Day >= 1,
  in_compartment(Experiment,"C00670",cytosol,Day),
  in_compartment(Experiment,"C06015",cytosol,Day),
  catalyst(9292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9321),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01178",cytosol,Day) :-
  not exclude(9321),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00060",cytosol,Day) :-
  not exclude(9322),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01178",cytosol,Day),
  catalyst(9322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9322),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01178",cytosol,Day),
  catalyst(9322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(9331),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00157",cytosol,Day),
  catalyst(9331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9331),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00157",cytosol,Day),
  catalyst(9331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9332),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00157",cytosol,Day) :-
  not exclude(9332),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9421),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C02100",cytosol,Day),
  catalyst(9421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02407",cytosol,Day) :-
  not exclude(9421),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C02100",cytosol,Day),
  catalyst(9421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",cytosol,Day) :-
  not exclude(9422),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C02407",cytosol,Day),
  catalyst(9422,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02100",cytosol,Day) :-
  not exclude(9422),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C02407",cytosol,Day),
  catalyst(9422,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9431),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00677",cytosol,Day),
  catalyst(9431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9431),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00677",cytosol,Day),
  catalyst(9431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9432),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00677",cytosol,Day) :-
  not exclude(9432),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9441),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(9441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9441),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(9441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9442),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00459",cytosol,Day) :-
  not exclude(9442),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9451),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(9451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9451),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00458",cytosol,Day),
  catalyst(9451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9452),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00458",cytosol,Day) :-
  not exclude(9452),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9491),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(9491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9491),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(9491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9492),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(9492),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9531),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01185",cytosol,Day),
  catalyst(9531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00857",cytosol,Day) :-
  not exclude(9531),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01185",cytosol,Day),
  catalyst(9531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9532),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00857",cytosol,Day),
  catalyst(9532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",cytosol,Day) :-
  not exclude(9532),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00857",cytosol,Day),
  catalyst(9532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(9551),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02449",cytosol,Day) :-
  not exclude(9551),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9552),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C02449",cytosol,Day),
  catalyst(9552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00017",cytosol,Day) :-
  not exclude(9552),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C02449",cytosol,Day),
  catalyst(9552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(9561),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00562",cytosol,Day) :-
  not exclude(9561),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9562),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00562",cytosol,Day),
  catalyst(9562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00017",cytosol,Day) :-
  not exclude(9562),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00562",cytosol,Day),
  catalyst(9562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(9621),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02291",cytosol,Day) :-
  not exclude(9621),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(9622),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(9622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01118",cytosol,Day) :-
  not exclude(9622),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(9622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(9641),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00542",cytosol,Day),
  catalyst(9641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01118",cytosol,Day) :-
  not exclude(9641),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00542",cytosol,Day),
  catalyst(9641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(9642),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00542",cytosol,Day) :-
  not exclude(9642),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(9651),
  Day >= 1,
  in_compartment(Experiment,"C00297",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00155",cytosol,Day) :-
  not exclude(9651),
  Day >= 1,
  in_compartment(Experiment,"C00297",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00297",cytosol,Day) :-
  not exclude(9652),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00155",cytosol,Day),
  catalyst(9652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01118",cytosol,Day) :-
  not exclude(9652),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00155",cytosol,Day),
  catalyst(9652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(9661),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(9661),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00109",cytosol,Day) :-
  not exclude(9661),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(9661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9662),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00109",cytosol,Day),
  catalyst(9662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01118",cytosol,Day) :-
  not exclude(9662),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00109",cytosol,Day),
  catalyst(9662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00986",cytosol,Day) :-
  not exclude(9671),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C07281",cytosol,Day),
  catalyst(9671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C07282",cytosol,Day) :-
  not exclude(9671),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C07281",cytosol,Day),
  catalyst(9671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00315",cytosol,Day) :-
  not exclude(9672),
  Day >= 1,
  in_compartment(Experiment,"C00986",cytosol,Day),
  in_compartment(Experiment,"C07282",cytosol,Day),
  catalyst(9672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C07281",cytosol,Day) :-
  not exclude(9672),
  Day >= 1,
  in_compartment(Experiment,"C00986",cytosol,Day),
  in_compartment(Experiment,"C07282",cytosol,Day),
  catalyst(9672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9681),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C00129",cytosol,Day),
  catalyst(9681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04432",cytosol,Day) :-
  not exclude(9681),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C00129",cytosol,Day),
  catalyst(9681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00066",cytosol,Day) :-
  not exclude(9682),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C04432",cytosol,Day),
  catalyst(9682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00129",cytosol,Day) :-
  not exclude(9682),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C04432",cytosol,Day),
  catalyst(9682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(9691),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C05863",cytosol,Day),
  catalyst(9691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05864",cytosol,Day) :-
  not exclude(9691),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C05863",cytosol,Day),
  catalyst(9691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00096",cytosol,Day) :-
  not exclude(9692),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C05864",cytosol,Day),
  catalyst(9692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05863",cytosol,Day) :-
  not exclude(9692),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C05864",cytosol,Day),
  catalyst(9692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00066",cytosol,Day) :-
  not exclude(9751),
  Day >= 1,
  in_compartment(Experiment,"C00017",cytosol,Day),
  in_compartment(Experiment,"C02163",cytosol,Day),
  catalyst(9751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02550",cytosol,Day) :-
  not exclude(9751),
  Day >= 1,
  in_compartment(Experiment,"C00017",cytosol,Day),
  in_compartment(Experiment,"C02163",cytosol,Day),
  catalyst(9751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00017",cytosol,Day) :-
  not exclude(9752),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C02550",cytosol,Day),
  catalyst(9752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02163",cytosol,Day) :-
  not exclude(9752),
  Day >= 1,
  in_compartment(Experiment,"C00066",cytosol,Day),
  in_compartment(Experiment,"C02550",cytosol,Day),
  catalyst(9752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9771),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(9771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(9771),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(9771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(9771),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(9771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(9771),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(9771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02843",cytosol,Day) :-
  not exclude(9771),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(9771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(9772),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C02843",cytosol,Day),
  catalyst(9772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(9772),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C02843",cytosol,Day),
  catalyst(9772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(9772),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C02843",cytosol,Day),
  catalyst(9772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00083",cytosol,Day) :-
  not exclude(9772),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C02843",cytosol,Day),
  catalyst(9772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9781),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  catalyst(9781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05763",cytosol,Day) :-
  not exclude(9781),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  catalyst(9781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9782),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05763",cytosol,Day),
  catalyst(9782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05764",cytosol,Day) :-
  not exclude(9782),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05763",cytosol,Day),
  catalyst(9782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9811),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  catalyst(9811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05754",cytosol,Day) :-
  not exclude(9811),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  catalyst(9811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9812),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05754",cytosol,Day),
  catalyst(9812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05755",cytosol,Day) :-
  not exclude(9812),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05754",cytosol,Day),
  catalyst(9812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9831),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05749",cytosol,Day),
  catalyst(9831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05748",cytosol,Day) :-
  not exclude(9831),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05749",cytosol,Day),
  catalyst(9831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9832),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05748",cytosol,Day),
  catalyst(9832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05749",cytosol,Day) :-
  not exclude(9832),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05748",cytosol,Day),
  catalyst(9832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9881),
  Day >= 1,
  in_compartment(Experiment,"C04620",cytosol,Day),
  catalyst(9881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05751",cytosol,Day) :-
  not exclude(9881),
  Day >= 1,
  in_compartment(Experiment,"C04620",cytosol,Day),
  catalyst(9881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04620",cytosol,Day) :-
  not exclude(9882),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05751",cytosol,Day),
  catalyst(9882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(9951),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05200",cytosol,Day),
  catalyst(9951,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05313",cytosol,Day) :-
  not exclude(9951),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05200",cytosol,Day),
  catalyst(9951,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(9952),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C05313",cytosol,Day),
  catalyst(9952,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05200",cytosol,Day) :-
  not exclude(9952),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C05313",cytosol,Day),
  catalyst(9952,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(9981),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(9981,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04728",cytosol,Day) :-
  not exclude(9981),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(9981,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(9982),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04728",cytosol,Day),
  catalyst(9982,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00066",cytosol,Day) :-
  not exclude(9982),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04728",cytosol,Day),
  catalyst(9982,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10011),
  Day >= 1,
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00704",cytosol,Day),
  catalyst(10011,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(10011),
  Day >= 1,
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00704",cytosol,Day),
  catalyst(10011,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10012),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00027",cytosol,Day),
  catalyst(10012,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00704",cytosol,Day) :-
  not exclude(10012),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00027",cytosol,Day),
  catalyst(10012,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10111),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00268",cytosol,Day),
  catalyst(10111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00272",cytosol,Day) :-
  not exclude(10111),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00268",cytosol,Day),
  catalyst(10111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10112),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00272",cytosol,Day),
  catalyst(10112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00268",cytosol,Day) :-
  not exclude(10112),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00272",cytosol,Day),
  catalyst(10112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10141),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  catalyst(10141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00030",cytosol,Day) :-
  not exclude(10141),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  catalyst(10141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10142),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  catalyst(10142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00028",cytosol,Day) :-
  not exclude(10142),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  catalyst(10142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10161),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00996",cytosol,Day),
  catalyst(10161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00999",cytosol,Day) :-
  not exclude(10161),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00996",cytosol,Day),
  catalyst(10161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10162),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00999",cytosol,Day),
  catalyst(10162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00996",cytosol,Day) :-
  not exclude(10162),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00999",cytosol,Day),
  catalyst(10162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10181),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(10181),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(10181),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10182),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(10182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(10182),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(10182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10201),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01694",cytosol,Day),
  catalyst(10201,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10201),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01694",cytosol,Day),
  catalyst(10201,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05440",cytosol,Day) :-
  not exclude(10201),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01694",cytosol,Day),
  catalyst(10201,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10202),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05440",cytosol,Day),
  catalyst(10202,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01694",cytosol,Day) :-
  not exclude(10202),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05440",cytosol,Day),
  catalyst(10202,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(10231),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00652",cytosol,Day),
  catalyst(10231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06316",cytosol,Day) :-
  not exclude(10231),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00652",cytosol,Day),
  catalyst(10231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10232),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C06316",cytosol,Day),
  catalyst(10232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00652",cytosol,Day) :-
  not exclude(10232),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C06316",cytosol,Day),
  catalyst(10232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10261),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05140",cytosol,Day),
  catalyst(10261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05139",cytosol,Day) :-
  not exclude(10261),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05140",cytosol,Day),
  catalyst(10261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10262),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10262),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05140",cytosol,Day) :-
  not exclude(10262),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10271),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10271),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03205",cytosol,Day) :-
  not exclude(10271),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10272),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C03205",cytosol,Day),
  catalyst(10272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05485",cytosol,Day) :-
  not exclude(10272),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C03205",cytosol,Day),
  catalyst(10272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10291),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10291),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01176",cytosol,Day) :-
  not exclude(10291),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10292),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01176",cytosol,Day),
  catalyst(10292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05138",cytosol,Day) :-
  not exclude(10292),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01176",cytosol,Day),
  catalyst(10292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10311),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C03836",cytosol,Day),
  catalyst(10311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01034",cytosol,Day) :-
  not exclude(10311),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C03836",cytosol,Day),
  catalyst(10311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10312),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01034",cytosol,Day),
  catalyst(10312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03836",cytosol,Day) :-
  not exclude(10312),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01034",cytosol,Day),
  catalyst(10312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10331),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00535",cytosol,Day),
  catalyst(10331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04295",cytosol,Day) :-
  not exclude(10331),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00535",cytosol,Day),
  catalyst(10331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10332),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10332),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00535",cytosol,Day) :-
  not exclude(10332),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10332,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10341),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00535",cytosol,Day),
  catalyst(10341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04295",cytosol,Day) :-
  not exclude(10341),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00535",cytosol,Day),
  catalyst(10341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10342),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10342),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00535",cytosol,Day) :-
  not exclude(10342),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04295",cytosol,Day),
  catalyst(10342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10381),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10381),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00280",cytosol,Day) :-
  not exclude(10381),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10382),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00280",cytosol,Day),
  catalyst(10382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01227",cytosol,Day) :-
  not exclude(10382),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00280",cytosol,Day),
  catalyst(10382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10391),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(10391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00652",cytosol,Day) :-
  not exclude(10391),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(10391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10392),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00652",cytosol,Day),
  catalyst(10392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00216",cytosol,Day) :-
  not exclude(10392),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00652",cytosol,Day),
  catalyst(10392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10451),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05761",cytosol,Day),
  catalyst(10451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10451),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05761",cytosol,Day),
  catalyst(10451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05762",cytosol,Day) :-
  not exclude(10451),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05761",cytosol,Day),
  catalyst(10451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10452),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05762",cytosol,Day),
  catalyst(10452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05761",cytosol,Day) :-
  not exclude(10452),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05762",cytosol,Day),
  catalyst(10452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10491),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05745",cytosol,Day),
  catalyst(10491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10491),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05745",cytosol,Day),
  catalyst(10491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05746",cytosol,Day) :-
  not exclude(10491),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05745",cytosol,Day),
  catalyst(10491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10492),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05746",cytosol,Day),
  catalyst(10492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05745",cytosol,Day) :-
  not exclude(10492),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05746",cytosol,Day),
  catalyst(10492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10501),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  catalyst(10501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10501),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  catalyst(10501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05759",cytosol,Day) :-
  not exclude(10501),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  catalyst(10501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10502),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05759",cytosol,Day),
  catalyst(10502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05223",cytosol,Day) :-
  not exclude(10502),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05759",cytosol,Day),
  catalyst(10502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10511),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C03939",cytosol,Day),
  catalyst(10511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10511),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C03939",cytosol,Day),
  catalyst(10511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05744",cytosol,Day) :-
  not exclude(10511),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C03939",cytosol,Day),
  catalyst(10511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10512),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05744",cytosol,Day),
  catalyst(10512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03939",cytosol,Day) :-
  not exclude(10512),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05744",cytosol,Day),
  catalyst(10512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(10541),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01136",cytosol,Day) :-
  not exclude(10541),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(10542),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00579",cytosol,Day) :-
  not exclude(10542),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(10551),
  Day >= 1,
  in_compartment(Experiment,"C00109",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06006",cytosol,Day) :-
  not exclude(10551),
  Day >= 1,
  in_compartment(Experiment,"C00109",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00109",cytosol,Day) :-
  not exclude(10552),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C06006",cytosol,Day),
  catalyst(10552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(10552),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C06006",cytosol,Day),
  catalyst(10552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10561),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C06010",cytosol,Day),
  catalyst(10561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(10561),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C06010",cytosol,Day),
  catalyst(10561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(10562),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06010",cytosol,Day) :-
  not exclude(10562),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10581),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C06010",cytosol,Day),
  catalyst(10581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10582),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06010",cytosol,Day) :-
  not exclude(10582),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10591),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00900",cytosol,Day),
  catalyst(10591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10592),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00900",cytosol,Day) :-
  not exclude(10592),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(10641),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  catalyst(10641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10641),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  catalyst(10641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10642),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00206",cytosol,Day) :-
  not exclude(10642),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10642),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10661),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00126",cytosol,Day),
  catalyst(10661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00125",cytosol,Day) :-
  not exclude(10661),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00126",cytosol,Day),
  catalyst(10661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10662),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00125",cytosol,Day),
  catalyst(10662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",cytosol,Day) :-
  not exclude(10662),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00125",cytosol,Day),
  catalyst(10662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10701),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10701),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(10701),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10702),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(10702),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10702),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10711),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10711),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(10711),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(10711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10712),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(10712),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10712),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(10712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(10771),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05560",cytosol,Day) :-
  not exclude(10771),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(10772),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C05560",cytosol,Day),
  catalyst(10772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00956",cytosol,Day) :-
  not exclude(10772),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C05560",cytosol,Day),
  catalyst(10772,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10781),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05757",cytosol,Day),
  catalyst(10781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05756",cytosol,Day) :-
  not exclude(10781),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05757",cytosol,Day),
  catalyst(10781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10782),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05756",cytosol,Day),
  catalyst(10782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05757",cytosol,Day) :-
  not exclude(10782),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05756",cytosol,Day),
  catalyst(10782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10791),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05747",cytosol,Day),
  catalyst(10791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05746",cytosol,Day) :-
  not exclude(10791),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05747",cytosol,Day),
  catalyst(10791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10792),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05746",cytosol,Day),
  catalyst(10792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05747",cytosol,Day) :-
  not exclude(10792),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05746",cytosol,Day),
  catalyst(10792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10811),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04633",cytosol,Day),
  catalyst(10811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05762",cytosol,Day) :-
  not exclude(10811),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04633",cytosol,Day),
  catalyst(10811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10812),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05762",cytosol,Day),
  catalyst(10812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04633",cytosol,Day) :-
  not exclude(10812),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05762",cytosol,Day),
  catalyst(10812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10841),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04618",cytosol,Day),
  catalyst(10841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05744",cytosol,Day) :-
  not exclude(10841),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04618",cytosol,Day),
  catalyst(10841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10842),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05744",cytosol,Day),
  catalyst(10842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04618",cytosol,Day) :-
  not exclude(10842),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05744",cytosol,Day),
  catalyst(10842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10851),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01271",cytosol,Day),
  catalyst(10851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00685",cytosol,Day) :-
  not exclude(10851),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01271",cytosol,Day),
  catalyst(10851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10852),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00685",cytosol,Day),
  catalyst(10852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01271",cytosol,Day) :-
  not exclude(10852),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00685",cytosol,Day),
  catalyst(10852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  include(10900),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(10900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00661",cytosol,Day) :-
  include(10900),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(10900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10910),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(10910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(10910),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(10910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  not exclude(10920),
  Day >= 1,
  in_compartment(Experiment,"C00463",medium,Day),
  catalyst(10920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(30010),
  Day >= 1,
  in_compartment(Experiment,"C00074",medium,Day),
  catalyst(30010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(30020),
  Day >= 1,
  in_compartment(Experiment,"C00108",medium,Day),
  catalyst(30020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(30030),
  Day >= 2,
  in_compartment(Experiment,"C00166",medium,Day),
  catalyst(30030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(30040),
  Day >= 1,
  in_compartment(Experiment,"C00493",medium,Day),
  catalyst(30040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(30050),
  Day >= 2,
  in_compartment(Experiment,"C01179",medium,Day),
  catalyst(30050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00279",cytosol,Day) :-
  not exclude(30060),
  Day >= 1,
  in_compartment(Experiment,"C00279",medium,Day),
  catalyst(30060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  not exclude(30070),
  Day >= 1,
  in_compartment(Experiment,"C00631",medium,Day),
  catalyst(30070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(30080),
  Day >= 1,
  in_compartment(Experiment,"C00001",medium,Day),
  catalyst(30080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(30090),
  Day >= 1,
  in_compartment(Experiment,"C00002",medium,Day),
  catalyst(30090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(30100),
  Day >= 1,
  in_compartment(Experiment,"C00003",medium,Day),
  catalyst(30100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(30110),
  Day >= 1,
  in_compartment(Experiment,"C00004",medium,Day),
  catalyst(30110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(30120),
  Day >= 1,
  in_compartment(Experiment,"C00005",medium,Day),
  catalyst(30120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(30130),
  Day >= 1,
  in_compartment(Experiment,"C00006",medium,Day),
  catalyst(30130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(30140),
  Day >= 1,
  in_compartment(Experiment,"C00007",medium,Day),
  catalyst(30140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(30150),
  Day >= 1,
  in_compartment(Experiment,"C00008",medium,Day),
  catalyst(30150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  not exclude(30160),
  Day >= 1,
  in_compartment(Experiment,"C00119",medium,Day),
  catalyst(30160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

assertable_reaction(3640).
assertable_reaction(10900).

retractable_reaction(21).
retractable_reaction(22).
retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(91).
retractable_reaction(92).
retractable_reaction(111).
retractable_reaction(112).
retractable_reaction(131).
retractable_reaction(132).
retractable_reaction(141).
retractable_reaction(142).
retractable_reaction(220).
retractable_reaction(321).
retractable_reaction(322).
retractable_reaction(331).
retractable_reaction(332).
retractable_reaction(361).
retractable_reaction(362).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(431).
retractable_reaction(432).
retractable_reaction(480).
retractable_reaction(490).
retractable_reaction(500).
retractable_reaction(520).
retractable_reaction(560).
retractable_reaction(570).
retractable_reaction(581).
retractable_reaction(582).
retractable_reaction(620).
retractable_reaction(660).
retractable_reaction(710).
retractable_reaction(771).
retractable_reaction(772).
retractable_reaction(781).
retractable_reaction(782).
retractable_reaction(801).
retractable_reaction(802).
retractable_reaction(811).
retractable_reaction(812).
retractable_reaction(831).
retractable_reaction(832).
retractable_reaction(841).
retractable_reaction(842).
retractable_reaction(851).
retractable_reaction(852).
retractable_reaction(881).
retractable_reaction(882).
retractable_reaction(901).
retractable_reaction(902).
retractable_reaction(921).
retractable_reaction(922).
retractable_reaction(931).
retractable_reaction(932).
retractable_reaction(980).
retractable_reaction(990).
retractable_reaction(1060).
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1121).
retractable_reaction(1122).
retractable_reaction(1130).
retractable_reaction(1150).
retractable_reaction(1160).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1220).
retractable_reaction(1261).
retractable_reaction(1262).
retractable_reaction(1321).
retractable_reaction(1322).
retractable_reaction(1331).
retractable_reaction(1332).
retractable_reaction(1390).
retractable_reaction(1411).
retractable_reaction(1412).
retractable_reaction(1471).
retractable_reaction(1472).
retractable_reaction(1481).
retractable_reaction(1482).
retractable_reaction(1571).
retractable_reaction(1572).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(1611).
retractable_reaction(1612).
retractable_reaction(1751).
retractable_reaction(1752).
retractable_reaction(1791).
retractable_reaction(1792).
retractable_reaction(1801).
retractable_reaction(1802).
retractable_reaction(1850).
retractable_reaction(1860).
retractable_reaction(1890).
retractable_reaction(1900).
retractable_reaction(2041).
retractable_reaction(2042).
retractable_reaction(2051).
retractable_reaction(2052).
retractable_reaction(2060).
retractable_reaction(2070).
retractable_reaction(2121).
retractable_reaction(2122).
retractable_reaction(2170).
retractable_reaction(2180).
retractable_reaction(2190).
retractable_reaction(2200).
retractable_reaction(2210).
retractable_reaction(2240).
retractable_reaction(2250).
retractable_reaction(2260).
retractable_reaction(2270).
retractable_reaction(2290).
retractable_reaction(2300).
retractable_reaction(2330).
retractable_reaction(2340).
retractable_reaction(2360).
retractable_reaction(2370).
retractable_reaction(2380).
retractable_reaction(2401).
retractable_reaction(2402).
retractable_reaction(2410).
retractable_reaction(2420).
retractable_reaction(2431).
retractable_reaction(2432).
retractable_reaction(2480).
retractable_reaction(2490).
retractable_reaction(2550).
retractable_reaction(2560).
retractable_reaction(2580).
retractable_reaction(2621).
retractable_reaction(2622).
retractable_reaction(2631).
retractable_reaction(2632).
retractable_reaction(2641).
retractable_reaction(2642).
retractable_reaction(2680).
retractable_reaction(2740).
retractable_reaction(2800).
retractable_reaction(2870).
retractable_reaction(2880).
retractable_reaction(2891).
retractable_reaction(2892).
retractable_reaction(2920).
retractable_reaction(2940).
retractable_reaction(2960).
retractable_reaction(2970).
retractable_reaction(2980).
retractable_reaction(2990).
retractable_reaction(3010).
retractable_reaction(3100).
retractable_reaction(3110).
retractable_reaction(3120).
retractable_reaction(3150).
retractable_reaction(3160).
retractable_reaction(3190).
retractable_reaction(3230).
retractable_reaction(3250).
retractable_reaction(3260).
retractable_reaction(3271).
retractable_reaction(3272).
retractable_reaction(3290).
retractable_reaction(3300).
retractable_reaction(3320).
retractable_reaction(3350).
retractable_reaction(3360).
retractable_reaction(3380).
retractable_reaction(3390).
retractable_reaction(3450).
retractable_reaction(3470).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3540).
retractable_reaction(3571).
retractable_reaction(3572).
retractable_reaction(3580).
retractable_reaction(3590).
retractable_reaction(3600).
retractable_reaction(3610).
retractable_reaction(3620).
retractable_reaction(3630).
retractable_reaction(3650).
retractable_reaction(3660).
retractable_reaction(3671).
retractable_reaction(3672).
retractable_reaction(3680).
retractable_reaction(3690).
retractable_reaction(3700).
retractable_reaction(3710).
retractable_reaction(3720).
retractable_reaction(3730).
retractable_reaction(3740).
retractable_reaction(3750).
retractable_reaction(3760).
retractable_reaction(3820).
retractable_reaction(3880).
retractable_reaction(4020).
retractable_reaction(4030).
retractable_reaction(4141).
retractable_reaction(4142).
retractable_reaction(4170).
retractable_reaction(4200).
retractable_reaction(4210).
retractable_reaction(4230).
retractable_reaction(4271).
retractable_reaction(4272).
retractable_reaction(4281).
retractable_reaction(4282).
retractable_reaction(4291).
retractable_reaction(4292).
retractable_reaction(4330).
retractable_reaction(4350).
retractable_reaction(4360).
retractable_reaction(4371).
retractable_reaction(4372).
retractable_reaction(4380).
retractable_reaction(4400).
retractable_reaction(4430).
retractable_reaction(4460).
retractable_reaction(4470).
retractable_reaction(4490).
retractable_reaction(4510).
retractable_reaction(4520).
retractable_reaction(4560).
retractable_reaction(4590).
retractable_reaction(4650).
retractable_reaction(4661).
retractable_reaction(4662).
retractable_reaction(4671).
retractable_reaction(4672).
retractable_reaction(4730).
retractable_reaction(4740).
retractable_reaction(4771).
retractable_reaction(4772).
retractable_reaction(4831).
retractable_reaction(4832).
retractable_reaction(4850).
retractable_reaction(4860).
retractable_reaction(4870).
retractable_reaction(4940).
retractable_reaction(5010).
retractable_reaction(5020).
retractable_reaction(5030).
retractable_reaction(5040).
retractable_reaction(5050).
retractable_reaction(5060).
retractable_reaction(5090).
retractable_reaction(5110).
retractable_reaction(5120).
retractable_reaction(5130).
retractable_reaction(5140).
retractable_reaction(5150).
retractable_reaction(5180).
retractable_reaction(5190).
retractable_reaction(5200).
retractable_reaction(5230).
retractable_reaction(5240).
retractable_reaction(5250).
retractable_reaction(5260).
retractable_reaction(5281).
retractable_reaction(5282).
retractable_reaction(5381).
retractable_reaction(5382).
retractable_reaction(5391).
retractable_reaction(5392).
retractable_reaction(5411).
retractable_reaction(5412).
retractable_reaction(5441).
retractable_reaction(5442).
retractable_reaction(5451).
retractable_reaction(5452).
retractable_reaction(5461).
retractable_reaction(5462).
retractable_reaction(5471).
retractable_reaction(5472).
retractable_reaction(5511).
retractable_reaction(5512).
retractable_reaction(5540).
retractable_reaction(5561).
retractable_reaction(5562).
retractable_reaction(5571).
retractable_reaction(5572).
retractable_reaction(5601).
retractable_reaction(5602).
retractable_reaction(5640).
retractable_reaction(5650).
retractable_reaction(5661).
retractable_reaction(5662).
retractable_reaction(5680).
retractable_reaction(5730).
retractable_reaction(5750).
retractable_reaction(5761).
retractable_reaction(5762).
retractable_reaction(5780).
retractable_reaction(5791).
retractable_reaction(5792).
retractable_reaction(5801).
retractable_reaction(5802).
retractable_reaction(5810).
retractable_reaction(5820).
retractable_reaction(5830).
retractable_reaction(5860).
retractable_reaction(5911).
retractable_reaction(5912).
retractable_reaction(5930).
retractable_reaction(5960).
retractable_reaction(5980).
retractable_reaction(6040).
retractable_reaction(6051).
retractable_reaction(6052).
retractable_reaction(6060).
retractable_reaction(6071).
retractable_reaction(6072).
retractable_reaction(6081).
retractable_reaction(6082).
retractable_reaction(6111).
retractable_reaction(6112).
retractable_reaction(6140).
retractable_reaction(6151).
retractable_reaction(6152).
retractable_reaction(6171).
retractable_reaction(6172).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(6250).
retractable_reaction(6280).
retractable_reaction(6300).
retractable_reaction(6330).
retractable_reaction(6370).
retractable_reaction(6390).
retractable_reaction(6440).
retractable_reaction(6461).
retractable_reaction(6462).
retractable_reaction(6520).
retractable_reaction(6541).
retractable_reaction(6542).
retractable_reaction(6560).
retractable_reaction(6580).
retractable_reaction(6640).
retractable_reaction(6650).
retractable_reaction(6680).
retractable_reaction(6710).
retractable_reaction(6770).
retractable_reaction(6780).
retractable_reaction(6820).
retractable_reaction(6860).
retractable_reaction(6870).
retractable_reaction(6890).
retractable_reaction(6931).
retractable_reaction(6932).
retractable_reaction(6960).
retractable_reaction(6970).
retractable_reaction(6980).
retractable_reaction(6990).
retractable_reaction(7000).
retractable_reaction(7010).
retractable_reaction(7070).
retractable_reaction(7110).
retractable_reaction(7271).
retractable_reaction(7272).
retractable_reaction(7281).
retractable_reaction(7282).
retractable_reaction(7290).
retractable_reaction(7301).
retractable_reaction(7302).
retractable_reaction(7350).
retractable_reaction(7360).
retractable_reaction(7380).
retractable_reaction(7460).
retractable_reaction(7501).
retractable_reaction(7502).
retractable_reaction(7530).
retractable_reaction(7540).
retractable_reaction(7550).
retractable_reaction(7561).
retractable_reaction(7562).
retractable_reaction(7571).
retractable_reaction(7572).
retractable_reaction(7580).
retractable_reaction(7590).
retractable_reaction(7660).
retractable_reaction(7751).
retractable_reaction(7752).
retractable_reaction(7761).
retractable_reaction(7762).
retractable_reaction(7870).
retractable_reaction(7880).
retractable_reaction(7911).
retractable_reaction(7912).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(7980).
retractable_reaction(7990).
retractable_reaction(8000).
retractable_reaction(8031).
retractable_reaction(8032).
retractable_reaction(8041).
retractable_reaction(8042).
retractable_reaction(8051).
retractable_reaction(8052).
retractable_reaction(8120).
retractable_reaction(8130).
retractable_reaction(8170).
retractable_reaction(8181).
retractable_reaction(8182).
retractable_reaction(8210).
retractable_reaction(8220).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8241).
retractable_reaction(8242).
retractable_reaction(8261).
retractable_reaction(8262).
retractable_reaction(8320).
retractable_reaction(8341).
retractable_reaction(8342).
retractable_reaction(8360).
retractable_reaction(8380).
retractable_reaction(8481).
retractable_reaction(8482).
retractable_reaction(8491).
retractable_reaction(8492).
retractable_reaction(8531).
retractable_reaction(8532).
retractable_reaction(8541).
retractable_reaction(8542).
retractable_reaction(8551).
retractable_reaction(8552).
retractable_reaction(8571).
retractable_reaction(8572).
retractable_reaction(8601).
retractable_reaction(8602).
retractable_reaction(8631).
retractable_reaction(8632).
retractable_reaction(8671).
retractable_reaction(8672).
retractable_reaction(8681).
retractable_reaction(8682).
retractable_reaction(8751).
retractable_reaction(8752).
retractable_reaction(8761).
retractable_reaction(8762).
retractable_reaction(8791).
retractable_reaction(8792).
retractable_reaction(8811).
retractable_reaction(8812).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(8881).
retractable_reaction(8882).
retractable_reaction(8931).
retractable_reaction(8932).
retractable_reaction(8971).
retractable_reaction(8972).
retractable_reaction(8981).
retractable_reaction(8982).
retractable_reaction(9041).
retractable_reaction(9042).
retractable_reaction(9061).
retractable_reaction(9062).
retractable_reaction(9081).
retractable_reaction(9082).
retractable_reaction(9101).
retractable_reaction(9102).
retractable_reaction(9141).
retractable_reaction(9142).
retractable_reaction(9151).
retractable_reaction(9152).
retractable_reaction(9171).
retractable_reaction(9172).
retractable_reaction(9201).
retractable_reaction(9202).
retractable_reaction(9221).
retractable_reaction(9222).
retractable_reaction(9261).
retractable_reaction(9262).
retractable_reaction(9281).
retractable_reaction(9282).
retractable_reaction(9291).
retractable_reaction(9292).
retractable_reaction(9321).
retractable_reaction(9322).
retractable_reaction(9331).
retractable_reaction(9332).
retractable_reaction(9421).
retractable_reaction(9422).
retractable_reaction(9431).
retractable_reaction(9432).
retractable_reaction(9441).
retractable_reaction(9442).
retractable_reaction(9451).
retractable_reaction(9452).
retractable_reaction(9491).
retractable_reaction(9492).
retractable_reaction(9531).
retractable_reaction(9532).
retractable_reaction(9551).
retractable_reaction(9552).
retractable_reaction(9561).
retractable_reaction(9562).
retractable_reaction(9621).
retractable_reaction(9622).
retractable_reaction(9641).
retractable_reaction(9642).
retractable_reaction(9651).
retractable_reaction(9652).
retractable_reaction(9661).
retractable_reaction(9662).
retractable_reaction(9671).
retractable_reaction(9672).
retractable_reaction(9681).
retractable_reaction(9682).
retractable_reaction(9691).
retractable_reaction(9692).
retractable_reaction(9751).
retractable_reaction(9752).
retractable_reaction(9771).
retractable_reaction(9772).
retractable_reaction(9781).
retractable_reaction(9782).
retractable_reaction(9811).
retractable_reaction(9812).
retractable_reaction(9831).
retractable_reaction(9832).
retractable_reaction(9881).
retractable_reaction(9882).
retractable_reaction(9951).
retractable_reaction(9952).
retractable_reaction(9981).
retractable_reaction(9982).
retractable_reaction(10011).
retractable_reaction(10012).
retractable_reaction(10111).
retractable_reaction(10112).
retractable_reaction(10141).
retractable_reaction(10142).
retractable_reaction(10161).
retractable_reaction(10162).
retractable_reaction(10181).
retractable_reaction(10182).
retractable_reaction(10201).
retractable_reaction(10202).
retractable_reaction(10231).
retractable_reaction(10232).
retractable_reaction(10261).
retractable_reaction(10262).
retractable_reaction(10271).
retractable_reaction(10272).
retractable_reaction(10291).
retractable_reaction(10292).
retractable_reaction(10311).
retractable_reaction(10312).
retractable_reaction(10331).
retractable_reaction(10332).
retractable_reaction(10341).
retractable_reaction(10342).
retractable_reaction(10381).
retractable_reaction(10382).
retractable_reaction(10391).
retractable_reaction(10392).
retractable_reaction(10451).
retractable_reaction(10452).
retractable_reaction(10491).
retractable_reaction(10492).
retractable_reaction(10501).
retractable_reaction(10502).
retractable_reaction(10511).
retractable_reaction(10512).
retractable_reaction(10541).
retractable_reaction(10542).
retractable_reaction(10551).
retractable_reaction(10552).
retractable_reaction(10561).
retractable_reaction(10562).
retractable_reaction(10581).
retractable_reaction(10582).
retractable_reaction(10591).
retractable_reaction(10592).
retractable_reaction(10641).
retractable_reaction(10642).
retractable_reaction(10661).
retractable_reaction(10662).
retractable_reaction(10701).
retractable_reaction(10702).
retractable_reaction(10711).
retractable_reaction(10712).
retractable_reaction(10771).
retractable_reaction(10772).
retractable_reaction(10781).
retractable_reaction(10782).
retractable_reaction(10791).
retractable_reaction(10792).
retractable_reaction(10811).
retractable_reaction(10812).
retractable_reaction(10841).
retractable_reaction(10842).
retractable_reaction(10851).
retractable_reaction(10852).
retractable_reaction(10910).
retractable_reaction(10920).
retractable_reaction(30010).
retractable_reaction(30020).
retractable_reaction(30030).
retractable_reaction(30040).
retractable_reaction(30050).
retractable_reaction(30060).
retractable_reaction(30070).
retractable_reaction(30080).
retractable_reaction(30090).
retractable_reaction(30100).
retractable_reaction(30110).
retractable_reaction(30120).
retractable_reaction(30130).
retractable_reaction(30140).
retractable_reaction(30150).
retractable_reaction(30160).


reactionID(E) :- assertable_reaction(E).
reactionID(E) :- retractable_reaction(E).
reactionID(E) :- certain_reaction(E).

enzyme_info(Reaction) :- catalyst(Reaction,Complex), Complex!=unknown.
catalyst(Reaction,unknown) :- not enzyme_info(Reaction).

component("YNL280C",461).
component("YLR056W",397).
component("YGL012W",251).
component("YKR009C",383).
component("YOL086C",479).
component("YMR303C",439).
component("YGL256W",271).
component("YDL168W",174).
component("YBR145W",133).
component("YPL231W",525).
component("U46_",77).
component("YBR149W",134).
component("YBR149W",135).
component("YGL001C",248).
component("YIL094C",323).
component("U45_",76).
component("YML056C",427).
component("YLR432W",424).
component("YHR216W",317).
component("YAR075W",111).
component("YAR073W",110).
component("YDR127W",187).
component("YOL126C",484).
component("YKL085W",372).
component("YDL078C",165).
component("YNL037C",444).
component("YNL009W",442).
component("YLR174W",405).
component("YCL018W",150).
component("YLR355C",420).
component("YDL174C",177).
component("YML086C",428).
component("YGR088W",279).
component("YDR256C",197).
component("YJR078W",362).
component("YJR025C",355).
component("U107_",23).
component("YJR104C",364).
component("YHR008C",297).
component("YJL026W",337).
component("YIL066C",321).
component("YGR180C",282).
component("YER070W",228).
component("U36_",70).
component("YDL168W",175).
component("YBR006W",119).
component("YPL276W",533).
component("YPL275W",532).
component("YOR388C",510).
component("YOR374W",509).
component("YER073W",229).
component("YGL154C",263).
component("U55_",83).
component("YER069W",227).
component("YOR323C",502).
component("YER178W",235).
component("YBR221C",141).
component("YIL125W",327).
component("U52_",81).
component("YBR166C",137).
component("YGL012W",252).
component("YKL216W",382).
component("YKR009C",384).
component("YIL160C",331).
component("YGL205W",268).
component("YDL171C",176).
component("U99_",105).
component("U100_",20).
component("YKR080W",389).
component("YER023W",221).
component("YOR236W",500).
component("YGR204W",284).
component("YLR142W",402).
component("U65_",87).
component("U62_",86).
component("YHR068W",305).
component("YKL150W",375).
component("YIL043C",320).
component("YPL171C",520).
component("YHR179W",313).
component("YGR234W",286).
component("YFR030W",245).
component("YPL017C",512).
component("YFL018C",238).
component("YDR353W",201).
component("YPR167C",545).
component("YJR137C",366).
component("YNL052W",445).
component("YMR256C",438).
component("YLR395C",423).
component("YLR038C",395).
component("YIL111W",324).
component("YHR051W",304).
component("YGL191W",266).
component("YGL187C",265).
component("YDL067C",164).
component("Q0275",19).
component("Q0250",18).
component("YPL266W",531).
component("YKR069W",388).
component("YOL096C",480).
component("U47_",78).
component("YJR073C",360).
component("YDL033C",163).
component("YLR172C",404).
component("YLR058C",398).
component("YDR019C",182).
component("YBR176W",138).
component("YDR408C",206).
component("YMR120C",433).
component("YLR028C",393).
component("YBL013W",112).
component("YJL130C",344).
component("YKL024C",370).
component("YPR074C",541).
component("YBR117C",132).
component("YCL009C",149).
component("YNL071W",447).
component("YIL160C",332).
component("U48_",79).
component("YPL231W",526).
component("YPL231W",527).
component("YPL028W",513).
component("YLR299W",413).
component("YGL017W",253).
component("YML126C",429).
component("YNL104C",449).
component("YDL182W",178).
component("YDL131W",170).
component("YLR258W",410).
component("YFR015C",243).
component("YNL029C",443).
component("YIL085C",322).
component("YMR306W",440).
component("YLR342W",419).
component("YGR032W",274).
component("YLR209C",406).
component("U104_",21).
component("YDR354W",202) :- not remove_orf("YDR354W",202).
component("YFR047C",246).
component("YLR209C",407).
component("YML022W",425).
component("YDR441C",208).
component("YJL167W",349).
component("YDR127W",188).
component("YHR068W",306).
component("YLR303W",415).
component("YGR012W",272).
component("YJR130C",365).
component("YDR035W",183).
component("YBR249C",142).
component("YOR274W",501).
component("YHR137W",309).
component("YGL202W",267).
component("YLR027C",392).
component("YKL106W",373).
component("YOL140W",485).
component("YGR019W",273).
component("YLR089C",399).
component("U61_",85).
component("YJR148W",367).
component("YFL030W",239).
component("YNR058W",470).
component("YIL116W",326).
component("YGL253W",270).
component("YFR053C",247).
component("YMR205C",435).
component("YGR240C",287).
component("YOL016C",473).
component("YFR014C",242).
component("YCR036W",159).
component("YCL040W",152).
component("YPL188W",521).
component("YJR049C",357).
component("YEL041W",216).
component("U96_",103).
component("YKL001C",369).
component("YDR236C",195).
component("YHL032C",295).
component("U83_",99).
component("YMR208W",436).
component("YPL203W",522).
component("YOR061W",487).
component("YKL166C",377).
component("YJL164C",348).
component("YIL035C",319).
component("YHR205W",315).
component("YHR102W",308).
component("YGL019W",254).
component("YHR025W",300).
component("YOR347C",507).
component("YAL038W",108).
component("YNR012W",466).
component("YDR127W",189).
component("YDR147W",192).
component("YCR012W",154).
component("U76_",96).
component("YER170W",234).
component("YDR226W",194).
component("YKL067W",371).
component("YOL055C",476).
component("YDR454C",209).
component("YJR057W",358).
component("YOL061W",478).
component("YKL181W",378).
component("YHL011C",294).
component("YER099C",233).
component("YBL068W",117).
component("YOR143C",491).
component("YNL256W",458).
component("YLR328W",417).
component("YBR018C",121).
component("YLR328W",418).
component("U94_",102).
component("YBR029C",124).
component("YGL130W",261).
component("YDR530C",213).
component("YPR190C",548).
component("YPR187W",547).
component("YPR110C",542).
component("YPR010C",536).
component("YOR341W",506).
component("YOR340C",505).
component("YOR224C",499).
component("YOR210W",498).
component("YOR207C",496).
component("YOR151C",492).
component("YOR116C",489).
component("YOL005C",471).
component("YNR003C",465).
component("YNL248C",457).
component("YNL151C",453).
component("YNL113W",450).
component("YKL144C",374).
component("YJR063W",359).
component("YJL148W",347).
component("YJL140W",346).
component("YIL021W",318).
component("YHR143W-A",310).
component("YGL070C",259).
component("YFL036W",240).
component("YDR404C",205).
component("YDR156W",193).
component("YDR045C",184).
component("YDL150W",173).
component("YDL140C",171).
component("YBR154C",136).
component("YPR175W",546).
component("YPL167C",519).
component("YOR330C",503).
component("YOL115W",483).
component("YNL299W",463).
component("YNL262W",459).
component("YNL102W",448).
component("YJR043C",356).
component("YJR006W",353).
component("YJL090C",340).
component("YIL139C",329).
component("YEL055C",218).
component("YDR419W",207).
component("YDR121W",186).
component("YDL102W",169).
component("YCR014C",155).
component("YBR278W",145).
component("YBL035C",115).
component("YPR113W",543).
component("YPL148C",518).
component("YGR286C",291).
component("YHR189W",314).
component("YDL086W",167).
component("YOL011W",472).
component("YMR008C",431).
component("YMR006C",430).
component("U105_",22).
component("YBL015W",113).
component("YJL068C",338).
component("U77_",97).
component("YLR377C",422).
component("YPR073C",539).
component("YHR215W",316).
component("YDL024C",162).
component("YBR093C",130).
component("YBR092C",129).
component("YHR046C",303).
component("U9_",106).
component("YDL236W",180).
component("YPR073C",540).
component("YOR208W",497).
component("YNL053W",446).
component("YMR036C",432).
component("YIR026C",336).
component("YIL113W",325).
component("YFR028C",244).
component("YER075C",230).
component("YDL230W",179).
component("YBR276C",144).
component("U34_",69).
component("U31_",68).
component("U30_",67).
component("U29_",66).
component("U26_",65).
component("U25_",64).
component("U24_",63).
component("YHR044C",302).
component("YHR043C",301).
component("YOR360C",508).
component("YKR031C",385).
component("YPL206C",523).
component("YGL027C",256).
component("YLR286C",412).
component("YJR153W",368).
component("YJL221C",352).
component("YJL216C",351).
component("YIL172C",335).
component("YGR292W",293).
component("YGR287C",292).
component("YBR299W",148).
component("YOR190W",495).
component("YLR300W",414).
component("YGR282C",290).
component("YDR261C",198).
component("YDR400W",204).
component("YML035C",426).
component("YJL070C",339).
component("YBR284W",146).
component("YER043C",222).
component("YDR242W",196).
component("U53_",82).
component("YPR062W",538).
component("YMR120C",434).
component("YLR028C",394).
component("YHR144C",311).
component("YBL033C",114).
component("YNL141W",451).
component("YLR245C",409).
component("YBR084W",127).
component("YJL126W",342).
component("U44_",75).
component("YDL100C",168).
component("U40_",73).
component("U39_",71).
component("YBR011C",120).
component("YBR111C",131).
component("YBR252W",143).
component("YER005W",220).
component("YBL099W",118).
component("YLR231C",408).
component("YLR134W",401).
component("YLR044C",396).
component("YGR087C",278).
component("YDR380W",203).
component("YDL080C",166).
component("U98_",104).
component("YMR250W",437).
component("YOR128C",490).
component("U93_",101).
component("YKL211C",380) :- not remove_orf("YKL211C",380).
component("YKR097W",390).
component("YNL169C",454).
component("YEL046C",217).
component("YNR033W",468).
component("YKL211C",381) :- not remove_orf("YKL211C",381).
component("YER090W",381) :- not remove_orf("YER090W",381).
component("YER090W",232) :- not remove_orf("YER090W",232).
component("YDR127W",190).
component("YPL281C",534).
component("YOR393W",511).
component("YMR323W",441).
component("YHR174W",312).
component("YGR254W",288).
component("YPL262W",529).
component("YGL026C",255) :- not remove_orf("YGL026C",255).
component("YLR304C",416).
component("YJL200C",350).
component("YNL316C",464).
component("YPL212C",524).
component("YNL292W",462).
component("YGL063W",258).
component("YFL001W",237).
component("YPR002W",535).
component("YJR016C",354).
component("YCR053W",160).
component("YDR127W",191).
component("YGL148W",262).
component("YIL168W",334).
component("YIL167W",333).
component("YCL064C",153).
component("YLR359W",421).
component("YAL012W",107).
component("YBR019C",122).
component("YDR007W",181) :- not remove_orf("YDR007W",181).
component("YOR095C",488).
component("YBR196C",139).
component("YGL001C",249).
component("YPL117C",517).
component("U14_",34).
component("YOL056W",477).
component("YKL152C",376).
component("YDL021W",161).
component("YPR060C",537).
component("YPL097W",515).
component("YGR185C",283).
component("YGR264C",289).
component("YGR171C",281).
component("YPL104W",516).
component("YLL018C",391).
component("YHR020W",299).
component("YER087W",231).
component("YNL247W",456).
component("YOR168W",493).
component("YOL097C",481).
component("YDR268W",199).
component("YCR024C",156).
component("YHR019C",298).
component("YOR335C",504).
component("YLR153C",403).
component("YAL054C",109).
component("YIL145C",330).
component("YJL101C",341).
component("YOL049W",475).
component("YER183C",236).
component("U90_",100).
component("YNR057C",469).
component("YGL234W",269).
component("YJR103W",363).
component("YBL039C",116).
component("YGR204W",285).
component("YBR084W",128).
component("YNL220W",455).
component("YDL141W",172).
component("YHR074W",307).
component("YGL062W",257).
component("YBR218C",140).
component("YPL231W",528).
component("YNR016C",467).
component("YKL182W",379).
component("YGR037C",275).
component("YPR138C",544).
component("YPL265W",530).
component("YPL036W",514).
component("YOR171C",494).
component("YOR011W",486).
component("YOL103W",482).
component("YOL020W",474) :- not remove_orf("YOL020W",474).
component("YNL270C",460).
component("YNL142W",452).
component("YLR260W",411).
component("YLR100C",400).
component("YKR053C",387).
component("YKR039W",386) :- not remove_orf("YKR039W",386).
component("YJR077C",361).
component("YJL134W",345).
component("YJL129C",343).
component("YIL134W",328).
component("YHL036W",296).
component("YGR121C",280).
component("YGR065C",277).
component("YGR055W",276).
component("YGL186C",264).
component("YGL077C",260).
component("YGL008C",250).
component("YFL055W",241).
component("YER060W-A",226).
component("YER060W",225).
component("YER056C",224).
component("YER053C",223).
component("YEL063C",219).
component("YEL017C-A",215).
component("YDR536W",214).
component("YDR508C",212).
component("YDR503C",211).
component("YDR497C",210).
component("YDR297W",200).
component("YDR046C",185) :- not remove_orf("YDR046C",185).
component("YCR032W",158).
component("YCR024C-A",157).
component("YCL025C",151).
component("YBR298C",147).
component("YBR069C",126) :- not remove_orf("YBR069C",126).
component("YBR068C",125) :- not remove_orf("YBR068C",125).
component("YBR021W",123).
component("U7_",98).
component("U75_",95).
component("U74_",94).
component("U73_",93).
component("U72_",92).
component("U70_",91).
component("U6_",90).
component("U69_",89).
component("U67_",88).
component("U5_",84).
component("U4_",80).
component("U41_",74).
component("U3_",72).
component("U228_",62).
component("U223_",61).
component("U220_",60).
component("U219_",59).
component("U207_",58).
component("U206_",57).
component("U198_",56).
component("U197_",55).
component("U196_",54).
component("U194_",53).
component("U191_",52).
component("U188_",51).
component("U185_",50).
component("U182_",49).
component("U181_",48).
component("U180_",47).
component("U178_",46).
component("U177_",45).
component("U174_",44).
component("U172_",43).
component("U166_",42).
component("U165_",41).
component("U160_",40).
component("U155_",39).
component("U154_",38).
component("U153_",37).
component("U152_",36).
component("U150_",35).
component("U144_",33).
component("U143_",32).
component("U136_",31).
component("U132_",30).
component("U131_",29).
component("U128_",28).
component("U114_",27).
component("U110_",26).
component("U10_",25).
component("U109_",24).
component("I01179",17).
component("I00631",16).
component("I00493",15).
component("I00463",14) :- not remove_orf("I00463",14).
component("I00279",13).
component("I00166",12).
component("I00119",11).
component("I00108",10) :- not remove_orf("I00108",10).
component("I00074",9).
component("I00008",8).
component("I00007",7).
component("I00006",6).
component("I00005",5).
component("I00004",4).
component("I00003",3).
component("I00002",2).
component("I00001",1).


catalyst(6390,461).
catalyst(6300,397).
catalyst(6280,251).
catalyst(7301,383).
catalyst(7302,383).
catalyst(7501,479).
catalyst(7502,479).
catalyst(7501,439).
catalyst(7502,439).
catalyst(7501,271).
catalyst(7502,271).
catalyst(7501,174).
catalyst(7502,174).
catalyst(7501,133).
catalyst(7502,133).
catalyst(10781,525).
catalyst(10782,525).
catalyst(10791,525).
catalyst(10792,525).
catalyst(10811,525).
catalyst(10812,525).
catalyst(10841,525).
catalyst(10842,525).
catalyst(10851,525).
catalyst(10852,525).
catalyst(4510,77).
catalyst(10391,134).
catalyst(10392,134).
catalyst(4850,135).
catalyst(4860,135).
catalyst(10261,248).
catalyst(10262,248).
catalyst(10271,248).
catalyst(10272,248).
catalyst(10291,248).
catalyst(10292,248).
catalyst(10311,248).
catalyst(10312,248).
catalyst(10331,248).
catalyst(10332,248).
catalyst(10341,248).
catalyst(10342,248).
catalyst(10381,248).
catalyst(10382,248).
catalyst(4141,323).
catalyst(4142,323).
catalyst(4831,76).
catalyst(4832,76).
catalyst(6040,427).
catalyst(6040,424).
catalyst(6040,317).
catalyst(6040,111).
catalyst(6040,110).
catalyst(3730,187).
catalyst(8031,484).
catalyst(8032,484).
catalyst(8041,372).
catalyst(8042,372).
catalyst(8031,165).
catalyst(8032,165).
catalyst(8170,444).
catalyst(8130,442).
catalyst(8130,405).
catalyst(4170,150).
catalyst(2340,420).
catalyst(4230,420).
catalyst(7360,177).
catalyst(10231,428).
catalyst(10232,428).
catalyst(3580,279).
catalyst(3580,197).
catalyst(3520,362).
catalyst(3470,355).
catalyst(1860,23).
catalyst(10011,364).
catalyst(10012,364).
catalyst(10011,297).
catalyst(10012,297).
catalyst(10641,337).
catalyst(10642,337).
catalyst(5140,321).
catalyst(10641,282).
catalyst(10642,282).
catalyst(5110,228).
catalyst(5120,228).
catalyst(5130,228).
catalyst(5140,228).
catalyst(5090,70).
catalyst(7571,175).
catalyst(7572,175).
catalyst(5010,119).
catalyst(7350,533).
catalyst(7350,532).
catalyst(7350,510).
catalyst(3540,509).
catalyst(3540,229).
catalyst(10771,263).
catalyst(10772,263).
catalyst(3450,83).
catalyst(4030,227).
catalyst(3290,502).
catalyst(3300,502).
catalyst(8210,235).
catalyst(10701,141).
catalyst(10702,141).
catalyst(10711,141).
catalyst(10712,141).
catalyst(8120,327).
catalyst(3640,81).
catalyst(3660,137).
catalyst(10201,252).
catalyst(10202,252).
catalyst(5911,382).
catalyst(5912,382).
catalyst(6990,384).
catalyst(7000,384).
catalyst(7010,384).
catalyst(6990,331).
catalyst(7000,331).
catalyst(7010,331).
catalyst(6990,268).
catalyst(7000,268).
catalyst(7010,268).
catalyst(10181,176).
catalyst(10182,176).
catalyst(2210,105).
catalyst(2200,20).
catalyst(2380,389).
catalyst(3250,221).
catalyst(3260,221).
catalyst(2490,500).
catalyst(2431,284).
catalyst(2432,284).
catalyst(3230,402).
catalyst(3320,87).
catalyst(3350,86).
catalyst(3880,305).
catalyst(10161,375).
catalyst(10162,375).
catalyst(10161,320).
catalyst(10162,320).
catalyst(10141,520).
catalyst(10142,520).
catalyst(10141,313).
catalyst(10142,313).
catalyst(10111,286).
catalyst(10112,286).
catalyst(4371,245).
catalyst(4372,245).
catalyst(10701,512).
catalyst(10702,512).
catalyst(10711,512).
catalyst(10712,512).
catalyst(10701,238).
catalyst(10702,238).
catalyst(10711,238).
catalyst(10712,238).
catalyst(5750,201).
catalyst(4330,545).
catalyst(4371,366).
catalyst(4372,366).
catalyst(10661,445).
catalyst(10662,445).
catalyst(10661,438).
catalyst(10662,438).
catalyst(10661,423).
catalyst(10662,423).
catalyst(10661,395).
catalyst(10662,395).
catalyst(10661,324).
catalyst(10662,324).
catalyst(10661,304).
catalyst(10662,304).
catalyst(10661,266).
catalyst(10662,266).
catalyst(10661,265).
catalyst(10662,265).
catalyst(10661,164).
catalyst(10662,164).
catalyst(10661,19).
catalyst(10662,19).
catalyst(10661,18).
catalyst(10662,18).
catalyst(1850,531).
catalyst(1900,388).
catalyst(9951,480).
catalyst(9952,480).
catalyst(4470,78).
catalyst(6860,360).
catalyst(6870,360).
catalyst(9981,163).
catalyst(9982,163).
catalyst(4400,404).
catalyst(4671,398).
catalyst(4672,398).
catalyst(4650,182).
catalyst(2360,138).
catalyst(6140,206).
catalyst(6071,433).
catalyst(6072,433).
catalyst(6081,433).
catalyst(6082,433).
catalyst(6081,393).
catalyst(6082,393).
catalyst(2370,112).
catalyst(5930,344).
catalyst(5281,370).
catalyst(5282,370).
catalyst(7911,541).
catalyst(7912,541).
catalyst(7911,132).
catalyst(7912,132).
catalyst(10551,149).
catalyst(10552,149).
catalyst(10561,149).
catalyst(10562,149).
catalyst(10581,149).
catalyst(10582,149).
catalyst(10591,149).
catalyst(10592,149).
catalyst(10541,447).
catalyst(10542,447).
catalyst(10701,447).
catalyst(10702,447).
catalyst(10711,447).
catalyst(10712,447).
catalyst(7290,332).
catalyst(4360,79).
catalyst(10451,526).
catalyst(10452,526).
catalyst(10491,526).
catalyst(10492,526).
catalyst(10501,526).
catalyst(10502,526).
catalyst(10511,526).
catalyst(10512,526).
catalyst(9771,527).
catalyst(9772,527).
catalyst(9781,527).
catalyst(9782,527).
catalyst(9811,527).
catalyst(9812,527).
catalyst(9831,527).
catalyst(9832,527).
catalyst(9881,527).
catalyst(9882,527).
catalyst(7271,513).
catalyst(7272,513).
catalyst(7281,513).
catalyst(7282,513).
catalyst(3120,413).
catalyst(9751,253).
catalyst(9752,253).
catalyst(6541,429).
catalyst(6542,429).
catalyst(4200,449).
catalyst(7530,178).
catalyst(7530,170).
catalyst(7590,410).
catalyst(7590,243).
catalyst(9691,443).
catalyst(9692,443).
catalyst(9691,322).
catalyst(9692,322).
catalyst(3110,440).
catalyst(3110,419).
catalyst(3110,274).
catalyst(2041,406).
catalyst(2042,406).
catalyst(2051,406).
catalyst(2052,406).
catalyst(5561,406).
catalyst(5562,406).
catalyst(5571,406).
catalyst(5572,406).
catalyst(5601,406).
catalyst(5602,406).
catalyst(2121,21).
catalyst(2122,21).
catalyst(3620,202) :- not remove_reaction(3620,202).
catalyst(2190,246).
catalyst(5791,407).
catalyst(5792,407).
catalyst(5801,407).
catalyst(5802,407).
catalyst(5650,425).
catalyst(5650,208).
catalyst(6440,349).
catalyst(3710,188).
catalyst(9671,306).
catalyst(9672,306).
catalyst(4430,415).
catalyst(4350,272).
catalyst(9621,365).
catalyst(9622,365).
catalyst(9641,365).
catalyst(9642,365).
catalyst(9651,365).
catalyst(9652,365).
catalyst(9661,365).
catalyst(9662,365).
catalyst(3760,183).
catalyst(3760,142).
catalyst(9681,501).
catalyst(9682,501).
catalyst(3650,309).
catalyst(3671,309).
catalyst(3672,309).
catalyst(3650,267).
catalyst(3571,392).
catalyst(3572,392).
catalyst(3571,373).
catalyst(3572,373).
catalyst(4020,485).
catalyst(5020,273).
catalyst(4771,399).
catalyst(4772,399).
catalyst(3360,85).
catalyst(4271,367).
catalyst(4272,367).
catalyst(4281,367).
catalyst(4282,367).
catalyst(4291,367).
catalyst(4292,367).
catalyst(4661,239).
catalyst(4662,239).
catalyst(2641,470).
catalyst(2642,470).
catalyst(3820,326).
catalyst(8360,270).
catalyst(8380,270).
catalyst(8360,247).
catalyst(8380,247).
catalyst(8320,435).
catalyst(8320,287).
catalyst(9551,473).
catalyst(9552,473).
catalyst(9551,242).
catalyst(9552,242).
catalyst(7870,159).
catalyst(7880,159).
catalyst(8380,152).
catalyst(2070,521).
catalyst(2070,357).
catalyst(2070,216).
catalyst(2260,103).
catalyst(2270,103).
catalyst(4380,369).
catalyst(2800,195).
catalyst(3010,295).
catalyst(2740,99).
catalyst(6520,436).
catalyst(9561,522).
catalyst(9562,522).
catalyst(9561,487).
catalyst(9562,487).
catalyst(9561,377).
catalyst(9562,377).
catalyst(9561,348).
catalyst(9562,348).
catalyst(9561,319).
catalyst(9562,319).
catalyst(9561,315).
catalyst(9562,315).
catalyst(9561,308).
catalyst(9562,308).
catalyst(9561,254).
catalyst(9562,254).
catalyst(4590,300).
catalyst(8220,507).
catalyst(8220,108).
catalyst(5810,466).
catalyst(5820,466).
catalyst(5830,466).
catalyst(3720,189).
catalyst(6820,192).
catalyst(8261,154).
catalyst(8262,154).
catalyst(2891,96).
catalyst(2892,96).
catalyst(5461,234).
catalyst(5462,234).
catalyst(5471,234).
catalyst(5472,234).
catalyst(5511,194).
catalyst(5512,194).
catalyst(5381,371).
catalyst(5382,371).
catalyst(5391,371).
catalyst(5392,371).
catalyst(5411,371).
catalyst(5412,371).
catalyst(5441,371).
catalyst(5442,371).
catalyst(5451,371).
catalyst(5452,371).
catalyst(2940,476).
catalyst(6171,209).
catalyst(6172,209).
catalyst(6181,209).
catalyst(6182,209).
catalyst(5761,358).
catalyst(5762,358).
catalyst(6241,478).
catalyst(6242,478).
catalyst(6241,378).
catalyst(6242,378).
catalyst(6241,294).
catalyst(6242,294).
catalyst(6241,233).
catalyst(6242,233).
catalyst(6241,117).
catalyst(6242,117).
catalyst(2970,491).
catalyst(2980,491).
catalyst(2560,458).
catalyst(9531,417).
catalyst(9532,417).
catalyst(7761,121).
catalyst(7762,121).
catalyst(2180,418).
catalyst(2290,102).
catalyst(6931,124).
catalyst(6932,124).
catalyst(9421,261).
catalyst(9422,261).
catalyst(5960,213).
catalyst(9491,548).
catalyst(9492,548).
catalyst(9491,547).
catalyst(9492,547).
catalyst(9491,542).
catalyst(9492,542).
catalyst(9491,536).
catalyst(9492,536).
catalyst(9491,506).
catalyst(9492,506).
catalyst(9491,505).
catalyst(9492,505).
catalyst(9491,499).
catalyst(9492,499).
catalyst(9491,498).
catalyst(9492,498).
catalyst(9491,496).
catalyst(9492,496).
catalyst(9491,492).
catalyst(9492,492).
catalyst(9491,489).
catalyst(9492,489).
catalyst(9491,471).
catalyst(9492,471).
catalyst(9491,465).
catalyst(9492,465).
catalyst(9491,457).
catalyst(9492,457).
catalyst(9491,453).
catalyst(9492,453).
catalyst(9491,450).
catalyst(9492,450).
catalyst(9491,374).
catalyst(9492,374).
catalyst(9491,359).
catalyst(9492,359).
catalyst(9491,347).
catalyst(9492,347).
catalyst(9491,346).
catalyst(9492,346).
catalyst(9491,318).
catalyst(9492,318).
catalyst(9491,310).
catalyst(9492,310).
catalyst(9491,259).
catalyst(9492,259).
catalyst(9491,240).
catalyst(9492,240).
catalyst(9491,205).
catalyst(9492,205).
catalyst(9491,193).
catalyst(9492,193).
catalyst(9491,184).
catalyst(9492,184).
catalyst(9491,173).
catalyst(9492,173).
catalyst(9491,171).
catalyst(9492,171).
catalyst(9491,136).
catalyst(9492,136).
catalyst(9431,546).
catalyst(9432,546).
catalyst(9441,546).
catalyst(9442,546).
catalyst(9451,546).
catalyst(9452,546).
catalyst(9431,519).
catalyst(9432,519).
catalyst(9441,519).
catalyst(9442,519).
catalyst(9451,519).
catalyst(9452,519).
catalyst(9431,503).
catalyst(9432,503).
catalyst(9441,503).
catalyst(9442,503).
catalyst(9451,503).
catalyst(9452,503).
catalyst(9431,483).
catalyst(9432,483).
catalyst(9441,483).
catalyst(9442,483).
catalyst(9451,483).
catalyst(9452,483).
catalyst(9431,463).
catalyst(9432,463).
catalyst(9441,463).
catalyst(9442,463).
catalyst(9451,463).
catalyst(9452,463).
catalyst(9431,459).
catalyst(9432,459).
catalyst(9441,459).
catalyst(9442,459).
catalyst(9451,459).
catalyst(9452,459).
catalyst(9431,448).
catalyst(9432,448).
catalyst(9441,448).
catalyst(9442,448).
catalyst(9451,448).
catalyst(9452,448).
catalyst(9431,356).
catalyst(9432,356).
catalyst(9441,356).
catalyst(9442,356).
catalyst(9451,356).
catalyst(9452,356).
catalyst(9431,353).
catalyst(9432,353).
catalyst(9441,353).
catalyst(9442,353).
catalyst(9451,353).
catalyst(9452,353).
catalyst(9431,340).
catalyst(9432,340).
catalyst(9441,340).
catalyst(9442,340).
catalyst(9451,340).
catalyst(9452,340).
catalyst(9431,329).
catalyst(9432,329).
catalyst(9441,329).
catalyst(9442,329).
catalyst(9451,329).
catalyst(9452,329).
catalyst(9431,218).
catalyst(9432,218).
catalyst(9441,218).
catalyst(9442,218).
catalyst(9451,218).
catalyst(9452,218).
catalyst(9431,207).
catalyst(9432,207).
catalyst(9441,207).
catalyst(9442,207).
catalyst(9451,207).
catalyst(9452,207).
catalyst(9431,186).
catalyst(9432,186).
catalyst(9441,186).
catalyst(9442,186).
catalyst(9451,186).
catalyst(9452,186).
catalyst(9431,169).
catalyst(9432,169).
catalyst(9441,169).
catalyst(9442,169).
catalyst(9451,169).
catalyst(9452,169).
catalyst(9431,155).
catalyst(9432,155).
catalyst(9441,155).
catalyst(9442,155).
catalyst(9451,155).
catalyst(9452,155).
catalyst(9431,145).
catalyst(9432,145).
catalyst(9441,145).
catalyst(9442,145).
catalyst(9451,145).
catalyst(9452,145).
catalyst(9431,115).
catalyst(9432,115).
catalyst(9441,115).
catalyst(9442,115).
catalyst(9451,115).
catalyst(9452,115).
catalyst(6770,543).
catalyst(2240,518).
catalyst(2621,291).
catalyst(2622,291).
catalyst(9281,314).
catalyst(9282,314).
catalyst(9261,167).
catalyst(9262,167).
catalyst(9291,472).
catalyst(9292,472).
catalyst(9321,472).
catalyst(9322,472).
catalyst(9331,472).
catalyst(9332,472).
catalyst(9291,431).
catalyst(9292,431).
catalyst(9321,431).
catalyst(9322,431).
catalyst(9331,431).
catalyst(9332,431).
catalyst(9291,430).
catalyst(9292,430).
catalyst(9321,430).
catalyst(9322,430).
catalyst(9331,430).
catalyst(9332,430).
catalyst(2060,22).
catalyst(7540,113).
catalyst(7561,338).
catalyst(7562,338).
catalyst(2880,97).
catalyst(7990,422).
catalyst(9201,539).
catalyst(9202,539).
catalyst(9221,539).
catalyst(9222,539).
catalyst(9201,316).
catalyst(9202,316).
catalyst(9221,316).
catalyst(9222,316).
catalyst(9201,162).
catalyst(9202,162).
catalyst(9221,162).
catalyst(9222,162).
catalyst(9201,130).
catalyst(9202,130).
catalyst(9221,130).
catalyst(9222,130).
catalyst(9201,129).
catalyst(9202,129).
catalyst(9221,129).
catalyst(9222,129).
catalyst(6780,303).
catalyst(6710,106).
catalyst(9201,180).
catalyst(9202,180).
catalyst(9171,540).
catalyst(9172,540).
catalyst(9171,497).
catalyst(9172,497).
catalyst(9171,446).
catalyst(9172,446).
catalyst(9171,432).
catalyst(9172,432).
catalyst(9171,336).
catalyst(9172,336).
catalyst(9171,325).
catalyst(9172,325).
catalyst(9171,244).
catalyst(9172,244).
catalyst(9171,230).
catalyst(9172,230).
catalyst(9171,179).
catalyst(9172,179).
catalyst(9171,144).
catalyst(9172,144).
catalyst(5150,69).
catalyst(5180,68).
catalyst(5190,67).
catalyst(5200,66).
catalyst(5230,65).
catalyst(5240,64).
catalyst(5250,63).
catalyst(9151,302).
catalyst(9152,302).
catalyst(9151,301).
catalyst(9152,301).
catalyst(5980,508).
catalyst(9141,385).
catalyst(9142,385).
catalyst(9101,523).
catalyst(9102,523).
catalyst(9041,256).
catalyst(9042,256).
catalyst(9081,412).
catalyst(9082,412).
catalyst(9061,368).
catalyst(9062,368).
catalyst(7660,352).
catalyst(7660,351).
catalyst(7660,335).
catalyst(7660,293).
catalyst(7660,292).
catalyst(7660,148).
catalyst(3100,495).
catalyst(3100,414).
catalyst(3100,290).
catalyst(3100,198).
catalyst(5540,204).
catalyst(5040,426).
catalyst(5040,339).
catalyst(5040,146).
catalyst(4490,222).
catalyst(3380,196).
catalyst(3510,82).
catalyst(5860,538).
catalyst(8981,434).
catalyst(8982,434).
catalyst(6071,394).
catalyst(6072,394).
catalyst(5260,311).
catalyst(2870,114).
catalyst(5640,451).
catalyst(5780,409).
catalyst(2401,127).
catalyst(2402,127).
catalyst(3190,342).
catalyst(4870,75).
catalyst(2580,168).
catalyst(5050,73).
catalyst(5060,71).
catalyst(7460,120).
catalyst(8821,131).
catalyst(8822,131).
catalyst(5730,143).
catalyst(8881,220).
catalyst(8882,220).
catalyst(8931,220).
catalyst(8932,220).
catalyst(8971,220).
catalyst(8972,220).
catalyst(7380,118).
catalyst(3500,408).
catalyst(7550,401).
catalyst(7550,396).
catalyst(7550,278).
catalyst(8791,203).
catalyst(8792,203).
catalyst(8811,203).
catalyst(8812,203).
catalyst(8791,166).
catalyst(8792,166).
catalyst(8811,166).
catalyst(8812,166).
catalyst(2250,104).
catalyst(5030,437).
catalyst(6111,490).
catalyst(6112,490).
catalyst(2300,101).
catalyst(3600,380) :- not remove_reaction(3600,380).
catalyst(8000,390).
catalyst(6890,454).
catalyst(4560,217).
catalyst(2550,468).
catalyst(1890,381) :- not remove_reaction(1890,381).
catalyst(3630,381) :- not remove_reaction(3630,381).
catalyst(1890,232) :- not remove_reaction(1890,232).
catalyst(3630,232) :- not remove_reaction(3630,232).
catalyst(3740,190).
catalyst(8231,534).
catalyst(8232,534).
catalyst(8231,511).
catalyst(8232,511).
catalyst(8231,441).
catalyst(8232,441).
catalyst(8231,312).
catalyst(8232,312).
catalyst(8231,288).
catalyst(8232,288).
catalyst(8051,529).
catalyst(8052,529).
catalyst(3590,255) :- not remove_reaction(3590,255).
catalyst(10910,255) :- not remove_reaction(10910,255).
catalyst(8181,416).
catalyst(8182,416).
catalyst(8181,350).
catalyst(8182,350).
catalyst(3680,464).
catalyst(5661,524).
catalyst(5662,524).
catalyst(5661,462).
catalyst(5662,462).
catalyst(5661,258).
catalyst(5662,258).
catalyst(5661,237).
catalyst(5662,237).
catalyst(8761,535).
catalyst(8762,535).
catalyst(4210,354).
catalyst(2680,160).
catalyst(3750,191).
catalyst(3700,262).
catalyst(8751,334).
catalyst(8752,334).
catalyst(4520,333).
catalyst(4520,153).
catalyst(6051,421).
catalyst(6052,421).
catalyst(4460,107).
catalyst(7751,122).
catalyst(7752,122).
catalyst(3610,181) :- not remove_reaction(3610,181).
catalyst(7921,488).
catalyst(7922,488).
catalyst(8341,139).
catalyst(8342,139).
catalyst(6370,249).
catalyst(6461,517).
catalyst(6462,517).
catalyst(6250,34).
catalyst(8241,477).
catalyst(8242,477).
catalyst(8241,376).
catalyst(8242,376).
catalyst(8241,161).
catalyst(8242,161).
catalyst(3690,537).
catalyst(8681,515).
catalyst(8682,515).
catalyst(8681,283).
catalyst(8682,283).
catalyst(8601,289).
catalyst(8602,289).
catalyst(8601,281).
catalyst(8602,281).
catalyst(8571,516).
catalyst(8572,516).
catalyst(8571,391).
catalyst(8572,391).
catalyst(8551,299).
catalyst(8552,299).
catalyst(8551,231).
catalyst(8552,231).
catalyst(8541,456).
catalyst(8542,456).
catalyst(8531,493).
catalyst(8532,493).
catalyst(8671,481).
catalyst(8672,481).
catalyst(3390,199).
catalyst(4740,156).
catalyst(4730,298).
catalyst(8631,504).
catalyst(8632,504).
catalyst(7580,403).
catalyst(7580,109).
catalyst(2330,330).
catalyst(3160,341).
catalyst(3150,475).
catalyst(8491,236).
catalyst(8492,236).
catalyst(2480,100).
catalyst(2631,469).
catalyst(2632,469).
catalyst(6151,269).
catalyst(6152,269).
catalyst(5680,363).
catalyst(5680,116).
catalyst(2410,285).
catalyst(2420,128).
catalyst(6060,455).
catalyst(8481,172).
catalyst(8482,172).
catalyst(2170,307).
catalyst(7980,257).
catalyst(7980,140).
catalyst(7070,528).
catalyst(7110,528).
catalyst(7070,467).
catalyst(7110,467).
catalyst(7070,379).
catalyst(7110,379).
catalyst(7070,275).
catalyst(7110,275).
catalyst(371,544).
catalyst(372,544).
catalyst(781,530).
catalyst(782,530).
catalyst(881,530).
catalyst(882,530).
catalyst(921,530).
catalyst(922,530).
catalyst(1191,530).
catalyst(1192,530).
catalyst(220,514).
catalyst(6580,494).
catalyst(21,486).
catalyst(22,486).
catalyst(1160,482).
catalyst(801,474) :- not remove_reaction(801,474).
catalyst(802,474) :- not remove_reaction(802,474).
catalyst(811,474) :- not remove_reaction(811,474).
catalyst(812,474) :- not remove_reaction(812,474).
catalyst(831,474) :- not remove_reaction(831,474).
catalyst(832,474) :- not remove_reaction(832,474).
catalyst(901,474) :- not remove_reaction(901,474).
catalyst(902,474) :- not remove_reaction(902,474).
catalyst(931,460).
catalyst(932,460).
catalyst(371,452).
catalyst(372,452).
catalyst(6580,411).
catalyst(6330,400).
catalyst(6560,387).
catalyst(771,386) :- not remove_reaction(771,386).
catalyst(772,386) :- not remove_reaction(772,386).
catalyst(781,386) :- not remove_reaction(781,386).
catalyst(782,386) :- not remove_reaction(782,386).
catalyst(801,386) :- not remove_reaction(801,386).
catalyst(802,386) :- not remove_reaction(802,386).
catalyst(811,386) :- not remove_reaction(811,386).
catalyst(812,386) :- not remove_reaction(812,386).
catalyst(831,386) :- not remove_reaction(831,386).
catalyst(832,386) :- not remove_reaction(832,386).
catalyst(841,386) :- not remove_reaction(841,386).
catalyst(842,386) :- not remove_reaction(842,386).
catalyst(851,386) :- not remove_reaction(851,386).
catalyst(852,386) :- not remove_reaction(852,386).
catalyst(881,386) :- not remove_reaction(881,386).
catalyst(882,386) :- not remove_reaction(882,386).
catalyst(901,386) :- not remove_reaction(901,386).
catalyst(902,386) :- not remove_reaction(902,386).
catalyst(921,386) :- not remove_reaction(921,386).
catalyst(922,386) :- not remove_reaction(922,386).
catalyst(931,386) :- not remove_reaction(931,386).
catalyst(932,386) :- not remove_reaction(932,386).
catalyst(1191,386) :- not remove_reaction(1191,386).
catalyst(1192,386) :- not remove_reaction(1192,386).
catalyst(1581,361).
catalyst(1582,361).
catalyst(6560,345).
catalyst(361,343).
catalyst(362,343).
catalyst(1390,328).
catalyst(841,296).
catalyst(842,296).
catalyst(371,280).
catalyst(372,280).
catalyst(111,277).
catalyst(112,277).
catalyst(841,276).
catalyst(842,276).
catalyst(581,264).
catalyst(582,264).
catalyst(710,260).
catalyst(220,250).
catalyst(781,241).
catalyst(782,241).
catalyst(1191,241).
catalyst(1192,241).
catalyst(581,226).
catalyst(582,226).
catalyst(581,225).
catalyst(582,225).
catalyst(581,224).
catalyst(582,224).
catalyst(1571,223).
catalyst(1572,223).
catalyst(931,219).
catalyst(932,219).
catalyst(220,215).
catalyst(1191,214).
catalyst(1192,214).
catalyst(771,212).
catalyst(772,212).
catalyst(781,212).
catalyst(782,212).
catalyst(841,212).
catalyst(842,212).
catalyst(851,212).
catalyst(852,212).
catalyst(881,212).
catalyst(882,212).
catalyst(901,212).
catalyst(902,212).
catalyst(921,212).
catalyst(922,212).
catalyst(6680,211).
catalyst(1160,210).
catalyst(6650,200).
catalyst(801,185) :- not remove_reaction(801,185).
catalyst(802,185) :- not remove_reaction(802,185).
catalyst(811,185) :- not remove_reaction(811,185).
catalyst(812,185) :- not remove_reaction(812,185).
catalyst(831,185) :- not remove_reaction(831,185).
catalyst(832,185) :- not remove_reaction(832,185).
catalyst(841,185) :- not remove_reaction(841,185).
catalyst(842,185) :- not remove_reaction(842,185).
catalyst(851,185) :- not remove_reaction(851,185).
catalyst(852,185) :- not remove_reaction(852,185).
catalyst(901,185) :- not remove_reaction(901,185).
catalyst(902,185) :- not remove_reaction(902,185).
catalyst(431,158).
catalyst(432,158).
catalyst(220,157).
catalyst(771,151).
catalyst(772,151).
catalyst(781,151).
catalyst(782,151).
catalyst(801,151).
catalyst(802,151).
catalyst(831,151).
catalyst(832,151).
catalyst(841,151).
catalyst(842,151).
catalyst(851,151).
catalyst(852,151).
catalyst(881,151).
catalyst(882,151).
catalyst(921,151).
catalyst(922,151).
catalyst(1191,151).
catalyst(1192,151).
catalyst(1121,147).
catalyst(1122,147).
catalyst(771,126) :- not remove_reaction(771,126).
catalyst(772,126) :- not remove_reaction(772,126).
catalyst(801,126) :- not remove_reaction(801,126).
catalyst(802,126) :- not remove_reaction(802,126).
catalyst(811,126) :- not remove_reaction(811,126).
catalyst(812,126) :- not remove_reaction(812,126).
catalyst(851,126) :- not remove_reaction(851,126).
catalyst(852,126) :- not remove_reaction(852,126).
catalyst(901,126) :- not remove_reaction(901,126).
catalyst(902,126) :- not remove_reaction(902,126).
catalyst(801,125) :- not remove_reaction(801,125).
catalyst(802,125) :- not remove_reaction(802,125).
catalyst(811,125) :- not remove_reaction(811,125).
catalyst(812,125) :- not remove_reaction(812,125).
catalyst(831,125) :- not remove_reaction(831,125).
catalyst(832,125) :- not remove_reaction(832,125).
catalyst(841,125) :- not remove_reaction(841,125).
catalyst(842,125) :- not remove_reaction(842,125).
catalyst(851,125) :- not remove_reaction(851,125).
catalyst(852,125) :- not remove_reaction(852,125).
catalyst(901,125) :- not remove_reaction(901,125).
catalyst(902,125) :- not remove_reaction(902,125).
catalyst(620,123).
catalyst(6960,98).
catalyst(2920,95).
catalyst(2920,94).
catalyst(2920,93).
catalyst(2920,92).
catalyst(2960,91).
catalyst(6970,90).
catalyst(2990,89).
catalyst(3271,88).
catalyst(3272,88).
catalyst(6970,84).
catalyst(6980,80).
catalyst(4940,74).
catalyst(6980,72).
catalyst(41,62).
catalyst(42,62).
catalyst(91,61).
catalyst(92,61).
catalyst(131,60).
catalyst(132,60).
catalyst(141,59).
catalyst(142,59).
catalyst(321,58).
catalyst(322,58).
catalyst(331,57).
catalyst(332,57).
catalyst(480,56).
catalyst(490,55).
catalyst(500,54).
catalyst(520,53).
catalyst(560,52).
catalyst(480,51).
catalyst(560,50).
catalyst(480,49).
catalyst(490,48).
catalyst(500,47).
catalyst(570,46).
catalyst(520,45).
catalyst(560,44).
catalyst(660,43).
catalyst(980,42).
catalyst(990,41).
catalyst(1060,40).
catalyst(1111,39).
catalyst(1112,39).
catalyst(1130,38).
catalyst(1150,37).
catalyst(1220,36).
catalyst(1261,35).
catalyst(1262,35).
catalyst(1321,33).
catalyst(1322,33).
catalyst(1331,32).
catalyst(1332,32).
catalyst(1411,31).
catalyst(1412,31).
catalyst(1471,30).
catalyst(1472,30).
catalyst(1481,29).
catalyst(1482,29).
catalyst(1611,28).
catalyst(1612,28).
catalyst(1751,27).
catalyst(1752,27).
catalyst(1791,26).
catalyst(1792,26).
catalyst(6640,25).
catalyst(1801,24).
catalyst(1802,24).
catalyst(30050,17).
catalyst(30070,16).
catalyst(30040,15).
catalyst(10920,14) :- not remove_reaction(10920,14).
catalyst(30060,13).
catalyst(30030,12).
catalyst(30160,11).
catalyst(30020,10) :- not remove_reaction(30020,10).
catalyst(30010,9).
catalyst(30150,8).
catalyst(30140,7).
catalyst(30130,6).
catalyst(30120,5).
catalyst(30110,4).
catalyst(30100,3).
catalyst(30090,2).
catalyst(30080,1).

unknown_enzyme(unknown).

modifiable_enzyme(202).
modifiable_enzyme(380).
modifiable_enzyme(381).
modifiable_enzyme(232).
modifiable_enzyme(255).
modifiable_enzyme(181).
modifiable_enzyme(474).
modifiable_enzyme(386).
modifiable_enzyme(185).
modifiable_enzyme(126).
modifiable_enzyme(125).
modifiable_enzyme(14).
modifiable_enzyme(10).

certain_enzyme(461).
certain_enzyme(397).
certain_enzyme(251).
certain_enzyme(383).
certain_enzyme(479).
certain_enzyme(439).
certain_enzyme(271).
certain_enzyme(174).
certain_enzyme(133).
certain_enzyme(525).
certain_enzyme(77).
certain_enzyme(134).
certain_enzyme(135).
certain_enzyme(248).
certain_enzyme(323).
certain_enzyme(76).
certain_enzyme(427).
certain_enzyme(424).
certain_enzyme(317).
certain_enzyme(111).
certain_enzyme(110).
certain_enzyme(187).
certain_enzyme(484).
certain_enzyme(372).
certain_enzyme(165).
certain_enzyme(444).
certain_enzyme(442).
certain_enzyme(405).
certain_enzyme(150).
certain_enzyme(420).
certain_enzyme(177).
certain_enzyme(428).
certain_enzyme(279).
certain_enzyme(197).
certain_enzyme(362).
certain_enzyme(355).
certain_enzyme(23).
certain_enzyme(364).
certain_enzyme(297).
certain_enzyme(337).
certain_enzyme(321).
certain_enzyme(282).
certain_enzyme(228).
certain_enzyme(70).
certain_enzyme(175).
certain_enzyme(119).
certain_enzyme(533).
certain_enzyme(532).
certain_enzyme(510).
certain_enzyme(509).
certain_enzyme(229).
certain_enzyme(263).
certain_enzyme(83).
certain_enzyme(227).
certain_enzyme(502).
certain_enzyme(235).
certain_enzyme(141).
certain_enzyme(327).
certain_enzyme(81).
certain_enzyme(137).
certain_enzyme(252).
certain_enzyme(382).
certain_enzyme(384).
certain_enzyme(331).
certain_enzyme(268).
certain_enzyme(176).
certain_enzyme(105).
certain_enzyme(20).
certain_enzyme(389).
certain_enzyme(221).
certain_enzyme(500).
certain_enzyme(284).
certain_enzyme(402).
certain_enzyme(87).
certain_enzyme(86).
certain_enzyme(305).
certain_enzyme(375).
certain_enzyme(320).
certain_enzyme(520).
certain_enzyme(313).
certain_enzyme(286).
certain_enzyme(245).
certain_enzyme(512).
certain_enzyme(238).
certain_enzyme(201).
certain_enzyme(545).
certain_enzyme(366).
certain_enzyme(445).
certain_enzyme(438).
certain_enzyme(423).
certain_enzyme(395).
certain_enzyme(324).
certain_enzyme(304).
certain_enzyme(266).
certain_enzyme(265).
certain_enzyme(164).
certain_enzyme(19).
certain_enzyme(18).
certain_enzyme(531).
certain_enzyme(388).
certain_enzyme(480).
certain_enzyme(78).
certain_enzyme(360).
certain_enzyme(163).
certain_enzyme(404).
certain_enzyme(398).
certain_enzyme(182).
certain_enzyme(138).
certain_enzyme(206).
certain_enzyme(433).
certain_enzyme(393).
certain_enzyme(112).
certain_enzyme(344).
certain_enzyme(370).
certain_enzyme(541).
certain_enzyme(132).
certain_enzyme(149).
certain_enzyme(447).
certain_enzyme(332).
certain_enzyme(79).
certain_enzyme(526).
certain_enzyme(527).
certain_enzyme(513).
certain_enzyme(413).
certain_enzyme(253).
certain_enzyme(429).
certain_enzyme(449).
certain_enzyme(178).
certain_enzyme(170).
certain_enzyme(410).
certain_enzyme(243).
certain_enzyme(443).
certain_enzyme(322).
certain_enzyme(440).
certain_enzyme(419).
certain_enzyme(274).
certain_enzyme(406).
certain_enzyme(21).
certain_enzyme(246).
certain_enzyme(407).
certain_enzyme(425).
certain_enzyme(208).
certain_enzyme(349).
certain_enzyme(188).
certain_enzyme(306).
certain_enzyme(415).
certain_enzyme(272).
certain_enzyme(365).
certain_enzyme(183).
certain_enzyme(142).
certain_enzyme(501).
certain_enzyme(309).
certain_enzyme(267).
certain_enzyme(392).
certain_enzyme(373).
certain_enzyme(485).
certain_enzyme(273).
certain_enzyme(399).
certain_enzyme(85).
certain_enzyme(367).
certain_enzyme(239).
certain_enzyme(470).
certain_enzyme(326).
certain_enzyme(270).
certain_enzyme(247).
certain_enzyme(435).
certain_enzyme(287).
certain_enzyme(473).
certain_enzyme(242).
certain_enzyme(159).
certain_enzyme(152).
certain_enzyme(521).
certain_enzyme(357).
certain_enzyme(216).
certain_enzyme(103).
certain_enzyme(369).
certain_enzyme(195).
certain_enzyme(295).
certain_enzyme(99).
certain_enzyme(436).
certain_enzyme(522).
certain_enzyme(487).
certain_enzyme(377).
certain_enzyme(348).
certain_enzyme(319).
certain_enzyme(315).
certain_enzyme(308).
certain_enzyme(254).
certain_enzyme(300).
certain_enzyme(507).
certain_enzyme(108).
certain_enzyme(466).
certain_enzyme(189).
certain_enzyme(192).
certain_enzyme(154).
certain_enzyme(96).
certain_enzyme(234).
certain_enzyme(194).
certain_enzyme(371).
certain_enzyme(476).
certain_enzyme(209).
certain_enzyme(358).
certain_enzyme(478).
certain_enzyme(378).
certain_enzyme(294).
certain_enzyme(233).
certain_enzyme(117).
certain_enzyme(491).
certain_enzyme(458).
certain_enzyme(417).
certain_enzyme(121).
certain_enzyme(418).
certain_enzyme(102).
certain_enzyme(124).
certain_enzyme(261).
certain_enzyme(213).
certain_enzyme(548).
certain_enzyme(547).
certain_enzyme(542).
certain_enzyme(536).
certain_enzyme(506).
certain_enzyme(505).
certain_enzyme(499).
certain_enzyme(498).
certain_enzyme(496).
certain_enzyme(492).
certain_enzyme(489).
certain_enzyme(471).
certain_enzyme(465).
certain_enzyme(457).
certain_enzyme(453).
certain_enzyme(450).
certain_enzyme(374).
certain_enzyme(359).
certain_enzyme(347).
certain_enzyme(346).
certain_enzyme(318).
certain_enzyme(310).
certain_enzyme(259).
certain_enzyme(240).
certain_enzyme(205).
certain_enzyme(193).
certain_enzyme(184).
certain_enzyme(173).
certain_enzyme(171).
certain_enzyme(136).
certain_enzyme(546).
certain_enzyme(519).
certain_enzyme(503).
certain_enzyme(483).
certain_enzyme(463).
certain_enzyme(459).
certain_enzyme(448).
certain_enzyme(356).
certain_enzyme(353).
certain_enzyme(340).
certain_enzyme(329).
certain_enzyme(218).
certain_enzyme(207).
certain_enzyme(186).
certain_enzyme(169).
certain_enzyme(155).
certain_enzyme(145).
certain_enzyme(115).
certain_enzyme(543).
certain_enzyme(518).
certain_enzyme(291).
certain_enzyme(314).
certain_enzyme(167).
certain_enzyme(472).
certain_enzyme(431).
certain_enzyme(430).
certain_enzyme(22).
certain_enzyme(113).
certain_enzyme(338).
certain_enzyme(97).
certain_enzyme(422).
certain_enzyme(539).
certain_enzyme(316).
certain_enzyme(162).
certain_enzyme(130).
certain_enzyme(129).
certain_enzyme(303).
certain_enzyme(106).
certain_enzyme(180).
certain_enzyme(540).
certain_enzyme(497).
certain_enzyme(446).
certain_enzyme(432).
certain_enzyme(336).
certain_enzyme(325).
certain_enzyme(244).
certain_enzyme(230).
certain_enzyme(179).
certain_enzyme(144).
certain_enzyme(69).
certain_enzyme(68).
certain_enzyme(67).
certain_enzyme(66).
certain_enzyme(65).
certain_enzyme(64).
certain_enzyme(63).
certain_enzyme(302).
certain_enzyme(301).
certain_enzyme(508).
certain_enzyme(385).
certain_enzyme(523).
certain_enzyme(256).
certain_enzyme(412).
certain_enzyme(368).
certain_enzyme(352).
certain_enzyme(351).
certain_enzyme(335).
certain_enzyme(293).
certain_enzyme(292).
certain_enzyme(148).
certain_enzyme(495).
certain_enzyme(414).
certain_enzyme(290).
certain_enzyme(198).
certain_enzyme(204).
certain_enzyme(426).
certain_enzyme(339).
certain_enzyme(146).
certain_enzyme(222).
certain_enzyme(196).
certain_enzyme(82).
certain_enzyme(538).
certain_enzyme(434).
certain_enzyme(394).
certain_enzyme(311).
certain_enzyme(114).
certain_enzyme(451).
certain_enzyme(409).
certain_enzyme(127).
certain_enzyme(342).
certain_enzyme(75).
certain_enzyme(168).
certain_enzyme(73).
certain_enzyme(71).
certain_enzyme(120).
certain_enzyme(131).
certain_enzyme(143).
certain_enzyme(220).
certain_enzyme(118).
certain_enzyme(408).
certain_enzyme(401).
certain_enzyme(396).
certain_enzyme(278).
certain_enzyme(203).
certain_enzyme(166).
certain_enzyme(104).
certain_enzyme(437).
certain_enzyme(490).
certain_enzyme(101).
certain_enzyme(390).
certain_enzyme(454).
certain_enzyme(217).
certain_enzyme(468).
certain_enzyme(190).
certain_enzyme(534).
certain_enzyme(511).
certain_enzyme(441).
certain_enzyme(312).
certain_enzyme(288).
certain_enzyme(529).
certain_enzyme(416).
certain_enzyme(350).
certain_enzyme(464).
certain_enzyme(524).
certain_enzyme(462).
certain_enzyme(258).
certain_enzyme(237).
certain_enzyme(535).
certain_enzyme(354).
certain_enzyme(160).
certain_enzyme(191).
certain_enzyme(262).
certain_enzyme(334).
certain_enzyme(333).
certain_enzyme(153).
certain_enzyme(421).
certain_enzyme(107).
certain_enzyme(122).
certain_enzyme(488).
certain_enzyme(139).
certain_enzyme(249).
certain_enzyme(517).
certain_enzyme(34).
certain_enzyme(477).
certain_enzyme(376).
certain_enzyme(161).
certain_enzyme(537).
certain_enzyme(515).
certain_enzyme(283).
certain_enzyme(289).
certain_enzyme(281).
certain_enzyme(516).
certain_enzyme(391).
certain_enzyme(299).
certain_enzyme(231).
certain_enzyme(456).
certain_enzyme(493).
certain_enzyme(481).
certain_enzyme(199).
certain_enzyme(156).
certain_enzyme(298).
certain_enzyme(504).
certain_enzyme(403).
certain_enzyme(109).
certain_enzyme(330).
certain_enzyme(341).
certain_enzyme(475).
certain_enzyme(236).
certain_enzyme(100).
certain_enzyme(469).
certain_enzyme(269).
certain_enzyme(363).
certain_enzyme(116).
certain_enzyme(285).
certain_enzyme(128).
certain_enzyme(455).
certain_enzyme(172).
certain_enzyme(307).
certain_enzyme(257).
certain_enzyme(140).
certain_enzyme(528).
certain_enzyme(467).
certain_enzyme(379).
certain_enzyme(275).
certain_enzyme(544).
certain_enzyme(530).
certain_enzyme(514).
certain_enzyme(494).
certain_enzyme(486).
certain_enzyme(482).
certain_enzyme(460).
certain_enzyme(452).
certain_enzyme(411).
certain_enzyme(400).
certain_enzyme(387).
certain_enzyme(361).
certain_enzyme(345).
certain_enzyme(343).
certain_enzyme(328).
certain_enzyme(296).
certain_enzyme(280).
certain_enzyme(277).
certain_enzyme(276).
certain_enzyme(264).
certain_enzyme(260).
certain_enzyme(250).
certain_enzyme(241).
certain_enzyme(226).
certain_enzyme(225).
certain_enzyme(224).
certain_enzyme(223).
certain_enzyme(219).
certain_enzyme(215).
certain_enzyme(214).
certain_enzyme(212).
certain_enzyme(211).
certain_enzyme(210).
certain_enzyme(200).
certain_enzyme(158).
certain_enzyme(157).
certain_enzyme(151).
certain_enzyme(147).
certain_enzyme(123).
certain_enzyme(98).
certain_enzyme(95).
certain_enzyme(94).
certain_enzyme(93).
certain_enzyme(92).
certain_enzyme(91).
certain_enzyme(90).
certain_enzyme(89).
certain_enzyme(88).
certain_enzyme(84).
certain_enzyme(80).
certain_enzyme(74).
certain_enzyme(72).
certain_enzyme(62).
certain_enzyme(61).
certain_enzyme(60).
certain_enzyme(59).
certain_enzyme(58).
certain_enzyme(57).
certain_enzyme(56).
certain_enzyme(55).
certain_enzyme(54).
certain_enzyme(53).
certain_enzyme(52).
certain_enzyme(51).
certain_enzyme(50).
certain_enzyme(49).
certain_enzyme(48).
certain_enzyme(47).
certain_enzyme(46).
certain_enzyme(45).
certain_enzyme(44).
certain_enzyme(43).
certain_enzyme(42).
certain_enzyme(41).
certain_enzyme(40).
certain_enzyme(39).
certain_enzyme(38).
certain_enzyme(37).
certain_enzyme(36).
certain_enzyme(35).
certain_enzyme(33).
certain_enzyme(32).
certain_enzyme(31).
certain_enzyme(30).
certain_enzyme(29).
certain_enzyme(28).
certain_enzyme(27).
certain_enzyme(26).
certain_enzyme(25).
certain_enzyme(24).
certain_enzyme(17).
certain_enzyme(16).
certain_enzyme(15).
certain_enzyme(13).
certain_enzyme(12).
certain_enzyme(11).
certain_enzyme(9).
certain_enzyme(8).
certain_enzyme(7).
certain_enzyme(6).
certain_enzyme(5).
certain_enzyme(4).
certain_enzyme(3).
certain_enzyme(2).
certain_enzyme(1).

enzymeID(E) :- unknown_enzyme(E).
enzymeID(E) :- modifiable_enzyme(E).
enzymeID(E) :- certain_enzyme(E).

metabolite("2N6H").
metabolite("2NPMP").
metabolite("2NPPP").
metabolite("ABUT").
metabolite("AT3P2").
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
metabolite("C00017").
metabolite("C00018").
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
metabolite("C00040").
metabolite("C00041").
metabolite("C00042").
metabolite("C00044").
metabolite("C00046").
metabolite("C00048").
metabolite("C00049").
metabolite("C00051").
metabolite("C00052").
metabolite("C00053").
metabolite("C00054").
metabolite("C00055").
metabolite("C00058").
metabolite("C00060").
metabolite("C00061").
metabolite("C00062").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
metabolite("C00066").
metabolite("C00067").
metabolite("C00068").
metabolite("C00073").
metabolite("C00074").
metabolite("C00075").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00081").
metabolite("C00082").
metabolite("C00083").
metabolite("C00084").
metabolite("C00089").
metabolite("C00091").
metabolite("C00093").
metabolite("C00094").
metabolite("C00095").
metabolite("C00096").
metabolite("C00097").
metabolite("C00099").
metabolite("C00101").
metabolite("C00104").
metabolite("C00105").
metabolite("C00106").
metabolite("C00108").
metabolite("C00109").
metabolite("C00111").
metabolite("C00112").
metabolite("C00114").
metabolite("C00116").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00120").
metabolite("C00121").
metabolite("C00122").
metabolite("C00123").
metabolite("C00125").
metabolite("C00126").
metabolite("C00129").
metabolite("C00130").
metabolite("C00131").
metabolite("C00137").
metabolite("C00140").
metabolite("C00141").
metabolite("C00143").
metabolite("C00144").
metabolite("C00147").
metabolite("C00148").
metabolite("C00152").
metabolite("C00155").
metabolite("C00156").
metabolite("C00157").
metabolite("C00158").
metabolite("C00162").
metabolite("C00165").
metabolite("C00166").
metabolite("C00169").
metabolite("C00173").
metabolite("C00178").
metabolite("C00182").
metabolite("C00183").
metabolite("C00188").
metabolite("C00189").
metabolite("C00197").
metabolite("C00199").
metabolite("C00206").
metabolite("C00208").
metabolite("C00212").
metabolite("C00214").
metabolite("C00216").
metabolite("C00224").
metabolite("C00229").
metabolite("C00232").
metabolite("C00234").
metabolite("C00235").
metabolite("C00236").
metabolite("C00238").
metabolite("C00242").
metabolite("C00249").
metabolite("C00250").
metabolite("C00251").
metabolite("C00254").
metabolite("C00255").
metabolite("C00256").
metabolite("C00263").
metabolite("C00264").
metabolite("C00267").
metabolite("C00268").
metabolite("C00269").
metabolite("C00272").
metabolite("C00279").
metabolite("C00280").
metabolite("C00281").
metabolite("C00283").
metabolite("C00286").
metabolite("C00294").
metabolite("C00295").
metabolite("C00297").
metabolite("C00299").
metabolite("C00301").
metabolite("C00311").
metabolite("C00315").
metabolite("C00328").
metabolite("C00330").
metabolite("C00332").
metabolite("C00333").
metabolite("C00334").
metabolite("C00337").
metabolite("C00341").
metabolite("C00342").
metabolite("C00343").
metabolite("C00344").
metabolite("C00346").
metabolite("C00350").
metabolite("C00352").
metabolite("C00356").
metabolite("C00360").
metabolite("C00361").
metabolite("C00362").
metabolite("C00363").
metabolite("C00364").
metabolite("C00365").
metabolite("C00378").
metabolite("C00380").
metabolite("C00385").
metabolite("C00387").
metabolite("C00390").
metabolite("C00407").
metabolite("C00415").
metabolite("C00416").
metabolite("C00418").
metabolite("C00422").
metabolite("C00437").
metabolite("C00438").
metabolite("C00440").
metabolite("C00442").
metabolite("C00445").
metabolite("C00448").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00461").
metabolite("C00463").
metabolite("C00469").
metabolite("C00470").
metabolite("C00475").
metabolite("C00493").
metabolite("C00522").
metabolite("C00526").
metabolite("C00535").
metabolite("C00542").
metabolite("C00559").
metabolite("C00562").
metabolite("C00579").
metabolite("C00585").
metabolite("C00586").
metabolite("C00612").
metabolite("C00620").
metabolite("C00631").
metabolite("C00632").
metabolite("C00640").
metabolite("C00644").
metabolite("C00652").
metabolite("C00655").
metabolite("C00661").
metabolite("C00668").
metabolite("C00669").
metabolite("C00670").
metabolite("C00673").
metabolite("C00677").
metabolite("C00685").
metabolite("C00704").
metabolite("C00705").
metabolite("C00711").
metabolite("C00787").
metabolite("C00836").
metabolite("C00857").
metabolite("C00864").
metabolite("C00870").
metabolite("C00882").
metabolite("C00886").
metabolite("C00900").
metabolite("C00942").
metabolite("C00944").
metabolite("C00956").
metabolite("C00965").
metabolite("C00966").
metabolite("C00979").
metabolite("C00986").
metabolite("C00996").
metabolite("C00999").
metabolite("C01031").
metabolite("C01034").
metabolite("C01037").
metabolite("C01051").
metabolite("C01077").
metabolite("C01081").
metabolite("C01092").
metabolite("C01100").
metabolite("C01102").
metabolite("C01107").
metabolite("C01118").
metabolite("C01120").
metabolite("C01134").
metabolite("C01136").
metabolite("C01157").
metabolite("C01165").
metabolite("C01167").
metabolite("C01168").
metabolite("C01172").
metabolite("C01176").
metabolite("C01177").
metabolite("C01178").
metabolite("C01179").
metabolite("C01185").
metabolite("C01194").
metabolite("C01203").
metabolite("C01209").
metabolite("C01227").
metabolite("C01233").
metabolite("C01241").
metabolite("C01250").
metabolite("C01251").
metabolite("C01260").
metabolite("C01267").
metabolite("C01269").
metabolite("C01271").
metabolite("C01279").
metabolite("C01300").
metabolite("C01302").
metabolite("C01304").
metabolite("C01328").
metabolite("C01346").
metabolite("C01352").
metabolite("C01419").
metabolite("C01530").
metabolite("C01635").
metabolite("C01638").
metabolite("C01639").
metabolite("C01640").
metabolite("C01647").
metabolite("C01649").
metabolite("C01652").
metabolite("C01684").
metabolite("C01694").
metabolite("C01762").
metabolite("C01801").
metabolite("C01909").
metabolite("C01967").
metabolite("C02100").
metabolite("C02163").
metabolite("C02220").
metabolite("C02225").
metabolite("C02229").
metabolite("C02282").
metabolite("C02291").
metabolite("C02407").
metabolite("C02430").
metabolite("C02449").
metabolite("C02504").
metabolite("C02505").
metabolite("C02550").
metabolite("C02567").
metabolite("C02637").
metabolite("C02700").
metabolite("C02702").
metabolite("C02714").
metabolite("C02737").
metabolite("C02839").
metabolite("C02843").
metabolite("C02984").
metabolite("C03028").
metabolite("C03090").
metabolite("C03125").
metabolite("C03175").
metabolite("C03205").
metabolite("C03294").
metabolite("C03360").
metabolite("C03373").
metabolite("C03384").
metabolite("C03402").
metabolite("C03479").
metabolite("C03496").
metabolite("C03506").
metabolite("C03512").
metabolite("C03523").
metabolite("C03722").
metabolite("C03734").
metabolite("C03794").
metabolite("C03824").
metabolite("C03836").
metabolite("C03838").
metabolite("C03849").
metabolite("C03880").
metabolite("C03892").
metabolite("C03912").
metabolite("C03939").
metabolite("C04088").
metabolite("C04133").
metabolite("C04225").
metabolite("C04236").
metabolite("C04272").
metabolite("C04281").
metabolite("C04294").
metabolite("C04295").
metabolite("C04302").
metabolite("C04308").
metabolite("C04352").
metabolite("C04376").
metabolite("C04409").
metabolite("C04425").
metabolite("C04432").
metabolite("C04441").
metabolite("C04517").
metabolite("C04556").
metabolite("C04618").
metabolite("C04620").
metabolite("C04633").
metabolite("C04677").
metabolite("C04682").
metabolite("C04691").
metabolite("C04692").
metabolite("C04728").
metabolite("C04734").
metabolite("C04736").
metabolite("C04751").
metabolite("C04752").
metabolite("C04807").
metabolite("C04874").
metabolite("C05125").
metabolite("C05138").
metabolite("C05139").
metabolite("C05140").
metabolite("C05200").
metabolite("C05223").
metabolite("C05313").
metabolite("C05330").
metabolite("C05335").
metabolite("C05336").
metabolite("C05345").
metabolite("C05378").
metabolite("C05379").
metabolite("C05437").
metabolite("C05440").
metabolite("C05485").
metabolite("C05512").
metabolite("C05533").
metabolite("C05560").
metabolite("C05662").
metabolite("C05715").
metabolite("C05729").
metabolite("C05744").
metabolite("C05745").
metabolite("C05746").
metabolite("C05747").
metabolite("C05748").
metabolite("C05749").
metabolite("C05751").
metabolite("C05754").
metabolite("C05755").
metabolite("C05756").
metabolite("C05757").
metabolite("C05759").
metabolite("C05761").
metabolite("C05762").
metabolite("C05763").
metabolite("C05764").
metabolite("C05778").
metabolite("C05863").
metabolite("C05864").
metabolite("C05873").
metabolite("C05874").
metabolite("C05925").
metabolite("C06006").
metabolite("C06010").
metabolite("C06015").
metabolite("C06055").
metabolite("C06056").
metabolite("C06253").
metabolite("C06316").
metabolite("C06369").
metabolite("C06424").
metabolite("C06814").
metabolite("C07086").
metabolite("C07090").
metabolite("C07091").
metabolite("C07281").
metabolite("C07282").
metabolite("C11355").
metabolite("C161ACP").
metabolite("C182ACP").
metabolite("C260COA").
metabolite("CER2").
metabolite("DGPP").
metabolite("DMZYMST").
metabolite("DTP").
metabolite("EPST").
metabolite("ERTEOL").
metabolite("ERTROL").
metabolite("GLTL").
metabolite("HBA").
metabolite("IGST").
metabolite("IIMZYMST").
metabolite("IIZYMST").
metabolite("IMZYMST").
metabolite("ISUCC").
metabolite("NAG").
metabolite("OIVAL").
metabolite("PSPH").

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
orf("Q0250").
orf("Q0275").
orf("U100_").
orf("U104_").
orf("U105_").
orf("U107_").
orf("U109_").
orf("U10_").
orf("U110_").
orf("U114_").
orf("U128_").
orf("U131_").
orf("U132_").
orf("U136_").
orf("U143_").
orf("U144_").
orf("U14_").
orf("U150_").
orf("U152_").
orf("U153_").
orf("U154_").
orf("U155_").
orf("U160_").
orf("U165_").
orf("U166_").
orf("U172_").
orf("U174_").
orf("U177_").
orf("U178_").
orf("U180_").
orf("U181_").
orf("U182_").
orf("U185_").
orf("U188_").
orf("U191_").
orf("U194_").
orf("U196_").
orf("U197_").
orf("U198_").
orf("U206_").
orf("U207_").
orf("U219_").
orf("U220_").
orf("U223_").
orf("U228_").
orf("U24_").
orf("U25_").
orf("U26_").
orf("U29_").
orf("U30_").
orf("U31_").
orf("U34_").
orf("U36_").
orf("U39_").
orf("U3_").
orf("U40_").
orf("U41_").
orf("U44_").
orf("U45_").
orf("U46_").
orf("U47_").
orf("U48_").
orf("U4_").
orf("U52_").
orf("U53_").
orf("U55_").
orf("U5_").
orf("U61_").
orf("U62_").
orf("U65_").
orf("U67_").
orf("U69_").
orf("U6_").
orf("U70_").
orf("U72_").
orf("U73_").
orf("U74_").
orf("U75_").
orf("U76_").
orf("U77_").
orf("U7_").
orf("U83_").
orf("U90_").
orf("U93_").
orf("U94_").
orf("U96_").
orf("U98_").
orf("U99_").
orf("U9_").
orf("YAL012W").
orf("YAL038W").
orf("YAL054C").
orf("YAR073W").
orf("YAR075W").
orf("YBL013W").
orf("YBL015W").
orf("YBL033C").
orf("YBL035C").
orf("YBL039C").
orf("YBL068W").
orf("YBL099W").
orf("YBR006W").
orf("YBR011C").
orf("YBR018C").
orf("YBR019C").
orf("YBR021W").
orf("YBR029C").
orf("YBR068C").
orf("YBR069C").
orf("YBR084W").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR117C").
orf("YBR145W").
orf("YBR149W").
orf("YBR154C").
orf("YBR166C").
orf("YBR176W").
orf("YBR196C").
orf("YBR218C").
orf("YBR221C").
orf("YBR249C").
orf("YBR252W").
orf("YBR276C").
orf("YBR278W").
orf("YBR284W").
orf("YBR298C").
orf("YBR299W").
orf("YCL009C").
orf("YCL018W").
orf("YCL025C").
orf("YCL040W").
orf("YCL064C").
orf("YCR012W").
orf("YCR014C").
orf("YCR024C").
orf("YCR024C-A").
orf("YCR032W").
orf("YCR036W").
orf("YCR053W").
orf("YDL021W").
orf("YDL024C").
orf("YDL033C").
orf("YDL067C").
orf("YDL078C").
orf("YDL080C").
orf("YDL086W").
orf("YDL100C").
orf("YDL102W").
orf("YDL131W").
orf("YDL140C").
orf("YDL141W").
orf("YDL150W").
orf("YDL168W").
orf("YDL171C").
orf("YDL174C").
orf("YDL182W").
orf("YDL230W").
orf("YDL236W").
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
orf("YDR236C").
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
orf("YDR530C").
orf("YDR536W").
orf("YEL017C-A").
orf("YEL041W").
orf("YEL046C").
orf("YEL055C").
orf("YEL063C").
orf("YER005W").
orf("YER023W").
orf("YER043C").
orf("YER053C").
orf("YER056C").
orf("YER060W").
orf("YER060W-A").
orf("YER069W").
orf("YER070W").
orf("YER073W").
orf("YER075C").
orf("YER087W").
orf("YER090W").
orf("YER099C").
orf("YER170W").
orf("YER178W").
orf("YER183C").
orf("YFL001W").
orf("YFL018C").
orf("YFL030W").
orf("YFL036W").
orf("YFL055W").
orf("YFR014C").
orf("YFR015C").
orf("YFR028C").
orf("YFR030W").
orf("YFR047C").
orf("YFR053C").
orf("YGL001C").
orf("YGL008C").
orf("YGL012W").
orf("YGL017W").
orf("YGL019W").
orf("YGL026C").
orf("YGL027C").
orf("YGL062W").
orf("YGL063W").
orf("YGL070C").
orf("YGL077C").
orf("YGL130W").
orf("YGL148W").
orf("YGL154C").
orf("YGL186C").
orf("YGL187C").
orf("YGL191W").
orf("YGL202W").
orf("YGL205W").
orf("YGL234W").
orf("YGL253W").
orf("YGL256W").
orf("YGR012W").
orf("YGR019W").
orf("YGR032W").
orf("YGR037C").
orf("YGR055W").
orf("YGR065C").
orf("YGR087C").
orf("YGR088W").
orf("YGR121C").
orf("YGR171C").
orf("YGR180C").
orf("YGR185C").
orf("YGR204W").
orf("YGR234W").
orf("YGR240C").
orf("YGR254W").
orf("YGR264C").
orf("YGR282C").
orf("YGR286C").
orf("YGR287C").
orf("YGR292W").
orf("YHL011C").
orf("YHL032C").
orf("YHL036W").
orf("YHR008C").
orf("YHR019C").
orf("YHR020W").
orf("YHR025W").
orf("YHR043C").
orf("YHR044C").
orf("YHR046C").
orf("YHR051W").
orf("YHR068W").
orf("YHR074W").
orf("YHR102W").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR144C").
orf("YHR174W").
orf("YHR179W").
orf("YHR189W").
orf("YHR205W").
orf("YHR215W").
orf("YHR216W").
orf("YIL021W").
orf("YIL035C").
orf("YIL043C").
orf("YIL066C").
orf("YIL085C").
orf("YIL094C").
orf("YIL111W").
orf("YIL113W").
orf("YIL116W").
orf("YIL125W").
orf("YIL134W").
orf("YIL139C").
orf("YIL145C").
orf("YIL160C").
orf("YIL167W").
orf("YIL168W").
orf("YIL172C").
orf("YIR026C").
orf("YJL026W").
orf("YJL068C").
orf("YJL070C").
orf("YJL090C").
orf("YJL101C").
orf("YJL126W").
orf("YJL129C").
orf("YJL130C").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL164C").
orf("YJL167W").
orf("YJL200C").
orf("YJL216C").
orf("YJL221C").
orf("YJR006W").
orf("YJR016C").
orf("YJR025C").
orf("YJR043C").
orf("YJR049C").
orf("YJR057W").
orf("YJR063W").
orf("YJR073C").
orf("YJR077C").
orf("YJR078W").
orf("YJR103W").
orf("YJR104C").
orf("YJR130C").
orf("YJR137C").
orf("YJR148W").
orf("YJR153W").
orf("YKL001C").
orf("YKL024C").
orf("YKL067W").
orf("YKL085W").
orf("YKL106W").
orf("YKL144C").
orf("YKL150W").
orf("YKL152C").
orf("YKL166C").
orf("YKL181W").
orf("YKL182W").
orf("YKL211C").
orf("YKL216W").
orf("YKR009C").
orf("YKR031C").
orf("YKR039W").
orf("YKR053C").
orf("YKR069W").
orf("YKR080W").
orf("YKR097W").
orf("YLL018C").
orf("YLR027C").
orf("YLR028C").
orf("YLR038C").
orf("YLR044C").
orf("YLR056W").
orf("YLR058C").
orf("YLR089C").
orf("YLR100C").
orf("YLR134W").
orf("YLR142W").
orf("YLR153C").
orf("YLR172C").
orf("YLR174W").
orf("YLR209C").
orf("YLR231C").
orf("YLR245C").
orf("YLR258W").
orf("YLR260W").
orf("YLR286C").
orf("YLR299W").
orf("YLR300W").
orf("YLR303W").
orf("YLR304C").
orf("YLR328W").
orf("YLR342W").
orf("YLR355C").
orf("YLR359W").
orf("YLR377C").
orf("YLR395C").
orf("YLR432W").
orf("YML022W").
orf("YML035C").
orf("YML056C").
orf("YML086C").
orf("YML126C").
orf("YMR006C").
orf("YMR008C").
orf("YMR036C").
orf("YMR120C").
orf("YMR205C").
orf("YMR208W").
orf("YMR250W").
orf("YMR256C").
orf("YMR303C").
orf("YMR306W").
orf("YMR323W").
orf("YNL009W").
orf("YNL029C").
orf("YNL037C").
orf("YNL052W").
orf("YNL053W").
orf("YNL071W").
orf("YNL102W").
orf("YNL104C").
orf("YNL113W").
orf("YNL141W").
orf("YNL142W").
orf("YNL151C").
orf("YNL169C").
orf("YNL220W").
orf("YNL247W").
orf("YNL248C").
orf("YNL256W").
orf("YNL262W").
orf("YNL270C").
orf("YNL280C").
orf("YNL292W").
orf("YNL299W").
orf("YNL316C").
orf("YNR003C").
orf("YNR012W").
orf("YNR016C").
orf("YNR033W").
orf("YNR057C").
orf("YNR058W").
orf("YOL005C").
orf("YOL011W").
orf("YOL016C").
orf("YOL020W").
orf("YOL049W").
orf("YOL055C").
orf("YOL056W").
orf("YOL061W").
orf("YOL086C").
orf("YOL096C").
orf("YOL097C").
orf("YOL103W").
orf("YOL115W").
orf("YOL126C").
orf("YOL140W").
orf("YOR011W").
orf("YOR061W").
orf("YOR095C").
orf("YOR116C").
orf("YOR128C").
orf("YOR143C").
orf("YOR151C").
orf("YOR168W").
orf("YOR171C").
orf("YOR190W").
orf("YOR207C").
orf("YOR208W").
orf("YOR210W").
orf("YOR224C").
orf("YOR236W").
orf("YOR274W").
orf("YOR323C").
orf("YOR330C").
orf("YOR335C").
orf("YOR340C").
orf("YOR341W").
orf("YOR347C").
orf("YOR360C").
orf("YOR374W").
orf("YOR388C").
orf("YOR393W").
orf("YPL017C").
orf("YPL028W").
orf("YPL036W").
orf("YPL097W").
orf("YPL104W").
orf("YPL117C").
orf("YPL148C").
orf("YPL167C").
orf("YPL171C").
orf("YPL188W").
orf("YPL203W").
orf("YPL206C").
orf("YPL212C").
orf("YPL231W").
orf("YPL262W").
orf("YPL265W").
orf("YPL266W").
orf("YPL275W").
orf("YPL276W").
orf("YPL281C").
orf("YPR002W").
orf("YPR010C").
orf("YPR060C").
orf("YPR062W").
orf("YPR073C").
orf("YPR074C").
orf("YPR110C").
orf("YPR113W").
orf("YPR138C").
orf("YPR167C").
orf("YPR175W").
orf("YPR187W").
orf("YPR190C").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

inhibitor(14,"C00082",cytosol).

