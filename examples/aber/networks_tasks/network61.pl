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

in_compartment(Experiment,"C01092",cytosol,Day) :-
  not exclude(101),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01092",medium,Day),
  catalyst(101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(102),
  Day >= 1,
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01092",medium,Day) :-
  not exclude(102),
  Day >= 1,
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(102,Complex),
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
  not exclude(230),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(230),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(261),
  Day >= 1,
  in_compartment(Experiment,"C00026",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(261,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",medium,Day) :-
  not exclude(262),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(262,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(262),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  catalyst(262,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(341),
  Day >= 1,
  in_compartment(Experiment,"C00009",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",medium,Day) :-
  not exclude(342),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(342),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(342,Complex),
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

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(390),
  Day >= 1,
  in_compartment(Experiment,"C00022",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(401),
  Day >= 1,
  in_compartment(Experiment,"C00042",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",medium,Day) :-
  not exclude(402),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  catalyst(402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(402),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  catalyst(402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00262",cytosol,Day) :-
  not exclude(451),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00262",medium,Day),
  catalyst(451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(452),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  catalyst(452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00262",medium,Day) :-
  not exclude(452),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  catalyst(452,Complex),
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

in_compartment(Experiment,"C00214",cytosol,Day) :-
  not exclude(510),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00214",medium,Day),
  catalyst(510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00299",cytosol,Day) :-
  not exclude(540),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00299",medium,Day),
  catalyst(540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00387",cytosol,Day) :-
  not exclude(550),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00387",medium,Day),
  catalyst(550,Complex),
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

in_compartment(Experiment,"C00380",cytosol,Day) :-
  not exclude(600),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00380",medium,Day),
  catalyst(600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00134",cytosol,Day) :-
  not exclude(670),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00134",medium,Day),
  catalyst(670,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00430",cytosol,Day) :-
  not exclude(690),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00430",medium,Day),
  catalyst(690,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00334",cytosol,Day) :-
  not exclude(730),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00334",medium,Day),
  catalyst(730,Complex),
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

in_compartment(Experiment,"C00183",cytosol,Day) :-
  not exclude(791),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00183",medium,Day),
  catalyst(791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(792),
  Day >= 1,
  in_compartment(Experiment,"C00183",cytosol,Day),
  catalyst(792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00183",medium,Day) :-
  not exclude(792),
  Day >= 1,
  in_compartment(Experiment,"C00183",cytosol,Day),
  catalyst(792,Complex),
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

in_compartment(Experiment,"C00148",cytosol,Day) :-
  not exclude(821),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00148",medium,Day),
  catalyst(821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(822),
  Day >= 1,
  in_compartment(Experiment,"C00148",cytosol,Day),
  catalyst(822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00148",medium,Day) :-
  not exclude(822),
  Day >= 1,
  in_compartment(Experiment,"C00148",cytosol,Day),
  catalyst(822,Complex),
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

in_compartment(Experiment,"C00407",cytosol,Day) :-
  not exclude(861),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00407",medium,Day),
  catalyst(861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(862),
  Day >= 1,
  in_compartment(Experiment,"C00407",cytosol,Day),
  catalyst(862,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00407",medium,Day) :-
  not exclude(862),
  Day >= 1,
  in_compartment(Experiment,"C00407",cytosol,Day),
  catalyst(862,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00135",cytosol,Day) :-
  not exclude(871),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00135",medium,Day),
  catalyst(871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(872),
  Day >= 1,
  in_compartment(Experiment,"C00135",cytosol,Day),
  catalyst(872,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00135",medium,Day) :-
  not exclude(872),
  Day >= 1,
  in_compartment(Experiment,"C00135",cytosol,Day),
  catalyst(872,Complex),
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

in_compartment(Experiment,"C01722",cytosol,Day) :-
  not exclude(1050),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01722",medium,Day),
  catalyst(1050,Complex),
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

in_compartment(Experiment,"C00089",cytosol,Day) :-
  not exclude(1130),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00089",medium,Day),
  catalyst(1130,Complex),
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

in_compartment(Experiment,"C03722",mitochondrion,Day) :-
  not exclude(1291),
  Day >= 1,
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(1291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03722",cytosol,Day) :-
  not exclude(1292),
  Day >= 1,
  in_compartment(Experiment,"C03722",mitochondrion,Day),
  catalyst(1292,Complex),
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

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(1561),
  Day >= 1,
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",mitochondrion,Day) :-
  not exclude(1561),
  Day >= 1,
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(1562),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(1562),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1562,Complex),
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

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(1590),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(1590),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(1590),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1590),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(1590,Complex),
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

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(1671),
  Day >= 1,
  in_compartment(Experiment,"C00033",mitochondrion,Day),
  catalyst(1671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",mitochondrion,Day) :-
  not exclude(1672),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  catalyst(1672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04236",cytosol,Day) :-
  not exclude(1701),
  Day >= 1,
  in_compartment(Experiment,"C04236",mitochondrion,Day),
  catalyst(1701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04236",mitochondrion,Day) :-
  not exclude(1702),
  Day >= 1,
  in_compartment(Experiment,"C04236",cytosol,Day),
  catalyst(1702,Complex),
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

in_compartment(Experiment,"C00143",cytosol,Day) :-
  not exclude(1741),
  Day >= 1,
  in_compartment(Experiment,"C00143",mitochondrion,Day),
  catalyst(1741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",mitochondrion,Day) :-
  not exclude(1742),
  Day >= 1,
  in_compartment(Experiment,"C00143",cytosol,Day),
  catalyst(1742,Complex),
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

in_compartment(Experiment,"C00021",mitochondrion,Day) :-
  not exclude(1810),
  Day >= 1,
  in_compartment(Experiment,"C00019",mitochondrion,Day),
  in_compartment(Experiment,"C03226",mitochondrion,Day),
  catalyst(1810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(1810),
  Day >= 1,
  in_compartment(Experiment,"C00019",mitochondrion,Day),
  in_compartment(Experiment,"C03226",mitochondrion,Day),
  catalyst(1810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03226",mitochondrion,Day) :-
  not exclude(1820),
  Day >= 1,
  in_compartment(Experiment,"2NPMMB",mitochondrion,Day),
  in_compartment(Experiment,"C00007",mitochondrion,Day),
  catalyst(1820,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"2NPPP",cytosol,Day) :-
  not exclude(1870),
  Day >= 1,
  in_compartment(Experiment,"N4HBZ",cytosol,Day),
  catalyst(1870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(1870),
  Day >= 1,
  in_compartment(Experiment,"N4HBZ",cytosol,Day),
  catalyst(1870,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(1920),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(1920),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02987",cytosol,Day) :-
  not exclude(1920),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1920,Complex),
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

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(2110),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  in_compartment(Experiment,"C03722",mitochondrion,Day),
  catalyst(2110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2110),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  in_compartment(Experiment,"C03722",mitochondrion,Day),
  catalyst(2110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",mitochondrion,Day) :-
  not exclude(2110),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  in_compartment(Experiment,"C03722",mitochondrion,Day),
  catalyst(2110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(2150),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  catalyst(2150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2150),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  catalyst(2150,Complex),
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

in_compartment(Experiment,"C00005",mitochondrion,Day) :-
  not exclude(2441),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00143",mitochondrion,Day),
  catalyst(2441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",mitochondrion,Day) :-
  not exclude(2441),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00143",mitochondrion,Day),
  catalyst(2441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(2442),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00445",mitochondrion,Day),
  catalyst(2442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",mitochondrion,Day) :-
  not exclude(2442),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00445",mitochondrion,Day),
  catalyst(2442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(2450),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00143",mitochondrion,Day),
  catalyst(2450,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00440",mitochondrion,Day) :-
  not exclude(2450),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00143",mitochondrion,Day),
  catalyst(2450,Complex),
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

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(2500),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00415",mitochondrion,Day),
  catalyst(2500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",mitochondrion,Day) :-
  not exclude(2500),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00415",mitochondrion,Day),
  catalyst(2500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(2540),
  Day >= 1,
  in_compartment(Experiment,"C11355",cytosol,Day),
  catalyst(2540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00568",cytosol,Day) :-
  not exclude(2540),
  Day >= 1,
  in_compartment(Experiment,"C11355",cytosol,Day),
  catalyst(2540,Complex),
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

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(2711),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00534",cytosol,Day) :-
  not exclude(2711),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(2712),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00534",cytosol,Day),
  catalyst(2712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(2712),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00534",cytosol,Day),
  catalyst(2712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00250",cytosol,Day) :-
  not exclude(2712),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00534",cytosol,Day),
  catalyst(2712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00314",cytosol,Day),
  catalyst(2760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00627",cytosol,Day) :-
  not exclude(2760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00314",cytosol,Day),
  catalyst(2760,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(2860),
  Day >= 1,
  in_compartment(Experiment,"C01304",cytosol,Day),
  catalyst(2860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01268",cytosol,Day) :-
  not exclude(2860),
  Day >= 1,
  in_compartment(Experiment,"C01304",cytosol,Day),
  catalyst(2860,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2950),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01279",cytosol,Day),
  catalyst(2950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04556",cytosol,Day) :-
  not exclude(2950),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01279",cytosol,Day),
  catalyst(2950,Complex),
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

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(3040),
  Day >= 1,
  in_compartment(Experiment,"C00461",cytosol,Day),
  catalyst(3040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00734",cytosol,Day) :-
  not exclude(3040),
  Day >= 1,
  in_compartment(Experiment,"C00461",cytosol,Day),
  catalyst(3040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00110",cytosol,Day) :-
  not exclude(3070),
  Day >= 1,
  in_compartment(Experiment,"C04252",cytosol,Day),
  catalyst(3070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00464",cytosol,Day) :-
  not exclude(3070),
  Day >= 1,
  in_compartment(Experiment,"C04252",cytosol,Day),
  catalyst(3070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00110",cytosol,Day) :-
  not exclude(3090),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00381",cytosol,Day),
  catalyst(3090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(3090),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00381",cytosol,Day),
  catalyst(3090,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3130),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00127",cytosol,Day),
  catalyst(3130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(3130),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00127",cytosol,Day),
  catalyst(3130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(3220),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00555",mitochondrion,Day),
  catalyst(3220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00334",mitochondrion,Day) :-
  not exclude(3220),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00555",mitochondrion,Day),
  catalyst(3220,Complex),
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

in_compartment(Experiment,"MACAC",cytosol,Day) :-
  not exclude(3420),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00544",cytosol,Day),
  catalyst(3420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3440),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02220",cytosol,Day),
  catalyst(3440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(3440),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02220",cytosol,Day),
  catalyst(3440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00322",cytosol,Day) :-
  not exclude(3440),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02220",cytosol,Day),
  catalyst(3440,Complex),
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

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(3480),
  Day >= 1,
  in_compartment(Experiment,"C02794",cytosol,Day),
  catalyst(3480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00632",cytosol,Day) :-
  not exclude(3480),
  Day >= 1,
  in_compartment(Experiment,"C02794",cytosol,Day),
  catalyst(3480,Complex),
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

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(3550),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(3550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",mitochondrion,Day) :-
  not exclude(3550),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(3550,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3810),
  Day >= 1,
  in_compartment(Experiment,"C01100",cytosol,Day),
  catalyst(3810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00860",cytosol,Day) :-
  not exclude(3810),
  Day >= 1,
  in_compartment(Experiment,"C01100",cytosol,Day),
  catalyst(3810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3860),
  Day >= 1,
  in_compartment(Experiment,"C02739",cytosol,Day),
  catalyst(3860,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03883",cytosol,Day) :-
  not exclude(3860),
  Day >= 1,
  in_compartment(Experiment,"C02739",cytosol,Day),
  catalyst(3860,Complex),
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

in_compartment(Experiment,"C00170",cytosol,Day) :-
  not exclude(3930),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00134",cytosol,Day),
  catalyst(3930,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00315",cytosol,Day) :-
  not exclude(3930),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00134",cytosol,Day),
  catalyst(3930,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3950),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00134",cytosol,Day) :-
  not exclude(3950),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3980),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",cytosol,Day) :-
  not exclude(3980),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3990),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(3990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00327",cytosol,Day) :-
  not exclude(3990),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(3990,Complex),
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

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(4050),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(4050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00624",mitochondrion,Day) :-
  not exclude(4050),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(4050,Complex),
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

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(4131),
  Day >= 1,
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(4131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00322",mitochondrion,Day) :-
  not exclude(4131),
  Day >= 1,
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(4131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05533",mitochondrion,Day) :-
  not exclude(4132),
  Day >= 1,
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  in_compartment(Experiment,"C00322",mitochondrion,Day),
  catalyst(4132,Complex),
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

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(4301),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00141",mitochondrion,Day),
  catalyst(4301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00407",mitochondrion,Day) :-
  not exclude(4301),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00141",mitochondrion,Day),
  catalyst(4301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4302),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00407",mitochondrion,Day),
  catalyst(4302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00141",mitochondrion,Day) :-
  not exclude(4302),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00407",mitochondrion,Day),
  catalyst(4302,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4390),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(4390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00224",cytosol,Day) :-
  not exclude(4390),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(4390,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4421),
  Day >= 1,
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(4421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(4421),
  Day >= 1,
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(4421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00109",cytosol,Day) :-
  not exclude(4421),
  Day >= 1,
  in_compartment(Experiment,"C01118",cytosol,Day),
  catalyst(4421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01118",cytosol,Day) :-
  not exclude(4422),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00109",cytosol,Day),
  catalyst(4422,Complex),
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

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(4480),
  Day >= 1,
  in_compartment(Experiment,"C04489",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04144",cytosol,Day) :-
  not exclude(4480),
  Day >= 1,
  in_compartment(Experiment,"C04489",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4480,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4500),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(4500),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05330",cytosol,Day) :-
  not exclude(4500),
  Day >= 1,
  in_compartment(Experiment,"C02291",cytosol,Day),
  catalyst(4500,Complex),
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

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(4551),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00248",mitochondrion,Day),
  catalyst(4551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01242",mitochondrion,Day) :-
  not exclude(4551),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00248",mitochondrion,Day),
  catalyst(4551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",mitochondrion,Day) :-
  not exclude(4552),
  Day >= 1,
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  in_compartment(Experiment,"C01242",mitochondrion,Day),
  catalyst(4552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00248",mitochondrion,Day) :-
  not exclude(4552),
  Day >= 1,
  in_compartment(Experiment,"C00011",mitochondrion,Day),
  in_compartment(Experiment,"C01242",mitochondrion,Day),
  catalyst(4552,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4580),
  Day >= 1,
  in_compartment(Experiment,"C01102",cytosol,Day),
  catalyst(4580,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(4580),
  Day >= 1,
  in_compartment(Experiment,"C01102",cytosol,Day),
  catalyst(4580,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4630),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(4630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03082",cytosol,Day) :-
  not exclude(4630),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(4630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4720),
  Day >= 1,
  in_compartment(Experiment,"C00152",cytosol,Day),
  catalyst(4720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(4720),
  Day >= 1,
  in_compartment(Experiment,"C00152",cytosol,Day),
  catalyst(4720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(4750),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(4750),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05330",cytosol,Day),
  catalyst(4750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(4760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00152",cytosol,Day) :-
  not exclude(4760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4781),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(4781),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(4782),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00041",cytosol,Day),
  catalyst(4782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4782),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00041",cytosol,Day),
  catalyst(4782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4840),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00310",cytosol,Day),
  catalyst(4840,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06814",cytosol,Day) :-
  not exclude(4840),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00310",cytosol,Day),
  catalyst(4840,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4880),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4880),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06156",cytosol,Day) :-
  not exclude(4891),
  Day >= 1,
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(4891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00352",cytosol,Day) :-
  not exclude(4892),
  Day >= 1,
  in_compartment(Experiment,"C06156",cytosol,Day),
  catalyst(4892,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4971),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C04256",cytosol,Day),
  catalyst(4971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00043",cytosol,Day) :-
  not exclude(4971),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C04256",cytosol,Day),
  catalyst(4971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(4972),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00043",cytosol,Day),
  catalyst(4972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04256",cytosol,Day) :-
  not exclude(4972),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00043",cytosol,Day),
  catalyst(4972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(4991),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(4991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00357",cytosol,Day) :-
  not exclude(4991),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(4991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(4992),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00357",cytosol,Day),
  catalyst(4992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00352",cytosol,Day) :-
  not exclude(4992),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00357",cytosol,Day),
  catalyst(4992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(5000),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(5000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00352",cytosol,Day) :-
  not exclude(5000),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(5000,Complex),
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
  not exclude(5160),
  Day >= 1,
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(5160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01762",cytosol,Day) :-
  not exclude(5160),
  Day >= 1,
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(5160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5170),
  Day >= 1,
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(5170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00294",cytosol,Day) :-
  not exclude(5170),
  Day >= 1,
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(5170,Complex),
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

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(5301),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(5301),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00299",cytosol,Day),
  catalyst(5301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5302),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00299",cytosol,Day) :-
  not exclude(5302),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5310),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(5310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(5310),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00242",cytosol,Day),
  catalyst(5310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5330),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(5330),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00387",cytosol,Day),
  catalyst(5330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5350),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  catalyst(5350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00262",cytosol,Day) :-
  not exclude(5350),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  catalyst(5350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5361),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00360",cytosol,Day),
  catalyst(5361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00206",cytosol,Day) :-
  not exclude(5361),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00360",cytosol,Day),
  catalyst(5361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5362),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(5362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00360",cytosol,Day) :-
  not exclude(5362),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00206",cytosol,Day),
  catalyst(5362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5421),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(5421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00460",cytosol,Day) :-
  not exclude(5421),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(5421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5422),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00460",cytosol,Day),
  catalyst(5422,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01346",cytosol,Day) :-
  not exclude(5422),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00460",cytosol,Day),
  catalyst(5422,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5520),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(5520),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5520,Complex),
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
  not exclude(5581),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",cytosol,Day) :-
  not exclude(5581),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(5582),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(5582),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(5582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5630),
  Day >= 1,
  in_compartment(Experiment,"C00559",cytosol,Day),
  catalyst(5630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05512",cytosol,Day) :-
  not exclude(5630),
  Day >= 1,
  in_compartment(Experiment,"C00559",cytosol,Day),
  catalyst(5630,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5691),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00365",cytosol,Day) :-
  not exclude(5691),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00239",cytosol,Day) :-
  not exclude(5692),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5701),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(5701),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5702),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(5702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(5702),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(5702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5711),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00705",cytosol,Day) :-
  not exclude(5711),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5712),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(5712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00239",cytosol,Day) :-
  not exclude(5712),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(5712,Complex),
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

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(5880),
  Day >= 1,
  in_compartment(Experiment,"C01103",cytosol,Day),
  catalyst(5880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(5880),
  Day >= 1,
  in_compartment(Experiment,"C01103",cytosol,Day),
  catalyst(5880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00337",cytosol,Day) :-
  not exclude(5921),
  Day >= 1,
  in_compartment(Experiment,"C00438",cytosol,Day),
  catalyst(5921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00438",cytosol,Day) :-
  not exclude(5922),
  Day >= 1,
  in_compartment(Experiment,"C00337",cytosol,Day),
  catalyst(5922,Complex),
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

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6010),
  Day >= 1,
  in_compartment(Experiment,"C00575",cytosol,Day),
  catalyst(6010,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6120),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04640",cytosol,Day),
  catalyst(6120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6120),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04640",cytosol,Day),
  catalyst(6120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03373",cytosol,Day) :-
  not exclude(6120),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04640",cytosol,Day),
  catalyst(6120,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(6270),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(6270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6270),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(6270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6270),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(6270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"MZYMST",cytosol,Day) :-
  not exclude(6270),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(6270,Complex),
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

in_compartment(Experiment,"EPST",cytosol,Day) :-
  not exclude(6310),
  Day >= 1,
  in_compartment(Experiment,"C08817",cytosol,Day),
  catalyst(6310,Complex),
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

in_compartment(Experiment,"C01724",cytosol,Day) :-
  not exclude(6410),
  Day >= 1,
  in_compartment(Experiment,"C01054",cytosol,Day),
  catalyst(6410,Complex),
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
  not exclude(6480),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01107",cytosol,Day),
  catalyst(6480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01143",cytosol,Day) :-
  not exclude(6480),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01107",cytosol,Day),
  catalyst(6480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(6490),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01107",cytosol,Day) :-
  not exclude(6490),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(6500),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01107",cytosol,Day) :-
  not exclude(6500),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6500,Complex),
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

in_compartment(Experiment,"C00346",cytosol,Day) :-
  not exclude(6550),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(6550,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C16A",cytosol,Day) :-
  not exclude(6550),
  Day >= 1,
  in_compartment(Experiment,"C01120",cytosol,Day),
  catalyst(6550,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6620),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"CER2",cytosol,Day),
  catalyst(6620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"CER3",cytosol,Day) :-
  not exclude(6620),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"CER2",cytosol,Day),
  catalyst(6620,Complex),
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

in_compartment(Experiment,"C01177",cytosol,Day) :-
  not exclude(6790),
  Day >= 1,
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(6790,Complex),
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

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(6941),
  Day >= 1,
  in_compartment(Experiment,"C00063",mitochondrion,Day),
  in_compartment(Experiment,"C00416",mitochondrion,Day),
  catalyst(6941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00269",mitochondrion,Day) :-
  not exclude(6941),
  Day >= 1,
  in_compartment(Experiment,"C00063",mitochondrion,Day),
  in_compartment(Experiment,"C00416",mitochondrion,Day),
  catalyst(6941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",mitochondrion,Day) :-
  not exclude(6942),
  Day >= 1,
  in_compartment(Experiment,"C00013",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",mitochondrion,Day) :-
  not exclude(6942),
  Day >= 1,
  in_compartment(Experiment,"C00013",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(6950),
  Day >= 1,
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C03849",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(6950),
  Day >= 1,
  in_compartment(Experiment,"C01203",cytosol,Day),
  in_compartment(Experiment,"C03849",cytosol,Day),
  in_compartment(Experiment,"C04088",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  in_compartment(Experiment,"C06253",cytosol,Day),
  in_compartment(Experiment,"C161ACP",cytosol,Day),
  in_compartment(Experiment,"C182ACP",cytosol,Day),
  catalyst(6950,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7080),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7080),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7080),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05764",cytosol,Day) :-
  not exclude(7080),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7090),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7090),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7090),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05761",cytosol,Day) :-
  not exclude(7090),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7090,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7161),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7161),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00083",cytosol,Day) :-
  not exclude(7161),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(7161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(7162),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(7162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7162),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(7162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(7162),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(7162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(7260),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(7260),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(7320),
  Day >= 1,
  in_compartment(Experiment,"C02938",cytosol,Day),
  catalyst(7320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00954",cytosol,Day) :-
  not exclude(7320),
  Day >= 1,
  in_compartment(Experiment,"C02938",cytosol,Day),
  catalyst(7320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(7411),
  Day >= 1,
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(7411),
  Day >= 1,
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(7412),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(7412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01967",mitochondrion,Day) :-
  not exclude(7412),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(7412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7430),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(7430),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7440),
  Day >= 1,
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(7440),
  Day >= 1,
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(7440),
  Day >= 1,
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(7511),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00469",mitochondrion,Day),
  catalyst(7511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00084",mitochondrion,Day) :-
  not exclude(7511),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00469",mitochondrion,Day),
  catalyst(7511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(7512),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(7512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00469",mitochondrion,Day) :-
  not exclude(7512),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00084",mitochondrion,Day),
  catalyst(7512,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7620),
  Day >= 1,
  in_compartment(Experiment,"C00689",cytosol,Day),
  catalyst(7620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01083",cytosol,Day) :-
  not exclude(7620),
  Day >= 1,
  in_compartment(Experiment,"C00689",cytosol,Day),
  catalyst(7620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(7630),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(7630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00689",cytosol,Day) :-
  not exclude(7630),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(7630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7741),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00103",cytosol,Day),
  catalyst(7741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00029",cytosol,Day) :-
  not exclude(7741),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00103",cytosol,Day),
  catalyst(7741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00075",cytosol,Day) :-
  not exclude(7742),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(7742,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00103",cytosol,Day) :-
  not exclude(7742),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00029",cytosol,Day),
  catalyst(7742,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7780),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00794",cytosol,Day),
  catalyst(7780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00095",cytosol,Day) :-
  not exclude(7780),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00794",cytosol,Day),
  catalyst(7780,Complex),
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

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7861),
  Day >= 1,
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(7861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(7862),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(7862,Complex),
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
  not exclude(7901),
  Day >= 1,
  in_compartment(Experiment,"C00279",cytosol,Day),
  in_compartment(Experiment,"C06814",cytosol,Day),
  catalyst(7901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(7901),
  Day >= 1,
  in_compartment(Experiment,"C00279",cytosol,Day),
  in_compartment(Experiment,"C06814",cytosol,Day),
  catalyst(7901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00279",cytosol,Day) :-
  not exclude(7902),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06814",cytosol,Day) :-
  not exclude(7902),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7902,Complex),
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

in_compartment(Experiment,"C06814",cytosol,Day) :-
  not exclude(7931),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(7931,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00199",cytosol,Day) :-
  not exclude(7932),
  Day >= 1,
  in_compartment(Experiment,"C06814",cytosol,Day),
  catalyst(7932,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(7940),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00345",cytosol,Day),
  catalyst(7940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7940),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00345",cytosol,Day),
  catalyst(7940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00199",cytosol,Day) :-
  not exclude(7940),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00345",cytosol,Day),
  catalyst(7940,Complex),
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

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(8010),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00048",cytosol,Day),
  catalyst(8010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(8010),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00048",cytosol,Day),
  catalyst(8010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",mitochondrion,Day) :-
  not exclude(8091),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  catalyst(8091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01352",mitochondrion,Day) :-
  not exclude(8091),
  Day >= 1,
  in_compartment(Experiment,"C00016",mitochondrion,Day),
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  catalyst(8091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(8092),
  Day >= 1,
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8092,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(8092),
  Day >= 1,
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8092,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(8150),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(8150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05379",cytosol,Day) :-
  not exclude(8150),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(8150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(8200),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",cytosol,Day) :-
  not exclude(8200),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(8200,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(8271),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(8271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00236",cytosol,Day) :-
  not exclude(8271),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(8271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(8272),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8272),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(8272),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8272,Complex),
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

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(8351),
  Day >= 1,
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(8351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(8352),
  Day >= 1,
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(8352,Complex),
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
  not exclude(8400),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00221",cytosol,Day),
  catalyst(8400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01172",cytosol,Day) :-
  not exclude(8400),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00221",cytosol,Day),
  catalyst(8400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8411),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03638",cytosol,Day),
  catalyst(8411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8411),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03638",cytosol,Day),
  catalyst(8411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04312",cytosol,Day) :-
  not exclude(8411),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C03638",cytosol,Day),
  catalyst(8411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8412),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04312",cytosol,Day),
  catalyst(8412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03638",cytosol,Day) :-
  not exclude(8412),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04312",cytosol,Day),
  catalyst(8412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8421),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(8421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8421),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(8421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02073",cytosol,Day) :-
  not exclude(8421),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(8421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8422),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02073",cytosol,Day),
  catalyst(8422,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(8422),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02073",cytosol,Day),
  catalyst(8422,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8441),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04735",cytosol,Day),
  catalyst(8441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8441),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04735",cytosol,Day),
  catalyst(8441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04681",cytosol,Day) :-
  not exclude(8441),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04735",cytosol,Day),
  catalyst(8441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8442),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04681",cytosol,Day),
  catalyst(8442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(8442),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04681",cytosol,Day),
  catalyst(8442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04735",cytosol,Day) :-
  not exclude(8442),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04681",cytosol,Day),
  catalyst(8442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8451),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04827",cytosol,Day),
  catalyst(8451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8451),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04827",cytosol,Day),
  catalyst(8451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04801",cytosol,Day) :-
  not exclude(8451),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04827",cytosol,Day),
  catalyst(8451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8452),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04801",cytosol,Day),
  catalyst(8452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(8452),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04801",cytosol,Day),
  catalyst(8452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04827",cytosol,Day) :-
  not exclude(8452),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04801",cytosol,Day),
  catalyst(8452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04763",cytosol,Day),
  catalyst(8461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04763",cytosol,Day),
  catalyst(8461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04727",cytosol,Day) :-
  not exclude(8461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  in_compartment(Experiment,"C04763",cytosol,Day),
  catalyst(8461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8462),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04727",cytosol,Day),
  catalyst(8462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(8462),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04727",cytosol,Day),
  catalyst(8462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04763",cytosol,Day) :-
  not exclude(8462),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C04727",cytosol,Day),
  catalyst(8462,Complex),
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
  not exclude(8511),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00152",cytosol,Day),
  in_compartment(Experiment,"C01637",cytosol,Day),
  catalyst(8511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8511),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00152",cytosol,Day),
  in_compartment(Experiment,"C01637",cytosol,Day),
  catalyst(8511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03402",cytosol,Day) :-
  not exclude(8511),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00152",cytosol,Day),
  in_compartment(Experiment,"C01637",cytosol,Day),
  catalyst(8511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8512),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03402",cytosol,Day),
  catalyst(8512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00152",cytosol,Day) :-
  not exclude(8512),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03402",cytosol,Day),
  catalyst(8512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01637",cytosol,Day) :-
  not exclude(8512),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03402",cytosol,Day),
  catalyst(8512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8521),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  in_compartment(Experiment,"C01648",cytosol,Day),
  catalyst(8521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8521),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  in_compartment(Experiment,"C01648",cytosol,Day),
  catalyst(8521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03511",cytosol,Day) :-
  not exclude(8521),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  in_compartment(Experiment,"C01648",cytosol,Day),
  catalyst(8521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8522),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03511",cytosol,Day),
  catalyst(8522,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(8522),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03511",cytosol,Day),
  catalyst(8522,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01648",cytosol,Day) :-
  not exclude(8522),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03511",cytosol,Day),
  catalyst(8522,Complex),
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
  not exclude(8591),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C01650",cytosol,Day),
  catalyst(8591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8591),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C01650",cytosol,Day),
  catalyst(8591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02553",cytosol,Day) :-
  not exclude(8591),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C01650",cytosol,Day),
  catalyst(8591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8592),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02553",cytosol,Day),
  catalyst(8592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(8592),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02553",cytosol,Day),
  catalyst(8592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01650",cytosol,Day) :-
  not exclude(8592),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02553",cytosol,Day),
  catalyst(8592,Complex),
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
  not exclude(8611),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  catalyst(8611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8611),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  catalyst(8611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02430",cytosol,Day) :-
  not exclude(8611),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  in_compartment(Experiment,"C01647",cytosol,Day),
  catalyst(8611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8612),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02430",cytosol,Day),
  catalyst(8612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(8612),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02430",cytosol,Day),
  catalyst(8612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01647",cytosol,Day) :-
  not exclude(8612),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02430",cytosol,Day),
  catalyst(8612,Complex),
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
  not exclude(8641),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00407",cytosol,Day),
  in_compartment(Experiment,"C01644",cytosol,Day),
  catalyst(8641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8641),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00407",cytosol,Day),
  in_compartment(Experiment,"C01644",cytosol,Day),
  catalyst(8641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03127",cytosol,Day) :-
  not exclude(8641),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00407",cytosol,Day),
  in_compartment(Experiment,"C01644",cytosol,Day),
  catalyst(8641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8642),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03127",cytosol,Day),
  catalyst(8642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00407",cytosol,Day) :-
  not exclude(8642),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03127",cytosol,Day),
  catalyst(8642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01644",cytosol,Day) :-
  not exclude(8642),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03127",cytosol,Day),
  catalyst(8642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8651),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00123",cytosol,Day),
  in_compartment(Experiment,"C01645",cytosol,Day),
  catalyst(8651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8651),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00123",cytosol,Day),
  in_compartment(Experiment,"C01645",cytosol,Day),
  catalyst(8651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02047",cytosol,Day) :-
  not exclude(8651),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00123",cytosol,Day),
  in_compartment(Experiment,"C01645",cytosol,Day),
  catalyst(8651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8652),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02047",cytosol,Day),
  catalyst(8652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00123",cytosol,Day) :-
  not exclude(8652),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02047",cytosol,Day),
  catalyst(8652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01645",cytosol,Day) :-
  not exclude(8652),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02047",cytosol,Day),
  catalyst(8652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(8661),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  in_compartment(Experiment,"C01651",cytosol,Day),
  catalyst(8661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8661),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  in_compartment(Experiment,"C01651",cytosol,Day),
  catalyst(8661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02992",cytosol,Day) :-
  not exclude(8661),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00188",cytosol,Day),
  in_compartment(Experiment,"C01651",cytosol,Day),
  catalyst(8661,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8662),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02992",cytosol,Day),
  catalyst(8662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(8662),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02992",cytosol,Day),
  catalyst(8662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01651",cytosol,Day) :-
  not exclude(8662),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02992",cytosol,Day),
  catalyst(8662,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(8801),
  Day >= 1,
  in_compartment(Experiment,"C00161",cytosol,Day),
  catalyst(8801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00071",cytosol,Day) :-
  not exclude(8801),
  Day >= 1,
  in_compartment(Experiment,"C00161",cytosol,Day),
  catalyst(8801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00161",cytosol,Day) :-
  not exclude(8802),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00071",cytosol,Day),
  catalyst(8802,Complex),
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
  not exclude(8831),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04494",cytosol,Day),
  catalyst(8831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01228",cytosol,Day) :-
  not exclude(8831),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04494",cytosol,Day),
  catalyst(8831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8832),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01228",cytosol,Day),
  catalyst(8832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04494",cytosol,Day) :-
  not exclude(8832),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01228",cytosol,Day),
  catalyst(8832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8841),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00890",cytosol,Day),
  catalyst(8841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00890",cytosol,Day) :-
  not exclude(8841),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00890",cytosol,Day),
  catalyst(8841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8842),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00890",cytosol,Day),
  catalyst(8842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00890",cytosol,Day) :-
  not exclude(8842),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00890",cytosol,Day),
  catalyst(8842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8871),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(8871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(8871),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(8871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8872),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(8872,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",cytosol,Day) :-
  not exclude(8872),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00130",cytosol,Day),
  catalyst(8872,Complex),
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
  not exclude(8901),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(8901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(8901),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(8901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8902),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(8902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(8902),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(8902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8941),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(8941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(8941),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(8941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8942),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(8942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(8942),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(8942,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9161),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00354",cytosol,Day),
  catalyst(9161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01094",cytosol,Day) :-
  not exclude(9161),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00354",cytosol,Day),
  catalyst(9161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9162),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01094",cytosol,Day),
  catalyst(9162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00354",cytosol,Day) :-
  not exclude(9162),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C01094",cytosol,Day),
  catalyst(9162,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00562",cytosol,Day),
  catalyst(9191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00017",cytosol,Day) :-
  not exclude(9191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00562",cytosol,Day),
  catalyst(9191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9192),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00562",cytosol,Day) :-
  not exclude(9192),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00017",cytosol,Day),
  catalyst(9192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00145",cytosol,Day) :-
  not exclude(9231),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04090",cytosol,Day),
  catalyst(9231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00496",cytosol,Day) :-
  not exclude(9231),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04090",cytosol,Day),
  catalyst(9231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9232),
  Day >= 1,
  in_compartment(Experiment,"C00145",cytosol,Day),
  in_compartment(Experiment,"C00496",cytosol,Day),
  catalyst(9232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04090",cytosol,Day) :-
  not exclude(9232),
  Day >= 1,
  in_compartment(Experiment,"C00145",cytosol,Day),
  in_compartment(Experiment,"C00496",cytosol,Day),
  catalyst(9232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(9241),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00154",cytosol,Day),
  catalyst(9241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00249",cytosol,Day) :-
  not exclude(9241),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00154",cytosol,Day),
  catalyst(9241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9242),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(9242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00154",cytosol,Day) :-
  not exclude(9242),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(9242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(9301),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04233",cytosol,Day),
  catalyst(9301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9301),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04233",cytosol,Day),
  catalyst(9301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9302),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04233",cytosol,Day) :-
  not exclude(9302),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9302,Complex),
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
  not exclude(9371),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00422",cytosol,Day),
  catalyst(9371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00641",cytosol,Day) :-
  not exclude(9371),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00422",cytosol,Day),
  catalyst(9371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9372),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00422",cytosol,Day) :-
  not exclude(9372),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9372,Complex),
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
  not exclude(9461),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(9461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9461),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(9461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9462),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00286",cytosol,Day) :-
  not exclude(9462),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9471),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00131",cytosol,Day),
  catalyst(9471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9471),
  Day >= 1,
  in_compartment(Experiment,"C00039",cytosol,Day),
  in_compartment(Experiment,"C00131",cytosol,Day),
  catalyst(9471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(9472),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00131",cytosol,Day) :-
  not exclude(9472),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(9472,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(9611),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05702",cytosol,Day),
  catalyst(9611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05699",cytosol,Day) :-
  not exclude(9611),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05702",cytosol,Day),
  catalyst(9611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05688",cytosol,Day) :-
  not exclude(9612),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05702",cytosol,Day) :-
  not exclude(9612),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9612,Complex),
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

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(9731),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(9731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01246",cytosol,Day) :-
  not exclude(9731),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(9731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00029",cytosol,Day) :-
  not exclude(9732),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C01246",cytosol,Day),
  catalyst(9732,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00110",cytosol,Day) :-
  not exclude(9732),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C01246",cytosol,Day),
  catalyst(9732,Complex),
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
  not exclude(9821),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05752",cytosol,Day),
  catalyst(9821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05751",cytosol,Day) :-
  not exclude(9821),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05752",cytosol,Day),
  catalyst(9821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9822),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05751",cytosol,Day),
  catalyst(9822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05752",cytosol,Day) :-
  not exclude(9822),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05751",cytosol,Day),
  catalyst(9822,Complex),
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

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9891),
  Day >= 1,
  in_compartment(Experiment,"C04619",cytosol,Day),
  catalyst(9891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05754",cytosol,Day) :-
  not exclude(9891),
  Day >= 1,
  in_compartment(Experiment,"C04619",cytosol,Day),
  catalyst(9891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04619",cytosol,Day) :-
  not exclude(9892),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05754",cytosol,Day),
  catalyst(9892,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9901),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05745",cytosol,Day),
  catalyst(9901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04246",cytosol,Day) :-
  not exclude(9901),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05745",cytosol,Day),
  catalyst(9901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9902),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C04246",cytosol,Day),
  catalyst(9902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05745",cytosol,Day) :-
  not exclude(9902),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C04246",cytosol,Day),
  catalyst(9902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(9941),
  Day >= 1,
  in_compartment(Experiment,"C00040",cytosol,Day),
  in_compartment(Experiment,"C00187",cytosol,Day),
  catalyst(9941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02530",cytosol,Day) :-
  not exclude(9941),
  Day >= 1,
  in_compartment(Experiment,"C00040",cytosol,Day),
  in_compartment(Experiment,"C00187",cytosol,Day),
  catalyst(9941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00040",cytosol,Day) :-
  not exclude(9942),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C02530",cytosol,Day),
  catalyst(9942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00187",cytosol,Day) :-
  not exclude(9942),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C02530",cytosol,Day),
  catalyst(9942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(9961),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04506",cytosol,Day),
  catalyst(9961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04748",cytosol,Day) :-
  not exclude(9961),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C04506",cytosol,Day),
  catalyst(9961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(9962),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04748",cytosol,Day),
  catalyst(9962,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04506",cytosol,Day) :-
  not exclude(9962),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04748",cytosol,Day),
  catalyst(9962,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10021),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  in_compartment(Experiment,"C00412",cytosol,Day),
  catalyst(10021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00028",cytosol,Day) :-
  not exclude(10021),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  in_compartment(Experiment,"C00412",cytosol,Day),
  catalyst(10021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00510",cytosol,Day) :-
  not exclude(10021),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  in_compartment(Experiment,"C00412",cytosol,Day),
  catalyst(10021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10022),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  in_compartment(Experiment,"C00510",cytosol,Day),
  catalyst(10022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00030",cytosol,Day) :-
  not exclude(10022),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  in_compartment(Experiment,"C00510",cytosol,Day),
  catalyst(10022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00412",cytosol,Day) :-
  not exclude(10022),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  in_compartment(Experiment,"C00510",cytosol,Day),
  catalyst(10022,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10151),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00472",cytosol,Day),
  catalyst(10151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05309",cytosol,Day) :-
  not exclude(10151),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00472",cytosol,Day),
  catalyst(10151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10152),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05309",cytosol,Day),
  catalyst(10152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00472",cytosol,Day) :-
  not exclude(10152),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05309",cytosol,Day),
  catalyst(10152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10221),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(10221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(10221),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(10221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05108",cytosol,Day) :-
  not exclude(10221),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  catalyst(10221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10222),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10222),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10222),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01724",cytosol,Day) :-
  not exclude(10222),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00058",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10241),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05488",cytosol,Day),
  catalyst(10241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05487",cytosol,Day) :-
  not exclude(10241),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05488",cytosol,Day),
  catalyst(10241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10242),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05487",cytosol,Day),
  catalyst(10242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10242),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05487",cytosol,Day),
  catalyst(10242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05488",cytosol,Day) :-
  not exclude(10242),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05487",cytosol,Day),
  catalyst(10242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10251),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05140",cytosol,Day),
  catalyst(10251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05139",cytosol,Day) :-
  not exclude(10251),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C05140",cytosol,Day),
  catalyst(10251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10252),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10252,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10252),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10252,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05140",cytosol,Day) :-
  not exclude(10252),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05139",cytosol,Day),
  catalyst(10252,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10301),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10301),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01176",cytosol,Day) :-
  not exclude(10301),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05138",cytosol,Day),
  catalyst(10301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10302),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01176",cytosol,Day),
  catalyst(10302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05138",cytosol,Day) :-
  not exclude(10302),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C01176",cytosol,Day),
  catalyst(10302,Complex),
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

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10871),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  catalyst(10871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00249",cytosol,Day) :-
  not exclude(10871),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05764",cytosol,Day),
  catalyst(10871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10872),
  Day >= 1,
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(10872,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05764",cytosol,Day) :-
  not exclude(10872),
  Day >= 1,
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C00249",cytosol,Day),
  catalyst(10872,Complex),
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
  include(10910),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(10910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  include(10910),
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
  Day >= 1,
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
  Day >= 1,
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
assertable_reaction(10910).

retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(101).
retractable_reaction(102).
retractable_reaction(141).
retractable_reaction(142).
retractable_reaction(230).
retractable_reaction(261).
retractable_reaction(262).
retractable_reaction(321).
retractable_reaction(322).
retractable_reaction(341).
retractable_reaction(342).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(390).
retractable_reaction(401).
retractable_reaction(402).
retractable_reaction(451).
retractable_reaction(452).
retractable_reaction(490).
retractable_reaction(510).
retractable_reaction(540).
retractable_reaction(550).
retractable_reaction(581).
retractable_reaction(582).
retractable_reaction(600).
retractable_reaction(670).
retractable_reaction(690).
retractable_reaction(730).
retractable_reaction(781).
retractable_reaction(782).
retractable_reaction(791).
retractable_reaction(792).
retractable_reaction(801).
retractable_reaction(802).
retractable_reaction(811).
retractable_reaction(812).
retractable_reaction(821).
retractable_reaction(822).
retractable_reaction(831).
retractable_reaction(832).
retractable_reaction(861).
retractable_reaction(862).
retractable_reaction(871).
retractable_reaction(872).
retractable_reaction(881).
retractable_reaction(882).
retractable_reaction(901).
retractable_reaction(902).
retractable_reaction(980).
retractable_reaction(990).
retractable_reaction(1050).
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1130).
retractable_reaction(1160).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1291).
retractable_reaction(1292).
retractable_reaction(1491).
retractable_reaction(1492).
retractable_reaction(1501).
retractable_reaction(1502).
retractable_reaction(1561).
retractable_reaction(1562).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(1590).
retractable_reaction(1611).
retractable_reaction(1612).
retractable_reaction(1671).
retractable_reaction(1672).
retractable_reaction(1701).
retractable_reaction(1702).
retractable_reaction(1731).
retractable_reaction(1732).
retractable_reaction(1741).
retractable_reaction(1742).
retractable_reaction(1791).
retractable_reaction(1792).
retractable_reaction(1810).
retractable_reaction(1820).
retractable_reaction(1870).
retractable_reaction(1890).
retractable_reaction(1920).
retractable_reaction(2060).
retractable_reaction(2110).
retractable_reaction(2150).
retractable_reaction(2180).
retractable_reaction(2190).
retractable_reaction(2200).
retractable_reaction(2231).
retractable_reaction(2232).
retractable_reaction(2290).
retractable_reaction(2370).
retractable_reaction(2401).
retractable_reaction(2402).
retractable_reaction(2441).
retractable_reaction(2442).
retractable_reaction(2450).
retractable_reaction(2480).
retractable_reaction(2490).
retractable_reaction(2500).
retractable_reaction(2540).
retractable_reaction(2550).
retractable_reaction(2631).
retractable_reaction(2632).
retractable_reaction(2711).
retractable_reaction(2712).
retractable_reaction(2760).
retractable_reaction(2820).
retractable_reaction(2860).
retractable_reaction(2891).
retractable_reaction(2892).
retractable_reaction(2940).
retractable_reaction(2950).
retractable_reaction(2980).
retractable_reaction(2990).
retractable_reaction(3040).
retractable_reaction(3070).
retractable_reaction(3090).
retractable_reaction(3120).
retractable_reaction(3130).
retractable_reaction(3220).
retractable_reaction(3230).
retractable_reaction(3290).
retractable_reaction(3300).
retractable_reaction(3320).
retractable_reaction(3350).
retractable_reaction(3420).
retractable_reaction(3440).
retractable_reaction(3450).
retractable_reaction(3480).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3540).
retractable_reaction(3550).
retractable_reaction(3571).
retractable_reaction(3572).
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
retractable_reaction(3810).
retractable_reaction(3860).
retractable_reaction(3880).
retractable_reaction(3930).
retractable_reaction(3950).
retractable_reaction(3980).
retractable_reaction(3990).
retractable_reaction(4020).
retractable_reaction(4030).
retractable_reaction(4050).
retractable_reaction(4121).
retractable_reaction(4122).
retractable_reaction(4131).
retractable_reaction(4132).
retractable_reaction(4170).
retractable_reaction(4271).
retractable_reaction(4272).
retractable_reaction(4291).
retractable_reaction(4292).
retractable_reaction(4301).
retractable_reaction(4302).
retractable_reaction(4360).
retractable_reaction(4390).
retractable_reaction(4400).
retractable_reaction(4421).
retractable_reaction(4422).
retractable_reaction(4430).
retractable_reaction(4480).
retractable_reaction(4490).
retractable_reaction(4500).
retractable_reaction(4520).
retractable_reaction(4551).
retractable_reaction(4552).
retractable_reaction(4570).
retractable_reaction(4580).
retractable_reaction(4590).
retractable_reaction(4600).
retractable_reaction(4630).
retractable_reaction(4720).
retractable_reaction(4750).
retractable_reaction(4760).
retractable_reaction(4781).
retractable_reaction(4782).
retractable_reaction(4840).
retractable_reaction(4870).
retractable_reaction(4880).
retractable_reaction(4891).
retractable_reaction(4892).
retractable_reaction(4910).
retractable_reaction(4920).
retractable_reaction(4971).
retractable_reaction(4972).
retractable_reaction(4991).
retractable_reaction(4992).
retractable_reaction(5000).
retractable_reaction(5030).
retractable_reaction(5150).
retractable_reaction(5160).
retractable_reaction(5170).
retractable_reaction(5190).
retractable_reaction(5200).
retractable_reaction(5250).
retractable_reaction(5260).
retractable_reaction(5301).
retractable_reaction(5302).
retractable_reaction(5310).
retractable_reaction(5330).
retractable_reaction(5350).
retractable_reaction(5361).
retractable_reaction(5362).
retractable_reaction(5421).
retractable_reaction(5422).
retractable_reaction(5511).
retractable_reaction(5512).
retractable_reaction(5520).
retractable_reaction(5550).
retractable_reaction(5561).
retractable_reaction(5562).
retractable_reaction(5581).
retractable_reaction(5582).
retractable_reaction(5630).
retractable_reaction(5640).
retractable_reaction(5691).
retractable_reaction(5692).
retractable_reaction(5701).
retractable_reaction(5702).
retractable_reaction(5711).
retractable_reaction(5712).
retractable_reaction(5830).
retractable_reaction(5880).
retractable_reaction(5921).
retractable_reaction(5922).
retractable_reaction(5930).
retractable_reaction(6010).
retractable_reaction(6040).
retractable_reaction(6071).
retractable_reaction(6072).
retractable_reaction(6120).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6211).
retractable_reaction(6212).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(6250).
retractable_reaction(6270).
retractable_reaction(6290).
retractable_reaction(6300).
retractable_reaction(6310).
retractable_reaction(6330).
retractable_reaction(6390).
retractable_reaction(6410).
retractable_reaction(6440).
retractable_reaction(6461).
retractable_reaction(6462).
retractable_reaction(6480).
retractable_reaction(6490).
retractable_reaction(6500).
retractable_reaction(6510).
retractable_reaction(6520).
retractable_reaction(6541).
retractable_reaction(6542).
retractable_reaction(6550).
retractable_reaction(6560).
retractable_reaction(6620).
retractable_reaction(6640).
retractable_reaction(6680).
retractable_reaction(6710).
retractable_reaction(6740).
retractable_reaction(6790).
retractable_reaction(6820).
retractable_reaction(6860).
retractable_reaction(6931).
retractable_reaction(6932).
retractable_reaction(6941).
retractable_reaction(6942).
retractable_reaction(6950).
retractable_reaction(6960).
retractable_reaction(6970).
retractable_reaction(7080).
retractable_reaction(7090).
retractable_reaction(7110).
retractable_reaction(7161).
retractable_reaction(7162).
retractable_reaction(7260).
retractable_reaction(7320).
retractable_reaction(7411).
retractable_reaction(7412).
retractable_reaction(7430).
retractable_reaction(7440).
retractable_reaction(7511).
retractable_reaction(7512).
retractable_reaction(7530).
retractable_reaction(7550).
retractable_reaction(7561).
retractable_reaction(7562).
retractable_reaction(7620).
retractable_reaction(7630).
retractable_reaction(7741).
retractable_reaction(7742).
retractable_reaction(7751).
retractable_reaction(7752).
retractable_reaction(7780).
retractable_reaction(7800).
retractable_reaction(7861).
retractable_reaction(7862).
retractable_reaction(7870).
retractable_reaction(7880).
retractable_reaction(7901).
retractable_reaction(7902).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(7931).
retractable_reaction(7932).
retractable_reaction(7940).
retractable_reaction(7980).
retractable_reaction(8000).
retractable_reaction(8010).
retractable_reaction(8091).
retractable_reaction(8092).
retractable_reaction(8130).
retractable_reaction(8150).
retractable_reaction(8200).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8271).
retractable_reaction(8272).
retractable_reaction(8341).
retractable_reaction(8342).
retractable_reaction(8351).
retractable_reaction(8352).
retractable_reaction(8360).
retractable_reaction(8400).
retractable_reaction(8411).
retractable_reaction(8412).
retractable_reaction(8421).
retractable_reaction(8422).
retractable_reaction(8441).
retractable_reaction(8442).
retractable_reaction(8451).
retractable_reaction(8452).
retractable_reaction(8461).
retractable_reaction(8462).
retractable_reaction(8481).
retractable_reaction(8482).
retractable_reaction(8491).
retractable_reaction(8492).
retractable_reaction(8511).
retractable_reaction(8512).
retractable_reaction(8521).
retractable_reaction(8522).
retractable_reaction(8531).
retractable_reaction(8532).
retractable_reaction(8591).
retractable_reaction(8592).
retractable_reaction(8601).
retractable_reaction(8602).
retractable_reaction(8611).
retractable_reaction(8612).
retractable_reaction(8621).
retractable_reaction(8622).
retractable_reaction(8641).
retractable_reaction(8642).
retractable_reaction(8651).
retractable_reaction(8652).
retractable_reaction(8661).
retractable_reaction(8662).
retractable_reaction(8801).
retractable_reaction(8802).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(8831).
retractable_reaction(8832).
retractable_reaction(8841).
retractable_reaction(8842).
retractable_reaction(8871).
retractable_reaction(8872).
retractable_reaction(8881).
retractable_reaction(8882).
retractable_reaction(8901).
retractable_reaction(8902).
retractable_reaction(8941).
retractable_reaction(8942).
retractable_reaction(8991).
retractable_reaction(8992).
retractable_reaction(9041).
retractable_reaction(9042).
retractable_reaction(9071).
retractable_reaction(9072).
retractable_reaction(9081).
retractable_reaction(9082).
retractable_reaction(9161).
retractable_reaction(9162).
retractable_reaction(9191).
retractable_reaction(9192).
retractable_reaction(9231).
retractable_reaction(9232).
retractable_reaction(9241).
retractable_reaction(9242).
retractable_reaction(9301).
retractable_reaction(9302).
retractable_reaction(9321).
retractable_reaction(9322).
retractable_reaction(9371).
retractable_reaction(9372).
retractable_reaction(9441).
retractable_reaction(9442).
retractable_reaction(9461).
retractable_reaction(9462).
retractable_reaction(9471).
retractable_reaction(9472).
retractable_reaction(9491).
retractable_reaction(9492).
retractable_reaction(9561).
retractable_reaction(9562).
retractable_reaction(9611).
retractable_reaction(9612).
retractable_reaction(9631).
retractable_reaction(9632).
retractable_reaction(9651).
retractable_reaction(9652).
retractable_reaction(9661).
retractable_reaction(9662).
retractable_reaction(9671).
retractable_reaction(9672).
retractable_reaction(9731).
retractable_reaction(9732).
retractable_reaction(9771).
retractable_reaction(9772).
retractable_reaction(9821).
retractable_reaction(9822).
retractable_reaction(9861).
retractable_reaction(9862).
retractable_reaction(9891).
retractable_reaction(9892).
retractable_reaction(9901).
retractable_reaction(9902).
retractable_reaction(9941).
retractable_reaction(9942).
retractable_reaction(9961).
retractable_reaction(9962).
retractable_reaction(10021).
retractable_reaction(10022).
retractable_reaction(10031).
retractable_reaction(10032).
retractable_reaction(10151).
retractable_reaction(10152).
retractable_reaction(10221).
retractable_reaction(10222).
retractable_reaction(10241).
retractable_reaction(10242).
retractable_reaction(10251).
retractable_reaction(10252).
retractable_reaction(10301).
retractable_reaction(10302).
retractable_reaction(10321).
retractable_reaction(10322).
retractable_reaction(10451).
retractable_reaction(10452).
retractable_reaction(10491).
retractable_reaction(10492).
retractable_reaction(10521).
retractable_reaction(10522).
retractable_reaction(10541).
retractable_reaction(10542).
retractable_reaction(10581).
retractable_reaction(10582).
retractable_reaction(10641).
retractable_reaction(10642).
retractable_reaction(10661).
retractable_reaction(10662).
retractable_reaction(10811).
retractable_reaction(10812).
retractable_reaction(10871).
retractable_reaction(10872).
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

component("YNL280C",418).
component("YLR056W",350).
component("YMR083W",390).
component("YPL231W",471).
component("YJR159W",324).
component("YGL001C",226).
component("YML056C",377).
component("YLR432W",373).
component("YHR216W",282).
component("YAR075W",93).
component("YAR073W",92).
component("YDR127W",171).
component("YJR139C",321).
component("YNL009W",405).
component("YLR174W",360).
component("YHR183W",278).
component("YGR256W",259).
component("YCL018W",126).
component("YJR078W",317).
component("U58_",75).
component("YGR255C",258).
component("YMR015C",387).
component("YDR402C",185).
component("YGL055W",231).
component("YJL026W",292).
component("YGR180C",252).
component("YJR009C",310).
component("YJL052W",293).
component("YGR192C",254).
component("YOR374W",458).
component("YER073W",206).
component("U68_",79).
component("U55_",73).
component("YER069W",205).
component("YOR323C",452).
component("U2_",61).
component("YBR166C",118).
component("YNL280C",419).
component("YKL141W",330).
component("YOR375C",459).
component("YDL215C",158).
component("YAL062W",91).
component("U100_",20).
component("YBR035C",104).
component("YMR189W",394).
component("U56_",74).
component("YPL023C",461).
component("YGL125W",234).
component("YOR236W",450).
component("YBR084W",109).
component("YLR142W",354).
component("U65_",78).
component("U62_",77).
component("YHR068W",269).
component("YMR145C",393).
component("YML120C",381).
component("YKL192C",336).
component("YDL085W",141).
component("YBR046C",105).
component("YPL091W",464).
component("YNL052W",406).
component("YMR256C",400).
component("YLR395C",371).
component("YLR038C",348).
component("YIL111W",286).
component("YHR051W",268).
component("YGL191W",238).
component("YGL187C",237).
component("YDL067C",139).
component("Q0275",19).
component("Q0250",18).
component("YPL273W",477).
component("YLL062C",345).
component("YDR410C",187).
component("YER091C",209).
component("YJR073C",315).
component("YOL096C",436).
component("YLR172C",359).
component("YMR120C",392).
component("YBL013W",94).
component("YJL130C",300).
component("YJL088W",296).
component("YPR074C",483).
component("YBR117C",113).
component("YCL009C",125).
component("YMR062C",389).
component("YNL071W",407).
component("YNR019W",425).
component("YCR048W",134).
component("U48_",69).
component("YFL017C",216).
component("YPL231W",472).
component("YDL052C",138).
component("U8_",86).
component("YPL231W",473).
component("YLR299W",364).
component("YCR005C",131).
component("YML126C",383).
component("YDL182W",155).
component("YDL131W",147).
component("YNL117W",410).
component("YIR031C",290).
component("YOR321W",451).
component("YJR143C",322).
component("YGR199W",256).
component("YDL095W",143).
component("YDL093W",142).
component("YAL023C",90).
component("YPL227C",470).
component("YMR261C",401).
component("YML100W",380).
component("YBR126C",115).
component("YLR209C",361).
component("YDR354W",182).
component("YFR047C",223).
component("YJR133W",320).
component("U22_",58).
component("YDR399W",184).
component("YJL167W",307).
component("YPR069C",482).
component("YDR127W",172).
component("YHR068W",270).
component("YLR303W",365).
component("YML082W",379).
component("YJR130C",319).
component("YDR035W",162).
component("YBR249C",121).
component("YBR256C",122).
component("YHR137W",273).
component("YGL202W",239).
component("YLR027C",346).
component("YKL106W",328).
component("YOL140W",439).
component("YLR438W",375).
component("YKL104C",327).
component("YDR111C",169).
component("U51_",71).
component("YJR148W",323).
component("YHR208W",281).
component("YGL253W",243).
component("YFR053C",224).
component("YMR013C",386).
component("YCR036W",133).
component("YGR194C",255).
component("YCL040W",129).
component("YJR105W",318).
component("U81_",84).
component("YMR208W",396).
component("YPL203W",469).
component("YOR061W",440).
component("YKL166C",332).
component("YJL164C",306).
component("YIL035C",284).
component("YHR205W",280).
component("YHR102W",272).
component("YGL019W",227).
component("YHR025W",265).
component("YNR012W",423).
component("YPR121W",485).
component("YPL258C",475).
component("YOL055C",433).
component("YFR019W",221).
component("YDR208W",178).
component("YDR127W",173).
component("U21_",55).
component("YDR147W",176).
component("YER052C",201).
component("U19_",48).
component("U18_",44).
component("U17_",41).
component("U76_",82).
component("YMR220W",397).
component("YDR226W",179).
component("YKL067W",326).
component("YOL055C",434).
component("YDR454C",190).
component("YOL061W",435).
component("YKL181W",333).
component("YHL011C",261).
component("YER099C",211).
component("YBL068W",100).
component("YOR143C",444).
component("YLR328W",368).
component("YDL103C",145).
component("U94_",88).
component("YJR010W",311).
component("YBR029C",103).
component("YPR190C",490).
component("YPR187W",489).
component("YPR110C",484).
component("YPR010C",479).
component("YOR341W",455).
component("YOR340C",454).
component("YOR224C",449).
component("YOR210W",448).
component("YOR207C",447).
component("YOR151C",445).
component("YOR116C",442).
component("YOL005C",429).
component("YNR003C",422).
component("YNL248C",416).
component("YNL151C",414).
component("YNL113W",409).
component("YKL144C",331).
component("YJR063W",314).
component("YJL148W",303).
component("YJL140W",302).
component("YIL021W",283).
component("YHR143W-A",274).
component("YGL070C",233).
component("YFL036W",218).
component("YDR404C",186).
component("YDR156W",177).
component("YDR045C",163).
component("YDL150W",154).
component("YDL140C",149).
component("YBR154C",117).
component("YPR175W",488).
component("YPL167C",467).
component("YOR330C",453).
component("YOL115W",438).
component("YNL299W",420).
component("YNL262W",417).
component("YNL102W",408).
component("YJR043C",313).
component("YJR006W",309).
component("YJL090C",297).
component("YIL139C",287).
component("YEL055C",197).
component("YDR419W",188).
component("YDR121W",170).
component("YDL102W",144).
component("YCR014C",132).
component("YBR278W",123).
component("YBL035C",96).
component("YKL035W",325).
component("YHL012W",262).
component("YDR058C",165).
component("YOL011W",431).
component("YMR008C",385).
component("YMR006C",384).
component("U105_",22).
component("U101_",21).
component("YJL068C",294).
component("YPL072W",463).
component("YOR124C",443).
component("YNL186W",415).
component("YMR304W",403).
component("YMR223W",398).
component("YKR098C",344).
component("YJL197W",308).
component("YIL156W",288).
component("YFR010W",220).
component("YER151C",214).
component("YER144C",213).
component("YER098W",210).
component("YDR069C",166).
component("YDL122W",146).
component("YBR058C",106).
component("YBL067C",99).
component("YJR019C",312).
component("YDR074W",167).
component("YFR025C",222).
component("YPL179W",468).
component("YNR032W",426).
component("YML057W",378).
component("YML016C",376).
component("YLR433C",374).
component("YGR123C",248).
component("YER133W",212).
component("YER089C",207).
component("YDR436W",189).
component("YDR075W",168).
component("YDL188C",156).
component("YDL134C",148).
component("YDL047W",137).
component("YDL006W",136).
component("YBR125C",114).
component("YBL056W",98).
component("U9_",89).
component("YJL155C",305).
component("U34_",65).
component("U33_",64).
component("U32_",63).
component("U30_",62).
component("U29_",60).
component("U24_",59).
component("YHR044C",267).
component("YHR043C",266).
component("YOR360C",457).
component("YGL248W",242).
component("YGL027C",229).
component("YLR286C",363).
component("YER043C",200).
component("YLR160C",358).
component("YLR158C",357).
component("YLR157C",356).
component("YLR155C",355).
component("YDR321W",181).
component("YGL037C",230).
component("U43_",67).
component("U42_",66).
component("YLR308W",367).
component("YLR307W",366).
component("U53_",72).
component("YLR420W",372).
component("YIR032C",291).
component("YLR028C",347).
component("YHR144C",275).
component("YHR144C",276).
component("YNL141W",411).
component("YBR153W",116).
component("YDL238C",159).
component("YNL141W",412).
component("YBR084W",110).
component("YJL126W",299).
component("U44_",68).
component("YHR201C",279).
component("YBR111C",112).
component("YCL030C",128).
component("YER005W",199).
component("YLR231C",362).
component("U88_",85).
component("YDR538W",195).
component("YLR134W",353).
component("YLR044C",349).
component("YGR087C",245).
component("YDR380W",183).
component("YDL080C",140).
component("YMR250W",399).
component("YKL184W",335).
component("YEL021W",196).
component("YKL211C",338).
component("YKR097W",343).
component("YNR033W",427).
component("YKL211C",339).
component("YER090W",208).
component("YDR127W",174).
component("YPL281C",478).
component("YOR393W",460).
component("YMR323W",404).
component("YHR174W",277).
component("YGR254W",257).
component("YGL026C",228).
component("YGR155W",250).
component("YNL316C",421).
component("YCR053W",135).
component("YDR127W",175).
component("YGL148W",235).
component("YIL167W",289).
component("YCL064C",130).
component("YFR055W",225).
component("YJL121C",298).
component("YBR019C",102).
component("YDR007W",160).
component("YOR095C",441).
component("YBR196C",119).
component("YPL117C",465).
component("U14_",32).
component("YMR105C",391).
component("YKL127W",329).
component("YEL058W",198).
component("YPR060C",481).
component("YHR072W",271).
component("YJL153C",304).
component("YGR264C",260).
component("YGR171C",251).
component("YHR011W",263).
component("YDR023W",161).
component("YGL245W",241).
component("YOR168W",446).
component("YPR047W",480).
component("YLR060W",351).
component("YFL022C",217).
component("YHR019C",264).
component("YKL194C",337).
component("YIL078W",285).
component("YPL160W",466).
component("YLR382C",370).
component("YPL040C",462).
component("YBL076C",101).
component("YGR094W",246).
component("YGL234W",240).
component("YER183C",215).
component("U90_",87).
component("YNR057C",428).
component("YDL141W",150).
component("YDL141W",151).
component("YDL141W",152).
component("YDL141W",153).
component("YPR145W",487).
component("YGR124W",249).
component("YGL062W",232).
component("YBR218C",120).
component("YPL231W",474).
component("YNR016C",424).
component("YKL182W",334).
component("YGR037C",244).
component("YJL087C",295).
component("YOL010W",430).
component("YPR138C",486).
component("YPL265W",476).
component("YOR348C",456).
component("YOL103W",437).
component("YOL020W",432).
component("YNL142W",413).
component("YMR272C",402).
component("YMR202W",395).
component("YMR056C",388).
component("YML123C",382).
component("YLR348C",369).
component("YLR100C",352).
component("YKR053C",342).
component("YKR039W",341).
component("YKL217W",340).
component("YJR077C",316).
component("YJL134W",301).
component("YGR191W",253).
component("YGR121C",247).
component("YGL186C",236).
component("YFL055W",219).
component("YER060W-A",204).
component("YER060W",203).
component("YER056C",202).
component("YDR536W",194).
component("YDR508C",193).
component("YDR503C",192).
component("YDR497C",191).
component("YDR294C",180).
component("YDR046C",164).
component("YDL210W",157).
component("YCL025C",127).
component("YBR291C",124).
component("YBR085W",111).
component("YBR069C",108).
component("YBR068C",107).
component("YBL042C",97).
component("YBL030C",95).
component("U7_",83).
component("U6_",81).
component("U69_",80).
component("U5_",76).
component("U50_",70).
component("U228_",57).
component("U222_",56).
component("U219_",54).
component("U214_",53).
component("U213_",52).
component("U207_",51).
component("U205_",50).
component("U201_",49).
component("U197_",47).
component("U195_",46).
component("U192_",45).
component("U187_",43).
component("U181_",42).
component("U179_",40).
component("U175_",39).
component("U171_",38).
component("U166_",37).
component("U165_",36).
component("U161_",35).
component("U155_",34).
component("U154_",33).
component("U147_",31).
component("U12_",30).
component("U128_",29).
component("U122_",28).
component("U119_",27).
component("U116_",26).
component("U115_",25).
component("U110_",24).
component("U10_",23).
component("I01179",17).
component("I00631",16).
component("I00493",15).
component("I00463",14).
component("I00279",13).
component("I00166",12).
component("I00119",11).
component("I00108",10).
component("I00074",9).
component("I00008",8).
component("I00007",7).
component("I00006",6).
component("I00005",5).
component("I00004",4).
component("I00003",3).
component("I00002",2).
component("I00001",1).


catalyst(6390,418).
catalyst(6300,350).
catalyst(7511,390).
catalyst(7512,390).
catalyst(10811,471).
catalyst(10812,471).
catalyst(7780,324).
catalyst(10241,226).
catalyst(10242,226).
catalyst(10251,226).
catalyst(10252,226).
catalyst(10301,226).
catalyst(10302,226).
catalyst(10321,226).
catalyst(10322,226).
catalyst(6040,377).
catalyst(6040,373).
catalyst(6040,282).
catalyst(6040,93).
catalyst(6040,92).
catalyst(3730,171).
catalyst(4600,321).
catalyst(8130,405).
catalyst(8150,405).
catalyst(8130,360).
catalyst(8150,360).
catalyst(7940,278).
catalyst(7940,259).
catalyst(4170,126).
catalyst(3520,317).
catalyst(3420,75).
catalyst(1820,258).
catalyst(6290,387).
catalyst(10031,185).
catalyst(10032,185).
catalyst(10021,231).
catalyst(10022,231).
catalyst(10641,292).
catalyst(10642,292).
catalyst(10641,252).
catalyst(10642,252).
catalyst(8271,310).
catalyst(8272,310).
catalyst(8271,293).
catalyst(8272,293).
catalyst(8271,254).
catalyst(8272,254).
catalyst(3540,458).
catalyst(3550,458).
catalyst(3540,206).
catalyst(3220,79).
catalyst(3450,73).
catalyst(4030,205).
catalyst(3290,452).
catalyst(3300,452).
catalyst(7440,61).
catalyst(3660,118).
catalyst(10221,419).
catalyst(10222,419).
catalyst(7411,330).
catalyst(7412,330).
catalyst(8091,330).
catalyst(8092,330).
catalyst(4910,459).
catalyst(4920,158).
catalyst(4910,91).
catalyst(2200,20).
catalyst(2711,104).
catalyst(2712,104).
catalyst(4551,394).
catalyst(4552,394).
catalyst(3440,74).
catalyst(2450,461).
catalyst(2450,234).
catalyst(2490,450).
catalyst(2500,450).
catalyst(2441,109).
catalyst(2442,109).
catalyst(3230,354).
catalyst(3320,78).
catalyst(3350,77).
catalyst(3880,269).
catalyst(7430,393).
catalyst(7260,381).
catalyst(7260,336).
catalyst(7430,141).
catalyst(10151,105).
catalyst(10152,105).
catalyst(3130,464).
catalyst(10661,406).
catalyst(10662,406).
catalyst(10661,400).
catalyst(10662,400).
catalyst(10661,371).
catalyst(10662,371).
catalyst(10661,348).
catalyst(10662,348).
catalyst(10661,286).
catalyst(10662,286).
catalyst(10661,268).
catalyst(10662,268).
catalyst(10661,238).
catalyst(10662,238).
catalyst(10661,237).
catalyst(10662,237).
catalyst(10661,139).
catalyst(10662,139).
catalyst(10661,19).
catalyst(10662,19).
catalyst(10661,18).
catalyst(10662,18).
catalyst(4750,477).
catalyst(4750,345).
catalyst(9961,187).
catalyst(9962,187).
catalyst(4480,209).
catalyst(6860,315).
catalyst(1810,436).
catalyst(4400,359).
catalyst(6071,392).
catalyst(6072,392).
catalyst(2370,94).
catalyst(5930,300).
catalyst(3990,296).
catalyst(7901,483).
catalyst(7902,483).
catalyst(7901,113).
catalyst(7902,113).
catalyst(10581,125).
catalyst(10582,125).
catalyst(4050,389).
catalyst(10541,407).
catalyst(10542,407).
catalyst(9941,425).
catalyst(9942,425).
catalyst(9941,134).
catalyst(9942,134).
catalyst(4360,69).
catalyst(4991,216).
catalyst(4992,216).
catalyst(10451,472).
catalyst(10452,472).
catalyst(10491,472).
catalyst(10492,472).
catalyst(10521,472).
catalyst(10522,472).
catalyst(6950,138).
catalyst(6950,86).
catalyst(9771,473).
catalyst(9772,473).
catalyst(9821,473).
catalyst(9822,473).
catalyst(9861,473).
catalyst(9862,473).
catalyst(9891,473).
catalyst(9892,473).
catalyst(9901,473).
catalyst(9902,473).
catalyst(3120,364).
catalyst(8200,131).
catalyst(6541,383).
catalyst(6542,383).
catalyst(7530,155).
catalyst(7530,147).
catalyst(8010,410).
catalyst(8010,290).
catalyst(3070,451).
catalyst(3070,322).
catalyst(3070,256).
catalyst(3070,143).
catalyst(3070,142).
catalyst(3070,90).
catalyst(9731,470).
catalyst(9732,470).
catalyst(7630,401).
catalyst(7630,380).
catalyst(7630,115).
catalyst(5561,361).
catalyst(5562,361).
catalyst(5581,361).
catalyst(5582,361).
catalyst(3620,182).
catalyst(2110,223).
catalyst(2190,223).
catalyst(5550,320).
catalyst(5301,58).
catalyst(5302,58).
catalyst(5310,184).
catalyst(6440,307).
catalyst(3930,482).
catalyst(3710,172).
catalyst(9671,270).
catalyst(9672,270).
catalyst(4430,365).
catalyst(4421,379).
catalyst(4422,379).
catalyst(9611,319).
catalyst(9612,319).
catalyst(9631,319).
catalyst(9632,319).
catalyst(9651,319).
catalyst(9652,319).
catalyst(9661,319).
catalyst(9662,319).
catalyst(3760,162).
catalyst(3760,121).
catalyst(2820,122).
catalyst(3650,273).
catalyst(3671,273).
catalyst(3672,273).
catalyst(3650,239).
catalyst(3571,346).
catalyst(3572,346).
catalyst(3571,328).
catalyst(3572,328).
catalyst(4020,439).
catalyst(3980,375).
catalyst(5000,327).
catalyst(4781,169).
catalyst(4782,169).
catalyst(4121,71).
catalyst(4122,71).
catalyst(4271,323).
catalyst(4272,323).
catalyst(4291,323).
catalyst(4292,323).
catalyst(4301,281).
catalyst(4302,281).
catalyst(8360,243).
catalyst(8360,224).
catalyst(3090,386).
catalyst(7870,133).
catalyst(7880,133).
catalyst(4840,255).
catalyst(8400,129).
catalyst(5520,318).
catalyst(2760,84).
catalyst(6490,396).
catalyst(6500,396).
catalyst(6510,396).
catalyst(6520,396).
catalyst(9561,469).
catalyst(9562,469).
catalyst(9561,440).
catalyst(9562,440).
catalyst(9561,332).
catalyst(9562,332).
catalyst(9561,306).
catalyst(9562,306).
catalyst(9561,284).
catalyst(9562,284).
catalyst(9561,280).
catalyst(9562,280).
catalyst(9561,272).
catalyst(9562,272).
catalyst(9561,227).
catalyst(9562,227).
catalyst(4590,265).
catalyst(5830,423).
catalyst(2950,485).
catalyst(2950,475).
catalyst(2950,433).
catalyst(6740,221).
catalyst(6740,178).
catalyst(3720,173).
catalyst(5330,55).
catalyst(6820,176).
catalyst(4630,201).
catalyst(5361,48).
catalyst(5362,48).
catalyst(5701,44).
catalyst(5702,44).
catalyst(5711,41).
catalyst(5712,41).
catalyst(2891,82).
catalyst(2892,82).
catalyst(6480,397).
catalyst(5511,179).
catalyst(5512,179).
catalyst(5421,326).
catalyst(5422,326).
catalyst(2940,434).
catalyst(6181,190).
catalyst(6182,190).
catalyst(6241,435).
catalyst(6242,435).
catalyst(6241,333).
catalyst(6242,333).
catalyst(6241,261).
catalyst(6242,261).
catalyst(6241,211).
catalyst(6242,211).
catalyst(6241,100).
catalyst(6242,100).
catalyst(2980,444).
catalyst(2180,368).
catalyst(4971,145).
catalyst(4972,145).
catalyst(2290,88).
catalyst(4390,311).
catalyst(6931,103).
catalyst(6932,103).
catalyst(6941,103).
catalyst(6942,103).
catalyst(9491,490).
catalyst(9492,490).
catalyst(9491,489).
catalyst(9492,489).
catalyst(9491,484).
catalyst(9492,484).
catalyst(9491,479).
catalyst(9492,479).
catalyst(9491,455).
catalyst(9492,455).
catalyst(9491,454).
catalyst(9492,454).
catalyst(9491,449).
catalyst(9492,449).
catalyst(9491,448).
catalyst(9492,448).
catalyst(9491,447).
catalyst(9492,447).
catalyst(9491,445).
catalyst(9492,445).
catalyst(9491,442).
catalyst(9492,442).
catalyst(9491,429).
catalyst(9492,429).
catalyst(9491,422).
catalyst(9492,422).
catalyst(9491,416).
catalyst(9492,416).
catalyst(9491,414).
catalyst(9492,414).
catalyst(9491,409).
catalyst(9492,409).
catalyst(9491,331).
catalyst(9492,331).
catalyst(9491,314).
catalyst(9492,314).
catalyst(9491,303).
catalyst(9492,303).
catalyst(9491,302).
catalyst(9492,302).
catalyst(9491,283).
catalyst(9492,283).
catalyst(9491,274).
catalyst(9492,274).
catalyst(9491,233).
catalyst(9492,233).
catalyst(9491,218).
catalyst(9492,218).
catalyst(9491,186).
catalyst(9492,186).
catalyst(9491,177).
catalyst(9492,177).
catalyst(9491,163).
catalyst(9492,163).
catalyst(9491,154).
catalyst(9492,154).
catalyst(9491,149).
catalyst(9492,149).
catalyst(9491,117).
catalyst(9492,117).
catalyst(9441,488).
catalyst(9442,488).
catalyst(9461,488).
catalyst(9462,488).
catalyst(9471,488).
catalyst(9472,488).
catalyst(9441,467).
catalyst(9442,467).
catalyst(9461,467).
catalyst(9462,467).
catalyst(9471,467).
catalyst(9472,467).
catalyst(9441,453).
catalyst(9442,453).
catalyst(9461,453).
catalyst(9462,453).
catalyst(9471,453).
catalyst(9472,453).
catalyst(9441,438).
catalyst(9442,438).
catalyst(9461,438).
catalyst(9462,438).
catalyst(9471,438).
catalyst(9472,438).
catalyst(9441,420).
catalyst(9442,420).
catalyst(9461,420).
catalyst(9462,420).
catalyst(9471,420).
catalyst(9472,420).
catalyst(9441,417).
catalyst(9442,417).
catalyst(9461,417).
catalyst(9462,417).
catalyst(9471,417).
catalyst(9472,417).
catalyst(9441,408).
catalyst(9442,408).
catalyst(9461,408).
catalyst(9462,408).
catalyst(9471,408).
catalyst(9472,408).
catalyst(9441,313).
catalyst(9442,313).
catalyst(9461,313).
catalyst(9462,313).
catalyst(9471,313).
catalyst(9472,313).
catalyst(9441,309).
catalyst(9442,309).
catalyst(9461,309).
catalyst(9462,309).
catalyst(9471,309).
catalyst(9472,309).
catalyst(9441,297).
catalyst(9442,297).
catalyst(9461,297).
catalyst(9462,297).
catalyst(9471,297).
catalyst(9472,297).
catalyst(9441,287).
catalyst(9442,287).
catalyst(9461,287).
catalyst(9462,287).
catalyst(9471,287).
catalyst(9472,287).
catalyst(9441,197).
catalyst(9442,197).
catalyst(9461,197).
catalyst(9462,197).
catalyst(9471,197).
catalyst(9472,197).
catalyst(9441,188).
catalyst(9442,188).
catalyst(9461,188).
catalyst(9462,188).
catalyst(9471,188).
catalyst(9472,188).
catalyst(9441,170).
catalyst(9442,170).
catalyst(9461,170).
catalyst(9462,170).
catalyst(9471,170).
catalyst(9472,170).
catalyst(9441,144).
catalyst(9442,144).
catalyst(9461,144).
catalyst(9462,144).
catalyst(9471,144).
catalyst(9472,144).
catalyst(9441,132).
catalyst(9442,132).
catalyst(9461,132).
catalyst(9462,132).
catalyst(9471,132).
catalyst(9472,132).
catalyst(9441,123).
catalyst(9442,123).
catalyst(9461,123).
catalyst(9462,123).
catalyst(9471,123).
catalyst(9472,123).
catalyst(9441,96).
catalyst(9442,96).
catalyst(9461,96).
catalyst(9462,96).
catalyst(9471,96).
catalyst(9472,96).
catalyst(7741,325).
catalyst(7742,325).
catalyst(7741,262).
catalyst(7742,262).
catalyst(9371,165).
catalyst(9372,165).
catalyst(9301,431).
catalyst(9302,431).
catalyst(9321,431).
catalyst(9322,431).
catalyst(9301,385).
catalyst(9302,385).
catalyst(9321,385).
catalyst(9322,385).
catalyst(9301,384).
catalyst(9302,384).
catalyst(9321,384).
catalyst(9322,384).
catalyst(2060,22).
catalyst(2150,21).
catalyst(7561,294).
catalyst(7562,294).
catalyst(9231,463).
catalyst(9232,463).
catalyst(9231,443).
catalyst(9232,443).
catalyst(9231,415).
catalyst(9232,415).
catalyst(9231,403).
catalyst(9232,403).
catalyst(9231,398).
catalyst(9232,398).
catalyst(9231,344).
catalyst(9232,344).
catalyst(9231,308).
catalyst(9232,308).
catalyst(9231,288).
catalyst(9232,288).
catalyst(9231,220).
catalyst(9232,220).
catalyst(9231,214).
catalyst(9232,214).
catalyst(9231,213).
catalyst(9232,213).
catalyst(9231,210).
catalyst(9232,210).
catalyst(9231,166).
catalyst(9232,166).
catalyst(9231,146).
catalyst(9232,146).
catalyst(9231,106).
catalyst(9232,106).
catalyst(9231,99).
catalyst(9232,99).
catalyst(9241,312).
catalyst(9242,312).
catalyst(7620,167).
catalyst(3810,222).
catalyst(9191,468).
catalyst(9192,468).
catalyst(9191,426).
catalyst(9192,426).
catalyst(9191,378).
catalyst(9192,378).
catalyst(9191,376).
catalyst(9192,376).
catalyst(9191,374).
catalyst(9192,374).
catalyst(9191,248).
catalyst(9192,248).
catalyst(9191,212).
catalyst(9192,212).
catalyst(9191,207).
catalyst(9192,207).
catalyst(9191,189).
catalyst(9192,189).
catalyst(9191,168).
catalyst(9192,168).
catalyst(9191,156).
catalyst(9192,156).
catalyst(9191,148).
catalyst(9192,148).
catalyst(9191,137).
catalyst(9192,137).
catalyst(9191,136).
catalyst(9192,136).
catalyst(9191,114).
catalyst(9192,114).
catalyst(9191,98).
catalyst(9192,98).
catalyst(6710,89).
catalyst(7800,305).
catalyst(5150,65).
catalyst(5160,64).
catalyst(5170,63).
catalyst(5190,62).
catalyst(5200,60).
catalyst(5250,59).
catalyst(9161,267).
catalyst(9162,267).
catalyst(9161,266).
catalyst(9162,266).
catalyst(6010,457).
catalyst(6010,242).
catalyst(9041,229).
catalyst(9042,229).
catalyst(9071,363).
catalyst(9072,363).
catalyst(9081,363).
catalyst(9082,363).
catalyst(4490,200).
catalyst(4720,358).
catalyst(4720,357).
catalyst(4720,356).
catalyst(4720,355).
catalyst(4720,181).
catalyst(2231,230).
catalyst(2232,230).
catalyst(4880,67).
catalyst(4880,66).
catalyst(3040,367).
catalyst(3040,366).
catalyst(3510,72).
catalyst(5921,372).
catalyst(5922,372).
catalyst(6211,291).
catalyst(6212,291).
catalyst(6071,347).
catalyst(6072,347).
catalyst(5691,275).
catalyst(5692,275).
catalyst(5260,276).
catalyst(5350,411).
catalyst(2860,116).
catalyst(8991,159).
catalyst(8992,159).
catalyst(5630,412).
catalyst(5640,412).
catalyst(2401,110).
catalyst(2402,110).
catalyst(7320,299).
catalyst(4870,68).
catalyst(8831,279).
catalyst(8832,279).
catalyst(8841,279).
catalyst(8842,279).
catalyst(8821,112).
catalyst(8822,112).
catalyst(3860,128).
catalyst(8871,199).
catalyst(8872,199).
catalyst(8881,199).
catalyst(8882,199).
catalyst(8901,199).
catalyst(8902,199).
catalyst(8941,199).
catalyst(8942,199).
catalyst(3480,362).
catalyst(3500,362).
catalyst(2540,85).
catalyst(1870,195).
catalyst(7550,353).
catalyst(7550,349).
catalyst(7550,245).
catalyst(8801,183).
catalyst(8802,183).
catalyst(8801,140).
catalyst(8802,140).
catalyst(5030,399).
catalyst(3950,335).
catalyst(5880,196).
catalyst(3600,338).
catalyst(8000,343).
catalyst(2550,427).
catalyst(1890,339).
catalyst(3630,339).
catalyst(1890,208).
catalyst(3630,208).
catalyst(3740,174).
catalyst(8231,478).
catalyst(8232,478).
catalyst(8231,460).
catalyst(8232,460).
catalyst(8231,404).
catalyst(8232,404).
catalyst(8231,277).
catalyst(8232,277).
catalyst(8231,257).
catalyst(8232,257).
catalyst(3590,228).
catalyst(4570,250).
catalyst(3680,421).
catalyst(4580,135).
catalyst(3750,175).
catalyst(3700,235).
catalyst(4520,289).
catalyst(4520,130).
catalyst(4500,225).
catalyst(7931,298).
catalyst(7932,298).
catalyst(7751,102).
catalyst(7752,102).
catalyst(3610,160).
catalyst(7921,441).
catalyst(7922,441).
catalyst(8341,119).
catalyst(8342,119).
catalyst(8351,119).
catalyst(8352,119).
catalyst(6461,465).
catalyst(6462,465).
catalyst(6250,32).
catalyst(7861,391).
catalyst(7862,391).
catalyst(7861,329).
catalyst(7862,329).
catalyst(4891,198).
catalyst(4892,198).
catalyst(3690,481).
catalyst(6410,271).
catalyst(6790,304).
catalyst(8601,260).
catalyst(8602,260).
catalyst(8611,260).
catalyst(8612,260).
catalyst(8601,251).
catalyst(8602,251).
catalyst(8611,251).
catalyst(8612,251).
catalyst(8591,263).
catalyst(8592,263).
catalyst(8591,161).
catalyst(8592,161).
catalyst(1920,241).
catalyst(8531,446).
catalyst(8532,446).
catalyst(8521,480).
catalyst(8522,480).
catalyst(8521,351).
catalyst(8522,351).
catalyst(8521,217).
catalyst(8522,217).
catalyst(8511,264).
catalyst(8512,264).
catalyst(8661,337).
catalyst(8662,337).
catalyst(8661,285).
catalyst(8662,285).
catalyst(8651,466).
catalyst(8652,466).
catalyst(8651,370).
catalyst(8652,370).
catalyst(8641,462).
catalyst(8642,462).
catalyst(8641,101).
catalyst(8642,101).
catalyst(8621,246).
catalyst(8622,246).
catalyst(6120,240).
catalyst(8491,215).
catalyst(8492,215).
catalyst(2480,87).
catalyst(2631,428).
catalyst(2632,428).
catalyst(8461,150).
catalyst(8462,150).
catalyst(8451,151).
catalyst(8452,151).
catalyst(8441,152).
catalyst(8442,152).
catalyst(8481,153).
catalyst(8482,153).
catalyst(4760,487).
catalyst(4760,249).
catalyst(7980,232).
catalyst(7980,120).
catalyst(7080,474).
catalyst(7090,474).
catalyst(7110,474).
catalyst(7080,424).
catalyst(7090,424).
catalyst(7110,424).
catalyst(7161,424).
catalyst(7162,424).
catalyst(7080,334).
catalyst(7090,334).
catalyst(7110,334).
catalyst(7080,244).
catalyst(7090,244).
catalyst(7110,244).
catalyst(8421,295).
catalyst(8422,295).
catalyst(8411,430).
catalyst(8412,430).
catalyst(371,486).
catalyst(372,486).
catalyst(781,476).
catalyst(782,476).
catalyst(881,476).
catalyst(882,476).
catalyst(1191,476).
catalyst(1192,476).
catalyst(730,456).
catalyst(821,456).
catalyst(822,456).
catalyst(1160,437).
catalyst(801,432).
catalyst(802,432).
catalyst(811,432).
catalyst(812,432).
catalyst(831,432).
catalyst(832,432).
catalyst(901,432).
catalyst(902,432).
catalyst(371,413).
catalyst(372,413).
catalyst(6620,402).
catalyst(6310,395).
catalyst(1590,388).
catalyst(341,382).
catalyst(342,382).
catalyst(1561,369).
catalyst(1562,369).
catalyst(6330,352).
catalyst(6560,342).
catalyst(781,341).
catalyst(782,341).
catalyst(791,341).
catalyst(792,341).
catalyst(801,341).
catalyst(802,341).
catalyst(811,341).
catalyst(812,341).
catalyst(821,341).
catalyst(822,341).
catalyst(831,341).
catalyst(832,341).
catalyst(861,341).
catalyst(862,341).
catalyst(871,341).
catalyst(872,341).
catalyst(881,341).
catalyst(882,341).
catalyst(901,341).
catalyst(902,341).
catalyst(1191,341).
catalyst(1192,341).
catalyst(390,340).
catalyst(1581,316).
catalyst(1582,316).
catalyst(6560,301).
catalyst(871,253).
catalyst(872,253).
catalyst(371,247).
catalyst(372,247).
catalyst(581,236).
catalyst(582,236).
catalyst(600,236).
catalyst(781,219).
catalyst(782,219).
catalyst(1191,219).
catalyst(1192,219).
catalyst(581,204).
catalyst(582,204).
catalyst(600,204).
catalyst(581,203).
catalyst(582,203).
catalyst(600,203).
catalyst(581,202).
catalyst(582,202).
catalyst(600,202).
catalyst(1191,194).
catalyst(1192,194).
catalyst(781,193).
catalyst(782,193).
catalyst(881,193).
catalyst(882,193).
catalyst(901,193).
catalyst(902,193).
catalyst(6680,192).
catalyst(1160,191).
catalyst(6550,180).
catalyst(791,164).
catalyst(792,164).
catalyst(801,164).
catalyst(802,164).
catalyst(811,164).
catalyst(812,164).
catalyst(831,164).
catalyst(832,164).
catalyst(861,164).
catalyst(862,164).
catalyst(901,164).
catalyst(902,164).
catalyst(690,157).
catalyst(730,157).
catalyst(781,127).
catalyst(782,127).
catalyst(791,127).
catalyst(792,127).
catalyst(801,127).
catalyst(802,127).
catalyst(831,127).
catalyst(832,127).
catalyst(861,127).
catalyst(862,127).
catalyst(871,127).
catalyst(872,127).
catalyst(881,127).
catalyst(882,127).
catalyst(1191,127).
catalyst(1192,127).
catalyst(1491,124).
catalyst(1492,124).
catalyst(1501,124).
catalyst(1502,124).
catalyst(1590,111).
catalyst(791,108).
catalyst(792,108).
catalyst(801,108).
catalyst(802,108).
catalyst(811,108).
catalyst(812,108).
catalyst(861,108).
catalyst(862,108).
catalyst(871,108).
catalyst(872,108).
catalyst(901,108).
catalyst(902,108).
catalyst(791,107).
catalyst(792,107).
catalyst(801,107).
catalyst(802,107).
catalyst(811,107).
catalyst(812,107).
catalyst(831,107).
catalyst(832,107).
catalyst(861,107).
catalyst(862,107).
catalyst(901,107).
catalyst(902,107).
catalyst(540,97).
catalyst(1590,95).
catalyst(6960,83).
catalyst(6970,81).
catalyst(2990,80).
catalyst(6970,76).
catalyst(4131,70).
catalyst(4132,70).
catalyst(41,57).
catalyst(42,57).
catalyst(101,56).
catalyst(102,56).
catalyst(141,54).
catalyst(142,54).
catalyst(230,53).
catalyst(261,52).
catalyst(262,52).
catalyst(321,51).
catalyst(322,51).
catalyst(401,50).
catalyst(402,50).
catalyst(451,49).
catalyst(452,49).
catalyst(490,47).
catalyst(510,46).
catalyst(550,45).
catalyst(510,43).
catalyst(490,42).
catalyst(510,40).
catalyst(550,39).
catalyst(670,38).
catalyst(980,37).
catalyst(990,36).
catalyst(1050,35).
catalyst(1111,34).
catalyst(1112,34).
catalyst(1130,33).
catalyst(1291,31).
catalyst(1292,31).
catalyst(6270,30).
catalyst(1611,29).
catalyst(1612,29).
catalyst(1671,28).
catalyst(1672,28).
catalyst(1701,27).
catalyst(1702,27).
catalyst(1731,26).
catalyst(1732,26).
catalyst(1741,25).
catalyst(1742,25).
catalyst(1791,24).
catalyst(1792,24).
catalyst(6640,23).
catalyst(30050,17).
catalyst(30070,16).
catalyst(30040,15).
catalyst(10920,14).
catalyst(30060,13).
catalyst(30030,12).
catalyst(30160,11).
catalyst(30020,10).
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


certain_enzyme(418).
certain_enzyme(350).
certain_enzyme(390).
certain_enzyme(471).
certain_enzyme(324).
certain_enzyme(226).
certain_enzyme(377).
certain_enzyme(373).
certain_enzyme(282).
certain_enzyme(93).
certain_enzyme(92).
certain_enzyme(171).
certain_enzyme(321).
certain_enzyme(405).
certain_enzyme(360).
certain_enzyme(278).
certain_enzyme(259).
certain_enzyme(126).
certain_enzyme(317).
certain_enzyme(75).
certain_enzyme(258).
certain_enzyme(387).
certain_enzyme(185).
certain_enzyme(231).
certain_enzyme(292).
certain_enzyme(252).
certain_enzyme(310).
certain_enzyme(293).
certain_enzyme(254).
certain_enzyme(458).
certain_enzyme(206).
certain_enzyme(79).
certain_enzyme(73).
certain_enzyme(205).
certain_enzyme(452).
certain_enzyme(61).
certain_enzyme(118).
certain_enzyme(419).
certain_enzyme(330).
certain_enzyme(459).
certain_enzyme(158).
certain_enzyme(91).
certain_enzyme(20).
certain_enzyme(104).
certain_enzyme(394).
certain_enzyme(74).
certain_enzyme(461).
certain_enzyme(234).
certain_enzyme(450).
certain_enzyme(109).
certain_enzyme(354).
certain_enzyme(78).
certain_enzyme(77).
certain_enzyme(269).
certain_enzyme(393).
certain_enzyme(381).
certain_enzyme(336).
certain_enzyme(141).
certain_enzyme(105).
certain_enzyme(464).
certain_enzyme(406).
certain_enzyme(400).
certain_enzyme(371).
certain_enzyme(348).
certain_enzyme(286).
certain_enzyme(268).
certain_enzyme(238).
certain_enzyme(237).
certain_enzyme(139).
certain_enzyme(19).
certain_enzyme(18).
certain_enzyme(477).
certain_enzyme(345).
certain_enzyme(187).
certain_enzyme(209).
certain_enzyme(315).
certain_enzyme(436).
certain_enzyme(359).
certain_enzyme(392).
certain_enzyme(94).
certain_enzyme(300).
certain_enzyme(296).
certain_enzyme(483).
certain_enzyme(113).
certain_enzyme(125).
certain_enzyme(389).
certain_enzyme(407).
certain_enzyme(425).
certain_enzyme(134).
certain_enzyme(69).
certain_enzyme(216).
certain_enzyme(472).
certain_enzyme(138).
certain_enzyme(86).
certain_enzyme(473).
certain_enzyme(364).
certain_enzyme(131).
certain_enzyme(383).
certain_enzyme(155).
certain_enzyme(147).
certain_enzyme(410).
certain_enzyme(290).
certain_enzyme(451).
certain_enzyme(322).
certain_enzyme(256).
certain_enzyme(143).
certain_enzyme(142).
certain_enzyme(90).
certain_enzyme(470).
certain_enzyme(401).
certain_enzyme(380).
certain_enzyme(115).
certain_enzyme(361).
certain_enzyme(182).
certain_enzyme(223).
certain_enzyme(320).
certain_enzyme(58).
certain_enzyme(184).
certain_enzyme(307).
certain_enzyme(482).
certain_enzyme(172).
certain_enzyme(270).
certain_enzyme(365).
certain_enzyme(379).
certain_enzyme(319).
certain_enzyme(162).
certain_enzyme(121).
certain_enzyme(122).
certain_enzyme(273).
certain_enzyme(239).
certain_enzyme(346).
certain_enzyme(328).
certain_enzyme(439).
certain_enzyme(375).
certain_enzyme(327).
certain_enzyme(169).
certain_enzyme(71).
certain_enzyme(323).
certain_enzyme(281).
certain_enzyme(243).
certain_enzyme(224).
certain_enzyme(386).
certain_enzyme(133).
certain_enzyme(255).
certain_enzyme(129).
certain_enzyme(318).
certain_enzyme(84).
certain_enzyme(396).
certain_enzyme(469).
certain_enzyme(440).
certain_enzyme(332).
certain_enzyme(306).
certain_enzyme(284).
certain_enzyme(280).
certain_enzyme(272).
certain_enzyme(227).
certain_enzyme(265).
certain_enzyme(423).
certain_enzyme(485).
certain_enzyme(475).
certain_enzyme(433).
certain_enzyme(221).
certain_enzyme(178).
certain_enzyme(173).
certain_enzyme(55).
certain_enzyme(176).
certain_enzyme(201).
certain_enzyme(48).
certain_enzyme(44).
certain_enzyme(41).
certain_enzyme(82).
certain_enzyme(397).
certain_enzyme(179).
certain_enzyme(326).
certain_enzyme(434).
certain_enzyme(190).
certain_enzyme(435).
certain_enzyme(333).
certain_enzyme(261).
certain_enzyme(211).
certain_enzyme(100).
certain_enzyme(444).
certain_enzyme(368).
certain_enzyme(145).
certain_enzyme(88).
certain_enzyme(311).
certain_enzyme(103).
certain_enzyme(490).
certain_enzyme(489).
certain_enzyme(484).
certain_enzyme(479).
certain_enzyme(455).
certain_enzyme(454).
certain_enzyme(449).
certain_enzyme(448).
certain_enzyme(447).
certain_enzyme(445).
certain_enzyme(442).
certain_enzyme(429).
certain_enzyme(422).
certain_enzyme(416).
certain_enzyme(414).
certain_enzyme(409).
certain_enzyme(331).
certain_enzyme(314).
certain_enzyme(303).
certain_enzyme(302).
certain_enzyme(283).
certain_enzyme(274).
certain_enzyme(233).
certain_enzyme(218).
certain_enzyme(186).
certain_enzyme(177).
certain_enzyme(163).
certain_enzyme(154).
certain_enzyme(149).
certain_enzyme(117).
certain_enzyme(488).
certain_enzyme(467).
certain_enzyme(453).
certain_enzyme(438).
certain_enzyme(420).
certain_enzyme(417).
certain_enzyme(408).
certain_enzyme(313).
certain_enzyme(309).
certain_enzyme(297).
certain_enzyme(287).
certain_enzyme(197).
certain_enzyme(188).
certain_enzyme(170).
certain_enzyme(144).
certain_enzyme(132).
certain_enzyme(123).
certain_enzyme(96).
certain_enzyme(325).
certain_enzyme(262).
certain_enzyme(165).
certain_enzyme(431).
certain_enzyme(385).
certain_enzyme(384).
certain_enzyme(22).
certain_enzyme(21).
certain_enzyme(294).
certain_enzyme(463).
certain_enzyme(443).
certain_enzyme(415).
certain_enzyme(403).
certain_enzyme(398).
certain_enzyme(344).
certain_enzyme(308).
certain_enzyme(288).
certain_enzyme(220).
certain_enzyme(214).
certain_enzyme(213).
certain_enzyme(210).
certain_enzyme(166).
certain_enzyme(146).
certain_enzyme(106).
certain_enzyme(99).
certain_enzyme(312).
certain_enzyme(167).
certain_enzyme(222).
certain_enzyme(468).
certain_enzyme(426).
certain_enzyme(378).
certain_enzyme(376).
certain_enzyme(374).
certain_enzyme(248).
certain_enzyme(212).
certain_enzyme(207).
certain_enzyme(189).
certain_enzyme(168).
certain_enzyme(156).
certain_enzyme(148).
certain_enzyme(137).
certain_enzyme(136).
certain_enzyme(114).
certain_enzyme(98).
certain_enzyme(89).
certain_enzyme(305).
certain_enzyme(65).
certain_enzyme(64).
certain_enzyme(63).
certain_enzyme(62).
certain_enzyme(60).
certain_enzyme(59).
certain_enzyme(267).
certain_enzyme(266).
certain_enzyme(457).
certain_enzyme(242).
certain_enzyme(229).
certain_enzyme(363).
certain_enzyme(200).
certain_enzyme(358).
certain_enzyme(357).
certain_enzyme(356).
certain_enzyme(355).
certain_enzyme(181).
certain_enzyme(230).
certain_enzyme(67).
certain_enzyme(66).
certain_enzyme(367).
certain_enzyme(366).
certain_enzyme(72).
certain_enzyme(372).
certain_enzyme(291).
certain_enzyme(347).
certain_enzyme(275).
certain_enzyme(276).
certain_enzyme(411).
certain_enzyme(116).
certain_enzyme(159).
certain_enzyme(412).
certain_enzyme(110).
certain_enzyme(299).
certain_enzyme(68).
certain_enzyme(279).
certain_enzyme(112).
certain_enzyme(128).
certain_enzyme(199).
certain_enzyme(362).
certain_enzyme(85).
certain_enzyme(195).
certain_enzyme(353).
certain_enzyme(349).
certain_enzyme(245).
certain_enzyme(183).
certain_enzyme(140).
certain_enzyme(399).
certain_enzyme(335).
certain_enzyme(196).
certain_enzyme(338).
certain_enzyme(343).
certain_enzyme(427).
certain_enzyme(339).
certain_enzyme(208).
certain_enzyme(174).
certain_enzyme(478).
certain_enzyme(460).
certain_enzyme(404).
certain_enzyme(277).
certain_enzyme(257).
certain_enzyme(228).
certain_enzyme(250).
certain_enzyme(421).
certain_enzyme(135).
certain_enzyme(175).
certain_enzyme(235).
certain_enzyme(289).
certain_enzyme(130).
certain_enzyme(225).
certain_enzyme(298).
certain_enzyme(102).
certain_enzyme(160).
certain_enzyme(441).
certain_enzyme(119).
certain_enzyme(465).
certain_enzyme(32).
certain_enzyme(391).
certain_enzyme(329).
certain_enzyme(198).
certain_enzyme(481).
certain_enzyme(271).
certain_enzyme(304).
certain_enzyme(260).
certain_enzyme(251).
certain_enzyme(263).
certain_enzyme(161).
certain_enzyme(241).
certain_enzyme(446).
certain_enzyme(480).
certain_enzyme(351).
certain_enzyme(217).
certain_enzyme(264).
certain_enzyme(337).
certain_enzyme(285).
certain_enzyme(466).
certain_enzyme(370).
certain_enzyme(462).
certain_enzyme(101).
certain_enzyme(246).
certain_enzyme(240).
certain_enzyme(215).
certain_enzyme(87).
certain_enzyme(428).
certain_enzyme(150).
certain_enzyme(151).
certain_enzyme(152).
certain_enzyme(153).
certain_enzyme(487).
certain_enzyme(249).
certain_enzyme(232).
certain_enzyme(120).
certain_enzyme(474).
certain_enzyme(424).
certain_enzyme(334).
certain_enzyme(244).
certain_enzyme(295).
certain_enzyme(430).
certain_enzyme(486).
certain_enzyme(476).
certain_enzyme(456).
certain_enzyme(437).
certain_enzyme(432).
certain_enzyme(413).
certain_enzyme(402).
certain_enzyme(395).
certain_enzyme(388).
certain_enzyme(382).
certain_enzyme(369).
certain_enzyme(352).
certain_enzyme(342).
certain_enzyme(341).
certain_enzyme(340).
certain_enzyme(316).
certain_enzyme(301).
certain_enzyme(253).
certain_enzyme(247).
certain_enzyme(236).
certain_enzyme(219).
certain_enzyme(204).
certain_enzyme(203).
certain_enzyme(202).
certain_enzyme(194).
certain_enzyme(193).
certain_enzyme(192).
certain_enzyme(191).
certain_enzyme(180).
certain_enzyme(164).
certain_enzyme(157).
certain_enzyme(127).
certain_enzyme(124).
certain_enzyme(111).
certain_enzyme(108).
certain_enzyme(107).
certain_enzyme(97).
certain_enzyme(95).
certain_enzyme(83).
certain_enzyme(81).
certain_enzyme(80).
certain_enzyme(76).
certain_enzyme(70).
certain_enzyme(57).
certain_enzyme(56).
certain_enzyme(54).
certain_enzyme(53).
certain_enzyme(52).
certain_enzyme(51).
certain_enzyme(50).
certain_enzyme(49).
certain_enzyme(47).
certain_enzyme(46).
certain_enzyme(45).
certain_enzyme(43).
certain_enzyme(42).
certain_enzyme(40).
certain_enzyme(39).
certain_enzyme(38).
certain_enzyme(37).
certain_enzyme(36).
certain_enzyme(35).
certain_enzyme(34).
certain_enzyme(33).
certain_enzyme(31).
certain_enzyme(30).
certain_enzyme(29).
certain_enzyme(28).
certain_enzyme(27).
certain_enzyme(26).
certain_enzyme(25).
certain_enzyme(24).
certain_enzyme(23).
certain_enzyme(17).
certain_enzyme(16).
certain_enzyme(15).
certain_enzyme(14).
certain_enzyme(13).
certain_enzyme(12).
certain_enzyme(11).
certain_enzyme(10).
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

metabolite("2NPMMB").
metabolite("2NPPP").
metabolite("A6RP").
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
metabolite("C00043").
metabolite("C00044").
metabolite("C00046").
metabolite("C00048").
metabolite("C00049").
metabolite("C00051").
metabolite("C00052").
metabolite("C00055").
metabolite("C00058").
metabolite("C00059").
metabolite("C00060").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
metabolite("C00068").
metabolite("C00071").
metabolite("C00073").
metabolite("C00074").
metabolite("C00075").
metabolite("C00077").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00081").
metabolite("C00082").
metabolite("C00083").
metabolite("C00084").
metabolite("C00089").
metabolite("C00095").
metabolite("C00097").
metabolite("C00101").
metabolite("C00103").
metabolite("C00104").
metabolite("C00105").
metabolite("C00106").
metabolite("C00108").
metabolite("C00109").
metabolite("C00110").
metabolite("C00111").
metabolite("C00112").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00120").
metabolite("C00121").
metabolite("C00122").
metabolite("C00123").
metabolite("C00125").
metabolite("C00126").
metabolite("C00127").
metabolite("C00129").
metabolite("C00130").
metabolite("C00131").
metabolite("C00134").
metabolite("C00135").
metabolite("C00137").
metabolite("C00140").
metabolite("C00141").
metabolite("C00143").
metabolite("C00144").
metabolite("C00145").
metabolite("C00147").
metabolite("C00148").
metabolite("C00152").
metabolite("C00153").
metabolite("C00154").
metabolite("C00155").
metabolite("C00156").
metabolite("C00157").
metabolite("C00158").
metabolite("C00161").
metabolite("C00162").
metabolite("C00165").
metabolite("C00166").
metabolite("C00169").
metabolite("C00170").
metabolite("C00173").
metabolite("C00183").
metabolite("C00187").
metabolite("C00188").
metabolite("C00189").
metabolite("C00199").
metabolite("C00206").
metabolite("C00212").
metabolite("C00214").
metabolite("C00221").
metabolite("C00224").
metabolite("C00229").
metabolite("C00234").
metabolite("C00235").
metabolite("C00236").
metabolite("C00239").
metabolite("C00242").
metabolite("C00248").
metabolite("C00249").
metabolite("C00250").
metabolite("C00251").
metabolite("C00253").
metabolite("C00254").
metabolite("C00262").
metabolite("C00263").
metabolite("C00267").
metabolite("C00269").
metabolite("C00279").
metabolite("C00283").
metabolite("C00286").
metabolite("C00294").
metabolite("C00297").
metabolite("C00299").
metabolite("C00301").
metabolite("C00310").
metabolite("C00311").
metabolite("C00314").
metabolite("C00315").
metabolite("C00320").
metabolite("C00322").
metabolite("C00327").
metabolite("C00328").
metabolite("C00330").
metabolite("C00332").
metabolite("C00334").
metabolite("C00337").
metabolite("C00341").
metabolite("C00342").
metabolite("C00343").
metabolite("C00344").
metabolite("C00345").
metabolite("C00346").
metabolite("C00352").
metabolite("C00354").
metabolite("C00356").
metabolite("C00357").
metabolite("C00360").
metabolite("C00361").
metabolite("C00362").
metabolite("C00365").
metabolite("C00378").
metabolite("C00380").
metabolite("C00381").
metabolite("C00385").
metabolite("C00387").
metabolite("C00390").
metabolite("C00407").
metabolite("C00412").
metabolite("C00415").
metabolite("C00416").
metabolite("C00418").
metabolite("C00422").
metabolite("C00430").
metabolite("C00437").
metabolite("C00438").
metabolite("C00440").
metabolite("C00441").
metabolite("C00445").
metabolite("C00448").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00461").
metabolite("C00463").
metabolite("C00464").
metabolite("C00469").
metabolite("C00472").
metabolite("C00475").
metabolite("C00493").
metabolite("C00496").
metabolite("C00510").
metabolite("C00526").
metabolite("C00534").
metabolite("C00544").
metabolite("C00555").
metabolite("C00559").
metabolite("C00562").
metabolite("C00568").
metabolite("C00575").
metabolite("C00579").
metabolite("C00603").
metabolite("C00612").
metabolite("C00620").
metabolite("C00624").
metabolite("C00627").
metabolite("C00631").
metabolite("C00632").
metabolite("C00641").
metabolite("C00655").
metabolite("C00661").
metabolite("C00665").
metabolite("C00668").
metabolite("C00670").
metabolite("C00673").
metabolite("C00685").
metabolite("C00689").
metabolite("C00705").
metabolite("C00711").
metabolite("C00734").
metabolite("C00735").
metabolite("C00794").
metabolite("C00836").
metabolite("C00857").
metabolite("C00860").
metabolite("C00882").
metabolite("C00890").
metabolite("C00944").
metabolite("C00954").
metabolite("C00956").
metabolite("C00979").
metabolite("C00986").
metabolite("C01031").
metabolite("C01037").
metabolite("C01054").
metabolite("C01077").
metabolite("C01081").
metabolite("C01083").
metabolite("C01092").
metabolite("C01094").
metabolite("C01100").
metabolite("C01102").
metabolite("C01103").
metabolite("C01107").
metabolite("C01118").
metabolite("C01120").
metabolite("C01134").
metabolite("C01136").
metabolite("C01143").
metabolite("C01165").
metabolite("C01172").
metabolite("C01176").
metabolite("C01177").
metabolite("C01178").
metabolite("C01179").
metabolite("C01185").
metabolite("C01203").
metabolite("C01209").
metabolite("C01228").
metabolite("C01242").
metabolite("C01246").
metabolite("C01250").
metabolite("C01251").
metabolite("C01268").
metabolite("C01269").
metabolite("C01277").
metabolite("C01279").
metabolite("C01302").
metabolite("C01304").
metabolite("C01346").
metabolite("C01352").
metabolite("C01419").
metabolite("C01637").
metabolite("C01640").
metabolite("C01644").
metabolite("C01645").
metabolite("C01647").
metabolite("C01648").
metabolite("C01650").
metabolite("C01651").
metabolite("C01653").
metabolite("C01684").
metabolite("C01694").
metabolite("C01722").
metabolite("C01724").
metabolite("C01762").
metabolite("C01801").
metabolite("C01909").
metabolite("C01967").
metabolite("C02047").
metabolite("C02073").
metabolite("C02220").
metabolite("C02229").
metabolite("C02282").
metabolite("C02291").
metabolite("C02430").
metabolite("C02504").
metabolite("C02530").
metabolite("C02553").
metabolite("C02554").
metabolite("C02567").
metabolite("C02637").
metabolite("C02700").
metabolite("C02714").
metabolite("C02739").
metabolite("C02794").
metabolite("C02843").
metabolite("C02938").
metabolite("C02987").
metabolite("C02992").
metabolite("C03082").
metabolite("C03127").
metabolite("C03175").
metabolite("C03226").
metabolite("C03294").
metabolite("C03373").
metabolite("C03402").
metabolite("C03479").
metabolite("C03506").
metabolite("C03511").
metabolite("C03518").
metabolite("C03638").
metabolite("C03722").
metabolite("C03734").
metabolite("C03824").
metabolite("C03849").
metabolite("C03883").
metabolite("C03892").
metabolite("C03912").
metabolite("C04088").
metabolite("C04090").
metabolite("C04133").
metabolite("C04144").
metabolite("C04233").
metabolite("C04236").
metabolite("C04246").
metabolite("C04252").
metabolite("C04256").
metabolite("C04302").
metabolite("C04308").
metabolite("C04312").
metabolite("C04332").
metabolite("C04441").
metabolite("C04489").
metabolite("C04494").
metabolite("C04506").
metabolite("C04556").
metabolite("C04619").
metabolite("C04633").
metabolite("C04637").
metabolite("C04640").
metabolite("C04681").
metabolite("C04682").
metabolite("C04688").
metabolite("C04691").
metabolite("C04692").
metabolite("C04727").
metabolite("C04734").
metabolite("C04735").
metabolite("C04736").
metabolite("C04748").
metabolite("C04752").
metabolite("C04763").
metabolite("C04801").
metabolite("C04827").
metabolite("C05108").
metabolite("C05138").
metabolite("C05139").
metabolite("C05140").
metabolite("C05223").
metabolite("C05309").
metabolite("C05330").
metabolite("C05335").
metabolite("C05336").
metabolite("C05345").
metabolite("C05379").
metabolite("C05437").
metabolite("C05487").
metabolite("C05488").
metabolite("C05489").
metabolite("C05512").
metabolite("C05533").
metabolite("C05688").
metabolite("C05699").
metabolite("C05702").
metabolite("C05729").
metabolite("C05745").
metabolite("C05746").
metabolite("C05751").
metabolite("C05752").
metabolite("C05754").
metabolite("C05755").
metabolite("C05760").
metabolite("C05761").
metabolite("C05762").
metabolite("C05764").
metabolite("C05824").
metabolite("C05873").
metabolite("C05874").
metabolite("C06010").
metabolite("C06156").
metabolite("C06253").
metabolite("C06604").
metabolite("C06606").
metabolite("C06814").
metabolite("C07281").
metabolite("C07282").
metabolite("C08817").
metabolite("C11355").
metabolite("C161ACP").
metabolite("C16A").
metabolite("C182ACP").
metabolite("C260COA").
metabolite("CER2").
metabolite("CER3").
metabolite("DB4P").
metabolite("DGPP").
metabolite("DMZYMST").
metabolite("EPST").
metabolite("ERTEOL").
metabolite("ERTROL").
metabolite("IGST").
metabolite("IIZYMST").
metabolite("ISUCC").
metabolite("MACAC").
metabolite("MZYMST").
metabolite("N4HBZ").
metabolite("NAG").
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
orf("U101_").
orf("U105_").
orf("U10_").
orf("U110_").
orf("U115_").
orf("U116_").
orf("U119_").
orf("U122_").
orf("U128_").
orf("U12_").
orf("U147_").
orf("U14_").
orf("U154_").
orf("U155_").
orf("U161_").
orf("U165_").
orf("U166_").
orf("U171_").
orf("U175_").
orf("U179_").
orf("U17_").
orf("U181_").
orf("U187_").
orf("U18_").
orf("U192_").
orf("U195_").
orf("U197_").
orf("U19_").
orf("U201_").
orf("U205_").
orf("U207_").
orf("U213_").
orf("U214_").
orf("U219_").
orf("U21_").
orf("U222_").
orf("U228_").
orf("U22_").
orf("U24_").
orf("U29_").
orf("U2_").
orf("U30_").
orf("U32_").
orf("U33_").
orf("U34_").
orf("U42_").
orf("U43_").
orf("U44_").
orf("U48_").
orf("U50_").
orf("U51_").
orf("U53_").
orf("U55_").
orf("U56_").
orf("U58_").
orf("U5_").
orf("U62_").
orf("U65_").
orf("U68_").
orf("U69_").
orf("U6_").
orf("U76_").
orf("U7_").
orf("U81_").
orf("U88_").
orf("U8_").
orf("U90_").
orf("U94_").
orf("U9_").
orf("YAL023C").
orf("YAL062W").
orf("YAR073W").
orf("YAR075W").
orf("YBL013W").
orf("YBL030C").
orf("YBL035C").
orf("YBL042C").
orf("YBL056W").
orf("YBL067C").
orf("YBL068W").
orf("YBL076C").
orf("YBR019C").
orf("YBR029C").
orf("YBR035C").
orf("YBR046C").
orf("YBR058C").
orf("YBR068C").
orf("YBR069C").
orf("YBR084W").
orf("YBR085W").
orf("YBR111C").
orf("YBR117C").
orf("YBR125C").
orf("YBR126C").
orf("YBR153W").
orf("YBR154C").
orf("YBR166C").
orf("YBR196C").
orf("YBR218C").
orf("YBR249C").
orf("YBR256C").
orf("YBR278W").
orf("YBR291C").
orf("YCL009C").
orf("YCL018W").
orf("YCL025C").
orf("YCL030C").
orf("YCL040W").
orf("YCL064C").
orf("YCR005C").
orf("YCR014C").
orf("YCR036W").
orf("YCR048W").
orf("YCR053W").
orf("YDL006W").
orf("YDL047W").
orf("YDL052C").
orf("YDL067C").
orf("YDL080C").
orf("YDL085W").
orf("YDL093W").
orf("YDL095W").
orf("YDL102W").
orf("YDL103C").
orf("YDL122W").
orf("YDL131W").
orf("YDL134C").
orf("YDL140C").
orf("YDL141W").
orf("YDL150W").
orf("YDL182W").
orf("YDL188C").
orf("YDL210W").
orf("YDL215C").
orf("YDL238C").
orf("YDR007W").
orf("YDR023W").
orf("YDR035W").
orf("YDR045C").
orf("YDR046C").
orf("YDR058C").
orf("YDR069C").
orf("YDR074W").
orf("YDR075W").
orf("YDR111C").
orf("YDR121W").
orf("YDR127W").
orf("YDR147W").
orf("YDR156W").
orf("YDR208W").
orf("YDR226W").
orf("YDR294C").
orf("YDR321W").
orf("YDR354W").
orf("YDR380W").
orf("YDR399W").
orf("YDR402C").
orf("YDR404C").
orf("YDR410C").
orf("YDR419W").
orf("YDR436W").
orf("YDR454C").
orf("YDR497C").
orf("YDR503C").
orf("YDR508C").
orf("YDR536W").
orf("YDR538W").
orf("YEL021W").
orf("YEL055C").
orf("YEL058W").
orf("YER005W").
orf("YER043C").
orf("YER052C").
orf("YER056C").
orf("YER060W").
orf("YER060W-A").
orf("YER069W").
orf("YER073W").
orf("YER089C").
orf("YER090W").
orf("YER091C").
orf("YER098W").
orf("YER099C").
orf("YER133W").
orf("YER144C").
orf("YER151C").
orf("YER183C").
orf("YFL017C").
orf("YFL022C").
orf("YFL036W").
orf("YFL055W").
orf("YFR010W").
orf("YFR019W").
orf("YFR025C").
orf("YFR047C").
orf("YFR053C").
orf("YFR055W").
orf("YGL001C").
orf("YGL019W").
orf("YGL026C").
orf("YGL027C").
orf("YGL037C").
orf("YGL055W").
orf("YGL062W").
orf("YGL070C").
orf("YGL125W").
orf("YGL148W").
orf("YGL186C").
orf("YGL187C").
orf("YGL191W").
orf("YGL202W").
orf("YGL234W").
orf("YGL245W").
orf("YGL248W").
orf("YGL253W").
orf("YGR037C").
orf("YGR087C").
orf("YGR094W").
orf("YGR121C").
orf("YGR123C").
orf("YGR124W").
orf("YGR155W").
orf("YGR171C").
orf("YGR180C").
orf("YGR191W").
orf("YGR192C").
orf("YGR194C").
orf("YGR199W").
orf("YGR254W").
orf("YGR255C").
orf("YGR256W").
orf("YGR264C").
orf("YHL011C").
orf("YHL012W").
orf("YHR011W").
orf("YHR019C").
orf("YHR025W").
orf("YHR043C").
orf("YHR044C").
orf("YHR051W").
orf("YHR068W").
orf("YHR072W").
orf("YHR102W").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR144C").
orf("YHR174W").
orf("YHR183W").
orf("YHR201C").
orf("YHR205W").
orf("YHR208W").
orf("YHR216W").
orf("YIL021W").
orf("YIL035C").
orf("YIL078W").
orf("YIL111W").
orf("YIL139C").
orf("YIL156W").
orf("YIL167W").
orf("YIR031C").
orf("YIR032C").
orf("YJL026W").
orf("YJL052W").
orf("YJL068C").
orf("YJL087C").
orf("YJL088W").
orf("YJL090C").
orf("YJL121C").
orf("YJL126W").
orf("YJL130C").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL153C").
orf("YJL155C").
orf("YJL164C").
orf("YJL167W").
orf("YJL197W").
orf("YJR006W").
orf("YJR009C").
orf("YJR010W").
orf("YJR019C").
orf("YJR043C").
orf("YJR063W").
orf("YJR073C").
orf("YJR077C").
orf("YJR078W").
orf("YJR105W").
orf("YJR130C").
orf("YJR133W").
orf("YJR139C").
orf("YJR143C").
orf("YJR148W").
orf("YJR159W").
orf("YKL035W").
orf("YKL067W").
orf("YKL104C").
orf("YKL106W").
orf("YKL127W").
orf("YKL141W").
orf("YKL144C").
orf("YKL166C").
orf("YKL181W").
orf("YKL182W").
orf("YKL184W").
orf("YKL192C").
orf("YKL194C").
orf("YKL211C").
orf("YKL217W").
orf("YKR039W").
orf("YKR053C").
orf("YKR097W").
orf("YKR098C").
orf("YLL062C").
orf("YLR027C").
orf("YLR028C").
orf("YLR038C").
orf("YLR044C").
orf("YLR056W").
orf("YLR060W").
orf("YLR100C").
orf("YLR134W").
orf("YLR142W").
orf("YLR155C").
orf("YLR157C").
orf("YLR158C").
orf("YLR160C").
orf("YLR172C").
orf("YLR174W").
orf("YLR209C").
orf("YLR231C").
orf("YLR286C").
orf("YLR299W").
orf("YLR303W").
orf("YLR307W").
orf("YLR308W").
orf("YLR328W").
orf("YLR348C").
orf("YLR382C").
orf("YLR395C").
orf("YLR420W").
orf("YLR432W").
orf("YLR433C").
orf("YLR438W").
orf("YML016C").
orf("YML056C").
orf("YML057W").
orf("YML082W").
orf("YML100W").
orf("YML120C").
orf("YML123C").
orf("YML126C").
orf("YMR006C").
orf("YMR008C").
orf("YMR013C").
orf("YMR015C").
orf("YMR056C").
orf("YMR062C").
orf("YMR083W").
orf("YMR105C").
orf("YMR120C").
orf("YMR145C").
orf("YMR189W").
orf("YMR202W").
orf("YMR208W").
orf("YMR220W").
orf("YMR223W").
orf("YMR250W").
orf("YMR256C").
orf("YMR261C").
orf("YMR272C").
orf("YMR304W").
orf("YMR323W").
orf("YNL009W").
orf("YNL052W").
orf("YNL071W").
orf("YNL102W").
orf("YNL113W").
orf("YNL117W").
orf("YNL141W").
orf("YNL142W").
orf("YNL151C").
orf("YNL186W").
orf("YNL248C").
orf("YNL262W").
orf("YNL280C").
orf("YNL299W").
orf("YNL316C").
orf("YNR003C").
orf("YNR012W").
orf("YNR016C").
orf("YNR019W").
orf("YNR032W").
orf("YNR033W").
orf("YNR057C").
orf("YOL005C").
orf("YOL010W").
orf("YOL011W").
orf("YOL020W").
orf("YOL055C").
orf("YOL061W").
orf("YOL096C").
orf("YOL103W").
orf("YOL115W").
orf("YOL140W").
orf("YOR061W").
orf("YOR095C").
orf("YOR116C").
orf("YOR124C").
orf("YOR143C").
orf("YOR151C").
orf("YOR168W").
orf("YOR207C").
orf("YOR210W").
orf("YOR224C").
orf("YOR236W").
orf("YOR321W").
orf("YOR323C").
orf("YOR330C").
orf("YOR340C").
orf("YOR341W").
orf("YOR348C").
orf("YOR360C").
orf("YOR374W").
orf("YOR375C").
orf("YOR393W").
orf("YPL023C").
orf("YPL040C").
orf("YPL072W").
orf("YPL091W").
orf("YPL117C").
orf("YPL160W").
orf("YPL167C").
orf("YPL179W").
orf("YPL203W").
orf("YPL227C").
orf("YPL231W").
orf("YPL258C").
orf("YPL265W").
orf("YPL273W").
orf("YPL281C").
orf("YPR010C").
orf("YPR047W").
orf("YPR060C").
orf("YPR069C").
orf("YPR074C").
orf("YPR110C").
orf("YPR121W").
orf("YPR138C").
orf("YPR145W").
orf("YPR175W").
orf("YPR187W").
orf("YPR190C").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).


