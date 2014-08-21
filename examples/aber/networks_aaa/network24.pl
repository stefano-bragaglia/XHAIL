in_compartment(Experiment,Metabolite,Compartment,Day) :-
  start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
  additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,M1,Compartment,Day) :-
  additional_nutrient(Experiment,M2,Compartment),
  contaminated(M2,M1).

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

in_compartment(Experiment,"C00385",cytosol,Day) :-
  not exclude(441),
  Day >= 1,
  in_compartment(Experiment,"C00385",medium,Day),
  catalyst(441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00385",medium,Day) :-
  not exclude(442),
  Day >= 1,
  in_compartment(Experiment,"C00385",cytosol,Day),
  catalyst(442,Complex),
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

in_compartment(Experiment,"C01762",cytosol,Day) :-
  not exclude(570),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01762",medium,Day),
  catalyst(570,Complex),
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

in_compartment(Experiment,"C01083",cytosol,Day) :-
  not exclude(960),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01083",medium,Day),
  catalyst(960,Complex),
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

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(1250),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  catalyst(1250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(1250),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  catalyst(1250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",mitochondrion,Day) :-
  not exclude(1491),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(1491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00311",cytosol,Day) :-
  not exclude(1491),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(1491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",cytosol,Day) :-
  not exclude(1492),
  Day >= 1,
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(1492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00311",mitochondrion,Day) :-
  not exclude(1492),
  Day >= 1,
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(1492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(1501),
  Day >= 1,
  in_compartment(Experiment,"C00074",mitochondrion,Day),
  in_compartment(Experiment,"C00158",cytosol,Day),
  catalyst(1501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",mitochondrion,Day) :-
  not exclude(1501),
  Day >= 1,
  in_compartment(Experiment,"C00074",mitochondrion,Day),
  in_compartment(Experiment,"C00158",cytosol,Day),
  catalyst(1501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",mitochondrion,Day) :-
  not exclude(1502),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  catalyst(1502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",cytosol,Day) :-
  not exclude(1502),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  catalyst(1502,Complex),
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

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(1731),
  Day >= 1,
  in_compartment(Experiment,"C00065",mitochondrion,Day),
  catalyst(1731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",mitochondrion,Day) :-
  not exclude(1732),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(1732,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02191",mitochondrion,Day) :-
  not exclude(1940),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01079",mitochondrion,Day),
  catalyst(1940,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(2231),
  Day >= 1,
  in_compartment(Experiment,"C00153",cytosol,Day),
  catalyst(2231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00253",cytosol,Day) :-
  not exclude(2231),
  Day >= 1,
  in_compartment(Experiment,"C00153",cytosol,Day),
  catalyst(2231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00153",cytosol,Day) :-
  not exclude(2232),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00253",cytosol,Day),
  catalyst(2232,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2670),
  Day >= 1,
  in_compartment(Experiment,"C00647",cytosol,Day),
  catalyst(2670,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00534",cytosol,Day) :-
  not exclude(2670),
  Day >= 1,
  in_compartment(Experiment,"C00647",cytosol,Day),
  catalyst(2670,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2820),
  Day >= 1,
  in_compartment(Experiment,"A6RP",cytosol,Day),
  in_compartment(Experiment,"DB4P",cytosol,Day),
  catalyst(2820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04332",cytosol,Day) :-
  not exclude(2820),
  Day >= 1,
  in_compartment(Experiment,"A6RP",cytosol,Day),
  in_compartment(Experiment,"DB4P",cytosol,Day),
  catalyst(2820,Complex),
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

in_compartment(Experiment,"DTP",cytosol,Day) :-
  not exclude(2930),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(2930,Complex),
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

in_compartment(Experiment,"C00111",cytosol,Day) :-
  not exclude(3000),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(3000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(3000),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(3000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00184",cytosol,Day),
  catalyst(3030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00111",cytosol,Day) :-
  not exclude(3030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00184",cytosol,Day),
  catalyst(3030,Complex),
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
  not exclude(3200),
  Day >= 1,
  in_compartment(Experiment,"C05714",cytosol,Day),
  catalyst(3200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(3200),
  Day >= 1,
  in_compartment(Experiment,"C05714",cytosol,Day),
  catalyst(3200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3310),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(3310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03734",cytosol,Day) :-
  not exclude(3310),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(3310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(3330),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00750",cytosol,Day),
  catalyst(3330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02567",cytosol,Day) :-
  not exclude(3330),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00750",cytosol,Day),
  catalyst(3330,Complex),
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

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3460),
  Day >= 1,
  in_compartment(Experiment,"C04409",cytosol,Day),
  catalyst(3460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03824",cytosol,Day) :-
  not exclude(3460),
  Day >= 1,
  in_compartment(Experiment,"C04409",cytosol,Day),
  catalyst(3460,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(3560),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(3560,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(3560),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(3560,Complex),
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
  not exclude(4121),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00322",cytosol,Day),
  catalyst(4121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00956",cytosol,Day) :-
  not exclude(4121),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00322",cytosol,Day),
  catalyst(4121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4122),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00322",cytosol,Day) :-
  not exclude(4122),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4122,Complex),
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

in_compartment(Experiment,"C02291",cytosol,Day) :-
  not exclude(4570),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4570,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(4600),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00441",cytosol,Day),
  catalyst(4600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00263",cytosol,Day) :-
  not exclude(4600),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00441",cytosol,Day),
  catalyst(4600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(4910),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(4910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4910),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(4910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4920),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4920),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4920),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4920,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5320),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00262",cytosol,Day),
  catalyst(5320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(5320),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00262",cytosol,Day),
  catalyst(5320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5340),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00294",cytosol,Day),
  catalyst(5340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(5340),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00294",cytosol,Day),
  catalyst(5340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00121",cytosol,Day) :-
  not exclude(5530),
  Day >= 1,
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(5530),
  Day >= 1,
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5550),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00385",cytosol,Day),
  catalyst(5550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00655",cytosol,Day) :-
  not exclude(5550),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00385",cytosol,Day),
  catalyst(5550,Complex),
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

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(5611),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00559",cytosol,Day),
  catalyst(5611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03496",cytosol,Day) :-
  not exclude(5611),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00559",cytosol,Day),
  catalyst(5611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5612),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00559",cytosol,Day) :-
  not exclude(5612),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5670),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5670,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5670),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5670,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(5670),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00075",cytosol,Day),
  catalyst(5670,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5850),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00526",cytosol,Day),
  catalyst(5850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00365",cytosol,Day) :-
  not exclude(5850),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00526",cytosol,Day),
  catalyst(5850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5940),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01261",cytosol,Day) :-
  not exclude(5940),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5940,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6191),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(6191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(6191),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00144",cytosol,Day),
  catalyst(6191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6192),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(6192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(6192),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(6192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6211),
  Day >= 1,
  in_compartment(Experiment,"C00603",cytosol,Day),
  catalyst(6211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(6211),
  Day >= 1,
  in_compartment(Experiment,"C00603",cytosol,Day),
  catalyst(6211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00048",cytosol,Day) :-
  not exclude(6211),
  Day >= 1,
  in_compartment(Experiment,"C00603",cytosol,Day),
  catalyst(6211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00603",cytosol,Day) :-
  not exclude(6212),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00048",cytosol,Day),
  catalyst(6212,Complex),
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
  not exclude(6290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"ERTROL",cytosol,Day),
  catalyst(6290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"ERTEOL",cytosol,Day) :-
  not exclude(6290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"ERTROL",cytosol,Day),
  catalyst(6290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(6510),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01107",cytosol,Day) :-
  not exclude(6510),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6510,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6740),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01277",cytosol,Day),
  catalyst(6740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04637",cytosol,Day) :-
  not exclude(6740),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01277",cytosol,Day),
  catalyst(6740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6750),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01194",cytosol,Day),
  catalyst(6750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01277",cytosol,Day) :-
  not exclude(6750),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01194",cytosol,Day),
  catalyst(6750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6900),
  Day >= 1,
  in_compartment(Experiment,"C02737",cytosol,Day),
  catalyst(6900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00350",cytosol,Day) :-
  not exclude(6900),
  Day >= 1,
  in_compartment(Experiment,"C02737",cytosol,Day),
  catalyst(6900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7120),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7120),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7120),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05755",cytosol,Day) :-
  not exclude(7120),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7141),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(7141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00173",cytosol,Day) :-
  not exclude(7141),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(7141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7142),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  catalyst(7142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7142),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  catalyst(7142,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7341),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00086",cytosol,Day),
  catalyst(7341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7341),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00086",cytosol,Day),
  catalyst(7341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01010",cytosol,Day) :-
  not exclude(7341),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00086",cytosol,Day),
  catalyst(7341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(7342),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01010",cytosol,Day),
  catalyst(7342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7342),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01010",cytosol,Day),
  catalyst(7342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00086",cytosol,Day) :-
  not exclude(7342),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01010",cytosol,Day),
  catalyst(7342,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7790),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01094",cytosol,Day),
  catalyst(7790,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05378",cytosol,Day) :-
  not exclude(7790),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01094",cytosol,Day),
  catalyst(7790,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7800),
  Day >= 1,
  in_compartment(Experiment,"C00665",cytosol,Day),
  catalyst(7800,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(7800),
  Day >= 1,
  in_compartment(Experiment,"C00665",cytosol,Day),
  catalyst(7800,Complex),
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

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(8080),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(8080),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8080,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8390),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00221",cytosol,Day),
  catalyst(8390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(8390),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00221",cytosol,Day),
  catalyst(8390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8621),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00183",cytosol,Day),
  in_compartment(Experiment,"C01653",cytosol,Day),
  catalyst(8621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8621),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00183",cytosol,Day),
  in_compartment(Experiment,"C01653",cytosol,Day),
  catalyst(8621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02554",cytosol,Day) :-
  not exclude(8621),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00183",cytosol,Day),
  in_compartment(Experiment,"C01653",cytosol,Day),
  catalyst(8621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8622),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02554",cytosol,Day),
  catalyst(8622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00183",cytosol,Day) :-
  not exclude(8622),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02554",cytosol,Day),
  catalyst(8622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01653",cytosol,Day) :-
  not exclude(8622),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02554",cytosol,Day),
  catalyst(8622,Complex),
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

in_compartment(Experiment,"C00346",cytosol,Day) :-
  not exclude(8781),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(8781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00517",cytosol,Day) :-
  not exclude(8781),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(8781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01120",cytosol,Day) :-
  not exclude(8782),
  Day >= 1,
  in_compartment(Experiment,"C00346",cytosol,Day),
  in_compartment(Experiment,"C00517",cytosol,Day),
  catalyst(8782,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(8991),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(8991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00385",cytosol,Day) :-
  not exclude(8991),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(8991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8992),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00385",cytosol,Day),
  catalyst(8992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00242",cytosol,Day) :-
  not exclude(8992),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00385",cytosol,Day),
  catalyst(8992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02165",cytosol,Day) :-
  not exclude(9021),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00909",cytosol,Day),
  catalyst(9021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9022),
  Day >= 1,
  in_compartment(Experiment,"C02165",cytosol,Day),
  catalyst(9022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00909",cytosol,Day) :-
  not exclude(9022),
  Day >= 1,
  in_compartment(Experiment,"C02165",cytosol,Day),
  catalyst(9022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03518",cytosol,Day) :-
  not exclude(9071),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00461",cytosol,Day),
  catalyst(9071,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9072),
  Day >= 1,
  in_compartment(Experiment,"C03518",cytosol,Day),
  catalyst(9072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00461",cytosol,Day) :-
  not exclude(9072),
  Day >= 1,
  in_compartment(Experiment,"C03518",cytosol,Day),
  catalyst(9072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00189",cytosol,Day) :-
  not exclude(9131),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(9131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(9131),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(9131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9132),
  Day >= 1,
  in_compartment(Experiment,"C00189",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(9132,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00350",cytosol,Day) :-
  not exclude(9132),
  Day >= 1,
  in_compartment(Experiment,"C00189",cytosol,Day),
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(9132,Complex),
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
  not exclude(9181),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03475",cytosol,Day),
  catalyst(9181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00419",cytosol,Day) :-
  not exclude(9181),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03475",cytosol,Day),
  catalyst(9181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9182),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00419",cytosol,Day),
  catalyst(9182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03475",cytosol,Day) :-
  not exclude(9182),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00419",cytosol,Day),
  catalyst(9182,Complex),
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

in_compartment(Experiment,"C00060",cytosol,Day) :-
  not exclude(9341),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00165",cytosol,Day),
  catalyst(9341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01885",cytosol,Day) :-
  not exclude(9341),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00165",cytosol,Day),
  catalyst(9341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9342),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C01885",cytosol,Day),
  catalyst(9342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00165",cytosol,Day) :-
  not exclude(9342),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C01885",cytosol,Day),
  catalyst(9342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(9361),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01885",cytosol,Day) :-
  not exclude(9361),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9362),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C01885",cytosol,Day),
  catalyst(9362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00641",cytosol,Day) :-
  not exclude(9362),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C01885",cytosol,Day),
  catalyst(9362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9511),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9511),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",cytosol,Day) :-
  not exclude(9512),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9512),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(9631),
  Day >= 1,
  in_compartment(Experiment,"C00320",cytosol,Day),
  in_compartment(Experiment,"C00979",cytosol,Day),
  catalyst(9631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05824",cytosol,Day) :-
  not exclude(9631),
  Day >= 1,
  in_compartment(Experiment,"C00320",cytosol,Day),
  in_compartment(Experiment,"C00979",cytosol,Day),
  catalyst(9631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00320",cytosol,Day) :-
  not exclude(9632),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C05824",cytosol,Day),
  catalyst(9632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00979",cytosol,Day) :-
  not exclude(9632),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C05824",cytosol,Day),
  catalyst(9632,Complex),
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
  not exclude(9861),
  Day >= 1,
  in_compartment(Experiment,"C04688",cytosol,Day),
  catalyst(9861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05760",cytosol,Day) :-
  not exclude(9861),
  Day >= 1,
  in_compartment(Experiment,"C04688",cytosol,Day),
  catalyst(9861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04688",cytosol,Day) :-
  not exclude(9862),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05760",cytosol,Day),
  catalyst(9862,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(9911),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(9911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(9911),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(9911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00083",cytosol,Day) :-
  not exclude(9912),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(9912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(9912),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(9912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(9931),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C01429",cytosol,Day),
  catalyst(9931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01997",cytosol,Day) :-
  not exclude(9931),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C01429",cytosol,Day),
  catalyst(9931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(9932),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01997",cytosol,Day),
  catalyst(9932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01429",cytosol,Day) :-
  not exclude(9932),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01997",cytosol,Day),
  catalyst(9932,Complex),
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

in_compartment(Experiment,"C00283",cytosol,Day) :-
  not exclude(10031),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C06604",cytosol,Day),
  catalyst(10031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06606",cytosol,Day) :-
  not exclude(10031),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C06604",cytosol,Day),
  catalyst(10031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10032),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C06606",cytosol,Day),
  catalyst(10032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06604",cytosol,Day) :-
  not exclude(10032),
  Day >= 1,
  in_compartment(Experiment,"C00283",cytosol,Day),
  in_compartment(Experiment,"C06606",cytosol,Day),
  catalyst(10032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10101),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00248",cytosol,Day) :-
  not exclude(10101),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10102),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00248",cytosol,Day),
  catalyst(10102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00579",cytosol,Day) :-
  not exclude(10102),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00248",cytosol,Day),
  catalyst(10102,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10321),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00735",cytosol,Day),
  catalyst(10321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05489",cytosol,Day) :-
  not exclude(10321),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00735",cytosol,Day),
  catalyst(10321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00735",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10371),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10371),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00280",cytosol,Day) :-
  not exclude(10371),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01227",cytosol,Day),
  catalyst(10371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10372),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00280",cytosol,Day),
  catalyst(10372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01227",cytosol,Day) :-
  not exclude(10372),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00280",cytosol,Day),
  catalyst(10372,Complex),
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
  not exclude(10521),
  Day >= 1,
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(10521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10521),
  Day >= 1,
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(10521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00685",cytosol,Day) :-
  not exclude(10521),
  Day >= 1,
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(10521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00173",cytosol,Day) :-
  not exclude(10522),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C00685",cytosol,Day),
  catalyst(10522,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10522),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C00685",cytosol,Day),
  catalyst(10522,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(10731),
  Day >= 1,
  in_compartment(Experiment,"C05560",cytosol,Day),
  in_compartment(Experiment,"C11482",cytosol,Day),
  catalyst(10731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05535",cytosol,Day) :-
  not exclude(10731),
  Day >= 1,
  in_compartment(Experiment,"C05560",cytosol,Day),
  in_compartment(Experiment,"C11482",cytosol,Day),
  catalyst(10731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05560",cytosol,Day) :-
  not exclude(10732),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C05535",cytosol,Day),
  catalyst(10732,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C11482",cytosol,Day) :-
  not exclude(10732),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C05535",cytosol,Day),
  catalyst(10732,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10741),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05535",cytosol,Day),
  catalyst(10741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04076",cytosol,Day) :-
  not exclude(10741),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05535",cytosol,Day),
  catalyst(10741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C11482",cytosol,Day) :-
  not exclude(10741),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05535",cytosol,Day),
  catalyst(10741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10742),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  in_compartment(Experiment,"C11482",cytosol,Day),
  catalyst(10742,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10742),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  in_compartment(Experiment,"C11482",cytosol,Day),
  catalyst(10742,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05535",cytosol,Day) :-
  not exclude(10742),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  in_compartment(Experiment,"C11482",cytosol,Day),
  catalyst(10742,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10861),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(10861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10861),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(10861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(10861),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(10861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10861),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(10861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10862),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10862,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00311",cytosol,Day) :-
  not exclude(10862),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10862,Complex),
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

assertable_reaction(10900).

retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(220).
retractable_reaction(331).
retractable_reaction(332).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(441).
retractable_reaction(442).
retractable_reaction(500).
retractable_reaction(570).
retractable_reaction(620).
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
retractable_reaction(881).
retractable_reaction(882).
retractable_reaction(960).
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1121).
retractable_reaction(1122).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1250).
retractable_reaction(1491).
retractable_reaction(1492).
retractable_reaction(1501).
retractable_reaction(1502).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(1731).
retractable_reaction(1732).
retractable_reaction(1940).
retractable_reaction(2051).
retractable_reaction(2052).
retractable_reaction(2190).
retractable_reaction(2231).
retractable_reaction(2232).
retractable_reaction(2490).
retractable_reaction(2550).
retractable_reaction(2670).
retractable_reaction(2740).
retractable_reaction(2820).
retractable_reaction(2891).
retractable_reaction(2892).
retractable_reaction(2930).
retractable_reaction(2980).
retractable_reaction(3000).
retractable_reaction(3030).
retractable_reaction(3160).
retractable_reaction(3200).
retractable_reaction(3310).
retractable_reaction(3330).
retractable_reaction(3350).
retractable_reaction(3460).
retractable_reaction(3470).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3560).
retractable_reaction(3571).
retractable_reaction(3572).
retractable_reaction(3590).
retractable_reaction(3600).
retractable_reaction(3610).
retractable_reaction(3620).
retractable_reaction(3630).
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
retractable_reaction(4121).
retractable_reaction(4122).
retractable_reaction(4271).
retractable_reaction(4272).
retractable_reaction(4380).
retractable_reaction(4470).
retractable_reaction(4570).
retractable_reaction(4600).
retractable_reaction(4910).
retractable_reaction(4920).
retractable_reaction(5040).
retractable_reaction(5130).
retractable_reaction(5190).
retractable_reaction(5250).
retractable_reaction(5281).
retractable_reaction(5282).
retractable_reaction(5320).
retractable_reaction(5340).
retractable_reaction(5530).
retractable_reaction(5550).
retractable_reaction(5571).
retractable_reaction(5572).
retractable_reaction(5611).
retractable_reaction(5612).
retractable_reaction(5670).
retractable_reaction(5780).
retractable_reaction(5850).
retractable_reaction(5940).
retractable_reaction(6040).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6191).
retractable_reaction(6192).
retractable_reaction(6211).
retractable_reaction(6212).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(6280).
retractable_reaction(6290).
retractable_reaction(6510).
retractable_reaction(6520).
retractable_reaction(6560).
retractable_reaction(6680).
retractable_reaction(6740).
retractable_reaction(6750).
retractable_reaction(6900).
retractable_reaction(7120).
retractable_reaction(7141).
retractable_reaction(7142).
retractable_reaction(7281).
retractable_reaction(7282).
retractable_reaction(7341).
retractable_reaction(7342).
retractable_reaction(7501).
retractable_reaction(7502).
retractable_reaction(7540).
retractable_reaction(7550).
retractable_reaction(7790).
retractable_reaction(7800).
retractable_reaction(7880).
retractable_reaction(7911).
retractable_reaction(7912).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(7980).
retractable_reaction(8080).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8320).
retractable_reaction(8390).
retractable_reaction(8621).
retractable_reaction(8622).
retractable_reaction(8631).
retractable_reaction(8632).
retractable_reaction(8671).
retractable_reaction(8672).
retractable_reaction(8781).
retractable_reaction(8782).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(8991).
retractable_reaction(8992).
retractable_reaction(9021).
retractable_reaction(9022).
retractable_reaction(9071).
retractable_reaction(9072).
retractable_reaction(9131).
retractable_reaction(9132).
retractable_reaction(9171).
retractable_reaction(9172).
retractable_reaction(9181).
retractable_reaction(9182).
retractable_reaction(9201).
retractable_reaction(9202).
retractable_reaction(9341).
retractable_reaction(9342).
retractable_reaction(9361).
retractable_reaction(9362).
retractable_reaction(9511).
retractable_reaction(9512).
retractable_reaction(9631).
retractable_reaction(9632).
retractable_reaction(9661).
retractable_reaction(9662).
retractable_reaction(9691).
retractable_reaction(9692).
retractable_reaction(9811).
retractable_reaction(9812).
retractable_reaction(9831).
retractable_reaction(9832).
retractable_reaction(9861).
retractable_reaction(9862).
retractable_reaction(9911).
retractable_reaction(9912).
retractable_reaction(9931).
retractable_reaction(9932).
retractable_reaction(10011).
retractable_reaction(10012).
retractable_reaction(10031).
retractable_reaction(10032).
retractable_reaction(10101).
retractable_reaction(10102).
retractable_reaction(10271).
retractable_reaction(10272).
retractable_reaction(10311).
retractable_reaction(10312).
retractable_reaction(10321).
retractable_reaction(10322).
retractable_reaction(10371).
retractable_reaction(10372).
retractable_reaction(10491).
retractable_reaction(10492).
retractable_reaction(10521).
retractable_reaction(10522).
retractable_reaction(10731).
retractable_reaction(10732).
retractable_reaction(10741).
retractable_reaction(10742).
retractable_reaction(10861).
retractable_reaction(10862).
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

component("YGL012W",118).
component("YOL086C",214).
component("YMR303C",197).
component("YGL256W",126).
component("YDL168W",73).
component("YBR145W",55).
component("YGL001C",116).
component("YML056C",188).
component("YLR432W",186).
component("YHR216W",141).
component("YAR075W",44).
component("YAR073W",43).
component("YDR127W",83).
component("YJR139C",164).
component("YOR136W",218).
component("YIL155C",145).
component("YJR078W",158).
component("YJR025C",155).
component("YMR015C",190).
component("YDR402C",95).
component("YJR104C",161).
component("YHR008C",136).
component("YER070W",104).
component("YGL154C",124).
component("YMR170C",193).
component("YMR169C",192).
component("YBR166C",57).
component("YER014W",103).
component("YEL047C",102).
component("YOR375C",229).
component("YDL215C",74).
component("YAL062W",42).
component("YOR236W",225).
component("U62_",36).
component("YPL017C",232).
component("YFL018C",108).
component("U47_",32).
component("YKL024C",167).
component("YPR074C",245).
component("YBR117C",54).
component("YPL231W",236).
component("YPL001W",231).
component("YPL231W",237).
component("YPL028W",233).
component("YNL029C",199).
component("YIL085C",143).
component("YLR209C",181).
component("YDR354W",92) :- not remove_orf("YDR354W",92).
component("YFR047C",114).
component("YJR133W",163).
component("YDR399W",93).
component("YDR127W",84).
component("YJR130C",162).
component("YDR035W",79).
component("YBR249C",60).
component("YBR256C",61).
component("YHR137W",137).
component("YLR027C",178).
component("YKL106W",168).
component("U64_",37).
component("U51_",33).
component("YJR148W",165).
component("YGL253W",125).
component("YFR053C",115).
component("YMR205C",195).
component("YGR240C",133).
component("YCR036W",69).
component("U15_",20).
component("YKL001C",166).
component("YML070W",189).
component("YFL053W",110).
component("U83_",40).
component("YMR208W",196).
component("U1_",25).
component("YNL267W",206).
component("YLR305C",185).
component("YFR019W",112).
component("YDR208W",89).
component("YDR127W",85).
component("U20_",28).
component("YDR300C",91).
component("U76_",39).
component("YDR454C",97).
component("YOL061W",213).
component("YKL181W",170).
component("YHL011C",135).
component("YER099C",107).
component("YBL068W",47).
component("YOR143C",219).
component("YCL050C",67).
component("YPR190C",249).
component("YPR187W",248).
component("YPR110C",246).
component("YPR010C",241).
component("YOR341W",228).
component("YOR340C",227).
component("YOR224C",224).
component("YOR210W",223).
component("YOR207C",221).
component("YOR151C",220).
component("YOR116C",217).
component("YOL005C",211).
component("YNR003C",208).
component("YNL248C",205).
component("YNL151C",204).
component("YNL113W",202).
component("YKL144C",169).
component("YJR063W",156).
component("YJL148W",153).
component("YJL140W",152).
component("YIL021W",142).
component("YHR143W-A",138).
component("YGL070C",122).
component("YFL036W",109).
component("YDR404C",96).
component("YDR156W",88).
component("YDR045C",80).
component("YDL150W",72).
component("YDL140C",71).
component("YBR154C",56).
component("YDR058C",82).
component("YBL015W",45).
component("U84_",41).
component("YPR073C",243).
component("YHR215W",140).
component("YDL024C",70).
component("YBR093C",52).
component("YBR092C",51).
component("YPL228W",235).
component("YMR180C",194).
component("YDL236W",76).
component("YJL155C",154).
component("YPR073C",244).
component("YOR208W",222).
component("YNL053W",201).
component("YMR036C",191).
component("YIR026C",146).
component("YIL113W",144).
component("YFR028C",113).
component("YER075C",105).
component("YDL230W",75).
component("YBR276C",62).
component("U30_",31).
component("U24_",30).
component("YKR031C",175).
component("YLR286C",184).
component("YDR400W",94).
component("YML035C",187).
component("YJL070C",148).
component("YBR284W",63).
component("YNL045W",200).
component("YGL037C",120).
component("U53_",34).
component("YIR032C",147).
component("YDL238C",77).
component("YLR245C",183).
component("YJL126W",150).
component("YBR111C",53).
component("YLR231C",182).
component("YLR134W",180).
component("YLR044C",179).
component("YGR087C",128).
component("U54_",35).
component("YKL211C",173) :- not remove_orf("YKL211C",173).
component("YGR170W",132).
component("YDR294C",90).
component("YNR033W",210).
component("YKL211C",174) :- not remove_orf("YKL211C",174).
component("YER090W",174) :- not remove_orf("YER090W",174).
component("YER090W",106) :- not remove_orf("YER090W",106).
component("YDR127W",86).
component("YPL281C",240).
component("YOR393W",230).
component("YMR323W",198).
component("YHR174W",139).
component("YGR254W",134).
component("YGL026C",119) :- not remove_orf("YGL026C",119).
component("YGR155W",131).
component("YNL316C",207).
component("YKL182W",171).
component("YDR127W",87).
component("YGL148W",123).
component("YDR007W",78) :- not remove_orf("YDR007W",78).
component("YOR095C",216).
component("YPR060C",242).
component("YOL097C",215).
component("YOR335C",226).
component("YGR094W",129).
component("YJL101C",149).
component("YJR103W",160).
component("YBL039C",46).
component("YBR208C",58).
component("YGL062W",121).
component("YBR218C",59).
component("YPL231W",238).
component("YNR016C",209).
component("YKL182W",172).
component("YGR037C",127).
component("YPR138C",247).
component("YPL265W",239).
component("YPL036W",234).
component("YOL020W",212) :- not remove_orf("YOL020W",212).
component("YNL142W",203).
component("YKR053C",177).
component("YKR039W",176) :- not remove_orf("YKR039W",176).
component("YJR095W",159).
component("YJR077C",157).
component("YJL134W",151).
component("YGR121C",130).
component("YGL008C",117).
component("YFL055W",111).
component("YEL017C-A",101).
component("YDR536W",100).
component("YDR508C",99).
component("YDR503C",98).
component("YDR046C",81) :- not remove_orf("YDR046C",81).
component("YCR024C-A",68).
component("YCL025C",66).
component("YBR298C",65).
component("YBR291C",64).
component("YBR069C",50) :- not remove_orf("YBR069C",50).
component("YBR068C",49) :- not remove_orf("YBR068C",49).
component("YBR021W",48).
component("U71_",38).
component("U228_",29).
component("U206_",27).
component("U202_",26).
component("U196_",24).
component("U180_",23).
component("U178_",22).
component("U168_",21).
component("U155_",19).
component("U116_",18).
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


catalyst(6280,118).
catalyst(7501,214).
catalyst(7502,214).
catalyst(7501,197).
catalyst(7502,197).
catalyst(7501,126).
catalyst(7502,126).
catalyst(7501,73).
catalyst(7502,73).
catalyst(7501,55).
catalyst(7502,55).
catalyst(10271,116).
catalyst(10272,116).
catalyst(10311,116).
catalyst(10312,116).
catalyst(10321,116).
catalyst(10322,116).
catalyst(10371,116).
catalyst(10372,116).
catalyst(6040,188).
catalyst(6040,186).
catalyst(6040,141).
catalyst(6040,44).
catalyst(6040,43).
catalyst(3730,83).
catalyst(4600,164).
catalyst(10861,218).
catalyst(10862,218).
catalyst(3000,145).
catalyst(3520,158).
catalyst(3470,155).
catalyst(6290,190).
catalyst(10031,95).
catalyst(10032,95).
catalyst(10011,161).
catalyst(10012,161).
catalyst(10011,136).
catalyst(10012,136).
catalyst(5130,104).
catalyst(10731,124).
catalyst(10732,124).
catalyst(10741,124).
catalyst(10742,124).
catalyst(3560,193).
catalyst(3560,192).
catalyst(3660,57).
catalyst(1940,103).
catalyst(8080,102).
catalyst(4910,229).
catalyst(4920,74).
catalyst(4910,42).
catalyst(2490,225).
catalyst(3350,36).
catalyst(10101,232).
catalyst(10102,232).
catalyst(10101,108).
catalyst(10102,108).
catalyst(4470,32).
catalyst(5281,167).
catalyst(5282,167).
catalyst(7911,245).
catalyst(7912,245).
catalyst(7911,54).
catalyst(7912,54).
catalyst(10491,236).
catalyst(10492,236).
catalyst(10521,236).
catalyst(10522,236).
catalyst(9931,231).
catalyst(9932,231).
catalyst(9811,237).
catalyst(9812,237).
catalyst(9831,237).
catalyst(9832,237).
catalyst(9861,237).
catalyst(9862,237).
catalyst(9911,237).
catalyst(9912,237).
catalyst(7281,233).
catalyst(7282,233).
catalyst(9691,199).
catalyst(9692,199).
catalyst(9691,143).
catalyst(9692,143).
catalyst(2051,181).
catalyst(2052,181).
catalyst(5571,181).
catalyst(5572,181).
catalyst(5611,181).
catalyst(5612,181).
catalyst(3620,92) :- not remove_reaction(3620,92).
catalyst(2190,114).
catalyst(5550,163).
catalyst(5320,93).
catalyst(3710,84).
catalyst(9631,162).
catalyst(9632,162).
catalyst(9661,162).
catalyst(9662,162).
catalyst(3760,79).
catalyst(3760,60).
catalyst(2820,61).
catalyst(3671,137).
catalyst(3672,137).
catalyst(3571,178).
catalyst(3572,178).
catalyst(3571,168).
catalyst(3572,168).
catalyst(3330,37).
catalyst(4121,33).
catalyst(4122,33).
catalyst(4271,165).
catalyst(4272,165).
catalyst(8390,125).
catalyst(8390,115).
catalyst(8320,195).
catalyst(8320,133).
catalyst(7880,69).
catalyst(5850,20).
catalyst(4380,166).
catalyst(3030,189).
catalyst(3030,110).
catalyst(2740,40).
catalyst(6510,196).
catalyst(6520,196).
catalyst(7790,25).
catalyst(6750,206).
catalyst(6750,185).
catalyst(6740,112).
catalyst(6740,89).
catalyst(3720,85).
catalyst(5340,28).
catalyst(3310,91).
catalyst(2891,39).
catalyst(2892,39).
catalyst(6181,97).
catalyst(6182,97).
catalyst(6191,97).
catalyst(6192,97).
catalyst(6241,213).
catalyst(6242,213).
catalyst(6241,170).
catalyst(6242,170).
catalyst(6241,135).
catalyst(6242,135).
catalyst(6241,107).
catalyst(6242,107).
catalyst(6241,47).
catalyst(6242,47).
catalyst(2980,219).
catalyst(5940,67).
catalyst(9511,249).
catalyst(9512,249).
catalyst(9511,248).
catalyst(9512,248).
catalyst(9511,246).
catalyst(9512,246).
catalyst(9511,241).
catalyst(9512,241).
catalyst(9511,228).
catalyst(9512,228).
catalyst(9511,227).
catalyst(9512,227).
catalyst(9511,224).
catalyst(9512,224).
catalyst(9511,223).
catalyst(9512,223).
catalyst(9511,221).
catalyst(9512,221).
catalyst(9511,220).
catalyst(9512,220).
catalyst(9511,217).
catalyst(9512,217).
catalyst(9511,211).
catalyst(9512,211).
catalyst(9511,208).
catalyst(9512,208).
catalyst(9511,205).
catalyst(9512,205).
catalyst(9511,204).
catalyst(9512,204).
catalyst(9511,202).
catalyst(9512,202).
catalyst(9511,169).
catalyst(9512,169).
catalyst(9511,156).
catalyst(9512,156).
catalyst(9511,153).
catalyst(9512,153).
catalyst(9511,152).
catalyst(9512,152).
catalyst(9511,142).
catalyst(9512,142).
catalyst(9511,138).
catalyst(9512,138).
catalyst(9511,122).
catalyst(9512,122).
catalyst(9511,109).
catalyst(9512,109).
catalyst(9511,96).
catalyst(9512,96).
catalyst(9511,88).
catalyst(9512,88).
catalyst(9511,80).
catalyst(9512,80).
catalyst(9511,72).
catalyst(9512,72).
catalyst(9511,71).
catalyst(9512,71).
catalyst(9511,56).
catalyst(9512,56).
catalyst(9341,82).
catalyst(9342,82).
catalyst(9361,82).
catalyst(9362,82).
catalyst(7540,45).
catalyst(2670,41).
catalyst(9201,243).
catalyst(9202,243).
catalyst(9201,140).
catalyst(9202,140).
catalyst(9201,70).
catalyst(9202,70).
catalyst(9201,52).
catalyst(9202,52).
catalyst(9201,51).
catalyst(9202,51).
catalyst(9181,235).
catalyst(9182,235).
catalyst(9181,194).
catalyst(9182,194).
catalyst(9201,76).
catalyst(9202,76).
catalyst(7800,154).
catalyst(9171,244).
catalyst(9172,244).
catalyst(9171,222).
catalyst(9172,222).
catalyst(9171,201).
catalyst(9172,201).
catalyst(9171,191).
catalyst(9172,191).
catalyst(9171,146).
catalyst(9172,146).
catalyst(9171,144).
catalyst(9172,144).
catalyst(9171,113).
catalyst(9172,113).
catalyst(9171,105).
catalyst(9172,105).
catalyst(9171,75).
catalyst(9172,75).
catalyst(9171,62).
catalyst(9172,62).
catalyst(5190,31).
catalyst(5250,30).
catalyst(9131,175).
catalyst(9132,175).
catalyst(9071,184).
catalyst(9072,184).
catalyst(5530,94).
catalyst(5040,187).
catalyst(5040,148).
catalyst(5040,63).
catalyst(9021,200).
catalyst(9022,200).
catalyst(2231,120).
catalyst(2232,120).
catalyst(3510,34).
catalyst(6211,147).
catalyst(6212,147).
catalyst(8991,77).
catalyst(8992,77).
catalyst(5780,183).
catalyst(3200,150).
catalyst(8821,53).
catalyst(8822,53).
catalyst(3500,182).
catalyst(7550,180).
catalyst(7550,179).
catalyst(7550,128).
catalyst(3460,35).
catalyst(3600,173) :- not remove_reaction(3600,173).
catalyst(6900,132).
catalyst(8781,90).
catalyst(8782,90).
catalyst(2550,210).
catalyst(3630,174) :- not remove_reaction(3630,174).
catalyst(3630,106) :- not remove_reaction(3630,106).
catalyst(3740,86).
catalyst(8231,240).
catalyst(8232,240).
catalyst(8231,230).
catalyst(8232,230).
catalyst(8231,198).
catalyst(8232,198).
catalyst(8231,139).
catalyst(8232,139).
catalyst(8231,134).
catalyst(8232,134).
catalyst(3590,119) :- not remove_reaction(3590,119).
catalyst(10910,119) :- not remove_reaction(10910,119).
catalyst(4570,131).
catalyst(3680,207).
catalyst(7141,171).
catalyst(7142,171).
catalyst(3750,87).
catalyst(3700,123).
catalyst(3610,78) :- not remove_reaction(3610,78).
catalyst(7921,216).
catalyst(7922,216).
catalyst(3690,242).
catalyst(8671,215).
catalyst(8672,215).
catalyst(8631,226).
catalyst(8632,226).
catalyst(8621,129).
catalyst(8622,129).
catalyst(3160,149).
catalyst(5670,160).
catalyst(5670,46).
catalyst(7341,58).
catalyst(7342,58).
catalyst(7980,121).
catalyst(7980,59).
catalyst(7120,238).
catalyst(7120,209).
catalyst(7120,172).
catalyst(7120,127).
catalyst(371,247).
catalyst(372,247).
catalyst(781,239).
catalyst(782,239).
catalyst(881,239).
catalyst(882,239).
catalyst(1191,239).
catalyst(1192,239).
catalyst(220,234).
catalyst(801,212) :- not remove_reaction(801,212).
catalyst(802,212) :- not remove_reaction(802,212).
catalyst(811,212) :- not remove_reaction(811,212).
catalyst(812,212) :- not remove_reaction(812,212).
catalyst(831,212) :- not remove_reaction(831,212).
catalyst(832,212) :- not remove_reaction(832,212).
catalyst(371,203).
catalyst(372,203).
catalyst(6560,177).
catalyst(771,176) :- not remove_reaction(771,176).
catalyst(772,176) :- not remove_reaction(772,176).
catalyst(781,176) :- not remove_reaction(781,176).
catalyst(782,176) :- not remove_reaction(782,176).
catalyst(801,176) :- not remove_reaction(801,176).
catalyst(802,176) :- not remove_reaction(802,176).
catalyst(811,176) :- not remove_reaction(811,176).
catalyst(812,176) :- not remove_reaction(812,176).
catalyst(831,176) :- not remove_reaction(831,176).
catalyst(832,176) :- not remove_reaction(832,176).
catalyst(881,176) :- not remove_reaction(881,176).
catalyst(882,176) :- not remove_reaction(882,176).
catalyst(1191,176) :- not remove_reaction(1191,176).
catalyst(1192,176) :- not remove_reaction(1192,176).
catalyst(1250,159).
catalyst(1581,157).
catalyst(1582,157).
catalyst(6560,151).
catalyst(371,130).
catalyst(372,130).
catalyst(220,117).
catalyst(781,111).
catalyst(782,111).
catalyst(1191,111).
catalyst(1192,111).
catalyst(220,101).
catalyst(1191,100).
catalyst(1192,100).
catalyst(771,99).
catalyst(772,99).
catalyst(781,99).
catalyst(782,99).
catalyst(881,99).
catalyst(882,99).
catalyst(6680,98).
catalyst(801,81) :- not remove_reaction(801,81).
catalyst(802,81) :- not remove_reaction(802,81).
catalyst(811,81) :- not remove_reaction(811,81).
catalyst(812,81) :- not remove_reaction(812,81).
catalyst(831,81) :- not remove_reaction(831,81).
catalyst(832,81) :- not remove_reaction(832,81).
catalyst(220,68).
catalyst(771,66).
catalyst(772,66).
catalyst(781,66).
catalyst(782,66).
catalyst(801,66).
catalyst(802,66).
catalyst(831,66).
catalyst(832,66).
catalyst(881,66).
catalyst(882,66).
catalyst(1191,66).
catalyst(1192,66).
catalyst(1121,65).
catalyst(1122,65).
catalyst(1491,64).
catalyst(1492,64).
catalyst(1501,64).
catalyst(1502,64).
catalyst(771,50) :- not remove_reaction(771,50).
catalyst(772,50) :- not remove_reaction(772,50).
catalyst(801,50) :- not remove_reaction(801,50).
catalyst(802,50) :- not remove_reaction(802,50).
catalyst(811,50) :- not remove_reaction(811,50).
catalyst(812,50) :- not remove_reaction(812,50).
catalyst(801,49) :- not remove_reaction(801,49).
catalyst(802,49) :- not remove_reaction(802,49).
catalyst(811,49) :- not remove_reaction(811,49).
catalyst(812,49) :- not remove_reaction(812,49).
catalyst(831,49) :- not remove_reaction(831,49).
catalyst(832,49) :- not remove_reaction(832,49).
catalyst(620,48).
catalyst(2930,38).
catalyst(41,29).
catalyst(42,29).
catalyst(331,27).
catalyst(332,27).
catalyst(441,26).
catalyst(442,26).
catalyst(500,24).
catalyst(500,23).
catalyst(570,22).
catalyst(960,21).
catalyst(1111,19).
catalyst(1112,19).
catalyst(1731,18).
catalyst(1732,18).
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

modifiable_enzyme(92).
modifiable_enzyme(173).
modifiable_enzyme(174).
modifiable_enzyme(106).
modifiable_enzyme(119).
modifiable_enzyme(78).
modifiable_enzyme(212).
modifiable_enzyme(176).
modifiable_enzyme(81).
modifiable_enzyme(50).
modifiable_enzyme(49).
modifiable_enzyme(14).
modifiable_enzyme(10).

certain_enzyme(118).
certain_enzyme(214).
certain_enzyme(197).
certain_enzyme(126).
certain_enzyme(73).
certain_enzyme(55).
certain_enzyme(116).
certain_enzyme(188).
certain_enzyme(186).
certain_enzyme(141).
certain_enzyme(44).
certain_enzyme(43).
certain_enzyme(83).
certain_enzyme(164).
certain_enzyme(218).
certain_enzyme(145).
certain_enzyme(158).
certain_enzyme(155).
certain_enzyme(190).
certain_enzyme(95).
certain_enzyme(161).
certain_enzyme(136).
certain_enzyme(104).
certain_enzyme(124).
certain_enzyme(193).
certain_enzyme(192).
certain_enzyme(57).
certain_enzyme(103).
certain_enzyme(102).
certain_enzyme(229).
certain_enzyme(74).
certain_enzyme(42).
certain_enzyme(225).
certain_enzyme(36).
certain_enzyme(232).
certain_enzyme(108).
certain_enzyme(32).
certain_enzyme(167).
certain_enzyme(245).
certain_enzyme(54).
certain_enzyme(236).
certain_enzyme(231).
certain_enzyme(237).
certain_enzyme(233).
certain_enzyme(199).
certain_enzyme(143).
certain_enzyme(181).
certain_enzyme(114).
certain_enzyme(163).
certain_enzyme(93).
certain_enzyme(84).
certain_enzyme(162).
certain_enzyme(79).
certain_enzyme(60).
certain_enzyme(61).
certain_enzyme(137).
certain_enzyme(178).
certain_enzyme(168).
certain_enzyme(37).
certain_enzyme(33).
certain_enzyme(165).
certain_enzyme(125).
certain_enzyme(115).
certain_enzyme(195).
certain_enzyme(133).
certain_enzyme(69).
certain_enzyme(20).
certain_enzyme(166).
certain_enzyme(189).
certain_enzyme(110).
certain_enzyme(40).
certain_enzyme(196).
certain_enzyme(25).
certain_enzyme(206).
certain_enzyme(185).
certain_enzyme(112).
certain_enzyme(89).
certain_enzyme(85).
certain_enzyme(28).
certain_enzyme(91).
certain_enzyme(39).
certain_enzyme(97).
certain_enzyme(213).
certain_enzyme(170).
certain_enzyme(135).
certain_enzyme(107).
certain_enzyme(47).
certain_enzyme(219).
certain_enzyme(67).
certain_enzyme(249).
certain_enzyme(248).
certain_enzyme(246).
certain_enzyme(241).
certain_enzyme(228).
certain_enzyme(227).
certain_enzyme(224).
certain_enzyme(223).
certain_enzyme(221).
certain_enzyme(220).
certain_enzyme(217).
certain_enzyme(211).
certain_enzyme(208).
certain_enzyme(205).
certain_enzyme(204).
certain_enzyme(202).
certain_enzyme(169).
certain_enzyme(156).
certain_enzyme(153).
certain_enzyme(152).
certain_enzyme(142).
certain_enzyme(138).
certain_enzyme(122).
certain_enzyme(109).
certain_enzyme(96).
certain_enzyme(88).
certain_enzyme(80).
certain_enzyme(72).
certain_enzyme(71).
certain_enzyme(56).
certain_enzyme(82).
certain_enzyme(45).
certain_enzyme(41).
certain_enzyme(243).
certain_enzyme(140).
certain_enzyme(70).
certain_enzyme(52).
certain_enzyme(51).
certain_enzyme(235).
certain_enzyme(194).
certain_enzyme(76).
certain_enzyme(154).
certain_enzyme(244).
certain_enzyme(222).
certain_enzyme(201).
certain_enzyme(191).
certain_enzyme(146).
certain_enzyme(144).
certain_enzyme(113).
certain_enzyme(105).
certain_enzyme(75).
certain_enzyme(62).
certain_enzyme(31).
certain_enzyme(30).
certain_enzyme(175).
certain_enzyme(184).
certain_enzyme(94).
certain_enzyme(187).
certain_enzyme(148).
certain_enzyme(63).
certain_enzyme(200).
certain_enzyme(120).
certain_enzyme(34).
certain_enzyme(147).
certain_enzyme(77).
certain_enzyme(183).
certain_enzyme(150).
certain_enzyme(53).
certain_enzyme(182).
certain_enzyme(180).
certain_enzyme(179).
certain_enzyme(128).
certain_enzyme(35).
certain_enzyme(132).
certain_enzyme(90).
certain_enzyme(210).
certain_enzyme(86).
certain_enzyme(240).
certain_enzyme(230).
certain_enzyme(198).
certain_enzyme(139).
certain_enzyme(134).
certain_enzyme(131).
certain_enzyme(207).
certain_enzyme(171).
certain_enzyme(87).
certain_enzyme(123).
certain_enzyme(216).
certain_enzyme(242).
certain_enzyme(215).
certain_enzyme(226).
certain_enzyme(129).
certain_enzyme(149).
certain_enzyme(160).
certain_enzyme(46).
certain_enzyme(58).
certain_enzyme(121).
certain_enzyme(59).
certain_enzyme(238).
certain_enzyme(209).
certain_enzyme(172).
certain_enzyme(127).
certain_enzyme(247).
certain_enzyme(239).
certain_enzyme(234).
certain_enzyme(203).
certain_enzyme(177).
certain_enzyme(159).
certain_enzyme(157).
certain_enzyme(151).
certain_enzyme(130).
certain_enzyme(117).
certain_enzyme(111).
certain_enzyme(101).
certain_enzyme(100).
certain_enzyme(99).
certain_enzyme(98).
certain_enzyme(68).
certain_enzyme(66).
certain_enzyme(65).
certain_enzyme(64).
certain_enzyme(48).
certain_enzyme(38).
certain_enzyme(29).
certain_enzyme(27).
certain_enzyme(26).
certain_enzyme(24).
certain_enzyme(23).
certain_enzyme(22).
certain_enzyme(21).
certain_enzyme(19).
certain_enzyme(18).
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
metabolite("C00010").
metabolite("C00011").
metabolite("C00013").
metabolite("C00014").
metabolite("C00016").
metabolite("C00018").
metabolite("C00020").
metabolite("C00022").
metabolite("C00024").
metabolite("C00025").
metabolite("C00026").
metabolite("C00027").
metabolite("C00033").
metabolite("C00035").
metabolite("C00036").
metabolite("C00041").
metabolite("C00042").
metabolite("C00044").
metabolite("C00046").
metabolite("C00048").
metabolite("C00053").
metabolite("C00058").
metabolite("C00060").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
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
metabolite("C00086").
metabolite("C00093").
metabolite("C00096").
metabolite("C00097").
metabolite("C00101").
metabolite("C00106").
metabolite("C00108").
metabolite("C00109").
metabolite("C00111").
metabolite("C00112").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00121").
metabolite("C00122").
metabolite("C00123").
metabolite("C00130").
metabolite("C00144").
metabolite("C00147").
metabolite("C00153").
metabolite("C00158").
metabolite("C00162").
metabolite("C00165").
metabolite("C00166").
metabolite("C00173").
metabolite("C00183").
metabolite("C00184").
metabolite("C00188").
metabolite("C00189").
metabolite("C00199").
metabolite("C00212").
metabolite("C00221").
metabolite("C00224").
metabolite("C00229").
metabolite("C00242").
metabolite("C00248").
metabolite("C00250").
metabolite("C00251").
metabolite("C00253").
metabolite("C00254").
metabolite("C00262").
metabolite("C00263").
metabolite("C00279").
metabolite("C00280").
metabolite("C00281").
metabolite("C00283").
metabolite("C00294").
metabolite("C00299").
metabolite("C00301").
metabolite("C00311").
metabolite("C00320").
metabolite("C00322").
metabolite("C00328").
metabolite("C00332").
metabolite("C00342").
metabolite("C00343").
metabolite("C00346").
metabolite("C00350").
metabolite("C00361").
metabolite("C00362").
metabolite("C00365").
metabolite("C00378").
metabolite("C00385").
metabolite("C00387").
metabolite("C00415").
metabolite("C00416").
metabolite("C00418").
metabolite("C00419").
metabolite("C00440").
metabolite("C00441").
metabolite("C00442").
metabolite("C00461").
metabolite("C00463").
metabolite("C00469").
metabolite("C00475").
metabolite("C00493").
metabolite("C00517").
metabolite("C00526").
metabolite("C00534").
metabolite("C00559").
metabolite("C00579").
metabolite("C00585").
metabolite("C00603").
metabolite("C00612").
metabolite("C00620").
metabolite("C00631").
metabolite("C00632").
metabolite("C00641").
metabolite("C00647").
metabolite("C00655").
metabolite("C00661").
metabolite("C00665").
metabolite("C00668").
metabolite("C00669").
metabolite("C00685").
metabolite("C00704").
metabolite("C00711").
metabolite("C00735").
metabolite("C00750").
metabolite("C00836").
metabolite("C00870").
metabolite("C00886").
metabolite("C00909").
metabolite("C00944").
metabolite("C00956").
metabolite("C00979").
metabolite("C01010").
metabolite("C01034").
metabolite("C01079").
metabolite("C01081").
metabolite("C01083").
metabolite("C01094").
metabolite("C01107").
metabolite("C01118").
metabolite("C01120").
metabolite("C01167").
metabolite("C01179").
metabolite("C01185").
metabolite("C01194").
metabolite("C01209").
metabolite("C01227").
metabolite("C01261").
metabolite("C01269").
metabolite("C01277").
metabolite("C01302").
metabolite("C01346").
metabolite("C01352").
metabolite("C01429").
metabolite("C01635").
metabolite("C01652").
metabolite("C01653").
metabolite("C01694").
metabolite("C01762").
metabolite("C01885").
metabolite("C01997").
metabolite("C02165").
metabolite("C02191").
metabolite("C02229").
metabolite("C02291").
metabolite("C02554").
metabolite("C02567").
metabolite("C02637").
metabolite("C02700").
metabolite("C02714").
metabolite("C02737").
metabolite("C03175").
metabolite("C03205").
metabolite("C03360").
metabolite("C03475").
metabolite("C03496").
metabolite("C03506").
metabolite("C03512").
metabolite("C03518").
metabolite("C03722").
metabolite("C03734").
metabolite("C03824").
metabolite("C03836").
metabolite("C04076").
metabolite("C04236").
metabolite("C04302").
metabolite("C04332").
metabolite("C04409").
metabolite("C04637").
metabolite("C04688").
metabolite("C04691").
metabolite("C05330").
metabolite("C05345").
metabolite("C05378").
metabolite("C05485").
metabolite("C05489").
metabolite("C05512").
metabolite("C05535").
metabolite("C05560").
metabolite("C05714").
metabolite("C05745").
metabolite("C05746").
metabolite("C05748").
metabolite("C05749").
metabolite("C05754").
metabolite("C05755").
metabolite("C05760").
metabolite("C05824").
metabolite("C05863").
metabolite("C05864").
metabolite("C06604").
metabolite("C06606").
metabolite("C06814").
metabolite("C11355").
metabolite("C11482").
metabolite("DB4P").
metabolite("DGPP").
metabolite("DTP").
metabolite("ERTEOL").
metabolite("ERTROL").

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
orf("U116_").
orf("U155_").
orf("U15_").
orf("U168_").
orf("U178_").
orf("U180_").
orf("U196_").
orf("U1_").
orf("U202_").
orf("U206_").
orf("U20_").
orf("U228_").
orf("U24_").
orf("U30_").
orf("U47_").
orf("U51_").
orf("U53_").
orf("U54_").
orf("U62_").
orf("U64_").
orf("U71_").
orf("U76_").
orf("U83_").
orf("U84_").
orf("YAL062W").
orf("YAR073W").
orf("YAR075W").
orf("YBL015W").
orf("YBL039C").
orf("YBL068W").
orf("YBR021W").
orf("YBR068C").
orf("YBR069C").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR117C").
orf("YBR145W").
orf("YBR154C").
orf("YBR166C").
orf("YBR208C").
orf("YBR218C").
orf("YBR249C").
orf("YBR256C").
orf("YBR276C").
orf("YBR284W").
orf("YBR291C").
orf("YBR298C").
orf("YCL025C").
orf("YCL050C").
orf("YCR024C-A").
orf("YCR036W").
orf("YDL024C").
orf("YDL140C").
orf("YDL150W").
orf("YDL168W").
orf("YDL215C").
orf("YDL230W").
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
orf("YDR399W").
orf("YDR400W").
orf("YDR402C").
orf("YDR404C").
orf("YDR454C").
orf("YDR503C").
orf("YDR508C").
orf("YDR536W").
orf("YEL017C-A").
orf("YEL047C").
orf("YER014W").
orf("YER070W").
orf("YER075C").
orf("YER090W").
orf("YER099C").
orf("YFL018C").
orf("YFL036W").
orf("YFL053W").
orf("YFL055W").
orf("YFR019W").
orf("YFR028C").
orf("YFR047C").
orf("YFR053C").
orf("YGL001C").
orf("YGL008C").
orf("YGL012W").
orf("YGL026C").
orf("YGL037C").
orf("YGL062W").
orf("YGL070C").
orf("YGL148W").
orf("YGL154C").
orf("YGL253W").
orf("YGL256W").
orf("YGR037C").
orf("YGR087C").
orf("YGR094W").
orf("YGR121C").
orf("YGR155W").
orf("YGR170W").
orf("YGR240C").
orf("YGR254W").
orf("YHL011C").
orf("YHR008C").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR174W").
orf("YHR215W").
orf("YHR216W").
orf("YIL021W").
orf("YIL085C").
orf("YIL113W").
orf("YIL155C").
orf("YIR026C").
orf("YIR032C").
orf("YJL070C").
orf("YJL101C").
orf("YJL126W").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL155C").
orf("YJR025C").
orf("YJR063W").
orf("YJR077C").
orf("YJR078W").
orf("YJR095W").
orf("YJR103W").
orf("YJR104C").
orf("YJR130C").
orf("YJR133W").
orf("YJR139C").
orf("YJR148W").
orf("YKL001C").
orf("YKL024C").
orf("YKL106W").
orf("YKL144C").
orf("YKL181W").
orf("YKL182W").
orf("YKL211C").
orf("YKR031C").
orf("YKR039W").
orf("YKR053C").
orf("YLR027C").
orf("YLR044C").
orf("YLR134W").
orf("YLR209C").
orf("YLR231C").
orf("YLR245C").
orf("YLR286C").
orf("YLR305C").
orf("YLR432W").
orf("YML035C").
orf("YML056C").
orf("YML070W").
orf("YMR015C").
orf("YMR036C").
orf("YMR169C").
orf("YMR170C").
orf("YMR180C").
orf("YMR205C").
orf("YMR208W").
orf("YMR303C").
orf("YMR323W").
orf("YNL029C").
orf("YNL045W").
orf("YNL053W").
orf("YNL113W").
orf("YNL142W").
orf("YNL151C").
orf("YNL248C").
orf("YNL267W").
orf("YNL316C").
orf("YNR003C").
orf("YNR016C").
orf("YNR033W").
orf("YOL005C").
orf("YOL020W").
orf("YOL061W").
orf("YOL086C").
orf("YOL097C").
orf("YOR095C").
orf("YOR116C").
orf("YOR136W").
orf("YOR143C").
orf("YOR151C").
orf("YOR207C").
orf("YOR208W").
orf("YOR210W").
orf("YOR224C").
orf("YOR236W").
orf("YOR335C").
orf("YOR340C").
orf("YOR341W").
orf("YOR375C").
orf("YOR393W").
orf("YPL001W").
orf("YPL017C").
orf("YPL028W").
orf("YPL036W").
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

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

inhibitor(60,"C00082",cytosol).
inhibitor(60,"C00082",cytosol).

