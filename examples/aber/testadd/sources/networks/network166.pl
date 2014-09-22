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

in_compartment(Experiment,"C01694",cytosol,Day) :-
  not exclude(31),
  Day >= 1,
  in_compartment(Experiment,"C01694",medium,Day),
  catalyst(31,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01694",medium,Day) :-
  not exclude(32),
  Day >= 1,
  in_compartment(Experiment,"C01694",cytosol,Day),
  catalyst(32,Complex),
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

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(51),
  Day >= 1,
  in_compartment(Experiment,"C00007",medium,Day),
  catalyst(51,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",medium,Day) :-
  not exclude(52),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  catalyst(52,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00127",cytosol,Day) :-
  not exclude(80),
  Day >= 1,
  in_compartment(Experiment,"C00127",medium,Day),
  catalyst(80,Complex),
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

in_compartment(Experiment,"C00352",cytosol,Day) :-
  not exclude(121),
  Day >= 1,
  in_compartment(Experiment,"C00352",medium,Day),
  catalyst(121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00352",medium,Day) :-
  not exclude(122),
  Day >= 1,
  in_compartment(Experiment,"C00352",cytosol,Day),
  catalyst(122,Complex),
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

in_compartment(Experiment,"C00378",cytosol,Day) :-
  not exclude(190),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00378",medium,Day),
  catalyst(190,Complex),
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

in_compartment(Experiment,"C00864",cytosol,Day) :-
  not exclude(241),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00864",medium,Day),
  catalyst(241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(242),
  Day >= 1,
  in_compartment(Experiment,"C00864",cytosol,Day),
  catalyst(242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00864",medium,Day) :-
  not exclude(242),
  Day >= 1,
  in_compartment(Experiment,"C00864",cytosol,Day),
  catalyst(242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(251),
  Day >= 1,
  in_compartment(Experiment,"C01330",medium,Day),
  catalyst(251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01330",cytosol,Day) :-
  not exclude(251),
  Day >= 1,
  in_compartment(Experiment,"C01330",medium,Day),
  catalyst(251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01330",medium,Day) :-
  not exclude(252),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01330",cytosol,Day),
  catalyst(252,Complex),
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

in_compartment(Experiment,"C00249",cytosol,Day) :-
  not exclude(300),
  Day >= 1,
  in_compartment(Experiment,"C00249",medium,Day),
  catalyst(300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06424",cytosol,Day) :-
  not exclude(310),
  Day >= 1,
  in_compartment(Experiment,"C06424",medium,Day),
  catalyst(310,Complex),
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

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(390),
  Day >= 1,
  in_compartment(Experiment,"C00022",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00469",cytosol,Day) :-
  not exclude(411),
  Day >= 1,
  in_compartment(Experiment,"C00469",medium,Day),
  catalyst(411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00469",medium,Day) :-
  not exclude(412),
  Day >= 1,
  in_compartment(Experiment,"C00469",cytosol,Day),
  catalyst(412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(421),
  Day >= 1,
  in_compartment(Experiment,"C00058",medium,Day),
  catalyst(421,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",medium,Day) :-
  not exclude(422),
  Day >= 1,
  in_compartment(Experiment,"C00058",cytosol,Day),
  catalyst(422,Complex),
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

in_compartment(Experiment,"C00526",cytosol,Day) :-
  not exclude(460),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00526",medium,Day),
  catalyst(460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00881",cytosol,Day) :-
  not exclude(470),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00881",medium,Day),
  catalyst(470,Complex),
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

in_compartment(Experiment,"C00214",cytosol,Day) :-
  not exclude(510),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00214",medium,Day),
  catalyst(510,Complex),
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

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(590),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00147",medium,Day),
  catalyst(590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"NMN",cytosol,Day) :-
  not exclude(610),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"NMN",medium,Day),
  catalyst(610,Complex),
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

in_compartment(Experiment,"C00098",cytosol,Day) :-
  not exclude(640),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00098",medium,Day),
  catalyst(640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00107",cytosol,Day) :-
  not exclude(650),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00107",medium,Day),
  catalyst(650,Complex),
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

in_compartment(Experiment,"C00134",cytosol,Day) :-
  not exclude(670),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00134",medium,Day),
  catalyst(670,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00077",cytosol,Day) :-
  not exclude(681),
  Day >= 1,
  in_compartment(Experiment,"C00077",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00077",medium,Day) :-
  not exclude(682),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(682),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(682,Complex),
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

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(700),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00120",medium,Day),
  catalyst(700,Complex),
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

in_compartment(Experiment,"C00334",cytosol,Day) :-
  not exclude(730),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00334",medium,Day),
  catalyst(730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"MMET",cytosol,Day) :-
  not exclude(750),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"MMET",medium,Day),
  catalyst(750,Complex),
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

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(911),
  Day >= 1,
  in_compartment(Experiment,"C00049",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",medium,Day) :-
  not exclude(912),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(912),
  Day >= 1,
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(912,Complex),
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

in_compartment(Experiment,"C01083",cytosol,Day) :-
  not exclude(960),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01083",medium,Day),
  catalyst(960,Complex),
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

in_compartment(Experiment,"C00116",cytosol,Day) :-
  not exclude(1031),
  Day >= 1,
  in_compartment(Experiment,"C00116",medium,Day),
  catalyst(1031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00116",medium,Day) :-
  not exclude(1032),
  Day >= 1,
  in_compartment(Experiment,"C00116",cytosol,Day),
  catalyst(1032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01811",cytosol,Day) :-
  not exclude(1041),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C01811",medium,Day),
  catalyst(1041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(1042),
  Day >= 1,
  in_compartment(Experiment,"C01811",cytosol,Day),
  catalyst(1042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01811",medium,Day) :-
  not exclude(1042),
  Day >= 1,
  in_compartment(Experiment,"C01811",cytosol,Day),
  catalyst(1042,Complex),
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

in_compartment(Experiment,"GLTL",cytosol,Day) :-
  not exclude(1060),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"GLTL",medium,Day),
  catalyst(1060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02095",cytosol,Day) :-
  not exclude(1071),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C02095",medium,Day),
  catalyst(1071,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(1072),
  Day >= 1,
  in_compartment(Experiment,"C02095",cytosol,Day),
  catalyst(1072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02095",medium,Day) :-
  not exclude(1072),
  Day >= 1,
  in_compartment(Experiment,"C02095",cytosol,Day),
  catalyst(1072,Complex),
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

in_compartment(Experiment,"C00095",medium,Day) :-
  not exclude(1140),
  Day >= 1,
  in_compartment(Experiment,"C00089",medium,Day),
  catalyst(1140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",medium,Day) :-
  not exclude(1140),
  Day >= 1,
  in_compartment(Experiment,"C00089",medium,Day),
  catalyst(1140,Complex),
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

in_compartment(Experiment,"C00095",cytosol,Day) :-
  not exclude(1180),
  Day >= 1,
  in_compartment(Experiment,"C00095",medium,Day),
  catalyst(1180,Complex),
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

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(1200),
  Day >= 1,
  in_compartment(Experiment,"C00124",medium,Day),
  catalyst(1200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(1210),
  Day >= 1,
  in_compartment(Experiment,"C00267",medium,Day),
  catalyst(1210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",mitochondrion,Day) :-
  not exclude(1220),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(1220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00111",cytosol,Day) :-
  not exclude(1230),
  Day >= 1,
  in_compartment(Experiment,"C00111",mitochondrion,Day),
  catalyst(1230,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(1241),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C05533",cytosol,Day),
  catalyst(1241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05533",mitochondrion,Day) :-
  not exclude(1241),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C05533",cytosol,Day),
  catalyst(1241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(1242),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(1242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05533",cytosol,Day) :-
  not exclude(1242),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C05533",mitochondrion,Day),
  catalyst(1242,Complex),
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

in_compartment(Experiment,"C00415",mitochondrion,Day) :-
  not exclude(1301),
  Day >= 1,
  in_compartment(Experiment,"C00415",cytosol,Day),
  catalyst(1301,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00415",cytosol,Day) :-
  not exclude(1302),
  Day >= 1,
  in_compartment(Experiment,"C00415",mitochondrion,Day),
  catalyst(1302,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",mitochondrion,Day) :-
  not exclude(1311),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(1311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  not exclude(1312),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  catalyst(1312,Complex),
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

in_compartment(Experiment,"C00416",mitochondrion,Day) :-
  not exclude(1341),
  Day >= 1,
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(1341,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00416",cytosol,Day) :-
  not exclude(1342),
  Day >= 1,
  in_compartment(Experiment,"C00416",mitochondrion,Day),
  catalyst(1342,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00356",mitochondrion,Day) :-
  not exclude(1361),
  Day >= 1,
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(1361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00356",cytosol,Day) :-
  not exclude(1362),
  Day >= 1,
  in_compartment(Experiment,"C00356",mitochondrion,Day),
  catalyst(1362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01909",mitochondrion,Day) :-
  not exclude(1371),
  Day >= 1,
  in_compartment(Experiment,"C01909",cytosol,Day),
  catalyst(1371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01909",cytosol,Day) :-
  not exclude(1372),
  Day >= 1,
  in_compartment(Experiment,"C01909",mitochondrion,Day),
  catalyst(1372,Complex),
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

in_compartment(Experiment,"C00141",mitochondrion,Day) :-
  not exclude(1401),
  Day >= 1,
  in_compartment(Experiment,"C00141",cytosol,Day),
  catalyst(1401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00141",cytosol,Day) :-
  not exclude(1402),
  Day >= 1,
  in_compartment(Experiment,"C00141",mitochondrion,Day),
  catalyst(1402,Complex),
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

in_compartment(Experiment,"C00077",mitochondrion,Day) :-
  not exclude(1431),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  catalyst(1431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00077",cytosol,Day) :-
  not exclude(1432),
  Day >= 1,
  in_compartment(Experiment,"C00077",mitochondrion,Day),
  catalyst(1432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1432),
  Day >= 1,
  in_compartment(Experiment,"C00077",mitochondrion,Day),
  catalyst(1432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(1440),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01328",mitochondrion,Day),
  catalyst(1440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(1451),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1451),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(1452),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  catalyst(1452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",mitochondrion,Day) :-
  not exclude(1461),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(1461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1461),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  catalyst(1461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(1462),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  catalyst(1462,Complex),
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

in_compartment(Experiment,"C00158",mitochondrion,Day) :-
  not exclude(1511),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(1511),
  Day >= 1,
  in_compartment(Experiment,"C00158",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1511,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",cytosol,Day) :-
  not exclude(1512),
  Day >= 1,
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",mitochondrion,Day) :-
  not exclude(1512),
  Day >= 1,
  in_compartment(Experiment,"C00158",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1512,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(1531),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00383",cytosol,Day),
  catalyst(1531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00383",mitochondrion,Day) :-
  not exclude(1531),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00383",cytosol,Day),
  catalyst(1531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(1532),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00383",mitochondrion,Day),
  catalyst(1532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00383",cytosol,Day) :-
  not exclude(1532),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00383",mitochondrion,Day),
  catalyst(1532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(1540),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00042",cytosol,Day),
  catalyst(1540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(1540),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00042",cytosol,Day),
  catalyst(1540,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(1551),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",mitochondrion,Day) :-
  not exclude(1551),
  Day >= 1,
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00711",cytosol,Day),
  catalyst(1551,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(1552),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1552,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00711",cytosol,Day) :-
  not exclude(1552),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(1552,Complex),
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

in_compartment(Experiment,"C00059",mitochondrion,Day) :-
  not exclude(1620),
  Day >= 1,
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(1620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",mitochondrion,Day) :-
  not exclude(1620),
  Day >= 1,
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(1620,Complex),
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

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(1681),
  Day >= 1,
  in_compartment(Experiment,"C00055",mitochondrion,Day),
  catalyst(1681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",mitochondrion,Day) :-
  not exclude(1682),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(1682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00148",cytosol,Day) :-
  not exclude(1691),
  Day >= 1,
  in_compartment(Experiment,"C00148",mitochondrion,Day),
  catalyst(1691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00148",mitochondrion,Day) :-
  not exclude(1692),
  Day >= 1,
  in_compartment(Experiment,"C00148",cytosol,Day),
  catalyst(1692,Complex),
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

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(1721),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  catalyst(1721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",mitochondrion,Day) :-
  not exclude(1722),
  Day >= 1,
  in_compartment(Experiment,"C00037",cytosol,Day),
  catalyst(1722,Complex),
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

in_compartment(Experiment,"C00469",mitochondrion,Day) :-
  not exclude(1781),
  Day >= 1,
  in_compartment(Experiment,"C00469",cytosol,Day),
  catalyst(1781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00469",cytosol,Day) :-
  not exclude(1782),
  Day >= 1,
  in_compartment(Experiment,"C00469",mitochondrion,Day),
  catalyst(1782,Complex),
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

in_compartment(Experiment,"2NPMB",mitochondrion,Day) :-
  not exclude(1840),
  Day >= 1,
  in_compartment(Experiment,"2NPMP",mitochondrion,Day),
  in_compartment(Experiment,"C00007",mitochondrion,Day),
  catalyst(1840,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(1880),
  Day >= 1,
  in_compartment(Experiment,"C00156",cytosol,Day),
  in_compartment(Experiment,"C04145",cytosol,Day),
  catalyst(1880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"N4HBZ",cytosol,Day) :-
  not exclude(1880),
  Day >= 1,
  in_compartment(Experiment,"C00156",cytosol,Day),
  in_compartment(Experiment,"C04145",cytosol,Day),
  catalyst(1880,Complex),
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

in_compartment(Experiment,"C02191",mitochondrion,Day) :-
  not exclude(1940),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01079",mitochondrion,Day),
  catalyst(1940,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(1950),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02667",cytosol,Day),
  catalyst(1950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01079",cytosol,Day) :-
  not exclude(1950),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02667",cytosol,Day),
  catalyst(1950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(2000),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(2000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(2000),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(2000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00430",mitochondrion,Day) :-
  not exclude(2000),
  Day >= 1,
  in_compartment(Experiment,"C00037",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(2000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00153",mitochondrion,Day) :-
  not exclude(2010),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  catalyst(2010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00301",mitochondrion,Day) :-
  not exclude(2010),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  catalyst(2010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",mitochondrion,Day) :-
  not exclude(2031),
  Day >= 1,
  in_compartment(Experiment,"C00153",mitochondrion,Day),
  catalyst(2031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00253",mitochondrion,Day) :-
  not exclude(2031),
  Day >= 1,
  in_compartment(Experiment,"C00153",mitochondrion,Day),
  catalyst(2031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00153",mitochondrion,Day) :-
  not exclude(2032),
  Day >= 1,
  in_compartment(Experiment,"C00014",mitochondrion,Day),
  in_compartment(Experiment,"C00253",mitochondrion,Day),
  catalyst(2032,Complex),
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

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(2080),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00014",mitochondrion,Day),
  in_compartment(Experiment,"C00857",mitochondrion,Day),
  catalyst(2080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2080),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00014",mitochondrion,Day),
  in_compartment(Experiment,"C00857",mitochondrion,Day),
  catalyst(2080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(2080),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00014",mitochondrion,Day),
  in_compartment(Experiment,"C00857",mitochondrion,Day),
  catalyst(2080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(2090),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"NMN",mitochondrion,Day),
  catalyst(2090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2090),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"NMN",mitochondrion,Day),
  catalyst(2090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2100),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C01185",mitochondrion,Day),
  catalyst(2100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00857",mitochondrion,Day) :-
  not exclude(2100),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C01185",mitochondrion,Day),
  catalyst(2100,Complex),
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

in_compartment(Experiment,"C00147",cytosol,Day) :-
  not exclude(2131),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(2131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00442",cytosol,Day) :-
  not exclude(2131),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00212",cytosol,Day),
  catalyst(2131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2132),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C00442",cytosol,Day),
  catalyst(2132,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00212",cytosol,Day) :-
  not exclude(2132),
  Day >= 1,
  in_compartment(Experiment,"C00147",cytosol,Day),
  in_compartment(Experiment,"C00442",cytosol,Day),
  catalyst(2132,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00153",cytosol,Day) :-
  not exclude(2140),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  catalyst(2140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00301",cytosol,Day) :-
  not exclude(2140),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  catalyst(2140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(2160),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  catalyst(2160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2160),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  catalyst(2160,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2220),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00253",cytosol,Day),
  catalyst(2220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",cytosol,Day) :-
  not exclude(2220),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C00253",cytosol,Day),
  catalyst(2220,Complex),
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

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2280),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C01134",mitochondrion,Day),
  catalyst(2280,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00882",mitochondrion,Day) :-
  not exclude(2280),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C01134",mitochondrion,Day),
  catalyst(2280,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2320),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00864",cytosol,Day),
  catalyst(2320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03492",cytosol,Day) :-
  not exclude(2320),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00864",cytosol,Day),
  catalyst(2320,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(2350),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00966",cytosol,Day),
  catalyst(2350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00522",cytosol,Day) :-
  not exclude(2350),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00966",cytosol,Day),
  catalyst(2350,Complex),
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

in_compartment(Experiment,"C00234",cytosol,Day) :-
  not exclude(2391),
  Day >= 1,
  in_compartment(Experiment,"C00445",cytosol,Day),
  catalyst(2391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00445",cytosol,Day) :-
  not exclude(2392),
  Day >= 1,
  in_compartment(Experiment,"C00234",cytosol,Day),
  catalyst(2392,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00234",cytosol,Day),
  catalyst(2470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00234",cytosol,Day),
  catalyst(2470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00440",cytosol,Day) :-
  not exclude(2470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00234",cytosol,Day),
  catalyst(2470,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2510),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00921",cytosol,Day),
  catalyst(2510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2510),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00921",cytosol,Day),
  catalyst(2510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00415",cytosol,Day) :-
  not exclude(2510),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00921",cytosol,Day),
  catalyst(2510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00921",cytosol,Day) :-
  not exclude(2520),
  Day >= 1,
  in_compartment(Experiment,"C00568",cytosol,Day),
  in_compartment(Experiment,"C01300",cytosol,Day),
  catalyst(2520,Complex),
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

in_compartment(Experiment,"C00266",cytosol,Day) :-
  not exclude(2570),
  Day >= 1,
  in_compartment(Experiment,"C04874",cytosol,Day),
  catalyst(2570,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01300",cytosol,Day) :-
  not exclude(2570),
  Day >= 1,
  in_compartment(Experiment,"C04874",cytosol,Day),
  catalyst(2570,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2590),
  Day >= 1,
  in_compartment(Experiment,"C04895",cytosol,Day),
  catalyst(2590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04874",cytosol,Day) :-
  not exclude(2590),
  Day >= 1,
  in_compartment(Experiment,"C04895",cytosol,Day),
  catalyst(2590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2600),
  Day >= 1,
  in_compartment(Experiment,"C04895",cytosol,Day),
  catalyst(2600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05925",cytosol,Day) :-
  not exclude(2600),
  Day >= 1,
  in_compartment(Experiment,"C04895",cytosol,Day),
  catalyst(2600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(2610),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(2610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04895",cytosol,Day) :-
  not exclude(2610),
  Day >= 1,
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(2610,Complex),
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

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(2660),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(2660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2660),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(2660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01063",cytosol,Day) :-
  not exclude(2660),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  catalyst(2660,Complex),
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

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(2691),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C06054",cytosol,Day),
  catalyst(2691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06055",cytosol,Day) :-
  not exclude(2691),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C06054",cytosol,Day),
  catalyst(2691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(2692),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C06055",cytosol,Day),
  catalyst(2692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06054",cytosol,Day) :-
  not exclude(2692),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C06055",cytosol,Day),
  catalyst(2692,Complex),
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

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(2721),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00314",cytosol,Day),
  catalyst(2721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00250",cytosol,Day) :-
  not exclude(2721),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00314",cytosol,Day),
  catalyst(2721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(2722),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2722,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00314",cytosol,Day) :-
  not exclude(2722),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00250",cytosol,Day),
  catalyst(2722,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00018",cytosol,Day) :-
  not exclude(2731),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00627",cytosol,Day),
  catalyst(2731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(2731),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00627",cytosol,Day),
  catalyst(2731,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(2732),
  Day >= 1,
  in_compartment(Experiment,"C00018",cytosol,Day),
  in_compartment(Experiment,"C00027",cytosol,Day),
  catalyst(2732,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00627",cytosol,Day) :-
  not exclude(2732),
  Day >= 1,
  in_compartment(Experiment,"C00018",cytosol,Day),
  in_compartment(Experiment,"C00027",cytosol,Day),
  catalyst(2732,Complex),
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
  not exclude(2750),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00534",cytosol,Day),
  catalyst(2750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00647",cytosol,Day) :-
  not exclude(2750),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00534",cytosol,Day),
  catalyst(2750,Complex),
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

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2770),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00061",mitochondrion,Day),
  catalyst(2770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(2770),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00061",mitochondrion,Day),
  catalyst(2770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2780),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(2780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",cytosol,Day) :-
  not exclude(2780),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(2780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(2790),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00255",mitochondrion,Day),
  catalyst(2790,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00061",mitochondrion,Day) :-
  not exclude(2790),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00255",mitochondrion,Day),
  catalyst(2790,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2810),
  Day >= 1,
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(2810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00255",cytosol,Day) :-
  not exclude(2810),
  Day >= 1,
  in_compartment(Experiment,"C00061",cytosol,Day),
  catalyst(2810,Complex),
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

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(2830),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(2830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"DB4P",cytosol,Day) :-
  not exclude(2830),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(2830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"A6RP",cytosol,Day) :-
  not exclude(2840),
  Day >= 1,
  in_compartment(Experiment,"C04454",cytosol,Day),
  catalyst(2840,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2840),
  Day >= 1,
  in_compartment(Experiment,"C04454",cytosol,Day),
  catalyst(2840,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2900),
  Day >= 1,
  in_compartment(Experiment,"C04327",cytosol,Day),
  in_compartment(Experiment,"C04752",cytosol,Day),
  catalyst(2900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01081",cytosol,Day) :-
  not exclude(2900),
  Day >= 1,
  in_compartment(Experiment,"C04327",cytosol,Day),
  in_compartment(Experiment,"C04752",cytosol,Day),
  catalyst(2900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(2910),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04294",cytosol,Day),
  catalyst(2910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04327",cytosol,Day) :-
  not exclude(2910),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C04294",cytosol,Day),
  catalyst(2910,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(3020),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00111",cytosol,Day),
  catalyst(3020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",cytosol,Day) :-
  not exclude(3020),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00111",cytosol,Day),
  catalyst(3020,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3050),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(3050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00116",cytosol,Day) :-
  not exclude(3050),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(3050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(3080),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(3080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04252",cytosol,Day) :-
  not exclude(3080),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(3080,Complex),
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

in_compartment(Experiment,"C00127",cytosol,Day) :-
  not exclude(3141),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  catalyst(3141,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(3142),
  Day >= 1,
  in_compartment(Experiment,"C00127",cytosol,Day),
  catalyst(3142,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(3142),
  Day >= 1,
  in_compartment(Experiment,"C00127",cytosol,Day),
  catalyst(3142,Complex),
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

in_compartment(Experiment,"C00004",mitochondrion,Day) :-
  not exclude(3211),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00424",mitochondrion,Day),
  catalyst(3211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00186",mitochondrion,Day) :-
  not exclude(3211),
  Day >= 1,
  in_compartment(Experiment,"C00003",mitochondrion,Day),
  in_compartment(Experiment,"C00424",mitochondrion,Day),
  catalyst(3211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",mitochondrion,Day) :-
  not exclude(3212),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00186",mitochondrion,Day),
  catalyst(3212,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00424",mitochondrion,Day) :-
  not exclude(3212),
  Day >= 1,
  in_compartment(Experiment,"C00004",mitochondrion,Day),
  in_compartment(Experiment,"C00186",mitochondrion,Day),
  catalyst(3212,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(3240),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C04281",cytosol,Day),
  catalyst(3240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01157",cytosol,Day) :-
  not exclude(3240),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C04281",cytosol,Day),
  catalyst(3240,Complex),
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

in_compartment(Experiment,"C03912",cytosol,Day) :-
  not exclude(3281),
  Day >= 1,
  in_compartment(Experiment,"C01165",cytosol,Day),
  catalyst(3281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",cytosol,Day) :-
  not exclude(3282),
  Day >= 1,
  in_compartment(Experiment,"C03912",cytosol,Day),
  catalyst(3282,Complex),
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
  not exclude(3340),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02714",cytosol,Day),
  catalyst(3340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00555",cytosol,Day) :-
  not exclude(3340),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02714",cytosol,Day),
  catalyst(3340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02229",cytosol,Day) :-
  not exclude(3340),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C02714",cytosol,Day),
  catalyst(3340,Complex),
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
  not exclude(3370),
  Day >= 1,
  in_compartment(Experiment,"C02693",cytosol,Day),
  catalyst(3370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00954",cytosol,Day) :-
  not exclude(3370),
  Day >= 1,
  in_compartment(Experiment,"C02693",cytosol,Day),
  catalyst(3370,Complex),
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

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(3400),
  Day >= 1,
  in_compartment(Experiment,"C01061",cytosol,Day),
  catalyst(3400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00164",cytosol,Day) :-
  not exclude(3400),
  Day >= 1,
  in_compartment(Experiment,"C01061",cytosol,Day),
  catalyst(3400,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(3530),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(3530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(3530),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(3530,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3780),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00135",cytosol,Day),
  in_compartment(Experiment,"C01643",cytosol,Day),
  catalyst(3780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(3780),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00135",cytosol,Day),
  in_compartment(Experiment,"C01643",cytosol,Day),
  catalyst(3780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02988",cytosol,Day) :-
  not exclude(3780),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00135",cytosol,Day),
  in_compartment(Experiment,"C01643",cytosol,Day),
  catalyst(3780,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3790),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"PRLP",cytosol,Day),
  catalyst(3790,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04666",cytosol,Day) :-
  not exclude(3790),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"PRLP",cytosol,Day),
  catalyst(3790,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04677",cytosol,Day) :-
  not exclude(3790),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"PRLP",cytosol,Day),
  catalyst(3790,Complex),
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

in_compartment(Experiment,"C01267",cytosol,Day) :-
  not exclude(3830),
  Day >= 1,
  in_compartment(Experiment,"C04666",cytosol,Day),
  catalyst(3830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"PRLP",cytosol,Day) :-
  not exclude(3840),
  Day >= 1,
  in_compartment(Experiment,"C04896",cytosol,Day),
  catalyst(3840,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04896",cytosol,Day) :-
  not exclude(3850),
  Day >= 1,
  in_compartment(Experiment,"C03883",cytosol,Day),
  catalyst(3850,Complex),
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
  not exclude(3920),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C01137",cytosol,Day),
  catalyst(3920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00750",cytosol,Day) :-
  not exclude(3920),
  Day >= 1,
  in_compartment(Experiment,"C00315",cytosol,Day),
  in_compartment(Experiment,"C01137",cytosol,Day),
  catalyst(3920,Complex),
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
  not exclude(3941),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  catalyst(3941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01137",cytosol,Day) :-
  not exclude(3941),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  catalyst(3941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(3942),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01137",cytosol,Day),
  catalyst(3942,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3971),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00327",cytosol,Day),
  catalyst(3971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(3971),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00327",cytosol,Day),
  catalyst(3971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03406",cytosol,Day) :-
  not exclude(3971),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C00327",cytosol,Day),
  catalyst(3971,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(3972),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03406",cytosol,Day),
  catalyst(3972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(3972),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03406",cytosol,Day),
  catalyst(3972,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00327",cytosol,Day) :-
  not exclude(3972),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03406",cytosol,Day),
  catalyst(3972,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00169",cytosol,Day) :-
  not exclude(4000),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00077",mitochondrion,Day) :-
  not exclude(4010),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00437",mitochondrion,Day),
  catalyst(4010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00624",mitochondrion,Day) :-
  not exclude(4010),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00437",mitochondrion,Day),
  catalyst(4010,Complex),
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

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(4040),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00624",mitochondrion,Day),
  catalyst(4040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04133",mitochondrion,Day) :-
  not exclude(4040),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00624",mitochondrion,Day),
  catalyst(4040,Complex),
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

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(4060),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00047",mitochondrion,Day),
  in_compartment(Experiment,"C01646",mitochondrion,Day),
  catalyst(4060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(4060),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00047",mitochondrion,Day),
  in_compartment(Experiment,"C01646",mitochondrion,Day),
  catalyst(4060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01931",mitochondrion,Day) :-
  not exclude(4060),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00047",mitochondrion,Day),
  in_compartment(Experiment,"C01646",mitochondrion,Day),
  catalyst(4060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4070),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00047",cytosol,Day),
  in_compartment(Experiment,"C01646",cytosol,Day),
  catalyst(4070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(4070),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00047",cytosol,Day),
  in_compartment(Experiment,"C01646",cytosol,Day),
  catalyst(4070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01931",cytosol,Day) :-
  not exclude(4070),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00047",cytosol,Day),
  in_compartment(Experiment,"C01646",cytosol,Day),
  catalyst(4070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4081),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00449",cytosol,Day),
  catalyst(4081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4081),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00449",cytosol,Day),
  catalyst(4081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00047",cytosol,Day) :-
  not exclude(4081),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00449",cytosol,Day),
  catalyst(4081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(4082),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00047",cytosol,Day),
  catalyst(4082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00449",cytosol,Day) :-
  not exclude(4082),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00047",cytosol,Day),
  catalyst(4082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(4110),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4110),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(4110),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04076",cytosol,Day) :-
  not exclude(4110),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(4110,Complex),
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

in_compartment(Experiment,"C02504",cytosol,Day) :-
  not exclude(4181),
  Day >= 1,
  in_compartment(Experiment,"C02631",cytosol,Day),
  catalyst(4181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02631",cytosol,Day) :-
  not exclude(4182),
  Day >= 1,
  in_compartment(Experiment,"C02504",cytosol,Day),
  catalyst(4182,Complex),
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

in_compartment(Experiment,"OIVAL",mitochondrion,Day) :-
  not exclude(4220),
  Day >= 1,
  in_compartment(Experiment,"C06237",mitochondrion,Day),
  catalyst(4220,Complex),
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

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(4240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00900",mitochondrion,Day),
  catalyst(4240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06237",mitochondrion,Day) :-
  not exclude(4240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00900",mitochondrion,Day),
  catalyst(4240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(4250),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  catalyst(4250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00900",mitochondrion,Day) :-
  not exclude(4250),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  catalyst(4250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"ABUT",mitochondrion,Day) :-
  not exclude(4260),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  in_compartment(Experiment,"C00109",mitochondrion,Day),
  catalyst(4260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(4260),
  Day >= 1,
  in_compartment(Experiment,"C00022",mitochondrion,Day),
  in_compartment(Experiment,"C00109",mitochondrion,Day),
  catalyst(4260,Complex),
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

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(4311),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C04236",mitochondrion,Day),
  catalyst(4311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00123",mitochondrion,Day) :-
  not exclude(4311),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C04236",mitochondrion,Day),
  catalyst(4311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4312),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00123",mitochondrion,Day),
  catalyst(4312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04236",mitochondrion,Day) :-
  not exclude(4312),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00123",mitochondrion,Day),
  catalyst(4312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4321),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(4321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00224",cytosol,Day) :-
  not exclude(4321),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00059",cytosol,Day),
  catalyst(4321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4322),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00224",cytosol,Day),
  catalyst(4322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00059",cytosol,Day) :-
  not exclude(4322),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00224",cytosol,Day),
  catalyst(4322,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4340),
  Day >= 1,
  in_compartment(Experiment,"C00054",cytosol,Day),
  catalyst(4340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(4340),
  Day >= 1,
  in_compartment(Experiment,"C00054",cytosol,Day),
  catalyst(4340,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  catalyst(4410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(4410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  catalyst(4410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(4410),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00073",cytosol,Day),
  catalyst(4410,Complex),
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

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(4440),
  Day >= 1,
  in_compartment(Experiment,"C00409",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4440,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00073",cytosol,Day) :-
  not exclude(4440),
  Day >= 1,
  in_compartment(Experiment,"C00409",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4440,Complex),
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

in_compartment(Experiment,"C00014",mitochondrion,Day) :-
  not exclude(4530),
  Day >= 1,
  in_compartment(Experiment,"C00188",mitochondrion,Day),
  catalyst(4530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00109",mitochondrion,Day) :-
  not exclude(4530),
  Day >= 1,
  in_compartment(Experiment,"C00188",mitochondrion,Day),
  catalyst(4530,Complex),
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

in_compartment(Experiment,"C00188",cytosol,Day) :-
  not exclude(4560),
  Day >= 1,
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00084",cytosol,Day),
  catalyst(4560,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(4610),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00441",cytosol,Day),
  catalyst(4610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00263",cytosol,Day) :-
  not exclude(4610),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00441",cytosol,Day),
  catalyst(4610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(4620),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03082",cytosol,Day),
  catalyst(4620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4620),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03082",cytosol,Day),
  catalyst(4620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00441",cytosol,Day) :-
  not exclude(4620),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03082",cytosol,Day),
  catalyst(4620,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(4640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(4640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00143",cytosol,Day) :-
  not exclude(4640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(4640,Complex),
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

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4700),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C03232",cytosol,Day),
  catalyst(4700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01005",cytosol,Day) :-
  not exclude(4700),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C03232",cytosol,Day),
  catalyst(4700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(4710),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00197",cytosol,Day),
  catalyst(4710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03232",cytosol,Day) :-
  not exclude(4710),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00197",cytosol,Day),
  catalyst(4710,Complex),
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

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(4811),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(4811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(4811),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00036",cytosol,Day),
  catalyst(4811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4812),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(4812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00036",cytosol,Day) :-
  not exclude(4812),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  catalyst(4812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(4821),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(4821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",mitochondrion,Day) :-
  not exclude(4821),
  Day >= 1,
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(4821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4822),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00049",mitochondrion,Day),
  catalyst(4822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00036",mitochondrion,Day) :-
  not exclude(4822),
  Day >= 1,
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  in_compartment(Experiment,"C00049",mitochondrion,Day),
  catalyst(4822,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(4900),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4900),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(4900),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(4900,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(4930),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4930,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(4930),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(4930,Complex),
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

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(4960),
  Day >= 1,
  in_compartment(Experiment,"C00043",cytosol,Day),
  catalyst(4960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00461",cytosol,Day) :-
  not exclude(4960),
  Day >= 1,
  in_compartment(Experiment,"C00043",cytosol,Day),
  catalyst(4960,Complex),
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

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5080),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00458",cytosol,Day) :-
  not exclude(5080),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5080,Complex),
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

in_compartment(Experiment,"C00131",cytosol,Day) :-
  not exclude(5100),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5100),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5100,Complex),
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
  not exclude(5210),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00881",cytosol,Day) :-
  not exclude(5210),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5220),
  Day >= 1,
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(5220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00330",cytosol,Day) :-
  not exclude(5220),
  Day >= 1,
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(5220,Complex),
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

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(5270),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5270,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00380",cytosol,Day) :-
  not exclude(5270),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  catalyst(5270,Complex),
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
  not exclude(5291),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(5291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(5291),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00105",cytosol,Day),
  catalyst(5291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5292),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(5292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(5292),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00015",cytosol,Day),
  catalyst(5292,Complex),
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

in_compartment(Experiment,"C00081",cytosol,Day) :-
  not exclude(5371),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",cytosol,Day) :-
  not exclude(5371),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5372),
  Day >= 1,
  in_compartment(Experiment,"C00081",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",cytosol,Day) :-
  not exclude(5372),
  Day >= 1,
  in_compartment(Experiment,"C00081",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5372,Complex),
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
  not exclude(5401),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(5401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00459",cytosol,Day) :-
  not exclude(5401),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(5401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(5402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00363",cytosol,Day) :-
  not exclude(5402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(5402,Complex),
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
  not exclude(5431),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(5431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00286",cytosol,Day) :-
  not exclude(5431),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(5431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(5432),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(5432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00361",cytosol,Day) :-
  not exclude(5432),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00286",cytosol,Day),
  catalyst(5432,Complex),
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

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(5481),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00020",mitochondrion,Day),
  catalyst(5481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",mitochondrion,Day) :-
  not exclude(5482),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  catalyst(5482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(5482),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  catalyst(5482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5491),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00081",cytosol,Day),
  catalyst(5491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00104",cytosol,Day) :-
  not exclude(5491),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00081",cytosol,Day),
  catalyst(5491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(5492),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00081",cytosol,Day) :-
  not exclude(5492),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00104",cytosol,Day),
  catalyst(5492,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5591),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00294",cytosol,Day) :-
  not exclude(5591),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  in_compartment(Experiment,"C00620",cytosol,Day),
  catalyst(5591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00262",cytosol,Day) :-
  not exclude(5592),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00294",cytosol,Day),
  catalyst(5592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00620",cytosol,Day) :-
  not exclude(5592),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00294",cytosol,Day),
  catalyst(5592,Complex),
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

in_compartment(Experiment,"C00364",cytosol,Day) :-
  not exclude(5720),
  Day >= 1,
  in_compartment(Experiment,"C00143",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00415",cytosol,Day) :-
  not exclude(5720),
  Day >= 1,
  in_compartment(Experiment,"C00143",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5720,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(5870),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(5870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(5870),
  Day >= 1,
  in_compartment(Experiment,"C00106",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(5870,Complex),
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

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(5970),
  Day >= 1,
  in_compartment(Experiment,"C00941",cytosol,Day),
  catalyst(5970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(5980),
  Day >= 1,
  in_compartment(Experiment,"C00942",cytosol,Day),
  catalyst(5980,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(5990),
  Day >= 1,
  in_compartment(Experiment,"C00943",cytosol,Day),
  catalyst(5990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00360",cytosol,Day) :-
  not exclude(6000),
  Day >= 1,
  in_compartment(Experiment,"C00968",cytosol,Day),
  catalyst(6000,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6010),
  Day >= 1,
  in_compartment(Experiment,"C00575",cytosol,Day),
  catalyst(6010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(6020),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(6020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(6020),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(6020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(6030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(6030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(6030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(6030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00144",cytosol,Day) :-
  not exclude(6030),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00655",cytosol,Day),
  catalyst(6030,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6101),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C04751",cytosol,Day),
  catalyst(6101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6101),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C04751",cytosol,Day),
  catalyst(6101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04823",cytosol,Day) :-
  not exclude(6101),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00049",cytosol,Day),
  in_compartment(Experiment,"C04751",cytosol,Day),
  catalyst(6101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6102),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C04823",cytosol,Day),
  catalyst(6102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00049",cytosol,Day) :-
  not exclude(6102),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C04823",cytosol,Day),
  catalyst(6102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04751",cytosol,Day) :-
  not exclude(6102),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C04823",cytosol,Day),
  catalyst(6102,Complex),
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
  not exclude(6130),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C04376",cytosol,Day),
  catalyst(6130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6130),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C04376",cytosol,Day),
  catalyst(6130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(6130),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C04376",cytosol,Day),
  catalyst(6130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04640",cytosol,Day) :-
  not exclude(6130),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C04376",cytosol,Day),
  catalyst(6130,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6200),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(6200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00575",cytosol,Day) :-
  not exclude(6200),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(6200,Complex),
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
  not exclude(6260),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"MZYMST",cytosol,Day),
  catalyst(6260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6260),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"MZYMST",cytosol,Day),
  catalyst(6260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6260),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"MZYMST",cytosol,Day),
  catalyst(6260,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05437",cytosol,Day) :-
  not exclude(6260),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"MZYMST",cytosol,Day),
  catalyst(6260,Complex),
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

in_compartment(Experiment,"EPST",cytosol,Day) :-
  not exclude(6310),
  Day >= 1,
  in_compartment(Experiment,"C08817",cytosol,Day),
  catalyst(6310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(6320),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05437",cytosol,Day),
  catalyst(6320,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C08817",cytosol,Day) :-
  not exclude(6320),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C05437",cytosol,Day),
  catalyst(6320,Complex),
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
  not exclude(6340),
  Day >= 1,
  in_compartment(Experiment,"IZYMST",cytosol,Day),
  catalyst(6340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"IIZYMST",cytosol,Day) :-
  not exclude(6340),
  Day >= 1,
  in_compartment(Experiment,"IZYMST",cytosol,Day),
  catalyst(6340,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"IZYMST",cytosol,Day) :-
  not exclude(6350),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"MZYMST",cytosol,Day),
  catalyst(6350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6360),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IIMZYMST",cytosol,Day),
  catalyst(6360,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"MZYMST",cytosol,Day) :-
  not exclude(6360),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"IIMZYMST",cytosol,Day),
  catalyst(6360,Complex),
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

in_compartment(Experiment,"IMZYMST",cytosol,Day) :-
  not exclude(6380),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"DMZYMST",cytosol,Day),
  catalyst(6380,Complex),
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

in_compartment(Experiment,"C03161",cytosol,Day) :-
  not exclude(6400),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(6400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"IGST",cytosol,Day) :-
  not exclude(6400),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01724",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(6400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01724",cytosol,Day) :-
  not exclude(6410),
  Day >= 1,
  in_compartment(Experiment,"C01054",cytosol,Day),
  catalyst(6410,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6430),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00448",cytosol,Day),
  catalyst(6430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00751",cytosol,Day) :-
  not exclude(6430),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00448",cytosol,Day),
  catalyst(6430,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6450),
  Day >= 1,
  in_compartment(Experiment,"C00129",cytosol,Day),
  in_compartment(Experiment,"C00235",cytosol,Day),
  catalyst(6450,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00341",cytosol,Day) :-
  not exclude(6450),
  Day >= 1,
  in_compartment(Experiment,"C00129",cytosol,Day),
  in_compartment(Experiment,"C00235",cytosol,Day),
  catalyst(6450,Complex),
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
  not exclude(6470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01143",cytosol,Day),
  catalyst(6470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01143",cytosol,Day),
  catalyst(6470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(6470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01143",cytosol,Day),
  catalyst(6470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00129",cytosol,Day) :-
  not exclude(6470),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01143",cytosol,Day),
  catalyst(6470,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(6531),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00356",cytosol,Day) :-
  not exclude(6531),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(6531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6532),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(6532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(6532),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(6532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00418",cytosol,Day) :-
  not exclude(6532),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00356",cytosol,Day),
  catalyst(6532,Complex),
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
  not exclude(6570),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6570,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"PHSP",cytosol,Day) :-
  not exclude(6570),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6570,Complex),
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

in_compartment(Experiment,"MIP2C",cytosol,Day) :-
  not exclude(6590),
  Day >= 1,
  in_compartment(Experiment,"C01194",cytosol,Day),
  in_compartment(Experiment,"MIPC",cytosol,Day),
  catalyst(6590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"MIPC",cytosol,Day) :-
  not exclude(6600),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"IPC",cytosol,Day),
  catalyst(6600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"IPC",cytosol,Day) :-
  not exclude(6610),
  Day >= 1,
  in_compartment(Experiment,"C01194",cytosol,Day),
  in_compartment(Experiment,"CER3",cytosol,Day),
  catalyst(6610,Complex),
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
  not exclude(6630),
  Day >= 1,
  in_compartment(Experiment,"C240COA",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"CER2",cytosol,Day) :-
  not exclude(6630),
  Day >= 1,
  in_compartment(Experiment,"C240COA",cytosol,Day),
  in_compartment(Experiment,"PSPH",cytosol,Day),
  catalyst(6630,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(6660),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02934",cytosol,Day),
  catalyst(6660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00836",cytosol,Day) :-
  not exclude(6660),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02934",cytosol,Day),
  catalyst(6660,Complex),
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

in_compartment(Experiment,"C00055",mitochondrion,Day) :-
  not exclude(6700),
  Day >= 1,
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  in_compartment(Experiment,"C00344",mitochondrion,Day),
  catalyst(6700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05980",mitochondrion,Day) :-
  not exclude(6700),
  Day >= 1,
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  in_compartment(Experiment,"C00344",mitochondrion,Day),
  catalyst(6700,Complex),
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
  not exclude(6760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01194",cytosol,Day),
  catalyst(6760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04549",cytosol,Day) :-
  not exclude(6760),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01194",cytosol,Day),
  catalyst(6760,Complex),
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

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(6801),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C00570",cytosol,Day),
  catalyst(6801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00350",cytosol,Day) :-
  not exclude(6801),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C00570",cytosol,Day),
  catalyst(6801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00165",cytosol,Day) :-
  not exclude(6802),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(6802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00570",cytosol,Day) :-
  not exclude(6802),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(6802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6810),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00346",cytosol,Day),
  catalyst(6810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00570",cytosol,Day) :-
  not exclude(6810),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00346",cytosol,Day),
  catalyst(6810,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6840),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00588",cytosol,Day),
  catalyst(6840,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00307",cytosol,Day) :-
  not exclude(6840),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00588",cytosol,Day),
  catalyst(6840,Complex),
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

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(6880),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(6880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01241",cytosol,Day) :-
  not exclude(6880),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00350",cytosol,Day),
  catalyst(6880,Complex),
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

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(6921),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02737",cytosol,Day) :-
  not exclude(6921),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00269",cytosol,Day),
  catalyst(6921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(6922),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  in_compartment(Experiment,"C02737",cytosol,Day),
  catalyst(6922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00269",cytosol,Day) :-
  not exclude(6922),
  Day >= 1,
  in_compartment(Experiment,"C00055",cytosol,Day),
  in_compartment(Experiment,"C02737",cytosol,Day),
  catalyst(6922,Complex),
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

in_compartment(Experiment,"23DAACP",cytosol,Day) :-
  not exclude(7021),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  catalyst(7021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(7021),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  catalyst(7021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7022),
  Day >= 1,
  in_compartment(Experiment,"23DAACP",cytosol,Day),
  in_compartment(Experiment,"C00004",cytosol,Day),
  catalyst(7022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00173",cytosol,Day) :-
  not exclude(7022),
  Day >= 1,
  in_compartment(Experiment,"23DAACP",cytosol,Day),
  in_compartment(Experiment,"C00004",cytosol,Day),
  catalyst(7022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"2HDACP",cytosol,Day) :-
  not exclude(7031),
  Day >= 1,
  in_compartment(Experiment,"C04633",cytosol,Day),
  catalyst(7031,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04633",cytosol,Day) :-
  not exclude(7032),
  Day >= 1,
  in_compartment(Experiment,"2HDACP",cytosol,Day),
  catalyst(7032,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7040),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7040),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7040),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C182ACP",cytosol,Day) :-
  not exclude(7040),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7050),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7050),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01203",cytosol,Day) :-
  not exclude(7050),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"CO2",cytosol,Day) :-
  not exclude(7050),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7060),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7060),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7060),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04088",cytosol,Day) :-
  not exclude(7060),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7060,Complex),
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
  not exclude(7100),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7100),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7100),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06253",cytosol,Day) :-
  not exclude(7100),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00173",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7100,Complex),
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

in_compartment(Experiment,"3OACP",mitochondrion,Day) :-
  not exclude(7130),
  Day >= 1,
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7130),
  Day >= 1,
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7130),
  Day >= 1,
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7151),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(7151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(7151),
  Day >= 1,
  in_compartment(Experiment,"C00083",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(7151,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00083",cytosol,Day) :-
  not exclude(7152),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7152,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(7152),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01209",cytosol,Day),
  catalyst(7152,Complex),
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

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7170),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7170),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7170),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C182ACP",mitochondrion,Day) :-
  not exclude(7170),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7180),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7180),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7180),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01203",mitochondrion,Day) :-
  not exclude(7180),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7180,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7190),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7190),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7190),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04088",mitochondrion,Day) :-
  not exclude(7190),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7200),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7200),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7200),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C161ACP",mitochondrion,Day) :-
  not exclude(7200),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7200,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7210),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7210),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7210),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05764",mitochondrion,Day) :-
  not exclude(7210),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7210,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7220),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7220),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7220),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05761",mitochondrion,Day) :-
  not exclude(7220),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7220,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05223",mitochondrion,Day) :-
  not exclude(7240),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7240,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",mitochondrion,Day) :-
  not exclude(7250),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7250),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",mitochondrion,Day) :-
  not exclude(7250),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7250,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05755",mitochondrion,Day) :-
  not exclude(7250),
  Day >= 1,
  in_compartment(Experiment,"C00005",mitochondrion,Day),
  in_compartment(Experiment,"C00173",mitochondrion,Day),
  in_compartment(Experiment,"C01209",mitochondrion,Day),
  catalyst(7250,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(7311),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00347",cytosol,Day),
  catalyst(7311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(7311),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00347",cytosol,Day),
  catalyst(7311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00040",cytosol,Day) :-
  not exclude(7311),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00347",cytosol,Day),
  catalyst(7311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(7312),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00040",cytosol,Day),
  catalyst(7312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(7312),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00040",cytosol,Day),
  catalyst(7312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00347",cytosol,Day) :-
  not exclude(7312),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00040",cytosol,Day),
  catalyst(7312,Complex),
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

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(7330),
  Day >= 1,
  in_compartment(Experiment,"C01010",cytosol,Day),
  catalyst(7330,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(7330),
  Day >= 1,
  in_compartment(Experiment,"C01010",cytosol,Day),
  catalyst(7330,Complex),
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

in_compartment(Experiment,"C00022",mitochondrion,Day) :-
  not exclude(7370),
  Day >= 1,
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00186",mitochondrion,Day),
  catalyst(7370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",mitochondrion,Day) :-
  not exclude(7370),
  Day >= 1,
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00186",mitochondrion,Day),
  catalyst(7370,Complex),
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

in_compartment(Experiment,"C00125",mitochondrion,Day) :-
  not exclude(7390),
  Day >= 1,
  in_compartment(Experiment,"C00007",mitochondrion,Day),
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  in_compartment(Experiment,"C00126",mitochondrion,Day),
  catalyst(7390,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",mitochondrion,Day) :-
  not exclude(7400),
  Day >= 1,
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(7400,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01967",mitochondrion,Day) :-
  not exclude(7400),
  Day >= 1,
  in_compartment(Experiment,"C00080",mitochondrion,Day),
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(7400,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7420),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  catalyst(7420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",mitochondrion,Day) :-
  not exclude(7420),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00125",mitochondrion,Day),
  catalyst(7420,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7460),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  catalyst(7460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",mitochondrion,Day) :-
  not exclude(7470),
  Day >= 1,
  in_compartment(Experiment,"C03451",mitochondrion,Day),
  catalyst(7470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",mitochondrion,Day) :-
  not exclude(7470),
  Day >= 1,
  in_compartment(Experiment,"C03451",mitochondrion,Day),
  catalyst(7470,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03451",cytosol,Day) :-
  not exclude(7491),
  Day >= 1,
  in_compartment(Experiment,"C00051",cytosol,Day),
  in_compartment(Experiment,"C00546",cytosol,Day),
  catalyst(7491,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(7492),
  Day >= 1,
  in_compartment(Experiment,"C03451",cytosol,Day),
  catalyst(7492,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00546",cytosol,Day) :-
  not exclude(7492),
  Day >= 1,
  in_compartment(Experiment,"C03451",cytosol,Day),
  catalyst(7492,Complex),
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

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(7520),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  catalyst(7520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01251",mitochondrion,Day) :-
  not exclude(7520),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00026",mitochondrion,Day),
  catalyst(7520,Complex),
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

in_compartment(Experiment,"C00103",cytosol,Day) :-
  not exclude(7600),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00182",cytosol,Day),
  catalyst(7600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7610),
  Day >= 1,
  in_compartment(Experiment,"C01083",cytosol,Day),
  catalyst(7610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00052",cytosol,Day) :-
  not exclude(7641),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C03384",cytosol,Day),
  catalyst(7641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00103",cytosol,Day) :-
  not exclude(7641),
  Day >= 1,
  in_compartment(Experiment,"C00029",cytosol,Day),
  in_compartment(Experiment,"C03384",cytosol,Day),
  catalyst(7641,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00029",cytosol,Day) :-
  not exclude(7642),
  Day >= 1,
  in_compartment(Experiment,"C00052",cytosol,Day),
  in_compartment(Experiment,"C00103",cytosol,Day),
  catalyst(7642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03384",cytosol,Day) :-
  not exclude(7642),
  Day >= 1,
  in_compartment(Experiment,"C00052",cytosol,Day),
  in_compartment(Experiment,"C00103",cytosol,Day),
  catalyst(7642,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7650),
  Day >= 1,
  in_compartment(Experiment,"C05397",cytosol,Day),
  catalyst(7650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7650),
  Day >= 1,
  in_compartment(Experiment,"C05397",cytosol,Day),
  catalyst(7650,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7660),
  Day >= 1,
  in_compartment(Experiment,"C00208",cytosol,Day),
  catalyst(7660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7671),
  Day >= 1,
  in_compartment(Experiment,"C05399",cytosol,Day),
  catalyst(7671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00794",cytosol,Day) :-
  not exclude(7671),
  Day >= 1,
  in_compartment(Experiment,"C05399",cytosol,Day),
  catalyst(7671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05399",cytosol,Day) :-
  not exclude(7672),
  Day >= 1,
  in_compartment(Experiment,"C00124",cytosol,Day),
  in_compartment(Experiment,"C00794",cytosol,Day),
  catalyst(7672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00116",cytosol,Day) :-
  not exclude(7681),
  Day >= 1,
  in_compartment(Experiment,"C05401",cytosol,Day),
  catalyst(7681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7681),
  Day >= 1,
  in_compartment(Experiment,"C05401",cytosol,Day),
  catalyst(7681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05401",cytosol,Day) :-
  not exclude(7682),
  Day >= 1,
  in_compartment(Experiment,"C00116",cytosol,Day),
  in_compartment(Experiment,"C00124",cytosol,Day),
  catalyst(7682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7691),
  Day >= 1,
  in_compartment(Experiment,"C05400",cytosol,Day),
  catalyst(7691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00936",cytosol,Day) :-
  not exclude(7691),
  Day >= 1,
  in_compartment(Experiment,"C05400",cytosol,Day),
  catalyst(7691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05400",cytosol,Day) :-
  not exclude(7692),
  Day >= 1,
  in_compartment(Experiment,"C00124",cytosol,Day),
  in_compartment(Experiment,"C00936",cytosol,Day),
  catalyst(7692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7701),
  Day >= 1,
  in_compartment(Experiment,"C01235",cytosol,Day),
  catalyst(7701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00137",cytosol,Day) :-
  not exclude(7701),
  Day >= 1,
  in_compartment(Experiment,"C01235",cytosol,Day),
  catalyst(7701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01235",cytosol,Day) :-
  not exclude(7702),
  Day >= 1,
  in_compartment(Experiment,"C00124",cytosol,Day),
  in_compartment(Experiment,"C00137",cytosol,Day),
  catalyst(7702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00089",cytosol,Day) :-
  not exclude(7710),
  Day >= 1,
  in_compartment(Experiment,"C00492",cytosol,Day),
  catalyst(7710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7710),
  Day >= 1,
  in_compartment(Experiment,"C00492",cytosol,Day),
  catalyst(7710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7720),
  Day >= 1,
  in_compartment(Experiment,"C02472",cytosol,Day),
  catalyst(7720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7720),
  Day >= 1,
  in_compartment(Experiment,"C02472",cytosol,Day),
  catalyst(7720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(7730),
  Day >= 1,
  in_compartment(Experiment,"C05402",cytosol,Day),
  catalyst(7730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(7730),
  Day >= 1,
  in_compartment(Experiment,"C05402",cytosol,Day),
  catalyst(7730,Complex),
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
  not exclude(7810),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00665",cytosol,Day) :-
  not exclude(7810),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7810,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(7841),
  Day >= 1,
  in_compartment(Experiment,"C00275",cytosol,Day),
  catalyst(7841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00275",cytosol,Day) :-
  not exclude(7842),
  Day >= 1,
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7842,Complex),
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

in_compartment(Experiment,"C00345",cytosol,Day) :-
  not exclude(7950),
  Day >= 1,
  in_compartment(Experiment,"C01236",cytosol,Day),
  catalyst(7950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(7961),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(7961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01236",cytosol,Day) :-
  not exclude(7961),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(7961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(7962),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C01236",cytosol,Day),
  catalyst(7962,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(7962),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C01236",cytosol,Day),
  catalyst(7962,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",mitochondrion,Day) :-
  not exclude(7970),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(7970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(7970),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(7970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",mitochondrion,Day) :-
  not exclude(7970),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(7970,Complex),
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

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(8020),
  Day >= 1,
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(8020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00048",cytosol,Day) :-
  not exclude(8020),
  Day >= 1,
  in_compartment(Experiment,"C00311",cytosol,Day),
  catalyst(8020,Complex),
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

in_compartment(Experiment,"C00711",mitochondrion,Day) :-
  not exclude(8061),
  Day >= 1,
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  catalyst(8061,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00122",mitochondrion,Day) :-
  not exclude(8062),
  Day >= 1,
  in_compartment(Experiment,"C00711",mitochondrion,Day),
  catalyst(8062,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00016",mitochondrion,Day) :-
  not exclude(8070),
  Day >= 1,
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(8070),
  Day >= 1,
  in_compartment(Experiment,"C00122",mitochondrion,Day),
  in_compartment(Experiment,"C01352",mitochondrion,Day),
  catalyst(8070,Complex),
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

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(8101),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00490",mitochondrion,Day),
  catalyst(8101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(8101),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00490",mitochondrion,Day),
  catalyst(8101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00531",mitochondrion,Day) :-
  not exclude(8101),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00490",mitochondrion,Day),
  catalyst(8101,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",mitochondrion,Day) :-
  not exclude(8102),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00531",mitochondrion,Day),
  catalyst(8102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(8102),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00531",mitochondrion,Day),
  catalyst(8102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00490",mitochondrion,Day) :-
  not exclude(8102),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00531",mitochondrion,Day),
  catalyst(8102,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",mitochondrion,Day) :-
  not exclude(8111),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  catalyst(8111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(8111),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  catalyst(8111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00091",mitochondrion,Day) :-
  not exclude(8111),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00010",mitochondrion,Day),
  in_compartment(Experiment,"C00042",mitochondrion,Day),
  catalyst(8111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",mitochondrion,Day) :-
  not exclude(8112),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(8112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(8112),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(8112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",mitochondrion,Day) :-
  not exclude(8112),
  Day >= 1,
  in_compartment(Experiment,"C00008",mitochondrion,Day),
  in_compartment(Experiment,"C00009",mitochondrion,Day),
  in_compartment(Experiment,"C00091",mitochondrion,Day),
  catalyst(8112,Complex),
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

in_compartment(Experiment,"C01159",cytosol,Day) :-
  not exclude(8251),
  Day >= 1,
  in_compartment(Experiment,"C00236",cytosol,Day),
  catalyst(8251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00236",cytosol,Day) :-
  not exclude(8252),
  Day >= 1,
  in_compartment(Experiment,"C01159",cytosol,Day),
  catalyst(8252,Complex),
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

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(8281),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  catalyst(8281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00111",cytosol,Day) :-
  not exclude(8282),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(8282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00111",cytosol,Day) :-
  not exclude(8291),
  Day >= 1,
  in_compartment(Experiment,"C05378",cytosol,Day),
  catalyst(8291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(8291),
  Day >= 1,
  in_compartment(Experiment,"C05378",cytosol,Day),
  catalyst(8291,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05378",cytosol,Day) :-
  not exclude(8292),
  Day >= 1,
  in_compartment(Experiment,"C00111",cytosol,Day),
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(8292,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8310),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01097",cytosol,Day),
  catalyst(8310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03785",cytosol,Day) :-
  not exclude(8310),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C01097",cytosol,Day),
  catalyst(8310,Complex),
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

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(8331),
  Day >= 1,
  in_compartment(Experiment,"C01172",cytosol,Day),
  catalyst(8331,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01172",cytosol,Day) :-
  not exclude(8332),
  Day >= 1,
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(8332,Complex),
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
  not exclude(8370),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00936",cytosol,Day),
  catalyst(8370,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00275",cytosol,Day) :-
  not exclude(8370),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00936",cytosol,Day),
  catalyst(8370,Complex),
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
  not exclude(8471),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(8471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05921",cytosol,Day) :-
  not exclude(8471),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00120",cytosol,Day),
  catalyst(8471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8472),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C05921",cytosol,Day),
  catalyst(8472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00120",cytosol,Day) :-
  not exclude(8472),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C05921",cytosol,Day),
  catalyst(8472,Complex),
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
  not exclude(8501),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00496",cytosol,Day),
  in_compartment(Experiment,"C02188",cytosol,Day),
  catalyst(8501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8501),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00496",cytosol,Day),
  in_compartment(Experiment,"C02188",cytosol,Day),
  catalyst(8501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03635",cytosol,Day) :-
  not exclude(8501),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00496",cytosol,Day),
  in_compartment(Experiment,"C02188",cytosol,Day),
  catalyst(8501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8502),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03635",cytosol,Day),
  catalyst(8502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00496",cytosol,Day) :-
  not exclude(8502),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03635",cytosol,Day),
  catalyst(8502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02188",cytosol,Day) :-
  not exclude(8502),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C03635",cytosol,Day),
  catalyst(8502,Complex),
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
  not exclude(8561),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C01642",cytosol,Day),
  catalyst(8561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8561),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C01642",cytosol,Day),
  catalyst(8561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02412",cytosol,Day) :-
  not exclude(8561),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00037",cytosol,Day),
  in_compartment(Experiment,"C01642",cytosol,Day),
  catalyst(8561,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8562),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02412",cytosol,Day),
  catalyst(8562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00037",cytosol,Day) :-
  not exclude(8562),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02412",cytosol,Day),
  catalyst(8562,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01642",cytosol,Day) :-
  not exclude(8562),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C02412",cytosol,Day),
  catalyst(8562,Complex),
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

in_compartment(Experiment,"C00221",cytosol,Day) :-
  not exclude(8711),
  Day >= 1,
  in_compartment(Experiment,"C00267",cytosol,Day),
  catalyst(8711,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(8712),
  Day >= 1,
  in_compartment(Experiment,"C00221",cytosol,Day),
  catalyst(8712,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8741),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(8741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02218",cytosol,Day) :-
  not exclude(8741),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(8741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(8742),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C02218",cytosol,Day),
  catalyst(8742,Complex),
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
  not exclude(8851),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(8851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00363",cytosol,Day) :-
  not exclude(8851),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00459",cytosol,Day),
  catalyst(8851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8852),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(8852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00459",cytosol,Day) :-
  not exclude(8852),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(8852,Complex),
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
  not exclude(8891),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(8891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(8891),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(8891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8892),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(8892,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(8892),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00112",cytosol,Day),
  catalyst(8892,Complex),
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
  not exclude(8911),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(8911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(8911),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(8911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8912),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(8912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",cytosol,Day) :-
  not exclude(8912),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(8912,Complex),
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
  not exclude(8951),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(8951,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8951),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00008",cytosol,Day),
  catalyst(8951,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8952),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(8952,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8952),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  catalyst(8952,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(8961),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(8961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(8961),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(8961,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8962),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(8962,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8962),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  catalyst(8962,Complex),
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

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(9001),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"G00143",cytosol,Day),
  catalyst(9001,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"G00144",cytosol,Day) :-
  not exclude(9001),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"G00143",cytosol,Day),
  catalyst(9001,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9002),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"G00144",cytosol,Day),
  catalyst(9002,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"G00143",cytosol,Day) :-
  not exclude(9002),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"G00144",cytosol,Day),
  catalyst(9002,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(9011),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01288",cytosol,Day),
  catalyst(9011,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04248",cytosol,Day) :-
  not exclude(9011),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01288",cytosol,Day),
  catalyst(9011,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9012),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C04248",cytosol,Day),
  catalyst(9012,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01288",cytosol,Day) :-
  not exclude(9012),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C04248",cytosol,Day),
  catalyst(9012,Complex),
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

in_compartment(Experiment,"C00267",cytosol,Day) :-
  not exclude(9091),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00369",cytosol,Day),
  catalyst(9091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9092),
  Day >= 1,
  in_compartment(Experiment,"C00267",cytosol,Day),
  catalyst(9092,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00369",cytosol,Day) :-
  not exclude(9092),
  Day >= 1,
  in_compartment(Experiment,"C00267",cytosol,Day),
  catalyst(9092,Complex),
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

in_compartment(Experiment,"C00093",cytosol,Day) :-
  not exclude(9111),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00114",cytosol,Day) :-
  not exclude(9111),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9111,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9112),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C00114",cytosol,Day),
  catalyst(9112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9112),
  Day >= 1,
  in_compartment(Experiment,"C00093",cytosol,Day),
  in_compartment(Experiment,"C00114",cytosol,Day),
  catalyst(9112,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00069",cytosol,Day) :-
  not exclude(9121),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03120",cytosol,Day),
  catalyst(9121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",cytosol,Day) :-
  not exclude(9121),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03120",cytosol,Day),
  catalyst(9121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9122),
  Day >= 1,
  in_compartment(Experiment,"C00069",cytosol,Day),
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(9122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03120",cytosol,Day) :-
  not exclude(9122),
  Day >= 1,
  in_compartment(Experiment,"C00069",cytosol,Day),
  in_compartment(Experiment,"C00093",cytosol,Day),
  catalyst(9122,Complex),
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

in_compartment(Experiment,"C06329",cytosol,Day) :-
  not exclude(9251),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04706",cytosol,Day),
  catalyst(9251,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9252),
  Day >= 1,
  in_compartment(Experiment,"C06329",cytosol,Day),
  catalyst(9252,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04706",cytosol,Day) :-
  not exclude(9252),
  Day >= 1,
  in_compartment(Experiment,"C06329",cytosol,Day),
  catalyst(9252,Complex),
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

in_compartment(Experiment,"C02222",cytosol,Day) :-
  not exclude(9271),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04431",cytosol,Day),
  catalyst(9271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9272),
  Day >= 1,
  in_compartment(Experiment,"C02222",cytosol,Day),
  catalyst(9272,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04431",cytosol,Day) :-
  not exclude(9272),
  Day >= 1,
  in_compartment(Experiment,"C02222",cytosol,Day),
  catalyst(9272,Complex),
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

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(9351),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02112",cytosol,Day) :-
  not exclude(9351),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00641",cytosol,Day),
  catalyst(9351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9352),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C02112",cytosol,Day),
  catalyst(9352,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00641",cytosol,Day) :-
  not exclude(9352),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C02112",cytosol,Day),
  catalyst(9352,Complex),
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

in_compartment(Experiment,"C00060",cytosol,Day) :-
  not exclude(9381),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00422",cytosol,Day),
  catalyst(9381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00165",cytosol,Day) :-
  not exclude(9381),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00422",cytosol,Day),
  catalyst(9381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9382),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00165",cytosol,Day),
  catalyst(9382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00422",cytosol,Day) :-
  not exclude(9382),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00165",cytosol,Day),
  catalyst(9382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00060",cytosol,Day) :-
  not exclude(9391),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C02391",cytosol,Day),
  catalyst(9391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00069",cytosol,Day) :-
  not exclude(9391),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C02391",cytosol,Day),
  catalyst(9391,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9392),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02391",cytosol,Day) :-
  not exclude(9392),
  Day >= 1,
  in_compartment(Experiment,"C00060",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9392,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00105",cytosol,Day) :-
  not exclude(9411),
  Day >= 1,
  in_compartment(Experiment,"C00043",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(9411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04500",cytosol,Day) :-
  not exclude(9411),
  Day >= 1,
  in_compartment(Experiment,"C00043",cytosol,Day),
  in_compartment(Experiment,"C00110",cytosol,Day),
  catalyst(9411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00043",cytosol,Day) :-
  not exclude(9412),
  Day >= 1,
  in_compartment(Experiment,"C00105",cytosol,Day),
  in_compartment(Experiment,"C04500",cytosol,Day),
  catalyst(9412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00110",cytosol,Day) :-
  not exclude(9412),
  Day >= 1,
  in_compartment(Experiment,"C00105",cytosol,Day),
  in_compartment(Experiment,"C04500",cytosol,Day),
  catalyst(9412,Complex),
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
  not exclude(9481),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00201",cytosol,Day),
  catalyst(9481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9481),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00201",cytosol,Day),
  catalyst(9481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9482),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00201",cytosol,Day) :-
  not exclude(9482),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9482,Complex),
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
  not exclude(9501),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(9501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9501),
  Day >= 1,
  in_compartment(Experiment,"C00046",cytosol,Day),
  in_compartment(Experiment,"C00063",cytosol,Day),
  catalyst(9501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9502),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00063",cytosol,Day) :-
  not exclude(9502),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9502,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9541),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00455",cytosol,Day),
  catalyst(9541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(9541),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00455",cytosol,Day),
  catalyst(9541,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9542),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00013",cytosol,Day),
  catalyst(9542,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00455",cytosol,Day) :-
  not exclude(9542),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00013",cytosol,Day),
  catalyst(9542,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(9581),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00124",cytosol,Day),
  catalyst(9581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00446",cytosol,Day) :-
  not exclude(9581),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00124",cytosol,Day),
  catalyst(9581,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9582),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00446",cytosol,Day),
  catalyst(9582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00124",cytosol,Day) :-
  not exclude(9582),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00446",cytosol,Day),
  catalyst(9582,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(9591),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05701",cytosol,Day),
  catalyst(9591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05699",cytosol,Day) :-
  not exclude(9591),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05701",cytosol,Day),
  catalyst(9591,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05688",cytosol,Day) :-
  not exclude(9592),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05701",cytosol,Day) :-
  not exclude(9592),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9592,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00033",cytosol,Day) :-
  not exclude(9601),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05700",cytosol,Day),
  catalyst(9601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05699",cytosol,Day) :-
  not exclude(9601),
  Day >= 1,
  in_compartment(Experiment,"C05688",cytosol,Day),
  in_compartment(Experiment,"C05700",cytosol,Day),
  catalyst(9601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05688",cytosol,Day) :-
  not exclude(9602),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05700",cytosol,Day) :-
  not exclude(9602),
  Day >= 1,
  in_compartment(Experiment,"C00033",cytosol,Day),
  in_compartment(Experiment,"C05699",cytosol,Day),
  catalyst(9602,Complex),
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

in_compartment(Experiment,"C00110",cytosol,Day) :-
  not exclude(9741),
  Day >= 1,
  in_compartment(Experiment,"C00017",cytosol,Day),
  in_compartment(Experiment,"C03862",cytosol,Day),
  catalyst(9741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02863",cytosol,Day) :-
  not exclude(9741),
  Day >= 1,
  in_compartment(Experiment,"C00017",cytosol,Day),
  in_compartment(Experiment,"C03862",cytosol,Day),
  catalyst(9741,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00017",cytosol,Day) :-
  not exclude(9742),
  Day >= 1,
  in_compartment(Experiment,"C00110",cytosol,Day),
  in_compartment(Experiment,"C02863",cytosol,Day),
  catalyst(9742,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03862",cytosol,Day) :-
  not exclude(9742),
  Day >= 1,
  in_compartment(Experiment,"C00110",cytosol,Day),
  in_compartment(Experiment,"C02863",cytosol,Day),
  catalyst(9742,Complex),
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

in_compartment(Experiment,"C00422",cytosol,Day) :-
  not exclude(9761),
  Day >= 1,
  in_compartment(Experiment,"C00641",cytosol,Day),
  in_compartment(Experiment,"C00865",cytosol,Day),
  catalyst(9761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06254",cytosol,Day) :-
  not exclude(9761),
  Day >= 1,
  in_compartment(Experiment,"C00641",cytosol,Day),
  in_compartment(Experiment,"C00865",cytosol,Day),
  catalyst(9761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00641",cytosol,Day) :-
  not exclude(9762),
  Day >= 1,
  in_compartment(Experiment,"C00422",cytosol,Day),
  in_compartment(Experiment,"C06254",cytosol,Day),
  catalyst(9762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00865",cytosol,Day) :-
  not exclude(9762),
  Day >= 1,
  in_compartment(Experiment,"C00422",cytosol,Day),
  in_compartment(Experiment,"C06254",cytosol,Day),
  catalyst(9762,Complex),
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
  not exclude(9841),
  Day >= 1,
  in_compartment(Experiment,"C05747",cytosol,Day),
  catalyst(9841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05748",cytosol,Day) :-
  not exclude(9841),
  Day >= 1,
  in_compartment(Experiment,"C05747",cytosol,Day),
  catalyst(9841,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05747",cytosol,Day) :-
  not exclude(9842),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05748",cytosol,Day),
  catalyst(9842,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9851),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  catalyst(9851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05758",cytosol,Day) :-
  not exclude(9851),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05223",cytosol,Day),
  catalyst(9851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9852),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05758",cytosol,Day),
  catalyst(9852,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05223",cytosol,Day) :-
  not exclude(9852),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05758",cytosol,Day),
  catalyst(9852,Complex),
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
  not exclude(9871),
  Day >= 1,
  in_compartment(Experiment,"C04633",cytosol,Day),
  catalyst(9871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05763",cytosol,Day) :-
  not exclude(9871),
  Day >= 1,
  in_compartment(Experiment,"C04633",cytosol,Day),
  catalyst(9871,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04633",cytosol,Day) :-
  not exclude(9872),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C05763",cytosol,Day),
  catalyst(9872,Complex),
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

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(9991),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(9991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04158",cytosol,Day) :-
  not exclude(9991),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00066",cytosol,Day),
  catalyst(9991,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(9992),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04158",cytosol,Day),
  catalyst(9992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00066",cytosol,Day) :-
  not exclude(9992),
  Day >= 1,
  in_compartment(Experiment,"C00021",cytosol,Day),
  in_compartment(Experiment,"C04158",cytosol,Day),
  catalyst(9992,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10001),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00023",cytosol,Day),
  catalyst(10001,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00023",cytosol,Day) :-
  not exclude(10001),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00023",cytosol,Day),
  catalyst(10001,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10001),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00023",cytosol,Day),
  catalyst(10001,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10002),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00023",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10002,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00023",cytosol,Day) :-
  not exclude(10002),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00023",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10002,Complex),
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

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10041),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01371",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01335",cytosol,Day) :-
  not exclude(10041),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01371",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03161",cytosol,Day) :-
  not exclude(10041),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01371",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10041,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10042),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01335",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  catalyst(10042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01371",cytosol,Day) :-
  not exclude(10042),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01335",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  catalyst(10042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03024",cytosol,Day) :-
  not exclude(10042),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01335",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  catalyst(10042,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10051),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03161",cytosol,Day) :-
  not exclude(10051),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05102",cytosol,Day) :-
  not exclude(10051),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C03024",cytosol,Day),
  catalyst(10051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(10052),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  in_compartment(Experiment,"C05102",cytosol,Day),
  catalyst(10052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(10052),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  in_compartment(Experiment,"C05102",cytosol,Day),
  catalyst(10052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03024",cytosol,Day) :-
  not exclude(10052),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C03161",cytosol,Day),
  in_compartment(Experiment,"C05102",cytosol,Day),
  catalyst(10052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10071),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00126",cytosol,Day),
  catalyst(10071,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00125",cytosol,Day) :-
  not exclude(10071),
  Day >= 1,
  in_compartment(Experiment,"C00027",cytosol,Day),
  in_compartment(Experiment,"C00126",cytosol,Day),
  catalyst(10071,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(10072),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00125",cytosol,Day),
  catalyst(10072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00126",cytosol,Day) :-
  not exclude(10072),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00125",cytosol,Day),
  catalyst(10072,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10081),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C03023",cytosol,Day),
  catalyst(10081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03895",cytosol,Day) :-
  not exclude(10081),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C03023",cytosol,Day),
  catalyst(10081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10082),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03895",cytosol,Day),
  catalyst(10082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10082),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03895",cytosol,Day),
  catalyst(10082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03023",cytosol,Day) :-
  not exclude(10082),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03895",cytosol,Day),
  catalyst(10082,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10091),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C02972",cytosol,Day),
  catalyst(10091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02051",cytosol,Day) :-
  not exclude(10091),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C02972",cytosol,Day),
  catalyst(10091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10092),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02051",cytosol,Day),
  catalyst(10092,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02972",cytosol,Day) :-
  not exclude(10092),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02051",cytosol,Day),
  catalyst(10092,Complex),
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

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10131),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  catalyst(10131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00030",cytosol,Day) :-
  not exclude(10131),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00028",cytosol,Day),
  catalyst(10131,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10132),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  catalyst(10132,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00028",cytosol,Day) :-
  not exclude(10132),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00030",cytosol,Day),
  catalyst(10132,Complex),
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

in_compartment(Experiment,"C00390",cytosol,Day) :-
  not exclude(10171),
  Day >= 1,
  in_compartment(Experiment,"C00399",cytosol,Day),
  in_compartment(Experiment,"C04570",cytosol,Day),
  catalyst(10171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04253",cytosol,Day) :-
  not exclude(10171),
  Day >= 1,
  in_compartment(Experiment,"C00399",cytosol,Day),
  in_compartment(Experiment,"C04570",cytosol,Day),
  catalyst(10171,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00399",cytosol,Day) :-
  not exclude(10172),
  Day >= 1,
  in_compartment(Experiment,"C00390",cytosol,Day),
  in_compartment(Experiment,"C04253",cytosol,Day),
  catalyst(10172,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04570",cytosol,Day) :-
  not exclude(10172),
  Day >= 1,
  in_compartment(Experiment,"C00390",cytosol,Day),
  in_compartment(Experiment,"C04253",cytosol,Day),
  catalyst(10172,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10211),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10211),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C11455",cytosol,Day) :-
  not exclude(10211),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C05108",cytosol,Day),
  catalyst(10211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10212),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C11455",cytosol,Day),
  catalyst(10212,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05108",cytosol,Day) :-
  not exclude(10212),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C11455",cytosol,Day),
  catalyst(10212,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10281),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10281),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03205",cytosol,Day) :-
  not exclude(10281),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05485",cytosol,Day),
  catalyst(10281,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10282),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C03205",cytosol,Day),
  catalyst(10282,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05485",cytosol,Day) :-
  not exclude(10282),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C03205",cytosol,Day),
  catalyst(10282,Complex),
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
  not exclude(10361),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10361),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00410",cytosol,Day) :-
  not exclude(10361),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10361,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10362),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00410",cytosol,Day),
  catalyst(10362,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01953",cytosol,Day) :-
  not exclude(10362),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00410",cytosol,Day),
  catalyst(10362,Complex),
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

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(10411),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C04332",cytosol,Day),
  catalyst(10411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04454",cytosol,Day) :-
  not exclude(10411),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C04332",cytosol,Day),
  catalyst(10411,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(10412),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C04454",cytosol,Day),
  catalyst(10412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04332",cytosol,Day) :-
  not exclude(10412),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C04454",cytosol,Day),
  catalyst(10412,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(10431),
  Day >= 1,
  in_compartment(Experiment,"C00527",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C06157",cytosol,Day) :-
  not exclude(10431),
  Day >= 1,
  in_compartment(Experiment,"C00527",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00527",cytosol,Day) :-
  not exclude(10432),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C06157",cytosol,Day),
  catalyst(10432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00579",cytosol,Day) :-
  not exclude(10432),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C06157",cytosol,Day),
  catalyst(10432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(10441),
  Day >= 1,
  in_compartment(Experiment,"C00091",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01169",cytosol,Day) :-
  not exclude(10441),
  Day >= 1,
  in_compartment(Experiment,"C00091",cytosol,Day),
  in_compartment(Experiment,"C00579",cytosol,Day),
  catalyst(10441,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00091",cytosol,Day) :-
  not exclude(10442),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01169",cytosol,Day),
  catalyst(10442,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00579",cytosol,Day) :-
  not exclude(10442),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01169",cytosol,Day),
  catalyst(10442,Complex),
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
  not exclude(10461),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  catalyst(10461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10461),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  catalyst(10461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05756",cytosol,Day) :-
  not exclude(10461),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05755",cytosol,Day),
  catalyst(10461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10462),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05756",cytosol,Day),
  catalyst(10462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05755",cytosol,Day) :-
  not exclude(10462),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05756",cytosol,Day),
  catalyst(10462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10471),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05752",cytosol,Day),
  catalyst(10471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10471),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05752",cytosol,Day),
  catalyst(10471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05753",cytosol,Day) :-
  not exclude(10471),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05752",cytosol,Day),
  catalyst(10471,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10472),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05753",cytosol,Day),
  catalyst(10472,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05752",cytosol,Day) :-
  not exclude(10472),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05753",cytosol,Day),
  catalyst(10472,Complex),
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
  not exclude(10531),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(10531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03939",cytosol,Day) :-
  not exclude(10531),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  catalyst(10531,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(10532),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C03939",cytosol,Day),
  catalyst(10532,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10532),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C03939",cytosol,Day),
  catalyst(10532,Complex),
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
  not exclude(10571),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C00900",cytosol,Day),
  catalyst(10571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(10571),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C00900",cytosol,Day),
  catalyst(10571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(10572),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00900",cytosol,Day) :-
  not exclude(10572),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10572,Complex),
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

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10601),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C04232",cytosol,Day),
  catalyst(10601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03723",cytosol,Day) :-
  not exclude(10601),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C04232",cytosol,Day),
  catalyst(10601,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10602),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03723",cytosol,Day),
  catalyst(10602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10602),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03723",cytosol,Day),
  catalyst(10602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04232",cytosol,Day) :-
  not exclude(10602),
  Day >= 1,
  in_compartment(Experiment,"C00342",cytosol,Day),
  in_compartment(Experiment,"C03723",cytosol,Day),
  catalyst(10602,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00112",cytosol,Day) :-
  not exclude(10611),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(10611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10611),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C00705",cytosol,Day),
  catalyst(10611,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10612),
  Day >= 1,
  in_compartment(Experiment,"C00112",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10612),
  Day >= 1,
  in_compartment(Experiment,"C00112",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00705",cytosol,Day) :-
  not exclude(10612),
  Day >= 1,
  in_compartment(Experiment,"C00112",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10612,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(10621),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(10621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10621),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(10621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10622),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10622),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00361",cytosol,Day) :-
  not exclude(10622),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00015",cytosol,Day) :-
  not exclude(10631),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(10631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00342",cytosol,Day) :-
  not exclude(10631),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00343",cytosol,Day),
  in_compartment(Experiment,"C01346",cytosol,Day),
  catalyst(10631,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10632),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(10632),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10632,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01346",cytosol,Day) :-
  not exclude(10632),
  Day >= 1,
  in_compartment(Experiment,"C00015",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(10632,Complex),
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

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(10671),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00399",cytosol,Day),
  catalyst(10671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",cytosol,Day) :-
  not exclude(10671),
  Day >= 1,
  in_compartment(Experiment,"C00042",cytosol,Day),
  in_compartment(Experiment,"C00399",cytosol,Day),
  catalyst(10671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00042",cytosol,Day) :-
  not exclude(10672),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  in_compartment(Experiment,"C00390",cytosol,Day),
  catalyst(10672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00399",cytosol,Day) :-
  not exclude(10672),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  in_compartment(Experiment,"C00390",cytosol,Day),
  catalyst(10672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(10681),
  Day >= 1,
  in_compartment(Experiment,"C00248",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01136",cytosol,Day) :-
  not exclude(10681),
  Day >= 1,
  in_compartment(Experiment,"C00248",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10681,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00248",cytosol,Day) :-
  not exclude(10682),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(10682),
  Day >= 1,
  in_compartment(Experiment,"C00068",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10682,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10691),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00248",cytosol,Day),
  catalyst(10691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01136",cytosol,Day) :-
  not exclude(10691),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00248",cytosol,Day),
  catalyst(10691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10692),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00248",cytosol,Day) :-
  not exclude(10692),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01136",cytosol,Day),
  catalyst(10692,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10751),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10751),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00956",cytosol,Day) :-
  not exclude(10751),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10751,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10752),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10752),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04076",cytosol,Day) :-
  not exclude(10752),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10752,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10761),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10761),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00956",cytosol,Day) :-
  not exclude(10761),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C04076",cytosol,Day),
  catalyst(10761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10762),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10762),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04076",cytosol,Day) :-
  not exclude(10762),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00956",cytosol,Day),
  catalyst(10762,Complex),
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
  not exclude(10821),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04620",cytosol,Day),
  catalyst(10821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05750",cytosol,Day) :-
  not exclude(10821),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04620",cytosol,Day),
  catalyst(10821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10822),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05750",cytosol,Day),
  catalyst(10822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04620",cytosol,Day) :-
  not exclude(10822),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05750",cytosol,Day),
  catalyst(10822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10831),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04619",cytosol,Day),
  catalyst(10831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05753",cytosol,Day) :-
  not exclude(10831),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04619",cytosol,Day),
  catalyst(10831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10832),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05753",cytosol,Day),
  catalyst(10832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04619",cytosol,Day) :-
  not exclude(10832),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05753",cytosol,Day),
  catalyst(10832,Complex),
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
retractable_reaction(31).
retractable_reaction(32).
retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(51).
retractable_reaction(52).
retractable_reaction(80).
retractable_reaction(91).
retractable_reaction(92).
retractable_reaction(101).
retractable_reaction(102).
retractable_reaction(111).
retractable_reaction(112).
retractable_reaction(121).
retractable_reaction(122).
retractable_reaction(131).
retractable_reaction(132).
retractable_reaction(141).
retractable_reaction(142).
retractable_reaction(190).
retractable_reaction(220).
retractable_reaction(241).
retractable_reaction(242).
retractable_reaction(251).
retractable_reaction(252).
retractable_reaction(261).
retractable_reaction(262).
retractable_reaction(300).
retractable_reaction(310).
retractable_reaction(321).
retractable_reaction(322).
retractable_reaction(331).
retractable_reaction(332).
retractable_reaction(361).
retractable_reaction(362).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(390).
retractable_reaction(411).
retractable_reaction(412).
retractable_reaction(421).
retractable_reaction(422).
retractable_reaction(431).
retractable_reaction(432).
retractable_reaction(451).
retractable_reaction(452).
retractable_reaction(460).
retractable_reaction(470).
retractable_reaction(480).
retractable_reaction(490).
retractable_reaction(500).
retractable_reaction(510).
retractable_reaction(520).
retractable_reaction(540).
retractable_reaction(550).
retractable_reaction(560).
retractable_reaction(570).
retractable_reaction(581).
retractable_reaction(582).
retractable_reaction(590).
retractable_reaction(610).
retractable_reaction(620).
retractable_reaction(640).
retractable_reaction(650).
retractable_reaction(660).
retractable_reaction(670).
retractable_reaction(681).
retractable_reaction(682).
retractable_reaction(690).
retractable_reaction(700).
retractable_reaction(710).
retractable_reaction(730).
retractable_reaction(750).
retractable_reaction(771).
retractable_reaction(772).
retractable_reaction(781).
retractable_reaction(782).
retractable_reaction(791).
retractable_reaction(792).
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
retractable_reaction(911).
retractable_reaction(912).
retractable_reaction(921).
retractable_reaction(922).
retractable_reaction(931).
retractable_reaction(932).
retractable_reaction(960).
retractable_reaction(980).
retractable_reaction(990).
retractable_reaction(1031).
retractable_reaction(1032).
retractable_reaction(1041).
retractable_reaction(1042).
retractable_reaction(1050).
retractable_reaction(1060).
retractable_reaction(1071).
retractable_reaction(1072).
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1121).
retractable_reaction(1122).
retractable_reaction(1130).
retractable_reaction(1140).
retractable_reaction(1150).
retractable_reaction(1160).
retractable_reaction(1180).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1200).
retractable_reaction(1210).
retractable_reaction(1220).
retractable_reaction(1230).
retractable_reaction(1241).
retractable_reaction(1242).
retractable_reaction(1250).
retractable_reaction(1261).
retractable_reaction(1262).
retractable_reaction(1291).
retractable_reaction(1292).
retractable_reaction(1301).
retractable_reaction(1302).
retractable_reaction(1311).
retractable_reaction(1312).
retractable_reaction(1321).
retractable_reaction(1322).
retractable_reaction(1331).
retractable_reaction(1332).
retractable_reaction(1341).
retractable_reaction(1342).
retractable_reaction(1361).
retractable_reaction(1362).
retractable_reaction(1371).
retractable_reaction(1372).
retractable_reaction(1390).
retractable_reaction(1401).
retractable_reaction(1402).
retractable_reaction(1411).
retractable_reaction(1412).
retractable_reaction(1431).
retractable_reaction(1432).
retractable_reaction(1440).
retractable_reaction(1451).
retractable_reaction(1452).
retractable_reaction(1461).
retractable_reaction(1462).
retractable_reaction(1471).
retractable_reaction(1472).
retractable_reaction(1481).
retractable_reaction(1482).
retractable_reaction(1491).
retractable_reaction(1492).
retractable_reaction(1501).
retractable_reaction(1502).
retractable_reaction(1511).
retractable_reaction(1512).
retractable_reaction(1531).
retractable_reaction(1532).
retractable_reaction(1540).
retractable_reaction(1551).
retractable_reaction(1552).
retractable_reaction(1571).
retractable_reaction(1572).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(1611).
retractable_reaction(1612).
retractable_reaction(1620).
retractable_reaction(1671).
retractable_reaction(1672).
retractable_reaction(1681).
retractable_reaction(1682).
retractable_reaction(1691).
retractable_reaction(1692).
retractable_reaction(1701).
retractable_reaction(1702).
retractable_reaction(1721).
retractable_reaction(1722).
retractable_reaction(1741).
retractable_reaction(1742).
retractable_reaction(1751).
retractable_reaction(1752).
retractable_reaction(1781).
retractable_reaction(1782).
retractable_reaction(1791).
retractable_reaction(1792).
retractable_reaction(1801).
retractable_reaction(1802).
retractable_reaction(1810).
retractable_reaction(1820).
retractable_reaction(1840).
retractable_reaction(1850).
retractable_reaction(1860).
retractable_reaction(1870).
retractable_reaction(1880).
retractable_reaction(1890).
retractable_reaction(1900).
retractable_reaction(1940).
retractable_reaction(1950).
retractable_reaction(2000).
retractable_reaction(2010).
retractable_reaction(2031).
retractable_reaction(2032).
retractable_reaction(2041).
retractable_reaction(2042).
retractable_reaction(2051).
retractable_reaction(2052).
retractable_reaction(2060).
retractable_reaction(2070).
retractable_reaction(2080).
retractable_reaction(2090).
retractable_reaction(2100).
retractable_reaction(2110).
retractable_reaction(2121).
retractable_reaction(2122).
retractable_reaction(2131).
retractable_reaction(2132).
retractable_reaction(2140).
retractable_reaction(2160).
retractable_reaction(2170).
retractable_reaction(2180).
retractable_reaction(2190).
retractable_reaction(2200).
retractable_reaction(2210).
retractable_reaction(2220).
retractable_reaction(2231).
retractable_reaction(2232).
retractable_reaction(2240).
retractable_reaction(2250).
retractable_reaction(2260).
retractable_reaction(2270).
retractable_reaction(2280).
retractable_reaction(2290).
retractable_reaction(2300).
retractable_reaction(2320).
retractable_reaction(2330).
retractable_reaction(2340).
retractable_reaction(2350).
retractable_reaction(2360).
retractable_reaction(2370).
retractable_reaction(2380).
retractable_reaction(2391).
retractable_reaction(2392).
retractable_reaction(2401).
retractable_reaction(2402).
retractable_reaction(2410).
retractable_reaction(2420).
retractable_reaction(2431).
retractable_reaction(2432).
retractable_reaction(2450).
retractable_reaction(2470).
retractable_reaction(2480).
retractable_reaction(2490).
retractable_reaction(2510).
retractable_reaction(2520).
retractable_reaction(2540).
retractable_reaction(2550).
retractable_reaction(2560).
retractable_reaction(2570).
retractable_reaction(2580).
retractable_reaction(2590).
retractable_reaction(2600).
retractable_reaction(2610).
retractable_reaction(2621).
retractable_reaction(2622).
retractable_reaction(2631).
retractable_reaction(2632).
retractable_reaction(2641).
retractable_reaction(2642).
retractable_reaction(2660).
retractable_reaction(2670).
retractable_reaction(2680).
retractable_reaction(2691).
retractable_reaction(2692).
retractable_reaction(2711).
retractable_reaction(2712).
retractable_reaction(2721).
retractable_reaction(2722).
retractable_reaction(2731).
retractable_reaction(2732).
retractable_reaction(2740).
retractable_reaction(2750).
retractable_reaction(2760).
retractable_reaction(2770).
retractable_reaction(2780).
retractable_reaction(2790).
retractable_reaction(2800).
retractable_reaction(2810).
retractable_reaction(2820).
retractable_reaction(2830).
retractable_reaction(2840).
retractable_reaction(2860).
retractable_reaction(2870).
retractable_reaction(2880).
retractable_reaction(2891).
retractable_reaction(2892).
retractable_reaction(2900).
retractable_reaction(2910).
retractable_reaction(2920).
retractable_reaction(2940).
retractable_reaction(2950).
retractable_reaction(2960).
retractable_reaction(2970).
retractable_reaction(2980).
retractable_reaction(2990).
retractable_reaction(3000).
retractable_reaction(3010).
retractable_reaction(3020).
retractable_reaction(3030).
retractable_reaction(3040).
retractable_reaction(3050).
retractable_reaction(3080).
retractable_reaction(3090).
retractable_reaction(3100).
retractable_reaction(3110).
retractable_reaction(3120).
retractable_reaction(3130).
retractable_reaction(3141).
retractable_reaction(3142).
retractable_reaction(3150).
retractable_reaction(3160).
retractable_reaction(3190).
retractable_reaction(3200).
retractable_reaction(3211).
retractable_reaction(3212).
retractable_reaction(3230).
retractable_reaction(3240).
retractable_reaction(3250).
retractable_reaction(3260).
retractable_reaction(3271).
retractable_reaction(3272).
retractable_reaction(3281).
retractable_reaction(3282).
retractable_reaction(3290).
retractable_reaction(3300).
retractable_reaction(3310).
retractable_reaction(3320).
retractable_reaction(3330).
retractable_reaction(3340).
retractable_reaction(3350).
retractable_reaction(3360).
retractable_reaction(3370).
retractable_reaction(3380).
retractable_reaction(3390).
retractable_reaction(3400).
retractable_reaction(3420).
retractable_reaction(3450).
retractable_reaction(3460).
retractable_reaction(3470).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3530).
retractable_reaction(3540).
retractable_reaction(3560).
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
retractable_reaction(3780).
retractable_reaction(3790).
retractable_reaction(3810).
retractable_reaction(3820).
retractable_reaction(3830).
retractable_reaction(3840).
retractable_reaction(3850).
retractable_reaction(3880).
retractable_reaction(3920).
retractable_reaction(3930).
retractable_reaction(3941).
retractable_reaction(3942).
retractable_reaction(3950).
retractable_reaction(3971).
retractable_reaction(3972).
retractable_reaction(3980).
retractable_reaction(3990).
retractable_reaction(4000).
retractable_reaction(4010).
retractable_reaction(4020).
retractable_reaction(4030).
retractable_reaction(4040).
retractable_reaction(4050).
retractable_reaction(4060).
retractable_reaction(4070).
retractable_reaction(4081).
retractable_reaction(4082).
retractable_reaction(4110).
retractable_reaction(4121).
retractable_reaction(4122).
retractable_reaction(4141).
retractable_reaction(4142).
retractable_reaction(4170).
retractable_reaction(4181).
retractable_reaction(4182).
retractable_reaction(4200).
retractable_reaction(4210).
retractable_reaction(4220).
retractable_reaction(4230).
retractable_reaction(4240).
retractable_reaction(4250).
retractable_reaction(4260).
retractable_reaction(4271).
retractable_reaction(4272).
retractable_reaction(4281).
retractable_reaction(4282).
retractable_reaction(4291).
retractable_reaction(4292).
retractable_reaction(4311).
retractable_reaction(4312).
retractable_reaction(4321).
retractable_reaction(4322).
retractable_reaction(4330).
retractable_reaction(4340).
retractable_reaction(4350).
retractable_reaction(4360).
retractable_reaction(4371).
retractable_reaction(4372).
retractable_reaction(4380).
retractable_reaction(4390).
retractable_reaction(4400).
retractable_reaction(4410).
retractable_reaction(4421).
retractable_reaction(4422).
retractable_reaction(4430).
retractable_reaction(4440).
retractable_reaction(4460).
retractable_reaction(4470).
retractable_reaction(4480).
retractable_reaction(4490).
retractable_reaction(4500).
retractable_reaction(4510).
retractable_reaction(4520).
retractable_reaction(4530).
retractable_reaction(4551).
retractable_reaction(4552).
retractable_reaction(4560).
retractable_reaction(4570).
retractable_reaction(4580).
retractable_reaction(4590).
retractable_reaction(4600).
retractable_reaction(4610).
retractable_reaction(4620).
retractable_reaction(4630).
retractable_reaction(4640).
retractable_reaction(4650).
retractable_reaction(4661).
retractable_reaction(4662).
retractable_reaction(4671).
retractable_reaction(4672).
retractable_reaction(4700).
retractable_reaction(4710).
retractable_reaction(4730).
retractable_reaction(4740).
retractable_reaction(4750).
retractable_reaction(4771).
retractable_reaction(4772).
retractable_reaction(4781).
retractable_reaction(4782).
retractable_reaction(4811).
retractable_reaction(4812).
retractable_reaction(4821).
retractable_reaction(4822).
retractable_reaction(4831).
retractable_reaction(4832).
retractable_reaction(4840).
retractable_reaction(4850).
retractable_reaction(4860).
retractable_reaction(4870).
retractable_reaction(4891).
retractable_reaction(4892).
retractable_reaction(4900).
retractable_reaction(4910).
retractable_reaction(4920).
retractable_reaction(4930).
retractable_reaction(4940).
retractable_reaction(4960).
retractable_reaction(4971).
retractable_reaction(4972).
retractable_reaction(5010).
retractable_reaction(5020).
retractable_reaction(5030).
retractable_reaction(5040).
retractable_reaction(5050).
retractable_reaction(5060).
retractable_reaction(5080).
retractable_reaction(5090).
retractable_reaction(5100).
retractable_reaction(5110).
retractable_reaction(5120).
retractable_reaction(5130).
retractable_reaction(5140).
retractable_reaction(5150).
retractable_reaction(5160).
retractable_reaction(5170).
retractable_reaction(5180).
retractable_reaction(5190).
retractable_reaction(5200).
retractable_reaction(5210).
retractable_reaction(5220).
retractable_reaction(5230).
retractable_reaction(5240).
retractable_reaction(5250).
retractable_reaction(5260).
retractable_reaction(5270).
retractable_reaction(5281).
retractable_reaction(5282).
retractable_reaction(5291).
retractable_reaction(5292).
retractable_reaction(5301).
retractable_reaction(5302).
retractable_reaction(5330).
retractable_reaction(5340).
retractable_reaction(5361).
retractable_reaction(5362).
retractable_reaction(5371).
retractable_reaction(5372).
retractable_reaction(5381).
retractable_reaction(5382).
retractable_reaction(5391).
retractable_reaction(5392).
retractable_reaction(5401).
retractable_reaction(5402).
retractable_reaction(5411).
retractable_reaction(5412).
retractable_reaction(5431).
retractable_reaction(5432).
retractable_reaction(5441).
retractable_reaction(5442).
retractable_reaction(5451).
retractable_reaction(5452).
retractable_reaction(5461).
retractable_reaction(5462).
retractable_reaction(5471).
retractable_reaction(5472).
retractable_reaction(5481).
retractable_reaction(5482).
retractable_reaction(5491).
retractable_reaction(5492).
retractable_reaction(5511).
retractable_reaction(5512).
retractable_reaction(5530).
retractable_reaction(5540).
retractable_reaction(5550).
retractable_reaction(5561).
retractable_reaction(5562).
retractable_reaction(5571).
retractable_reaction(5572).
retractable_reaction(5581).
retractable_reaction(5582).
retractable_reaction(5591).
retractable_reaction(5592).
retractable_reaction(5601).
retractable_reaction(5602).
retractable_reaction(5611).
retractable_reaction(5612).
retractable_reaction(5630).
retractable_reaction(5640).
retractable_reaction(5650).
retractable_reaction(5661).
retractable_reaction(5662).
retractable_reaction(5670).
retractable_reaction(5680).
retractable_reaction(5701).
retractable_reaction(5702).
retractable_reaction(5711).
retractable_reaction(5712).
retractable_reaction(5720).
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
retractable_reaction(5850).
retractable_reaction(5860).
retractable_reaction(5870).
retractable_reaction(5880).
retractable_reaction(5911).
retractable_reaction(5912).
retractable_reaction(5930).
retractable_reaction(5940).
retractable_reaction(5960).
retractable_reaction(5970).
retractable_reaction(5980).
retractable_reaction(5990).
retractable_reaction(6000).
retractable_reaction(6010).
retractable_reaction(6020).
retractable_reaction(6030).
retractable_reaction(6040).
retractable_reaction(6051).
retractable_reaction(6052).
retractable_reaction(6060).
retractable_reaction(6071).
retractable_reaction(6072).
retractable_reaction(6081).
retractable_reaction(6082).
retractable_reaction(6101).
retractable_reaction(6102).
retractable_reaction(6111).
retractable_reaction(6112).
retractable_reaction(6120).
retractable_reaction(6130).
retractable_reaction(6140).
retractable_reaction(6151).
retractable_reaction(6152).
retractable_reaction(6171).
retractable_reaction(6172).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6200).
retractable_reaction(6211).
retractable_reaction(6212).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(6250).
retractable_reaction(6260).
retractable_reaction(6280).
retractable_reaction(6300).
retractable_reaction(6310).
retractable_reaction(6320).
retractable_reaction(6330).
retractable_reaction(6340).
retractable_reaction(6350).
retractable_reaction(6360).
retractable_reaction(6370).
retractable_reaction(6380).
retractable_reaction(6390).
retractable_reaction(6400).
retractable_reaction(6410).
retractable_reaction(6430).
retractable_reaction(6440).
retractable_reaction(6450).
retractable_reaction(6461).
retractable_reaction(6462).
retractable_reaction(6470).
retractable_reaction(6490).
retractable_reaction(6500).
retractable_reaction(6520).
retractable_reaction(6531).
retractable_reaction(6532).
retractable_reaction(6541).
retractable_reaction(6542).
retractable_reaction(6560).
retractable_reaction(6570).
retractable_reaction(6580).
retractable_reaction(6590).
retractable_reaction(6600).
retractable_reaction(6610).
retractable_reaction(6620).
retractable_reaction(6630).
retractable_reaction(6640).
retractable_reaction(6650).
retractable_reaction(6660).
retractable_reaction(6680).
retractable_reaction(6700).
retractable_reaction(6710).
retractable_reaction(6760).
retractable_reaction(6770).
retractable_reaction(6780).
retractable_reaction(6801).
retractable_reaction(6802).
retractable_reaction(6810).
retractable_reaction(6820).
retractable_reaction(6840).
retractable_reaction(6860).
retractable_reaction(6870).
retractable_reaction(6880).
retractable_reaction(6890).
retractable_reaction(6900).
retractable_reaction(6921).
retractable_reaction(6922).
retractable_reaction(6931).
retractable_reaction(6932).
retractable_reaction(6941).
retractable_reaction(6942).
retractable_reaction(6950).
retractable_reaction(6960).
retractable_reaction(6970).
retractable_reaction(6980).
retractable_reaction(6990).
retractable_reaction(7000).
retractable_reaction(7010).
retractable_reaction(7021).
retractable_reaction(7022).
retractable_reaction(7031).
retractable_reaction(7032).
retractable_reaction(7040).
retractable_reaction(7050).
retractable_reaction(7060).
retractable_reaction(7070).
retractable_reaction(7100).
retractable_reaction(7110).
retractable_reaction(7120).
retractable_reaction(7130).
retractable_reaction(7151).
retractable_reaction(7152).
retractable_reaction(7161).
retractable_reaction(7162).
retractable_reaction(7170).
retractable_reaction(7180).
retractable_reaction(7190).
retractable_reaction(7200).
retractable_reaction(7210).
retractable_reaction(7220).
retractable_reaction(7240).
retractable_reaction(7250).
retractable_reaction(7260).
retractable_reaction(7271).
retractable_reaction(7272).
retractable_reaction(7281).
retractable_reaction(7282).
retractable_reaction(7290).
retractable_reaction(7301).
retractable_reaction(7302).
retractable_reaction(7311).
retractable_reaction(7312).
retractable_reaction(7320).
retractable_reaction(7330).
retractable_reaction(7341).
retractable_reaction(7342).
retractable_reaction(7350).
retractable_reaction(7360).
retractable_reaction(7370).
retractable_reaction(7380).
retractable_reaction(7390).
retractable_reaction(7400).
retractable_reaction(7411).
retractable_reaction(7412).
retractable_reaction(7420).
retractable_reaction(7430).
retractable_reaction(7460).
retractable_reaction(7470).
retractable_reaction(7491).
retractable_reaction(7492).
retractable_reaction(7501).
retractable_reaction(7502).
retractable_reaction(7511).
retractable_reaction(7512).
retractable_reaction(7520).
retractable_reaction(7530).
retractable_reaction(7540).
retractable_reaction(7550).
retractable_reaction(7561).
retractable_reaction(7562).
retractable_reaction(7571).
retractable_reaction(7572).
retractable_reaction(7580).
retractable_reaction(7590).
retractable_reaction(7600).
retractable_reaction(7610).
retractable_reaction(7641).
retractable_reaction(7642).
retractable_reaction(7650).
retractable_reaction(7660).
retractable_reaction(7671).
retractable_reaction(7672).
retractable_reaction(7681).
retractable_reaction(7682).
retractable_reaction(7691).
retractable_reaction(7692).
retractable_reaction(7701).
retractable_reaction(7702).
retractable_reaction(7710).
retractable_reaction(7720).
retractable_reaction(7730).
retractable_reaction(7741).
retractable_reaction(7742).
retractable_reaction(7751).
retractable_reaction(7752).
retractable_reaction(7761).
retractable_reaction(7762).
retractable_reaction(7790).
retractable_reaction(7800).
retractable_reaction(7810).
retractable_reaction(7841).
retractable_reaction(7842).
retractable_reaction(7861).
retractable_reaction(7862).
retractable_reaction(7870).
retractable_reaction(7880).
retractable_reaction(7901).
retractable_reaction(7902).
retractable_reaction(7911).
retractable_reaction(7912).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(7931).
retractable_reaction(7932).
retractable_reaction(7940).
retractable_reaction(7950).
retractable_reaction(7961).
retractable_reaction(7962).
retractable_reaction(7970).
retractable_reaction(7980).
retractable_reaction(7990).
retractable_reaction(8000).
retractable_reaction(8020).
retractable_reaction(8031).
retractable_reaction(8032).
retractable_reaction(8041).
retractable_reaction(8042).
retractable_reaction(8051).
retractable_reaction(8052).
retractable_reaction(8061).
retractable_reaction(8062).
retractable_reaction(8070).
retractable_reaction(8080).
retractable_reaction(8091).
retractable_reaction(8092).
retractable_reaction(8101).
retractable_reaction(8102).
retractable_reaction(8111).
retractable_reaction(8112).
retractable_reaction(8120).
retractable_reaction(8130).
retractable_reaction(8150).
retractable_reaction(8170).
retractable_reaction(8181).
retractable_reaction(8182).
retractable_reaction(8200).
retractable_reaction(8210).
retractable_reaction(8220).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8241).
retractable_reaction(8242).
retractable_reaction(8251).
retractable_reaction(8252).
retractable_reaction(8261).
retractable_reaction(8262).
retractable_reaction(8271).
retractable_reaction(8272).
retractable_reaction(8281).
retractable_reaction(8282).
retractable_reaction(8291).
retractable_reaction(8292).
retractable_reaction(8310).
retractable_reaction(8320).
retractable_reaction(8331).
retractable_reaction(8332).
retractable_reaction(8341).
retractable_reaction(8342).
retractable_reaction(8351).
retractable_reaction(8352).
retractable_reaction(8360).
retractable_reaction(8370).
retractable_reaction(8380).
retractable_reaction(8390).
retractable_reaction(8421).
retractable_reaction(8422).
retractable_reaction(8441).
retractable_reaction(8442).
retractable_reaction(8451).
retractable_reaction(8452).
retractable_reaction(8461).
retractable_reaction(8462).
retractable_reaction(8471).
retractable_reaction(8472).
retractable_reaction(8481).
retractable_reaction(8482).
retractable_reaction(8491).
retractable_reaction(8492).
retractable_reaction(8501).
retractable_reaction(8502).
retractable_reaction(8521).
retractable_reaction(8522).
retractable_reaction(8531).
retractable_reaction(8532).
retractable_reaction(8541).
retractable_reaction(8542).
retractable_reaction(8551).
retractable_reaction(8552).
retractable_reaction(8561).
retractable_reaction(8562).
retractable_reaction(8571).
retractable_reaction(8572).
retractable_reaction(8591).
retractable_reaction(8592).
retractable_reaction(8601).
retractable_reaction(8602).
retractable_reaction(8611).
retractable_reaction(8612).
retractable_reaction(8621).
retractable_reaction(8622).
retractable_reaction(8631).
retractable_reaction(8632).
retractable_reaction(8651).
retractable_reaction(8652).
retractable_reaction(8661).
retractable_reaction(8662).
retractable_reaction(8671).
retractable_reaction(8672).
retractable_reaction(8681).
retractable_reaction(8682).
retractable_reaction(8711).
retractable_reaction(8712).
retractable_reaction(8741).
retractable_reaction(8742).
retractable_reaction(8751).
retractable_reaction(8752).
retractable_reaction(8761).
retractable_reaction(8762).
retractable_reaction(8781).
retractable_reaction(8782).
retractable_reaction(8791).
retractable_reaction(8792).
retractable_reaction(8811).
retractable_reaction(8812).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(8841).
retractable_reaction(8842).
retractable_reaction(8851).
retractable_reaction(8852).
retractable_reaction(8871).
retractable_reaction(8872).
retractable_reaction(8881).
retractable_reaction(8882).
retractable_reaction(8891).
retractable_reaction(8892).
retractable_reaction(8901).
retractable_reaction(8902).
retractable_reaction(8911).
retractable_reaction(8912).
retractable_reaction(8931).
retractable_reaction(8932).
retractable_reaction(8951).
retractable_reaction(8952).
retractable_reaction(8961).
retractable_reaction(8962).
retractable_reaction(8971).
retractable_reaction(8972).
retractable_reaction(8981).
retractable_reaction(8982).
retractable_reaction(9001).
retractable_reaction(9002).
retractable_reaction(9011).
retractable_reaction(9012).
retractable_reaction(9021).
retractable_reaction(9022).
retractable_reaction(9041).
retractable_reaction(9042).
retractable_reaction(9061).
retractable_reaction(9062).
retractable_reaction(9071).
retractable_reaction(9072).
retractable_reaction(9081).
retractable_reaction(9082).
retractable_reaction(9091).
retractable_reaction(9092).
retractable_reaction(9101).
retractable_reaction(9102).
retractable_reaction(9111).
retractable_reaction(9112).
retractable_reaction(9121).
retractable_reaction(9122).
retractable_reaction(9131).
retractable_reaction(9132).
retractable_reaction(9141).
retractable_reaction(9142).
retractable_reaction(9151).
retractable_reaction(9152).
retractable_reaction(9161).
retractable_reaction(9162).
retractable_reaction(9171).
retractable_reaction(9172).
retractable_reaction(9181).
retractable_reaction(9182).
retractable_reaction(9191).
retractable_reaction(9192).
retractable_reaction(9201).
retractable_reaction(9202).
retractable_reaction(9221).
retractable_reaction(9222).
retractable_reaction(9241).
retractable_reaction(9242).
retractable_reaction(9251).
retractable_reaction(9252).
retractable_reaction(9261).
retractable_reaction(9262).
retractable_reaction(9271).
retractable_reaction(9272).
retractable_reaction(9281).
retractable_reaction(9282).
retractable_reaction(9291).
retractable_reaction(9292).
retractable_reaction(9321).
retractable_reaction(9322).
retractable_reaction(9331).
retractable_reaction(9332).
retractable_reaction(9351).
retractable_reaction(9352).
retractable_reaction(9371).
retractable_reaction(9372).
retractable_reaction(9381).
retractable_reaction(9382).
retractable_reaction(9391).
retractable_reaction(9392).
retractable_reaction(9411).
retractable_reaction(9412).
retractable_reaction(9421).
retractable_reaction(9422).
retractable_reaction(9431).
retractable_reaction(9432).
retractable_reaction(9441).
retractable_reaction(9442).
retractable_reaction(9451).
retractable_reaction(9452).
retractable_reaction(9461).
retractable_reaction(9462).
retractable_reaction(9471).
retractable_reaction(9472).
retractable_reaction(9481).
retractable_reaction(9482).
retractable_reaction(9491).
retractable_reaction(9492).
retractable_reaction(9501).
retractable_reaction(9502).
retractable_reaction(9511).
retractable_reaction(9512).
retractable_reaction(9531).
retractable_reaction(9532).
retractable_reaction(9541).
retractable_reaction(9542).
retractable_reaction(9551).
retractable_reaction(9552).
retractable_reaction(9561).
retractable_reaction(9562).
retractable_reaction(9581).
retractable_reaction(9582).
retractable_reaction(9591).
retractable_reaction(9592).
retractable_reaction(9601).
retractable_reaction(9602).
retractable_reaction(9621).
retractable_reaction(9622).
retractable_reaction(9631).
retractable_reaction(9632).
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
retractable_reaction(9731).
retractable_reaction(9732).
retractable_reaction(9741).
retractable_reaction(9742).
retractable_reaction(9751).
retractable_reaction(9752).
retractable_reaction(9761).
retractable_reaction(9762).
retractable_reaction(9771).
retractable_reaction(9772).
retractable_reaction(9781).
retractable_reaction(9782).
retractable_reaction(9811).
retractable_reaction(9812).
retractable_reaction(9821).
retractable_reaction(9822).
retractable_reaction(9831).
retractable_reaction(9832).
retractable_reaction(9841).
retractable_reaction(9842).
retractable_reaction(9851).
retractable_reaction(9852).
retractable_reaction(9861).
retractable_reaction(9862).
retractable_reaction(9871).
retractable_reaction(9872).
retractable_reaction(9881).
retractable_reaction(9882).
retractable_reaction(9891).
retractable_reaction(9892).
retractable_reaction(9901).
retractable_reaction(9902).
retractable_reaction(9911).
retractable_reaction(9912).
retractable_reaction(9931).
retractable_reaction(9932).
retractable_reaction(9941).
retractable_reaction(9942).
retractable_reaction(9951).
retractable_reaction(9952).
retractable_reaction(9961).
retractable_reaction(9962).
retractable_reaction(9981).
retractable_reaction(9982).
retractable_reaction(9991).
retractable_reaction(9992).
retractable_reaction(10001).
retractable_reaction(10002).
retractable_reaction(10011).
retractable_reaction(10012).
retractable_reaction(10021).
retractable_reaction(10022).
retractable_reaction(10031).
retractable_reaction(10032).
retractable_reaction(10041).
retractable_reaction(10042).
retractable_reaction(10051).
retractable_reaction(10052).
retractable_reaction(10071).
retractable_reaction(10072).
retractable_reaction(10081).
retractable_reaction(10082).
retractable_reaction(10091).
retractable_reaction(10092).
retractable_reaction(10111).
retractable_reaction(10112).
retractable_reaction(10131).
retractable_reaction(10132).
retractable_reaction(10141).
retractable_reaction(10142).
retractable_reaction(10161).
retractable_reaction(10162).
retractable_reaction(10171).
retractable_reaction(10172).
retractable_reaction(10181).
retractable_reaction(10182).
retractable_reaction(10201).
retractable_reaction(10202).
retractable_reaction(10211).
retractable_reaction(10212).
retractable_reaction(10221).
retractable_reaction(10222).
retractable_reaction(10231).
retractable_reaction(10232).
retractable_reaction(10261).
retractable_reaction(10262).
retractable_reaction(10271).
retractable_reaction(10272).
retractable_reaction(10281).
retractable_reaction(10282).
retractable_reaction(10291).
retractable_reaction(10292).
retractable_reaction(10301).
retractable_reaction(10302).
retractable_reaction(10311).
retractable_reaction(10312).
retractable_reaction(10321).
retractable_reaction(10322).
retractable_reaction(10331).
retractable_reaction(10332).
retractable_reaction(10341).
retractable_reaction(10342).
retractable_reaction(10361).
retractable_reaction(10362).
retractable_reaction(10371).
retractable_reaction(10372).
retractable_reaction(10381).
retractable_reaction(10382).
retractable_reaction(10391).
retractable_reaction(10392).
retractable_reaction(10411).
retractable_reaction(10412).
retractable_reaction(10431).
retractable_reaction(10432).
retractable_reaction(10441).
retractable_reaction(10442).
retractable_reaction(10451).
retractable_reaction(10452).
retractable_reaction(10461).
retractable_reaction(10462).
retractable_reaction(10471).
retractable_reaction(10472).
retractable_reaction(10491).
retractable_reaction(10492).
retractable_reaction(10501).
retractable_reaction(10502).
retractable_reaction(10511).
retractable_reaction(10512).
retractable_reaction(10521).
retractable_reaction(10522).
retractable_reaction(10531).
retractable_reaction(10532).
retractable_reaction(10541).
retractable_reaction(10542).
retractable_reaction(10551).
retractable_reaction(10552).
retractable_reaction(10561).
retractable_reaction(10562).
retractable_reaction(10571).
retractable_reaction(10572).
retractable_reaction(10581).
retractable_reaction(10582).
retractable_reaction(10591).
retractable_reaction(10592).
retractable_reaction(10601).
retractable_reaction(10602).
retractable_reaction(10611).
retractable_reaction(10612).
retractable_reaction(10621).
retractable_reaction(10622).
retractable_reaction(10631).
retractable_reaction(10632).
retractable_reaction(10641).
retractable_reaction(10642).
retractable_reaction(10661).
retractable_reaction(10662).
retractable_reaction(10671).
retractable_reaction(10672).
retractable_reaction(10681).
retractable_reaction(10682).
retractable_reaction(10691).
retractable_reaction(10692).
retractable_reaction(10701).
retractable_reaction(10702).
retractable_reaction(10711).
retractable_reaction(10712).
retractable_reaction(10741).
retractable_reaction(10742).
retractable_reaction(10751).
retractable_reaction(10752).
retractable_reaction(10761).
retractable_reaction(10762).
retractable_reaction(10771).
retractable_reaction(10772).
retractable_reaction(10781).
retractable_reaction(10782).
retractable_reaction(10791).
retractable_reaction(10792).
retractable_reaction(10811).
retractable_reaction(10812).
retractable_reaction(10821).
retractable_reaction(10822).
retractable_reaction(10831).
retractable_reaction(10832).
retractable_reaction(10841).
retractable_reaction(10842).
retractable_reaction(10851).
retractable_reaction(10852).
retractable_reaction(10871).
retractable_reaction(10872).
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

component("YNL280C",834).
component("YLR056W",714).
component("YGR060W",495).
component("YGL012W",462).
component("YKR009C",691).
component("YOL086C",867).
component("YMR303C",806).
component("YMR083W",784).
component("YGL256W",488).
component("YDL168W",315).
component("YBR145W",241).
component("YPL231W",951).
component("YBR265W",260).
component("U46_",146).
component("YBR149W",242).
component("YBR149W",243).
component("YGL001C",458).
component("YIL094C",580).
component("YHR063C",544).
component("U45_",145).
component("YML056C",767).
component("YLR432W",756).
component("YHR216W",568).
component("YAR075W",203).
component("YAR073W",202).
component("YDR127W",348).
component("YJR139C",653).
component("YML075C",770).
component("YLR450W",759).
component("YOL126C",873).
component("YKL085W",667).
component("YDL078C",297).
component("YKL029C",662).
component("YNL037C",811).
component("YNL009W",809).
component("YLR174W",728).
component("YHR183W",561).
component("YGR256W",522).
component("YNL241C",826).
component("YOL059W",864).
component("YDL022W",288).
component("YCL018W",268).
component("YLR355C",751).
component("YIL074C",577).
component("YER081W",429).
component("YML054C",766).
component("YDL174C",319).
component("YML086C",772).
component("YIL155C",590).
component("YEL024W",399).
component("YKR066C",696).
component("YGR088W",499).
component("YDR256C",363).
component("YKL026C",661).
component("YIR037W",601).
component("YBR244W",255).
component("YJR078W",645).
component("U58_",155).
component("YJR025C",636).
component("U107_",27).
component("YGR255C",521).
component("U108_",28).
component("YHR007C",533).
component("YDR402C",378).
component("YGL055W",469).
component("YJR104C",648).
component("YHR008C",534).
component("YOR384W",922).
component("YOR381W",921).
component("YOL152W",877).
component("YLL051C",706).
component("YJL026W",603).
component("YIL066C",576).
component("YGR180C",508).
component("YER070W",426).
component("U37_",139).
component("U36_",138).
component("U35_",137).
component("YDL168W",316).
component("YDR158W",356).
component("YJR009C",632).
component("YJL052W",605).
component("YGR192C",510).
component("YBR006W",216).
component("YPL276W",961).
component("YPL275W",960).
component("YOR388C",923).
component("YPL061W",931).
component("YOR374W",919).
component("YER073W",427).
component("YGL154C",478).
component("YBR115C",236).
component("U55_",154).
component("YER069W",424).
component("YOR323C",909).
component("YMR170C",794).
component("YMR169C",793).
component("YER178W",440).
component("YBR221C",253).
component("YIL125W",586).
component("U52_",151).
component("YBR166C",246).
component("YNL280C",835).
component("YGL012W",463).
component("YKL182W",678).
component("YKL216W",689).
component("YDR044W",334).
component("YER014W",409).
component("YKR009C",692).
component("YIL160C",591).
component("YGL205W",483).
component("YMR118C",788).
component("YLR164W",726).
component("YLL041C",704).
component("YKL148C",672).
component("YKL141W",670).
component("YJL045W",604).
component("YDR178W",358).
component("YJR051W",639).
component("YEL047C",402).
component("YDL171C",317).
component("YDL171C",318).
component("YOR375C",920).
component("YDL215C",323).
component("YAL062W",199).
component("U99_",193).
component("U100_",21).
component("YBR035C",225).
component("YMR189W",796).
component("YKR080W",698).
component("YER023W",411).
component("YPL023C",927).
component("YGL125W",475).
component("YOR236W",906).
component("YGR204W",513).
component("YIR034C",600).
component("YLR142W",723).
component("U65_",162).
component("U63_",160).
component("U62_",159).
component("YOR356W",917).
component("YHR068W",545).
component("YKL150W",673).
component("YIL043C",573).
component("YHR042W",539).
component("YOR221C",903).
component("YMR145C",791).
component("YML120C",773).
component("YKL192C",682).
component("YKL055C",664).
component("YER061C",420).
component("YDL085W",299).
component("YPL171C",940).
component("YHR179W",560).
component("YMR145C",792).
component("YML120C",774).
component("YKL192C",683).
component("YDL085W",300).
component("YGR234W",516).
component("YFR030W",454).
component("YPL017C",926).
component("YFL018C",444).
component("YPL091W",932).
component("YDR353W",373).
component("YER042W",413).
component("YPR167C",983).
component("YJR137C",652).
component("YNL052W",813).
component("YMR256C",803).
component("YLR395C",755).
component("YLR038C",712).
component("YIL111W",583).
component("YHR051W",543).
component("YGL191W",481).
component("YGL187C",480).
component("YDL067C",296).
component("Q0275",20).
component("Q0250",19).
component("Q0045",18).
component("YDR072C",341).
component("YPL266W",958).
component("YPL273W",959).
component("YLL062C",708).
component("YDR410C",381).
component("YKR069W",697).
component("YOL096C",868).
component("U47_",147).
component("YER091C",434).
component("YJR073C",643).
component("YGR157W",505).
component("YDR120C",346).
component("YML008C",761).
component("YOR074C",883).
component("YDL033C",290).
component("YOL096C",869).
component("YLR172C",727).
component("YLR058C",715).
component("YDR019C",330).
component("YBR176W",247).
component("YDR408C",380).
component("YMR120C",789).
component("YLR028C",710).
component("YBL013W",204).
component("YJL130C",617).
component("YJL088W",610).
component("YKL024C",659).
component("YPR074C",975).
component("YBR117C",237).
component("YMR108W",787).
component("YCL009C",267).
component("YMR062C",782).
component("YNL071W",815).
component("YNR008W",841).
component("YIL160C",592).
component("YNR019W",844).
component("YCR048W",283).
component("U48_",148).
component("YMR062C",783).
component("YDR232W",360).
component("YPL231W",952).
component("YER061C",421).
component("YPL001W",925).
component("YDL052C",294).
component("U8_",186).
component("YDR148C",354).
component("YPL231W",953).
component("YPL028W",928).
component("YLR299W",739).
component("YGL017W",464).
component("YCR005C",275).
component("YML126C",775).
component("YNL104C",818).
component("YDL182W",320).
component("YDL131W",306).
component("YPR160W",982).
component("YDR307W",369).
component("YLR258W",736).
component("YFR015C",451).
component("YPL227C",949).
component("YNL029C",810).
component("YIL085C",579).
component("YNL192W",824).
component("YBR038W",227).
component("YBR023C",223).
component("YEL011W",395).
component("YMR306W",807).
component("YLR342W",749).
component("YGR032W",492).
component("YPR183W",986).
component("YBR248C",256).
component("YLR209C",730).
component("U104_",24).
component("U103_",23).
component("YOR209C",901).
component("YDR354W",374) :- not remove_orf("YDR354W",374).
component("YFR047C",455).
component("YJR133W",651).
component("U22_",124).
component("YLR209C",731).
component("YML022W",763).
component("YDR441C",384).
component("YHR128W",554).
component("YPR176C",985).
component("YPL172C",941).
component("YNR041C",848).
component("YMR101C",785).
component("YDL090C",302).
component("YBR003W",215).
component("YBR002C",214).
component("YJL167W",624).
component("YJL167W",625).
component("YNL256W",829).
component("YPR069C",972).
component("YDR127W",349).
component("YHR190W",563).
component("YLR146C",724).
component("YPL214C",947).
component("YHR068W",546).
component("YLR303W",741).
component("YGR012W",490).
component("YML082W",771).
component("YJR130C",650).
component("YLR303W",742).
component("YDR035W",332).
component("YBR249C",257).
component("YLR180W",729).
component("YDR502C",388).
component("YOR274W",907).
component("YOL143C",876).
component("YBR256C",259).
component("YHR137W",555).
component("YGL202W",482).
component("YLR027C",709).
component("YKL106W",668).
component("YOL140W",875).
component("YLR438W",758).
component("YGR019W",491).
component("YLR089C",719).
component("YDR111C",345).
component("U64_",161).
component("U61_",158).
component("U51_",150).
component("YJR148W",654).
component("YHR208W",566).
component("YFL030W",446).
component("YOR184W",894).
component("YNR058W",852).
component("YIL116W",585).
component("YGL253W",487).
component("YFR053C",456).
component("YOL136C",874).
component("YIL107C",582).
component("YMR013C",779).
component("YMR205C",798).
component("YGR240C",517).
component("YOL016C",856).
component("YFR014C",450).
component("YLR240W",734).
component("YKL203C",685).
component("YJR066W",642).
component("YCR036W",282).
component("YGR194C",511).
component("YCL040W",271).
component("U15_",68).
component("YPL188W",943).
component("YJR049C",638).
component("YEL041W",400).
component("U96_",191).
component("YKL001C",657).
component("YDR236C",361).
component("YML070W",769).
component("YFL053W",448).
component("YHL032C",531).
component("YDR531W",392).
component("U83_",180).
component("U82_",179).
component("U81_",178).
component("YMR208W",799).
component("YPL203W",944).
component("YOR061W",881).
component("YKL166C",675).
component("YJL164C",623).
component("YIL035C",572).
component("YHR205W",565).
component("YHR102W",552).
component("YGL019W",465).
component("YHR025W",538).
component("YOR347C",915).
component("YAL038W",197).
component("YNR012W",842).
component("YPR121W",980).
component("YPL258C",955).
component("YOL055C",860).
component("YPL214C",948).
component("U1_",104).
component("YDR009W",329).
component("YDR127W",350).
component("U21_",116).
component("U20_",113).
component("YDR147W",353).
component("YDR300C",368).
component("YCR012W",276).
component("YER052C",415).
component("YER069W",425).
component("U19_",103).
component("YKL024C",660).
component("U18_",93).
component("U17_",83).
component("U76_",172).
component("YER170W",439).
component("YDR226W",359).
component("YKL067W",666).
component("YOL055C",861).
component("YDR454C",385).
component("YJR057W",640).
component("YOL061W",865).
component("YKL181W",677).
component("YHL011C",529).
component("YER099C",435).
component("YBL068W",211).
component("YOR143C",890).
component("YNL256W",830).
component("YLR328W",747).
component("YBR018C",218).
component("YBR018C",219).
component("YGR007W",489).
component("YGR202C",512).
component("YLR328W",748).
component("YDL045C",292).
component("U80_",177).
component("YDL103C",305).
component("U94_",190).
component("YJR010W",633).
component("YBR029C",224).
component("YCL050C",272).
component("YGL130W",476).
component("YDR530C",391).
component("YCL050C",273).
component("YPR190C",988).
component("YPR187W",987).
component("YPR110C",978).
component("YPR010C",965).
component("YOR341W",914).
component("YOR340C",913).
component("YOR224C",905).
component("YOR210W",902).
component("YOR207C",899).
component("YOR151C",891).
component("YOR116C",885).
component("YOL005C",854).
component("YNR003C",840).
component("YNL248C",828).
component("YNL151C",822).
component("YNL113W",819).
component("YKL144C",671).
component("YJR063W",641).
component("YJL148W",621).
component("YJL140W",620).
component("YIL021W",571).
component("YHR143W-A",556).
component("YGL070C",473).
component("YFL036W",447).
component("YDR404C",379).
component("YDR156W",355).
component("YDR045C",335).
component("YDL150W",314).
component("YDL140C",308).
component("YBR154C",245).
component("YPR175W",984).
component("YPL167C",939).
component("YOR330C",910).
component("YOL115W",872).
component("YNL299W",837).
component("YNL262W",832).
component("YNL102W",817).
component("YJR043C",637).
component("YJR006W",631).
component("YJL090C",611).
component("YIL139C",588).
component("YEL055C",403).
component("YDR419W",382).
component("YDR121W",347).
component("YDL102W",304).
component("YCR014C",277).
component("YBR278W",262).
component("YBL035C",207).
component("YKL035W",663).
component("YHL012W",530).
component("YHR123W",553).
component("YPR113W",979).
component("YBR243C",254).
component("YDL142C",313).
component("YPL148C",937).
component("YER026C",412).
component("YGR286C",526).
component("YJL068C",606).
component("YHR189W",562).
component("YDR058C",339).
component("YNR034W",847).
component("YHR163W",558).
component("YGR248W",519).
component("YCR073W-A",285).
component("YDL086W",301).
component("YOL011W",855).
component("YMR008C",777).
component("YMR006C",776).
component("U105_",25).
component("YBL015W",205).
component("YJL068C",607).
component("YJR019C",635).
component("YOR040W",880).
component("U84_",181).
component("U77_",173).
component("YDR481C",386).
component("YLR377C",753).
component("YFR025C",452).
component("YPL179W",942).
component("YNR032W",845).
component("YML057W",768).
component("YML016C",762).
component("YLR433C",757).
component("YGR123C",502).
component("YER133W",437).
component("YER089C",432).
component("YDR436W",383).
component("YDR075W",342).
component("YDL188C",321).
component("YDL134C",307).
component("YDL047W",293).
component("YDL006W",286).
component("YBR125C",240).
component("YBL056W",210).
component("YPR073C",973).
component("YHR215W",567).
component("YDL024C",289).
component("YBR093C",234).
component("YBR092C",233).
component("YAR071W",201).
component("YIL053W",575).
component("YER062C",422).
component("YHR046C",542).
component("U9_",194).
component("YPL228W",950).
component("YMR180C",795).
component("YDL236W",325).
component("YJL155C",622).
component("YPR073C",974).
component("YOR208W",900).
component("YNL053W",814).
component("YMR036C",781).
component("YIR026C",598).
component("YIL113W",584).
component("YFR028C",453).
component("YER075C",428).
component("YDL230W",324).
component("YBR276C",261).
component("U34_",136).
component("U33_",135).
component("U32_",134).
component("U31_",133).
component("U30_",132).
component("U29_",131).
component("U28_",130).
component("U27_",129).
component("U26_",128).
component("U25_",127).
component("U24_",126).
component("YHR044C",541).
component("YHR043C",540).
component("YOL064C",866).
component("YOR360C",918).
component("YGL248W",486).
component("YKR031C",693).
component("YPL206C",945).
component("YGL027C",467).
component("YLR286C",738).
component("YJR153W",655).
component("YJL221C",630).
component("YJL216C",628).
component("YIL172C",596).
component("YGR292W",528).
component("YGR287C",527).
component("YBR299W",266).
component("YBR184W",248).
component("YIL162W",593).
component("YPR026W",966).
component("YDR001C",327).
component("YBR001C",213).
component("YIR019C",597).
component("YIL099W",581).
component("YDL037C",291).
component("YOR190W",896).
component("YLR300W",740).
component("YGR282C",525).
component("YDR261C",364).
component("YDR400W",377).
component("U23_",125).
component("YML035C",764).
component("YJL070C",608).
component("YBR284W",263).
component("U106_",26).
component("U102_",22).
component("YER043C",414).
component("YNL045W",812).
component("YGL037C",468).
component("YDR242W",362).
component("YLR308W",746).
component("YLR307W",745).
component("YBR208C",250).
component("YMR281W",805).
component("U53_",152).
component("YIR032C",599).
component("YPR062W",971).
component("YMR120C",790).
component("YLR028C",711).
component("YHR144C",557).
component("YGR267C",524).
component("YCL030C",270).
component("YBL033C",206).
component("YBR153W",244).
component("YNL141W",820).
component("YLR245C",735).
component("YML035C",765).
component("YGR204W",514).
component("YBR084W",231).
component("YJL126W",615).
component("U44_",144).
component("YDL100C",303).
component("U87_",183).
component("U40_",142).
component("U39_",140).
component("YBR011C",217).
component("YHR201C",564).
component("YBR111C",235).
component("YBR252W",258).
component("YPR080W",976).
component("YOR187W",895).
component("YOR133W",888).
component("YLR069C",717).
component("YKR084C",699).
component("YKL173W",676).
component("YJL102W",613).
component("YDR385W",376).
component("YBR118W",238).
component("YER005W",408).
component("YLL001W",702).
component("YIL048W",574).
component("YER166W",438).
component("YDR093W",344).
component("YAL026C",196).
component("YBL099W",212).
component("U60_",157).
component("YLR231C",732).
component("U88_",184).
component("YDR538W",394).
component("YLR134W",721).
component("YLR044C",713).
component("YGR087C",498).
component("YDR380W",375).
component("YDL080C",298).
component("U98_",192).
component("YMR250W",802).
component("YKL184W",681).
component("YOR128C",886).
component("YEL021W",398).
component("YNR043W",849).
component("U93_",189).
component("U54_",153).
component("YKL211C",687) :- not remove_orf("YKL211C",687).
component("YKR097W",701).
component("YOL052C",859).
component("YNL169C",823).
component("YGR170W",506).
component("YKL060C",665).
component("YNL256W",831).
component("YDR294C",366).
component("YEL046C",401).
component("YNR033W",846).
component("YPR006C",964).
component("YER065C",423).
component("YKL211C",688) :- not remove_orf("YKL211C",688).
component("YER090W",688) :- not remove_orf("YER090W",688).
component("YER090W",433) :- not remove_orf("YER090W",433).
component("YDR127W",351).
component("YPL281C",962).
component("YOR393W",924).
component("YMR323W",808).
component("YHR174W",559).
component("YGR254W",520).
component("YOR202W",898).
component("YPL262W",956).
component("YGL026C",466) :- not remove_orf("YGL026C",466).
component("YGR155W",504).
component("YLR304C",743).
component("YJL200C",626).
component("YGL009C",461).
component("YNL316C",838).
component("YKL182W",679).
component("YPL212C",946).
component("YNL292W",836).
component("YGL063W",472).
component("YFL001W",442).
component("YPR002W",963).
component("YJR016C",634).
component("YCR053W",284).
component("YDR127W",352).
component("YGL148W",477).
component("YIL168W",595).
component("YIL167W",594).
component("YCL064C",274).
component("YER086W",430).
component("YLR359W",752).
component("YAL012W",195).
component("YML004C",760).
component("YFR055W",457).
component("YJL005W",602).
component("YJL121C",614).
component("YBR019C",220).
component("YBR019C",221).
component("YDR050C",337).
component("YIL020C",570).
component("YDR007W",328) :- not remove_orf("YDR007W",328).
component("YOR095C",884).
component("YER003C",407).
component("YBR196C",249).
component("YGL001C",459).
component("YPL117C",935).
component("U14_",60).
component("YOL056W",862).
component("YKL152C",674).
component("YDL021W",287).
component("YMR105C",786).
component("YKL127W",669).
component("YEL058W",404).
component("YPR060C",970).
component("YHR072W",547).
component("YPL097W",933).
component("YGR185C",509).
component("YGR264C",523).
component("YGR171C",507).
component("YHR011W",535).
component("YDR023W",331).
component("YPL104W",934).
component("YLL018C",703).
component("YPR081C",977).
component("YBR121C",239).
component("YHR020W",537).
component("YER087W",431).
component("YNL247W",827).
component("YOR168W",892).
component("YOL097C",870).
component("YDR268W",365).
component("YPR047W",969).
component("YLR060W",716).
component("YFL022C",445).
component("YPR033C",967).
component("YCR024C",278).
component("YHR019C",536).
component("YKL194C",684).
component("YIL078W",578).
component("YPL160W",938).
component("YLR382C",754).
component("YNL073W",816).
component("YDR037W",333).
component("YOR335C",911).
component("YGR094W",500).
component("YLR153C",725).
component("YAL054C",198).
component("YOR317W",908).
component("YMR246W",801).
component("YIL009W",569).
component("YER015W",410).
component("YOR142W",889).
component("YGR244C",518).
component("YPR035W",968).
component("YIL145C",589).
component("U89_",185).
component("YOR339C",912).
component("YMR022W",780).
component("YLR306W",744).
component("YKL210W",686).
component("YGR133W",503).
component("YGL058W",470).
component("YER100W",436).
component("YEL012W",396).
component("YDR177W",357).
component("YDR092W",343).
component("YDR059C",340).
component("YDR054C",338).
component("YDL064W",295).
component("YBR082C",230).
component("YJL101C",612).
component("YOL049W",858).
component("YAR015W",200).
component("YGL234W",484).
component("YER183C",441).
component("U91_",188).
component("U90_",187).
component("YNR057C",851).
component("YDL141W",309).
component("YDL141W",310).
component("YGL234W",485).
component("YDL141W",311).
component("YJR103W",647).
component("YBL039C",208).
component("YGR204W",515).
component("YBR084W",232).
component("YNL220W",825).
component("YOL058W",863).
component("YBR208C",251).
component("YDL141W",312).
component("YHR074W",548).
component("YMR217W",800).
component("YGR061C",496).
component("YJR109C",649).
component("YJL130C",618).
component("YGL062W",471).
component("YBR218C",252).
component("YPL231W",954).
component("YNR016C",843).
component("YKL182W",680).
component("YGR037C",493).
component("YJL087C",609).
component("YPR138C",981).
component("YPL265W",957).
component("YPL134C",936).
component("YPL057C",930).
component("YPL036W",929).
component("YOR348C",916).
component("YOR222W",904).
component("YOR192C",897).
component("YOR171C",893).
component("YOR130C",887).
component("YOR071C",882).
component("YOR011W",879).
component("YOL156W",878).
component("YOL103W",871).
component("YOL020W",857) :- not remove_orf("YOL020W",857).
component("YNR072W",853).
component("YNR056C",850).
component("YNL318C",839).
component("YNL270C",833).
component("YNL142W",821).
component("YMR272C",804).
component("YMR202W",797).
component("YMR011W",778).
component("YLR348C",750).
component("YLR260W",737).
component("YLR237W",733).
component("YLR138W",722).
component("YLR100C",720).
component("YLR081W",718).
component("YLL061W",707).
component("YLL043W",705).
component("YKR093W",700).
component("YKR053C",695).
component("YKR039W",694) :- not remove_orf("YKR039W",694).
component("YKL217W",690).
component("YKL004W",658).
component("YJR158W",656).
component("YJR095W",646).
component("YJR077C",644).
component("YJL219W",629).
component("YJL214W",627).
component("YJL134W",619).
component("YJL129C",616).
component("YIL134W",587).
component("YHR096C",551).
component("YHR094C",550).
component("YHR092C",549).
component("YHL036W",532).
component("YGR121C",501).
component("YGR065C",497).
component("YGR055W",494).
component("YGL186C",479).
component("YGL077C",474).
component("YGL008C",460).
component("YFL055W",449).
component("YFL011W",443).
component("YER060W-A",419).
component("YER060W",418).
component("YER056C",417).
component("YER053C",416).
component("YEL069C",406).
component("YEL063C",405).
component("YEL017C-A",397).
component("YDR536W",393).
component("YDR508C",390).
component("YDR503C",389).
component("YDR497C",387).
component("YDR345C",372).
component("YDR343C",371).
component("YDR342C",370).
component("YDR297W",367).
component("YDR046C",336) :- not remove_orf("YDR046C",336).
component("YDL245C",326).
component("YDL210W",322).
component("YCR032W",281).
component("YCR028C",280).
component("YCR024C-A",279).
component("YCL025C",269).
component("YBR298C",265).
component("YBR291C",264).
component("YBR069C",229) :- not remove_orf("YBR069C",229).
component("YBR068C",228) :- not remove_orf("YBR068C",228).
component("YBR036C",226).
component("YBR021W",222).
component("YBL042C",209).
component("U85_",182).
component("U7_",176).
component("U79_",175).
component("U78_",174).
component("U75_",171).
component("U74_",170).
component("U73_",169).
component("U72_",168).
component("U70_",167).
component("U6_",166).
component("U69_",165).
component("U67_",164).
component("U66_",163).
component("U5_",156).
component("U4_",149).
component("U41_",143).
component("U3_",141).
component("U228_",123).
component("U227_",122).
component("U224_",121).
component("U223_",120).
component("U222_",119).
component("U221_",118).
component("U220_",117).
component("U219_",115).
component("U213_",114).
component("U209_",112).
component("U208_",111).
component("U207_",110).
component("U206_",109).
component("U204_",108).
component("U203_",107).
component("U201_",106).
component("U200_",105).
component("U199_",102).
component("U198_",101).
component("U197_",100).
component("U196_",99).
component("U195_",98).
component("U194_",97).
component("U192_",96).
component("U191_",95).
component("U190_",94).
component("U189_",92).
component("U188_",91).
component("U187_",90).
component("U185_",89).
component("U184_",88).
component("U183_",87).
component("U182_",86).
component("U181_",85).
component("U180_",84).
component("U179_",82).
component("U178_",81).
component("U177_",80).
component("U175_",79).
component("U174_",78).
component("U173_",77).
component("U172_",76).
component("U171_",75).
component("U168_",74).
component("U166_",73).
component("U165_",72).
component("U162_",71).
component("U161_",70).
component("U160_",69).
component("U159_",67).
component("U155_",66).
component("U154_",65).
component("U153_",64).
component("U152_",63).
component("U151_",62).
component("U150_",61).
component("U147_",59).
component("U146_",58).
component("U145_",57).
component("U144_",56).
component("U143_",55).
component("U142_",54).
component("U140_",53).
component("U13_",52).
component("U139_",51).
component("U137_",50).
component("U136_",49).
component("U135_",48).
component("U134_",47).
component("U133_",46).
component("U132_",45).
component("U131_",44).
component("U130_",43).
component("U128_",42).
component("U127_",41).
component("U122_",40).
component("U121_",39).
component("U120_",38).
component("U11_",37).
component("U119_",36).
component("U117_",35).
component("U115_",34).
component("U114_",33).
component("U111_",32).
component("U110_",31).
component("U10_",30).
component("U109_",29).
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


catalyst(6390,834).
catalyst(6300,714).
catalyst(6350,495).
catalyst(6380,495).
catalyst(6280,462).
catalyst(7301,691).
catalyst(7302,691).
catalyst(7501,867).
catalyst(7502,867).
catalyst(7501,806).
catalyst(7502,806).
catalyst(7511,784).
catalyst(7512,784).
catalyst(7501,488).
catalyst(7502,488).
catalyst(7501,315).
catalyst(7502,315).
catalyst(7501,241).
catalyst(7502,241).
catalyst(10781,951).
catalyst(10782,951).
catalyst(10791,951).
catalyst(10792,951).
catalyst(10811,951).
catalyst(10812,951).
catalyst(10821,951).
catalyst(10822,951).
catalyst(10831,951).
catalyst(10832,951).
catalyst(10841,951).
catalyst(10842,951).
catalyst(10851,951).
catalyst(10852,951).
catalyst(6660,260).
catalyst(4510,146).
catalyst(10391,242).
catalyst(10392,242).
catalyst(4850,243).
catalyst(4860,243).
catalyst(10261,458).
catalyst(10262,458).
catalyst(10271,458).
catalyst(10272,458).
catalyst(10281,458).
catalyst(10282,458).
catalyst(10291,458).
catalyst(10292,458).
catalyst(10301,458).
catalyst(10302,458).
catalyst(10311,458).
catalyst(10312,458).
catalyst(10321,458).
catalyst(10322,458).
catalyst(10331,458).
catalyst(10332,458).
catalyst(10341,458).
catalyst(10342,458).
catalyst(10361,458).
catalyst(10362,458).
catalyst(10371,458).
catalyst(10372,458).
catalyst(10381,458).
catalyst(10382,458).
catalyst(4141,580).
catalyst(4142,580).
catalyst(2350,544).
catalyst(4831,145).
catalyst(4832,145).
catalyst(6040,767).
catalyst(6040,756).
catalyst(6040,568).
catalyst(6040,203).
catalyst(6040,202).
catalyst(3730,348).
catalyst(4600,653).
catalyst(4610,653).
catalyst(6531,770).
catalyst(6532,770).
catalyst(6531,759).
catalyst(6532,759).
catalyst(8031,873).
catalyst(8032,873).
catalyst(8041,667).
catalyst(8042,667).
catalyst(8031,297).
catalyst(8032,297).
catalyst(7970,662).
catalyst(8170,811).
catalyst(8130,809).
catalyst(8150,809).
catalyst(8130,728).
catalyst(8150,728).
catalyst(7940,561).
catalyst(7940,522).
catalyst(7961,826).
catalyst(7962,826).
catalyst(3020,864).
catalyst(3020,288).
catalyst(4170,268).
catalyst(2340,751).
catalyst(4230,751).
catalyst(4240,751).
catalyst(4710,577).
catalyst(4710,429).
catalyst(7370,766).
catalyst(7360,319).
catalyst(10231,772).
catalyst(10232,772).
catalyst(3000,590).
catalyst(7400,399).
catalyst(10071,696).
catalyst(10072,696).
catalyst(3580,499).
catalyst(3580,363).
catalyst(3141,661).
catalyst(3142,661).
catalyst(3141,601).
catalyst(3142,601).
catalyst(3141,255).
catalyst(3142,255).
catalyst(3520,645).
catalyst(3420,155).
catalyst(3470,636).
catalyst(1860,27).
catalyst(1820,521).
catalyst(1840,28).
catalyst(6400,533).
catalyst(10031,378).
catalyst(10032,378).
catalyst(10041,378).
catalyst(10042,378).
catalyst(10051,378).
catalyst(10052,378).
catalyst(10021,469).
catalyst(10022,469).
catalyst(10011,648).
catalyst(10012,648).
catalyst(10011,534).
catalyst(10012,534).
catalyst(10001,922).
catalyst(10002,922).
catalyst(10001,921).
catalyst(10002,921).
catalyst(10001,877).
catalyst(10002,877).
catalyst(10001,706).
catalyst(10002,706).
catalyst(10601,603).
catalyst(10602,603).
catalyst(10611,603).
catalyst(10612,603).
catalyst(10621,603).
catalyst(10622,603).
catalyst(10631,603).
catalyst(10632,603).
catalyst(10641,603).
catalyst(10642,603).
catalyst(5140,576).
catalyst(10601,508).
catalyst(10602,508).
catalyst(10611,508).
catalyst(10612,508).
catalyst(10621,508).
catalyst(10622,508).
catalyst(10631,508).
catalyst(10632,508).
catalyst(10641,508).
catalyst(10642,508).
catalyst(5110,426).
catalyst(5120,426).
catalyst(5130,426).
catalyst(5140,426).
catalyst(5080,139).
catalyst(5090,138).
catalyst(5100,137).
catalyst(7571,316).
catalyst(7572,316).
catalyst(4620,356).
catalyst(8271,632).
catalyst(8272,632).
catalyst(8271,605).
catalyst(8272,605).
catalyst(8271,510).
catalyst(8272,510).
catalyst(5010,216).
catalyst(7350,961).
catalyst(7350,960).
catalyst(7350,923).
catalyst(3530,931).
catalyst(3540,919).
catalyst(3211,427).
catalyst(3212,427).
catalyst(3540,427).
catalyst(10741,478).
catalyst(10742,478).
catalyst(10751,478).
catalyst(10752,478).
catalyst(10761,478).
catalyst(10762,478).
catalyst(10771,478).
catalyst(10772,478).
catalyst(4110,236).
catalyst(3450,154).
catalyst(4030,424).
catalyst(3290,909).
catalyst(3300,909).
catalyst(3560,794).
catalyst(3560,793).
catalyst(8210,440).
catalyst(10681,253).
catalyst(10682,253).
catalyst(10691,253).
catalyst(10692,253).
catalyst(10701,253).
catalyst(10702,253).
catalyst(10711,253).
catalyst(10712,253).
catalyst(8120,586).
catalyst(3640,151).
catalyst(3660,246).
catalyst(10211,835).
catalyst(10212,835).
catalyst(10221,835).
catalyst(10222,835).
catalyst(10201,463).
catalyst(10202,463).
catalyst(7021,678).
catalyst(7022,678).
catalyst(5911,689).
catalyst(5912,689).
catalyst(1950,334).
catalyst(1940,409).
catalyst(6990,692).
catalyst(7000,692).
catalyst(7010,692).
catalyst(6990,591).
catalyst(7000,591).
catalyst(7010,591).
catalyst(6990,483).
catalyst(7000,483).
catalyst(7010,483).
catalyst(10671,788).
catalyst(10672,788).
catalyst(10671,726).
catalyst(10672,726).
catalyst(10671,704).
catalyst(10672,704).
catalyst(10671,672).
catalyst(10672,672).
catalyst(7411,670).
catalyst(7412,670).
catalyst(8091,670).
catalyst(8092,670).
catalyst(10671,604).
catalyst(10672,604).
catalyst(10671,358).
catalyst(10672,358).
catalyst(8070,639).
catalyst(8080,402).
catalyst(10181,317).
catalyst(10182,317).
catalyst(4930,318).
catalyst(4910,920).
catalyst(4920,323).
catalyst(4910,199).
catalyst(2210,193).
catalyst(2200,21).
catalyst(2711,225).
catalyst(2712,225).
catalyst(2721,225).
catalyst(2722,225).
catalyst(2731,225).
catalyst(2732,225).
catalyst(4551,796).
catalyst(4552,796).
catalyst(2380,698).
catalyst(3240,411).
catalyst(3250,411).
catalyst(3260,411).
catalyst(2450,927).
catalyst(2450,475).
catalyst(2490,906).
catalyst(2431,513).
catalyst(2432,513).
catalyst(4081,600).
catalyst(4082,600).
catalyst(3230,723).
catalyst(3320,162).
catalyst(3340,160).
catalyst(3350,159).
catalyst(10171,917).
catalyst(10172,917).
catalyst(3880,545).
catalyst(10161,673).
catalyst(10162,673).
catalyst(10161,573).
catalyst(10162,573).
catalyst(7420,539).
catalyst(7170,903).
catalyst(7180,903).
catalyst(7190,903).
catalyst(7200,903).
catalyst(7210,903).
catalyst(7220,903).
catalyst(7240,903).
catalyst(7250,903).
catalyst(7430,791).
catalyst(7260,773).
catalyst(7170,682).
catalyst(7180,682).
catalyst(7190,682).
catalyst(7200,682).
catalyst(7210,682).
catalyst(7220,682).
catalyst(7240,682).
catalyst(7250,682).
catalyst(7260,682).
catalyst(7170,664).
catalyst(7180,664).
catalyst(7190,664).
catalyst(7200,664).
catalyst(7210,664).
catalyst(7220,664).
catalyst(7240,664).
catalyst(7250,664).
catalyst(7170,420).
catalyst(7180,420).
catalyst(7190,420).
catalyst(7200,420).
catalyst(7210,420).
catalyst(7220,420).
catalyst(7240,420).
catalyst(7250,420).
catalyst(7430,299).
catalyst(10141,940).
catalyst(10142,940).
catalyst(10141,560).
catalyst(10142,560).
catalyst(10131,792).
catalyst(10132,792).
catalyst(10131,774).
catalyst(10132,774).
catalyst(10131,683).
catalyst(10132,683).
catalyst(10131,300).
catalyst(10132,300).
catalyst(10111,516).
catalyst(10112,516).
catalyst(4371,454).
catalyst(4372,454).
catalyst(10091,926).
catalyst(10092,926).
catalyst(10701,926).
catalyst(10702,926).
catalyst(10711,926).
catalyst(10712,926).
catalyst(10091,444).
catalyst(10092,444).
catalyst(10701,444).
catalyst(10702,444).
catalyst(10711,444).
catalyst(10712,444).
catalyst(3130,932).
catalyst(5750,373).
catalyst(10081,413).
catalyst(10082,413).
catalyst(4330,983).
catalyst(4371,652).
catalyst(4372,652).
catalyst(10661,813).
catalyst(10662,813).
catalyst(10661,803).
catalyst(10662,803).
catalyst(10661,755).
catalyst(10662,755).
catalyst(10661,712).
catalyst(10662,712).
catalyst(10661,583).
catalyst(10662,583).
catalyst(10661,543).
catalyst(10662,543).
catalyst(10661,481).
catalyst(10662,481).
catalyst(10661,480).
catalyst(10662,480).
catalyst(10661,296).
catalyst(10662,296).
catalyst(10661,20).
catalyst(10662,20).
catalyst(10661,19).
catalyst(10662,19).
catalyst(7390,18).
catalyst(6590,341).
catalyst(1850,958).
catalyst(4750,959).
catalyst(4750,708).
catalyst(9961,381).
catalyst(9962,381).
catalyst(1900,697).
catalyst(9951,868).
catalyst(9952,868).
catalyst(4470,147).
catalyst(4480,434).
catalyst(6860,643).
catalyst(6870,643).
catalyst(6880,505).
catalyst(9991,346).
catalyst(9992,346).
catalyst(6320,761).
catalyst(5720,883).
catalyst(9981,290).
catalyst(9982,290).
catalyst(1810,869).
catalyst(4400,727).
catalyst(4671,715).
catalyst(4672,715).
catalyst(4640,330).
catalyst(4650,330).
catalyst(2360,247).
catalyst(6140,380).
catalyst(6071,789).
catalyst(6072,789).
catalyst(6081,789).
catalyst(6082,789).
catalyst(6081,710).
catalyst(6082,710).
catalyst(2370,204).
catalyst(5930,617).
catalyst(3990,610).
catalyst(5281,659).
catalyst(5282,659).
catalyst(7901,975).
catalyst(7902,975).
catalyst(7911,975).
catalyst(7912,975).
catalyst(7901,237).
catalyst(7902,237).
catalyst(7911,237).
catalyst(7912,237).
catalyst(4250,787).
catalyst(4260,787).
catalyst(10551,267).
catalyst(10552,267).
catalyst(10561,267).
catalyst(10562,267).
catalyst(10571,267).
catalyst(10572,267).
catalyst(10581,267).
catalyst(10582,267).
catalyst(10591,267).
catalyst(10592,267).
catalyst(4050,782).
catalyst(10541,815).
catalyst(10542,815).
catalyst(10701,815).
catalyst(10702,815).
catalyst(10711,815).
catalyst(10712,815).
catalyst(9761,841).
catalyst(9762,841).
catalyst(7290,592).
catalyst(9941,844).
catalyst(9942,844).
catalyst(9941,283).
catalyst(9942,283).
catalyst(4360,148).
catalyst(4010,783).
catalyst(2000,360).
catalyst(10451,952).
catalyst(10452,952).
catalyst(10461,952).
catalyst(10462,952).
catalyst(10471,952).
catalyst(10472,952).
catalyst(10491,952).
catalyst(10492,952).
catalyst(10501,952).
catalyst(10502,952).
catalyst(10511,952).
catalyst(10512,952).
catalyst(10521,952).
catalyst(10522,952).
catalyst(10531,952).
catalyst(10532,952).
catalyst(7130,421).
catalyst(9931,925).
catalyst(9932,925).
catalyst(6950,294).
catalyst(6950,186).
catalyst(10431,354).
catalyst(10432,354).
catalyst(10441,354).
catalyst(10442,354).
catalyst(9771,953).
catalyst(9772,953).
catalyst(9781,953).
catalyst(9782,953).
catalyst(9811,953).
catalyst(9812,953).
catalyst(9821,953).
catalyst(9822,953).
catalyst(9831,953).
catalyst(9832,953).
catalyst(9841,953).
catalyst(9842,953).
catalyst(9851,953).
catalyst(9852,953).
catalyst(9861,953).
catalyst(9862,953).
catalyst(9871,953).
catalyst(9872,953).
catalyst(9881,953).
catalyst(9882,953).
catalyst(9891,953).
catalyst(9892,953).
catalyst(9901,953).
catalyst(9902,953).
catalyst(9911,953).
catalyst(9912,953).
catalyst(7271,928).
catalyst(7272,928).
catalyst(7281,928).
catalyst(7282,928).
catalyst(3120,739).
catalyst(9751,464).
catalyst(9752,464).
catalyst(8200,275).
catalyst(6541,775).
catalyst(6542,775).
catalyst(4200,818).
catalyst(7520,320).
catalyst(7530,320).
catalyst(7530,306).
catalyst(7600,982).
catalyst(9741,369).
catalyst(9742,369).
catalyst(7590,736).
catalyst(7590,451).
catalyst(9731,949).
catalyst(9732,949).
catalyst(9691,810).
catalyst(9692,810).
catalyst(9691,579).
catalyst(9692,579).
catalyst(4960,824).
catalyst(4960,227).
catalyst(4960,223).
catalyst(7600,395).
catalyst(3110,807).
catalyst(3110,749).
catalyst(3110,492).
catalyst(3080,986).
catalyst(3790,256).
catalyst(2041,730).
catalyst(2042,730).
catalyst(2051,730).
catalyst(2052,730).
catalyst(5561,730).
catalyst(5562,730).
catalyst(5571,730).
catalyst(5572,730).
catalyst(5581,730).
catalyst(5582,730).
catalyst(5591,730).
catalyst(5592,730).
catalyst(5601,730).
catalyst(5602,730).
catalyst(5611,730).
catalyst(5612,730).
catalyst(2121,24).
catalyst(2122,24).
catalyst(2131,23).
catalyst(2132,23).
catalyst(2220,901).
catalyst(3620,374) :- not remove_reaction(3620,374).
catalyst(2110,455).
catalyst(2190,455).
catalyst(5550,651).
catalyst(5301,124).
catalyst(5302,124).
catalyst(5791,731).
catalyst(5792,731).
catalyst(5801,731).
catalyst(5802,731).
catalyst(5650,763).
catalyst(5650,384).
catalyst(5870,554).
catalyst(1880,985).
catalyst(1880,941).
catalyst(1880,848).
catalyst(1880,785).
catalyst(1880,302).
catalyst(1880,215).
catalyst(1880,214).
catalyst(6450,624).
catalyst(6440,625).
catalyst(2520,829).
catalyst(3930,972).
catalyst(3710,349).
catalyst(6430,563).
catalyst(3920,724).
catalyst(2900,947).
catalyst(9671,546).
catalyst(9672,546).
catalyst(4430,741).
catalyst(4350,490).
catalyst(4421,771).
catalyst(4422,771).
catalyst(9591,650).
catalyst(9592,650).
catalyst(9601,650).
catalyst(9602,650).
catalyst(9621,650).
catalyst(9622,650).
catalyst(9631,650).
catalyst(9632,650).
catalyst(9641,650).
catalyst(9642,650).
catalyst(9651,650).
catalyst(9652,650).
catalyst(9661,650).
catalyst(9662,650).
catalyst(4440,742).
catalyst(3760,332).
catalyst(3760,257).
catalyst(4410,729).
catalyst(4410,388).
catalyst(9681,907).
catalyst(9682,907).
catalyst(10411,876).
catalyst(10412,876).
catalyst(2820,259).
catalyst(3650,555).
catalyst(3671,555).
catalyst(3672,555).
catalyst(3650,482).
catalyst(3571,709).
catalyst(3572,709).
catalyst(4811,709).
catalyst(4812,709).
catalyst(3571,668).
catalyst(3572,668).
catalyst(4821,668).
catalyst(4822,668).
catalyst(4020,875).
catalyst(3980,758).
catalyst(5020,491).
catalyst(4771,719).
catalyst(4772,719).
catalyst(4781,345).
catalyst(4782,345).
catalyst(3330,161).
catalyst(3360,158).
catalyst(4121,150).
catalyst(4122,150).
catalyst(4271,654).
catalyst(4272,654).
catalyst(4281,654).
catalyst(4282,654).
catalyst(4291,654).
catalyst(4292,654).
catalyst(4311,566).
catalyst(4312,566).
catalyst(4661,446).
catalyst(4662,446).
catalyst(2691,894).
catalyst(2692,894).
catalyst(4700,894).
catalyst(2641,852).
catalyst(2642,852).
catalyst(3820,585).
catalyst(8360,487).
catalyst(8370,487).
catalyst(8380,487).
catalyst(8390,487).
catalyst(8360,456).
catalyst(8370,456).
catalyst(8380,456).
catalyst(8390,456).
catalyst(7810,874).
catalyst(7810,582).
catalyst(3090,779).
catalyst(8320,798).
catalyst(8310,517).
catalyst(8320,517).
catalyst(9551,856).
catalyst(9552,856).
catalyst(9551,450).
catalyst(9552,450).
catalyst(6760,734).
catalyst(6760,685).
catalyst(6760,642).
catalyst(7870,282).
catalyst(7880,282).
catalyst(4840,511).
catalyst(8370,271).
catalyst(8380,271).
catalyst(5850,68).
catalyst(2070,943).
catalyst(2160,943).
catalyst(2070,638).
catalyst(2160,638).
catalyst(2070,400).
catalyst(2160,400).
catalyst(2260,191).
catalyst(2270,191).
catalyst(4380,657).
catalyst(2790,361).
catalyst(2800,361).
catalyst(3030,769).
catalyst(3030,448).
catalyst(3010,531).
catalyst(2320,392).
catalyst(2740,180).
catalyst(2750,179).
catalyst(2760,178).
catalyst(6490,799).
catalyst(6500,799).
catalyst(6520,799).
catalyst(9561,944).
catalyst(9562,944).
catalyst(9561,881).
catalyst(9562,881).
catalyst(9561,675).
catalyst(9562,675).
catalyst(9561,623).
catalyst(9562,623).
catalyst(9561,572).
catalyst(9562,572).
catalyst(9561,565).
catalyst(9562,565).
catalyst(9561,552).
catalyst(9562,552).
catalyst(9561,465).
catalyst(9562,465).
catalyst(4590,538).
catalyst(8220,915).
catalyst(8220,197).
catalyst(5810,842).
catalyst(5820,842).
catalyst(5830,842).
catalyst(2950,980).
catalyst(2950,955).
catalyst(2950,860).
catalyst(2910,948).
catalyst(7790,104).
catalyst(9581,329).
catalyst(9582,329).
catalyst(3720,350).
catalyst(5330,116).
catalyst(5340,113).
catalyst(6820,353).
catalyst(3310,368).
catalyst(8261,276).
catalyst(8262,276).
catalyst(4630,415).
catalyst(4040,425).
catalyst(5361,103).
catalyst(5362,103).
catalyst(5291,660).
catalyst(5292,660).
catalyst(5701,93).
catalyst(5702,93).
catalyst(5711,83).
catalyst(5712,83).
catalyst(2891,172).
catalyst(2892,172).
catalyst(5461,439).
catalyst(5462,439).
catalyst(5471,439).
catalyst(5472,439).
catalyst(5481,439).
catalyst(5482,439).
catalyst(5491,359).
catalyst(5492,359).
catalyst(5511,359).
catalyst(5512,359).
catalyst(5371,666).
catalyst(5372,666).
catalyst(5381,666).
catalyst(5382,666).
catalyst(5391,666).
catalyst(5392,666).
catalyst(5401,666).
catalyst(5402,666).
catalyst(5411,666).
catalyst(5412,666).
catalyst(5431,666).
catalyst(5432,666).
catalyst(5441,666).
catalyst(5442,666).
catalyst(5451,666).
catalyst(5452,666).
catalyst(2940,861).
catalyst(6171,385).
catalyst(6172,385).
catalyst(6181,385).
catalyst(6182,385).
catalyst(5761,640).
catalyst(5762,640).
catalyst(6241,865).
catalyst(6242,865).
catalyst(6241,677).
catalyst(6242,677).
catalyst(6241,529).
catalyst(6242,529).
catalyst(6241,435).
catalyst(6242,435).
catalyst(6241,211).
catalyst(6242,211).
catalyst(2970,890).
catalyst(2980,890).
catalyst(2560,830).
catalyst(9531,747).
catalyst(9532,747).
catalyst(9541,747).
catalyst(9542,747).
catalyst(7761,218).
catalyst(7762,218).
catalyst(7641,219).
catalyst(7642,219).
catalyst(6810,489).
catalyst(6840,512).
catalyst(2090,748).
catalyst(2100,748).
catalyst(2180,748).
catalyst(2780,292).
catalyst(2770,177).
catalyst(4971,305).
catalyst(4972,305).
catalyst(2280,190).
catalyst(2290,190).
catalyst(4390,633).
catalyst(6931,224).
catalyst(6932,224).
catalyst(6941,224).
catalyst(6942,224).
catalyst(4321,272).
catalyst(4322,272).
catalyst(9421,476).
catalyst(9422,476).
catalyst(5960,391).
catalyst(5940,273).
catalyst(9481,988).
catalyst(9482,988).
catalyst(9491,988).
catalyst(9492,988).
catalyst(9501,988).
catalyst(9502,988).
catalyst(9511,988).
catalyst(9512,988).
catalyst(9481,987).
catalyst(9482,987).
catalyst(9491,987).
catalyst(9492,987).
catalyst(9501,987).
catalyst(9502,987).
catalyst(9511,987).
catalyst(9512,987).
catalyst(9481,978).
catalyst(9482,978).
catalyst(9491,978).
catalyst(9492,978).
catalyst(9501,978).
catalyst(9502,978).
catalyst(9511,978).
catalyst(9512,978).
catalyst(9481,965).
catalyst(9482,965).
catalyst(9491,965).
catalyst(9492,965).
catalyst(9501,965).
catalyst(9502,965).
catalyst(9511,965).
catalyst(9512,965).
catalyst(9481,914).
catalyst(9482,914).
catalyst(9491,914).
catalyst(9492,914).
catalyst(9501,914).
catalyst(9502,914).
catalyst(9511,914).
catalyst(9512,914).
catalyst(9481,913).
catalyst(9482,913).
catalyst(9491,913).
catalyst(9492,913).
catalyst(9501,913).
catalyst(9502,913).
catalyst(9511,913).
catalyst(9512,913).
catalyst(9481,905).
catalyst(9482,905).
catalyst(9491,905).
catalyst(9492,905).
catalyst(9501,905).
catalyst(9502,905).
catalyst(9511,905).
catalyst(9512,905).
catalyst(9481,902).
catalyst(9482,902).
catalyst(9491,902).
catalyst(9492,902).
catalyst(9501,902).
catalyst(9502,902).
catalyst(9511,902).
catalyst(9512,902).
catalyst(9481,899).
catalyst(9482,899).
catalyst(9491,899).
catalyst(9492,899).
catalyst(9501,899).
catalyst(9502,899).
catalyst(9511,899).
catalyst(9512,899).
catalyst(9481,891).
catalyst(9482,891).
catalyst(9491,891).
catalyst(9492,891).
catalyst(9501,891).
catalyst(9502,891).
catalyst(9511,891).
catalyst(9512,891).
catalyst(9481,885).
catalyst(9482,885).
catalyst(9491,885).
catalyst(9492,885).
catalyst(9501,885).
catalyst(9502,885).
catalyst(9511,885).
catalyst(9512,885).
catalyst(9481,854).
catalyst(9482,854).
catalyst(9491,854).
catalyst(9492,854).
catalyst(9501,854).
catalyst(9502,854).
catalyst(9511,854).
catalyst(9512,854).
catalyst(9481,840).
catalyst(9482,840).
catalyst(9491,840).
catalyst(9492,840).
catalyst(9501,840).
catalyst(9502,840).
catalyst(9511,840).
catalyst(9512,840).
catalyst(9481,828).
catalyst(9482,828).
catalyst(9491,828).
catalyst(9492,828).
catalyst(9501,828).
catalyst(9502,828).
catalyst(9511,828).
catalyst(9512,828).
catalyst(9481,822).
catalyst(9482,822).
catalyst(9491,822).
catalyst(9492,822).
catalyst(9501,822).
catalyst(9502,822).
catalyst(9511,822).
catalyst(9512,822).
catalyst(9481,819).
catalyst(9482,819).
catalyst(9491,819).
catalyst(9492,819).
catalyst(9501,819).
catalyst(9502,819).
catalyst(9511,819).
catalyst(9512,819).
catalyst(9481,671).
catalyst(9482,671).
catalyst(9491,671).
catalyst(9492,671).
catalyst(9501,671).
catalyst(9502,671).
catalyst(9511,671).
catalyst(9512,671).
catalyst(9481,641).
catalyst(9482,641).
catalyst(9491,641).
catalyst(9492,641).
catalyst(9501,641).
catalyst(9502,641).
catalyst(9511,641).
catalyst(9512,641).
catalyst(9481,621).
catalyst(9482,621).
catalyst(9491,621).
catalyst(9492,621).
catalyst(9501,621).
catalyst(9502,621).
catalyst(9511,621).
catalyst(9512,621).
catalyst(9481,620).
catalyst(9482,620).
catalyst(9491,620).
catalyst(9492,620).
catalyst(9501,620).
catalyst(9502,620).
catalyst(9511,620).
catalyst(9512,620).
catalyst(9481,571).
catalyst(9482,571).
catalyst(9491,571).
catalyst(9492,571).
catalyst(9501,571).
catalyst(9502,571).
catalyst(9511,571).
catalyst(9512,571).
catalyst(9481,556).
catalyst(9482,556).
catalyst(9491,556).
catalyst(9492,556).
catalyst(9501,556).
catalyst(9502,556).
catalyst(9511,556).
catalyst(9512,556).
catalyst(9481,473).
catalyst(9482,473).
catalyst(9491,473).
catalyst(9492,473).
catalyst(9501,473).
catalyst(9502,473).
catalyst(9511,473).
catalyst(9512,473).
catalyst(9481,447).
catalyst(9482,447).
catalyst(9491,447).
catalyst(9492,447).
catalyst(9501,447).
catalyst(9502,447).
catalyst(9511,447).
catalyst(9512,447).
catalyst(9481,379).
catalyst(9482,379).
catalyst(9491,379).
catalyst(9492,379).
catalyst(9501,379).
catalyst(9502,379).
catalyst(9511,379).
catalyst(9512,379).
catalyst(9481,355).
catalyst(9482,355).
catalyst(9491,355).
catalyst(9492,355).
catalyst(9501,355).
catalyst(9502,355).
catalyst(9511,355).
catalyst(9512,355).
catalyst(9481,335).
catalyst(9482,335).
catalyst(9491,335).
catalyst(9492,335).
catalyst(9501,335).
catalyst(9502,335).
catalyst(9511,335).
catalyst(9512,335).
catalyst(9481,314).
catalyst(9482,314).
catalyst(9491,314).
catalyst(9492,314).
catalyst(9501,314).
catalyst(9502,314).
catalyst(9511,314).
catalyst(9512,314).
catalyst(9481,308).
catalyst(9482,308).
catalyst(9491,308).
catalyst(9492,308).
catalyst(9501,308).
catalyst(9502,308).
catalyst(9511,308).
catalyst(9512,308).
catalyst(9481,245).
catalyst(9482,245).
catalyst(9491,245).
catalyst(9492,245).
catalyst(9501,245).
catalyst(9502,245).
catalyst(9511,245).
catalyst(9512,245).
catalyst(9431,984).
catalyst(9432,984).
catalyst(9441,984).
catalyst(9442,984).
catalyst(9451,984).
catalyst(9452,984).
catalyst(9461,984).
catalyst(9462,984).
catalyst(9471,984).
catalyst(9472,984).
catalyst(9431,939).
catalyst(9432,939).
catalyst(9441,939).
catalyst(9442,939).
catalyst(9451,939).
catalyst(9452,939).
catalyst(9461,939).
catalyst(9462,939).
catalyst(9471,939).
catalyst(9472,939).
catalyst(9431,910).
catalyst(9432,910).
catalyst(9441,910).
catalyst(9442,910).
catalyst(9451,910).
catalyst(9452,910).
catalyst(9461,910).
catalyst(9462,910).
catalyst(9471,910).
catalyst(9472,910).
catalyst(9431,872).
catalyst(9432,872).
catalyst(9441,872).
catalyst(9442,872).
catalyst(9451,872).
catalyst(9452,872).
catalyst(9461,872).
catalyst(9462,872).
catalyst(9471,872).
catalyst(9472,872).
catalyst(9431,837).
catalyst(9432,837).
catalyst(9441,837).
catalyst(9442,837).
catalyst(9451,837).
catalyst(9452,837).
catalyst(9461,837).
catalyst(9462,837).
catalyst(9471,837).
catalyst(9472,837).
catalyst(9431,832).
catalyst(9432,832).
catalyst(9441,832).
catalyst(9442,832).
catalyst(9451,832).
catalyst(9452,832).
catalyst(9461,832).
catalyst(9462,832).
catalyst(9471,832).
catalyst(9472,832).
catalyst(9431,817).
catalyst(9432,817).
catalyst(9441,817).
catalyst(9442,817).
catalyst(9451,817).
catalyst(9452,817).
catalyst(9461,817).
catalyst(9462,817).
catalyst(9471,817).
catalyst(9472,817).
catalyst(9431,637).
catalyst(9432,637).
catalyst(9441,637).
catalyst(9442,637).
catalyst(9451,637).
catalyst(9452,637).
catalyst(9461,637).
catalyst(9462,637).
catalyst(9471,637).
catalyst(9472,637).
catalyst(9431,631).
catalyst(9432,631).
catalyst(9441,631).
catalyst(9442,631).
catalyst(9451,631).
catalyst(9452,631).
catalyst(9461,631).
catalyst(9462,631).
catalyst(9471,631).
catalyst(9472,631).
catalyst(9431,611).
catalyst(9432,611).
catalyst(9441,611).
catalyst(9442,611).
catalyst(9451,611).
catalyst(9452,611).
catalyst(9461,611).
catalyst(9462,611).
catalyst(9471,611).
catalyst(9472,611).
catalyst(9431,588).
catalyst(9432,588).
catalyst(9441,588).
catalyst(9442,588).
catalyst(9451,588).
catalyst(9452,588).
catalyst(9461,588).
catalyst(9462,588).
catalyst(9471,588).
catalyst(9472,588).
catalyst(9431,403).
catalyst(9432,403).
catalyst(9441,403).
catalyst(9442,403).
catalyst(9451,403).
catalyst(9452,403).
catalyst(9461,403).
catalyst(9462,403).
catalyst(9471,403).
catalyst(9472,403).
catalyst(9431,382).
catalyst(9432,382).
catalyst(9441,382).
catalyst(9442,382).
catalyst(9451,382).
catalyst(9452,382).
catalyst(9461,382).
catalyst(9462,382).
catalyst(9471,382).
catalyst(9472,382).
catalyst(9431,347).
catalyst(9432,347).
catalyst(9441,347).
catalyst(9442,347).
catalyst(9451,347).
catalyst(9452,347).
catalyst(9461,347).
catalyst(9462,347).
catalyst(9471,347).
catalyst(9472,347).
catalyst(9431,304).
catalyst(9432,304).
catalyst(9441,304).
catalyst(9442,304).
catalyst(9451,304).
catalyst(9452,304).
catalyst(9461,304).
catalyst(9462,304).
catalyst(9471,304).
catalyst(9472,304).
catalyst(9431,277).
catalyst(9432,277).
catalyst(9441,277).
catalyst(9442,277).
catalyst(9451,277).
catalyst(9452,277).
catalyst(9461,277).
catalyst(9462,277).
catalyst(9471,277).
catalyst(9472,277).
catalyst(9431,262).
catalyst(9432,262).
catalyst(9441,262).
catalyst(9442,262).
catalyst(9451,262).
catalyst(9452,262).
catalyst(9461,262).
catalyst(9462,262).
catalyst(9471,262).
catalyst(9472,262).
catalyst(9431,207).
catalyst(9432,207).
catalyst(9441,207).
catalyst(9442,207).
catalyst(9451,207).
catalyst(9452,207).
catalyst(9461,207).
catalyst(9462,207).
catalyst(9471,207).
catalyst(9472,207).
catalyst(7741,663).
catalyst(7742,663).
catalyst(7741,530).
catalyst(7742,530).
catalyst(6801,553).
catalyst(6802,553).
catalyst(6770,979).
catalyst(9411,254).
catalyst(9412,254).
catalyst(6700,313).
catalyst(2240,937).
catalyst(6921,412).
catalyst(6922,412).
catalyst(2621,526).
catalyst(2622,526).
catalyst(9391,606).
catalyst(9392,606).
catalyst(9281,562).
catalyst(9282,562).
catalyst(9351,339).
catalyst(9352,339).
catalyst(9371,339).
catalyst(9372,339).
catalyst(9381,339).
catalyst(9382,339).
catalyst(7950,847).
catalyst(7950,558).
catalyst(7950,519).
catalyst(7950,285).
catalyst(9251,301).
catalyst(9252,301).
catalyst(9261,301).
catalyst(9262,301).
catalyst(9271,301).
catalyst(9272,301).
catalyst(9291,855).
catalyst(9292,855).
catalyst(9321,855).
catalyst(9322,855).
catalyst(9331,855).
catalyst(9332,855).
catalyst(9291,777).
catalyst(9292,777).
catalyst(9321,777).
catalyst(9322,777).
catalyst(9331,777).
catalyst(9332,777).
catalyst(9291,776).
catalyst(9292,776).
catalyst(9321,776).
catalyst(9322,776).
catalyst(9331,776).
catalyst(9332,776).
catalyst(2060,25).
catalyst(7540,205).
catalyst(7561,607).
catalyst(7562,607).
catalyst(9241,635).
catalyst(9242,635).
catalyst(7470,880).
catalyst(2670,181).
catalyst(2880,173).
catalyst(2590,386).
catalyst(7990,753).
catalyst(3810,452).
catalyst(9191,942).
catalyst(9192,942).
catalyst(9191,845).
catalyst(9192,845).
catalyst(9191,768).
catalyst(9192,768).
catalyst(9191,762).
catalyst(9192,762).
catalyst(9191,757).
catalyst(9192,757).
catalyst(9191,502).
catalyst(9192,502).
catalyst(9191,437).
catalyst(9192,437).
catalyst(9191,432).
catalyst(9192,432).
catalyst(9191,383).
catalyst(9192,383).
catalyst(9191,342).
catalyst(9192,342).
catalyst(9191,321).
catalyst(9192,321).
catalyst(9191,307).
catalyst(9192,307).
catalyst(9191,293).
catalyst(9192,293).
catalyst(9191,286).
catalyst(9192,286).
catalyst(9191,240).
catalyst(9192,240).
catalyst(9191,210).
catalyst(9192,210).
catalyst(9201,973).
catalyst(9202,973).
catalyst(9221,973).
catalyst(9222,973).
catalyst(9201,567).
catalyst(9202,567).
catalyst(9221,567).
catalyst(9222,567).
catalyst(9201,289).
catalyst(9202,289).
catalyst(9221,289).
catalyst(9222,289).
catalyst(9201,234).
catalyst(9202,234).
catalyst(9221,234).
catalyst(9222,234).
catalyst(9201,233).
catalyst(9202,233).
catalyst(9221,233).
catalyst(9222,233).
catalyst(2810,201).
catalyst(3050,575).
catalyst(3050,422).
catalyst(6780,542).
catalyst(6710,194).
catalyst(9181,950).
catalyst(9182,950).
catalyst(9181,795).
catalyst(9182,795).
catalyst(9201,325).
catalyst(9202,325).
catalyst(7800,622).
catalyst(9171,974).
catalyst(9172,974).
catalyst(9171,900).
catalyst(9172,900).
catalyst(9171,814).
catalyst(9172,814).
catalyst(9171,781).
catalyst(9172,781).
catalyst(9171,598).
catalyst(9172,598).
catalyst(9171,584).
catalyst(9172,584).
catalyst(9171,453).
catalyst(9172,453).
catalyst(9171,428).
catalyst(9172,428).
catalyst(9171,324).
catalyst(9172,324).
catalyst(9171,261).
catalyst(9172,261).
catalyst(5150,136).
catalyst(5160,135).
catalyst(5170,134).
catalyst(5180,133).
catalyst(5190,132).
catalyst(5200,131).
catalyst(5210,130).
catalyst(5220,129).
catalyst(5230,128).
catalyst(5240,127).
catalyst(5250,126).
catalyst(9151,541).
catalyst(9152,541).
catalyst(9161,541).
catalyst(9162,541).
catalyst(9151,540).
catalyst(9152,540).
catalyst(9161,540).
catalyst(9162,540).
catalyst(4340,866).
catalyst(5970,918).
catalyst(5980,918).
catalyst(5990,918).
catalyst(6000,918).
catalyst(6010,918).
catalyst(6010,486).
catalyst(9131,693).
catalyst(9132,693).
catalyst(9141,693).
catalyst(9142,693).
catalyst(9101,945).
catalyst(9102,945).
catalyst(9111,945).
catalyst(9112,945).
catalyst(9121,945).
catalyst(9122,945).
catalyst(9041,467).
catalyst(9042,467).
catalyst(9071,738).
catalyst(9072,738).
catalyst(9081,738).
catalyst(9082,738).
catalyst(9061,655).
catalyst(9062,655).
catalyst(7650,630).
catalyst(7660,630).
catalyst(7660,628).
catalyst(7660,596).
catalyst(7660,528).
catalyst(7660,527).
catalyst(7660,266).
catalyst(7671,248).
catalyst(7672,248).
catalyst(7681,248).
catalyst(7682,248).
catalyst(7691,248).
catalyst(7692,248).
catalyst(7701,248).
catalyst(7702,248).
catalyst(7710,248).
catalyst(7720,248).
catalyst(7730,248).
catalyst(1140,593).
catalyst(7610,966).
catalyst(7610,327).
catalyst(7610,213).
catalyst(9091,597).
catalyst(9092,597).
catalyst(9091,581).
catalyst(9092,581).
catalyst(9091,291).
catalyst(9092,291).
catalyst(3100,896).
catalyst(3100,740).
catalyst(3100,525).
catalyst(3100,364).
catalyst(5530,377).
catalyst(5540,377).
catalyst(5270,125).
catalyst(5040,764).
catalyst(5040,608).
catalyst(5040,263).
catalyst(2010,26).
catalyst(2140,22).
catalyst(4490,414).
catalyst(9021,812).
catalyst(9022,812).
catalyst(2031,468).
catalyst(2032,468).
catalyst(2231,468).
catalyst(2232,468).
catalyst(3370,362).
catalyst(3380,362).
catalyst(3040,746).
catalyst(3040,745).
catalyst(7330,250).
catalyst(9001,805).
catalyst(9002,805).
catalyst(9011,805).
catalyst(9012,805).
catalyst(3510,152).
catalyst(6211,599).
catalyst(6212,599).
catalyst(5860,971).
catalyst(8981,790).
catalyst(8982,790).
catalyst(6071,711).
catalyst(6072,711).
catalyst(5260,557).
catalyst(2610,524).
catalyst(3850,270).
catalyst(2870,206).
catalyst(2860,244).
catalyst(5630,820).
catalyst(5640,820).
catalyst(5780,735).
catalyst(6020,765).
catalyst(2391,514).
catalyst(2392,514).
catalyst(2401,231).
catalyst(2402,231).
catalyst(3190,615).
catalyst(3200,615).
catalyst(7320,615).
catalyst(4870,144).
catalyst(2580,303).
catalyst(2600,183).
catalyst(5050,142).
catalyst(5060,140).
catalyst(7460,217).
catalyst(8841,564).
catalyst(8842,564).
catalyst(8821,235).
catalyst(8822,235).
catalyst(5730,258).
catalyst(8911,976).
catalyst(8912,976).
catalyst(8911,895).
catalyst(8912,895).
catalyst(8911,888).
catalyst(8912,888).
catalyst(8911,717).
catalyst(8912,717).
catalyst(8911,699).
catalyst(8912,699).
catalyst(8911,676).
catalyst(8912,676).
catalyst(8911,613).
catalyst(8912,613).
catalyst(8911,376).
catalyst(8912,376).
catalyst(8911,238).
catalyst(8912,238).
catalyst(8851,408).
catalyst(8852,408).
catalyst(8871,408).
catalyst(8872,408).
catalyst(8881,408).
catalyst(8882,408).
catalyst(8891,408).
catalyst(8892,408).
catalyst(8901,408).
catalyst(8902,408).
catalyst(8911,408).
catalyst(8912,408).
catalyst(8931,408).
catalyst(8932,408).
catalyst(8951,408).
catalyst(8952,408).
catalyst(8961,408).
catalyst(8962,408).
catalyst(8971,408).
catalyst(8972,408).
catalyst(8911,702).
catalyst(8912,702).
catalyst(8961,574).
catalyst(8962,574).
catalyst(8961,438).
catalyst(8962,438).
catalyst(8961,344).
catalyst(8962,344).
catalyst(8961,196).
catalyst(8962,196).
catalyst(7380,212).
catalyst(3400,157).
catalyst(3500,732).
catalyst(2540,184).
catalyst(1870,394).
catalyst(7550,721).
catalyst(7550,713).
catalyst(7550,498).
catalyst(8791,375).
catalyst(8792,375).
catalyst(8811,375).
catalyst(8812,375).
catalyst(8791,298).
catalyst(8792,298).
catalyst(8811,298).
catalyst(8812,298).
catalyst(2250,192).
catalyst(5030,802).
catalyst(3950,681).
catalyst(6111,886).
catalyst(6112,886).
catalyst(5880,398).
catalyst(6470,849).
catalyst(2300,189).
catalyst(3460,153).
catalyst(3600,687) :- not remove_reaction(3600,687).
catalyst(8000,701).
catalyst(3941,859).
catalyst(3942,859).
catalyst(6890,823).
catalyst(6900,506).
catalyst(8291,665).
catalyst(8292,665).
catalyst(2570,831).
catalyst(8781,366).
catalyst(8782,366).
catalyst(4560,401).
catalyst(2550,846).
catalyst(8020,964).
catalyst(8020,423).
catalyst(1890,688) :- not remove_reaction(1890,688).
catalyst(3630,688) :- not remove_reaction(3630,688).
catalyst(1890,433) :- not remove_reaction(1890,433).
catalyst(3630,433) :- not remove_reaction(3630,433).
catalyst(3740,351).
catalyst(8231,962).
catalyst(8232,962).
catalyst(8231,924).
catalyst(8232,924).
catalyst(8231,808).
catalyst(8232,808).
catalyst(8231,559).
catalyst(8232,559).
catalyst(8231,520).
catalyst(8232,520).
catalyst(3830,898).
catalyst(8051,956).
catalyst(8052,956).
catalyst(8061,956).
catalyst(8062,956).
catalyst(3590,466) :- not remove_reaction(3590,466).
catalyst(10910,466) :- not remove_reaction(10910,466).
catalyst(4570,504).
catalyst(8181,743).
catalyst(8182,743).
catalyst(8181,626).
catalyst(8182,626).
catalyst(4181,461).
catalyst(4182,461).
catalyst(3680,838).
catalyst(7031,679).
catalyst(7032,679).
catalyst(7151,679).
catalyst(7152,679).
catalyst(5661,946).
catalyst(5662,946).
catalyst(5661,836).
catalyst(5662,836).
catalyst(5661,472).
catalyst(5662,472).
catalyst(5661,442).
catalyst(5662,442).
catalyst(8761,963).
catalyst(8762,963).
catalyst(4210,634).
catalyst(4220,634).
catalyst(2680,284).
catalyst(4580,284).
catalyst(3750,352).
catalyst(3700,477).
catalyst(8741,595).
catalyst(8742,595).
catalyst(8751,595).
catalyst(8752,595).
catalyst(4520,594).
catalyst(4520,274).
catalyst(4530,430).
catalyst(6051,752).
catalyst(6052,752).
catalyst(4460,195).
catalyst(7491,760).
catalyst(7492,760).
catalyst(4500,457).
catalyst(6200,602).
catalyst(7931,614).
catalyst(7932,614).
catalyst(7751,220).
catalyst(7752,220).
catalyst(8711,221).
catalyst(8712,221).
catalyst(8281,337).
catalyst(8282,337).
catalyst(3840,570).
catalyst(3610,328) :- not remove_reaction(3610,328).
catalyst(7921,884).
catalyst(7922,884).
catalyst(7841,407).
catalyst(7842,407).
catalyst(8331,249).
catalyst(8332,249).
catalyst(8341,249).
catalyst(8342,249).
catalyst(8351,249).
catalyst(8352,249).
catalyst(6340,459).
catalyst(6370,459).
catalyst(6461,935).
catalyst(6462,935).
catalyst(6250,60).
catalyst(8241,862).
catalyst(8242,862).
catalyst(8241,674).
catalyst(8242,674).
catalyst(8251,674).
catalyst(8252,674).
catalyst(8241,287).
catalyst(8242,287).
catalyst(7861,786).
catalyst(7862,786).
catalyst(7861,669).
catalyst(7862,669).
catalyst(4891,404).
catalyst(4892,404).
catalyst(3690,970).
catalyst(6410,547).
catalyst(8681,933).
catalyst(8682,933).
catalyst(8681,509).
catalyst(8682,509).
catalyst(8601,523).
catalyst(8602,523).
catalyst(8611,523).
catalyst(8612,523).
catalyst(8601,507).
catalyst(8602,507).
catalyst(8611,507).
catalyst(8612,507).
catalyst(8591,535).
catalyst(8592,535).
catalyst(8591,331).
catalyst(8592,331).
catalyst(8571,934).
catalyst(8572,934).
catalyst(8571,703).
catalyst(8572,703).
catalyst(8561,977).
catalyst(8562,977).
catalyst(8561,239).
catalyst(8562,239).
catalyst(8551,537).
catalyst(8552,537).
catalyst(8551,431).
catalyst(8552,431).
catalyst(8541,827).
catalyst(8542,827).
catalyst(8531,892).
catalyst(8532,892).
catalyst(8671,870).
catalyst(8672,870).
catalyst(3390,365).
catalyst(8521,969).
catalyst(8522,969).
catalyst(8521,716).
catalyst(8522,716).
catalyst(8521,445).
catalyst(8522,445).
catalyst(3780,967).
catalyst(4740,278).
catalyst(4730,536).
catalyst(8661,684).
catalyst(8662,684).
catalyst(8661,578).
catalyst(8662,578).
catalyst(8651,938).
catalyst(8652,938).
catalyst(8651,754).
catalyst(8652,754).
catalyst(4060,816).
catalyst(4070,333).
catalyst(8631,911).
catalyst(8632,911).
catalyst(8621,500).
catalyst(8622,500).
catalyst(7580,725).
catalyst(7580,198).
catalyst(7311,908).
catalyst(7312,908).
catalyst(7311,801).
catalyst(7312,801).
catalyst(7311,569).
catalyst(7312,569).
catalyst(7311,410).
catalyst(7312,410).
catalyst(8101,889).
catalyst(8102,889).
catalyst(8111,518).
catalyst(8112,518).
catalyst(4900,968).
catalyst(2330,589).
catalyst(2510,185).
catalyst(8501,912).
catalyst(8502,912).
catalyst(8501,780).
catalyst(8502,780).
catalyst(8501,744).
catalyst(8502,744).
catalyst(8501,686).
catalyst(8502,686).
catalyst(8501,503).
catalyst(8502,503).
catalyst(8501,470).
catalyst(8502,470).
catalyst(8501,436).
catalyst(8502,436).
catalyst(8501,396).
catalyst(8502,396).
catalyst(8501,357).
catalyst(8502,357).
catalyst(8501,343).
catalyst(8502,343).
catalyst(8501,340).
catalyst(8502,340).
catalyst(8501,338).
catalyst(8502,338).
catalyst(8501,295).
catalyst(8502,295).
catalyst(8501,230).
catalyst(8502,230).
catalyst(3160,612).
catalyst(3150,858).
catalyst(6101,200).
catalyst(6102,200).
catalyst(6120,484).
catalyst(8491,441).
catalyst(8492,441).
catalyst(2470,188).
catalyst(2480,187).
catalyst(2631,851).
catalyst(2632,851).
catalyst(8461,309).
catalyst(8462,309).
catalyst(8471,309).
catalyst(8472,309).
catalyst(8451,310).
catalyst(8452,310).
catalyst(6151,485).
catalyst(6152,485).
catalyst(8441,311).
catalyst(8442,311).
catalyst(5670,647).
catalyst(5680,647).
catalyst(5670,208).
catalyst(5680,208).
catalyst(2410,515).
catalyst(2420,232).
catalyst(6060,825).
catalyst(3971,863).
catalyst(3972,863).
catalyst(7341,251).
catalyst(7342,251).
catalyst(8481,312).
catalyst(8482,312).
catalyst(2080,548).
catalyst(2170,548).
catalyst(6030,800).
catalyst(6130,496).
catalyst(4000,649).
catalyst(4000,618).
catalyst(7980,471).
catalyst(7980,252).
catalyst(7040,954).
catalyst(7050,954).
catalyst(7060,954).
catalyst(7070,954).
catalyst(7100,954).
catalyst(7110,954).
catalyst(7120,954).
catalyst(7040,843).
catalyst(7050,843).
catalyst(7060,843).
catalyst(7070,843).
catalyst(7100,843).
catalyst(7110,843).
catalyst(7120,843).
catalyst(7161,843).
catalyst(7162,843).
catalyst(7040,680).
catalyst(7050,680).
catalyst(7060,680).
catalyst(7070,680).
catalyst(7100,680).
catalyst(7110,680).
catalyst(7120,680).
catalyst(7040,493).
catalyst(7050,493).
catalyst(7060,493).
catalyst(7070,493).
catalyst(7100,493).
catalyst(7110,493).
catalyst(7120,493).
catalyst(8421,609).
catalyst(8422,609).
catalyst(371,981).
catalyst(372,981).
catalyst(781,957).
catalyst(782,957).
catalyst(881,957).
catalyst(882,957).
catalyst(911,957).
catalyst(912,957).
catalyst(921,957).
catalyst(922,957).
catalyst(1191,957).
catalyst(1192,957).
catalyst(1241,936).
catalyst(1242,936).
catalyst(6600,930).
catalyst(220,929).
catalyst(730,916).
catalyst(1241,904).
catalyst(1242,904).
catalyst(190,897).
catalyst(6570,893).
catalyst(6580,893).
catalyst(1431,887).
catalyst(1432,887).
catalyst(190,882).
catalyst(21,879).
catalyst(22,879).
catalyst(31,879).
catalyst(32,879).
catalyst(1180,878).
catalyst(1200,878).
catalyst(1210,878).
catalyst(1160,871).
catalyst(801,857) :- not remove_reaction(801,857).
catalyst(802,857) :- not remove_reaction(802,857).
catalyst(811,857) :- not remove_reaction(811,857).
catalyst(812,857) :- not remove_reaction(812,857).
catalyst(831,857) :- not remove_reaction(831,857).
catalyst(832,857) :- not remove_reaction(832,857).
catalyst(901,857) :- not remove_reaction(901,857).
catalyst(902,857) :- not remove_reaction(902,857).
catalyst(1180,853).
catalyst(1210,853).
catalyst(700,850).
catalyst(1200,839).
catalyst(931,833).
catalyst(932,833).
catalyst(371,821).
catalyst(372,821).
catalyst(6620,804).
catalyst(6310,797).
catalyst(1180,778).
catalyst(1210,778).
catalyst(1540,750).
catalyst(1551,750).
catalyst(1552,750).
catalyst(6570,737).
catalyst(6580,737).
catalyst(190,733).
catalyst(251,722).
catalyst(252,722).
catalyst(6330,720).
catalyst(6360,720).
catalyst(1200,718).
catalyst(1210,718).
catalyst(750,707).
catalyst(1031,705).
catalyst(1032,705).
catalyst(640,700).
catalyst(650,700).
catalyst(6560,695).
catalyst(681,694) :- not remove_reaction(681,694).
catalyst(682,694) :- not remove_reaction(682,694).
catalyst(771,694) :- not remove_reaction(771,694).
catalyst(772,694) :- not remove_reaction(772,694).
catalyst(781,694) :- not remove_reaction(781,694).
catalyst(782,694) :- not remove_reaction(782,694).
catalyst(791,694) :- not remove_reaction(791,694).
catalyst(792,694) :- not remove_reaction(792,694).
catalyst(801,694) :- not remove_reaction(801,694).
catalyst(802,694) :- not remove_reaction(802,694).
catalyst(811,694) :- not remove_reaction(811,694).
catalyst(812,694) :- not remove_reaction(812,694).
catalyst(831,694) :- not remove_reaction(831,694).
catalyst(832,694) :- not remove_reaction(832,694).
catalyst(841,694) :- not remove_reaction(841,694).
catalyst(842,694) :- not remove_reaction(842,694).
catalyst(851,694) :- not remove_reaction(851,694).
catalyst(852,694) :- not remove_reaction(852,694).
catalyst(881,694) :- not remove_reaction(881,694).
catalyst(882,694) :- not remove_reaction(882,694).
catalyst(901,694) :- not remove_reaction(901,694).
catalyst(902,694) :- not remove_reaction(902,694).
catalyst(911,694) :- not remove_reaction(911,694).
catalyst(912,694) :- not remove_reaction(912,694).
catalyst(921,694) :- not remove_reaction(921,694).
catalyst(922,694) :- not remove_reaction(922,694).
catalyst(931,694) :- not remove_reaction(931,694).
catalyst(932,694) :- not remove_reaction(932,694).
catalyst(1191,694) :- not remove_reaction(1191,694).
catalyst(1192,694) :- not remove_reaction(1192,694).
catalyst(390,690).
catalyst(6610,658).
catalyst(1180,656).
catalyst(1210,656).
catalyst(1250,646).
catalyst(1581,644).
catalyst(1582,644).
catalyst(1180,629).
catalyst(1200,629).
catalyst(1210,629).
catalyst(1180,627).
catalyst(1210,627).
catalyst(6560,619).
catalyst(361,616).
catalyst(362,616).
catalyst(1390,587).
catalyst(1180,551).
catalyst(1210,551).
catalyst(1180,550).
catalyst(1210,550).
catalyst(1180,549).
catalyst(1210,549).
catalyst(841,532).
catalyst(842,532).
catalyst(371,501).
catalyst(372,501).
catalyst(111,497).
catalyst(112,497).
catalyst(841,494).
catalyst(842,494).
catalyst(581,479).
catalyst(582,479).
catalyst(590,479).
catalyst(710,474).
catalyst(220,460).
catalyst(781,449).
catalyst(782,449).
catalyst(911,449).
catalyst(912,449).
catalyst(1191,449).
catalyst(1192,449).
catalyst(1180,443).
catalyst(1200,443).
catalyst(1210,443).
catalyst(581,419).
catalyst(582,419).
catalyst(590,419).
catalyst(581,418).
catalyst(582,418).
catalyst(590,418).
catalyst(581,417).
catalyst(582,417).
catalyst(590,417).
catalyst(1571,416).
catalyst(1572,416).
catalyst(1180,406).
catalyst(1210,406).
catalyst(681,405).
catalyst(682,405).
catalyst(931,405).
catalyst(932,405).
catalyst(220,397).
catalyst(1191,393).
catalyst(1192,393).
catalyst(1200,393).
catalyst(1210,393).
catalyst(771,390).
catalyst(772,390).
catalyst(781,390).
catalyst(782,390).
catalyst(841,390).
catalyst(842,390).
catalyst(851,390).
catalyst(852,390).
catalyst(881,390).
catalyst(882,390).
catalyst(901,390).
catalyst(902,390).
catalyst(921,390).
catalyst(922,390).
catalyst(6680,389).
catalyst(1160,387).
catalyst(1180,372).
catalyst(1210,372).
catalyst(1180,371).
catalyst(1210,371).
catalyst(1180,370).
catalyst(1210,370).
catalyst(6650,367).
catalyst(791,336) :- not remove_reaction(791,336).
catalyst(792,336) :- not remove_reaction(792,336).
catalyst(801,336) :- not remove_reaction(801,336).
catalyst(802,336) :- not remove_reaction(802,336).
catalyst(811,336) :- not remove_reaction(811,336).
catalyst(812,336) :- not remove_reaction(812,336).
catalyst(831,336) :- not remove_reaction(831,336).
catalyst(832,336) :- not remove_reaction(832,336).
catalyst(841,336) :- not remove_reaction(841,336).
catalyst(842,336) :- not remove_reaction(842,336).
catalyst(851,336) :- not remove_reaction(851,336).
catalyst(852,336) :- not remove_reaction(852,336).
catalyst(901,336) :- not remove_reaction(901,336).
catalyst(902,336) :- not remove_reaction(902,336).
catalyst(1180,326).
catalyst(1210,326).
catalyst(690,322).
catalyst(730,322).
catalyst(431,281).
catalyst(432,281).
catalyst(241,280).
catalyst(242,280).
catalyst(220,279).
catalyst(771,269).
catalyst(772,269).
catalyst(781,269).
catalyst(782,269).
catalyst(791,269).
catalyst(792,269).
catalyst(801,269).
catalyst(802,269).
catalyst(831,269).
catalyst(832,269).
catalyst(841,269).
catalyst(842,269).
catalyst(851,269).
catalyst(852,269).
catalyst(881,269).
catalyst(882,269).
catalyst(921,269).
catalyst(922,269).
catalyst(1191,269).
catalyst(1192,269).
catalyst(1121,265).
catalyst(1122,265).
catalyst(1491,264).
catalyst(1492,264).
catalyst(1501,264).
catalyst(1502,264).
catalyst(1511,264).
catalyst(1512,264).
catalyst(771,229) :- not remove_reaction(771,229).
catalyst(772,229) :- not remove_reaction(772,229).
catalyst(791,229) :- not remove_reaction(791,229).
catalyst(792,229) :- not remove_reaction(792,229).
catalyst(801,229) :- not remove_reaction(801,229).
catalyst(802,229) :- not remove_reaction(802,229).
catalyst(811,229) :- not remove_reaction(811,229).
catalyst(812,229) :- not remove_reaction(812,229).
catalyst(851,229) :- not remove_reaction(851,229).
catalyst(852,229) :- not remove_reaction(852,229).
catalyst(901,229) :- not remove_reaction(901,229).
catalyst(902,229) :- not remove_reaction(902,229).
catalyst(791,228) :- not remove_reaction(791,228).
catalyst(792,228) :- not remove_reaction(792,228).
catalyst(801,228) :- not remove_reaction(801,228).
catalyst(802,228) :- not remove_reaction(802,228).
catalyst(811,228) :- not remove_reaction(811,228).
catalyst(812,228) :- not remove_reaction(812,228).
catalyst(831,228) :- not remove_reaction(831,228).
catalyst(832,228) :- not remove_reaction(832,228).
catalyst(841,228) :- not remove_reaction(841,228).
catalyst(842,228) :- not remove_reaction(842,228).
catalyst(851,228) :- not remove_reaction(851,228).
catalyst(852,228) :- not remove_reaction(852,228).
catalyst(901,228) :- not remove_reaction(901,228).
catalyst(902,228) :- not remove_reaction(902,228).
catalyst(6600,226).
catalyst(620,222).
catalyst(540,209).
catalyst(2660,182).
catalyst(6960,176).
catalyst(2830,175).
catalyst(2840,174).
catalyst(2920,171).
catalyst(2920,170).
catalyst(2920,169).
catalyst(2920,168).
catalyst(2960,167).
catalyst(6970,166).
catalyst(2990,165).
catalyst(3271,164).
catalyst(3272,164).
catalyst(3281,163).
catalyst(3282,163).
catalyst(6970,156).
catalyst(6980,149).
catalyst(4940,143).
catalyst(6980,141).
catalyst(41,123).
catalyst(42,123).
catalyst(51,122).
catalyst(52,122).
catalyst(80,121).
catalyst(91,120).
catalyst(92,120).
catalyst(101,119).
catalyst(102,119).
catalyst(121,118).
catalyst(122,118).
catalyst(131,117).
catalyst(132,117).
catalyst(141,115).
catalyst(142,115).
catalyst(261,114).
catalyst(262,114).
catalyst(300,112).
catalyst(310,111).
catalyst(321,110).
catalyst(322,110).
catalyst(331,109).
catalyst(332,109).
catalyst(411,108).
catalyst(412,108).
catalyst(421,107).
catalyst(422,107).
catalyst(451,106).
catalyst(452,106).
catalyst(460,105).
catalyst(470,102).
catalyst(480,101).
catalyst(490,100).
catalyst(500,99).
catalyst(510,98).
catalyst(520,97).
catalyst(550,96).
catalyst(560,95).
catalyst(460,94).
catalyst(470,92).
catalyst(480,91).
catalyst(510,90).
catalyst(560,89).
catalyst(460,88).
catalyst(470,87).
catalyst(480,86).
catalyst(490,85).
catalyst(500,84).
catalyst(510,82).
catalyst(570,81).
catalyst(520,80).
catalyst(550,79).
catalyst(560,78).
catalyst(610,77).
catalyst(660,76).
catalyst(670,75).
catalyst(960,74).
catalyst(980,73).
catalyst(990,72).
catalyst(1041,71).
catalyst(1042,71).
catalyst(1050,70).
catalyst(1060,69).
catalyst(1071,67).
catalyst(1072,67).
catalyst(1111,66).
catalyst(1112,66).
catalyst(1130,65).
catalyst(1150,64).
catalyst(1220,63).
catalyst(1230,62).
catalyst(1261,61).
catalyst(1262,61).
catalyst(1291,59).
catalyst(1292,59).
catalyst(1301,58).
catalyst(1302,58).
catalyst(1311,57).
catalyst(1312,57).
catalyst(1321,56).
catalyst(1322,56).
catalyst(1331,55).
catalyst(1332,55).
catalyst(1341,54).
catalyst(1342,54).
catalyst(1361,53).
catalyst(1362,53).
catalyst(6260,52).
catalyst(1371,51).
catalyst(1372,51).
catalyst(1401,50).
catalyst(1402,50).
catalyst(1411,49).
catalyst(1412,49).
catalyst(1440,48).
catalyst(1451,47).
catalyst(1452,47).
catalyst(1461,46).
catalyst(1462,46).
catalyst(1471,45).
catalyst(1472,45).
catalyst(1481,44).
catalyst(1482,44).
catalyst(1531,43).
catalyst(1532,43).
catalyst(1611,42).
catalyst(1612,42).
catalyst(1620,41).
catalyst(1671,40).
catalyst(1672,40).
catalyst(1681,39).
catalyst(1682,39).
catalyst(1691,38).
catalyst(1692,38).
catalyst(6630,37).
catalyst(1701,36).
catalyst(1702,36).
catalyst(1721,35).
catalyst(1722,35).
catalyst(1741,34).
catalyst(1742,34).
catalyst(1751,33).
catalyst(1752,33).
catalyst(1781,32).
catalyst(1782,32).
catalyst(1791,31).
catalyst(1792,31).
catalyst(6640,30).
catalyst(1801,29).
catalyst(1802,29).
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

modifiable_enzyme(374).
modifiable_enzyme(687).
modifiable_enzyme(688).
modifiable_enzyme(433).
modifiable_enzyme(466).
modifiable_enzyme(328).
modifiable_enzyme(857).
modifiable_enzyme(694).
modifiable_enzyme(336).
modifiable_enzyme(229).
modifiable_enzyme(228).
modifiable_enzyme(14).
modifiable_enzyme(10).

certain_enzyme(834).
certain_enzyme(714).
certain_enzyme(495).
certain_enzyme(462).
certain_enzyme(691).
certain_enzyme(867).
certain_enzyme(806).
certain_enzyme(784).
certain_enzyme(488).
certain_enzyme(315).
certain_enzyme(241).
certain_enzyme(951).
certain_enzyme(260).
certain_enzyme(146).
certain_enzyme(242).
certain_enzyme(243).
certain_enzyme(458).
certain_enzyme(580).
certain_enzyme(544).
certain_enzyme(145).
certain_enzyme(767).
certain_enzyme(756).
certain_enzyme(568).
certain_enzyme(203).
certain_enzyme(202).
certain_enzyme(348).
certain_enzyme(653).
certain_enzyme(770).
certain_enzyme(759).
certain_enzyme(873).
certain_enzyme(667).
certain_enzyme(297).
certain_enzyme(662).
certain_enzyme(811).
certain_enzyme(809).
certain_enzyme(728).
certain_enzyme(561).
certain_enzyme(522).
certain_enzyme(826).
certain_enzyme(864).
certain_enzyme(288).
certain_enzyme(268).
certain_enzyme(751).
certain_enzyme(577).
certain_enzyme(429).
certain_enzyme(766).
certain_enzyme(319).
certain_enzyme(772).
certain_enzyme(590).
certain_enzyme(399).
certain_enzyme(696).
certain_enzyme(499).
certain_enzyme(363).
certain_enzyme(661).
certain_enzyme(601).
certain_enzyme(255).
certain_enzyme(645).
certain_enzyme(155).
certain_enzyme(636).
certain_enzyme(27).
certain_enzyme(521).
certain_enzyme(28).
certain_enzyme(533).
certain_enzyme(378).
certain_enzyme(469).
certain_enzyme(648).
certain_enzyme(534).
certain_enzyme(922).
certain_enzyme(921).
certain_enzyme(877).
certain_enzyme(706).
certain_enzyme(603).
certain_enzyme(576).
certain_enzyme(508).
certain_enzyme(426).
certain_enzyme(139).
certain_enzyme(138).
certain_enzyme(137).
certain_enzyme(316).
certain_enzyme(356).
certain_enzyme(632).
certain_enzyme(605).
certain_enzyme(510).
certain_enzyme(216).
certain_enzyme(961).
certain_enzyme(960).
certain_enzyme(923).
certain_enzyme(931).
certain_enzyme(919).
certain_enzyme(427).
certain_enzyme(478).
certain_enzyme(236).
certain_enzyme(154).
certain_enzyme(424).
certain_enzyme(909).
certain_enzyme(794).
certain_enzyme(793).
certain_enzyme(440).
certain_enzyme(253).
certain_enzyme(586).
certain_enzyme(151).
certain_enzyme(246).
certain_enzyme(835).
certain_enzyme(463).
certain_enzyme(678).
certain_enzyme(689).
certain_enzyme(334).
certain_enzyme(409).
certain_enzyme(692).
certain_enzyme(591).
certain_enzyme(483).
certain_enzyme(788).
certain_enzyme(726).
certain_enzyme(704).
certain_enzyme(672).
certain_enzyme(670).
certain_enzyme(604).
certain_enzyme(358).
certain_enzyme(639).
certain_enzyme(402).
certain_enzyme(317).
certain_enzyme(318).
certain_enzyme(920).
certain_enzyme(323).
certain_enzyme(199).
certain_enzyme(193).
certain_enzyme(21).
certain_enzyme(225).
certain_enzyme(796).
certain_enzyme(698).
certain_enzyme(411).
certain_enzyme(927).
certain_enzyme(475).
certain_enzyme(906).
certain_enzyme(513).
certain_enzyme(600).
certain_enzyme(723).
certain_enzyme(162).
certain_enzyme(160).
certain_enzyme(159).
certain_enzyme(917).
certain_enzyme(545).
certain_enzyme(673).
certain_enzyme(573).
certain_enzyme(539).
certain_enzyme(903).
certain_enzyme(791).
certain_enzyme(773).
certain_enzyme(682).
certain_enzyme(664).
certain_enzyme(420).
certain_enzyme(299).
certain_enzyme(940).
certain_enzyme(560).
certain_enzyme(792).
certain_enzyme(774).
certain_enzyme(683).
certain_enzyme(300).
certain_enzyme(516).
certain_enzyme(454).
certain_enzyme(926).
certain_enzyme(444).
certain_enzyme(932).
certain_enzyme(373).
certain_enzyme(413).
certain_enzyme(983).
certain_enzyme(652).
certain_enzyme(813).
certain_enzyme(803).
certain_enzyme(755).
certain_enzyme(712).
certain_enzyme(583).
certain_enzyme(543).
certain_enzyme(481).
certain_enzyme(480).
certain_enzyme(296).
certain_enzyme(20).
certain_enzyme(19).
certain_enzyme(18).
certain_enzyme(341).
certain_enzyme(958).
certain_enzyme(959).
certain_enzyme(708).
certain_enzyme(381).
certain_enzyme(697).
certain_enzyme(868).
certain_enzyme(147).
certain_enzyme(434).
certain_enzyme(643).
certain_enzyme(505).
certain_enzyme(346).
certain_enzyme(761).
certain_enzyme(883).
certain_enzyme(290).
certain_enzyme(869).
certain_enzyme(727).
certain_enzyme(715).
certain_enzyme(330).
certain_enzyme(247).
certain_enzyme(380).
certain_enzyme(789).
certain_enzyme(710).
certain_enzyme(204).
certain_enzyme(617).
certain_enzyme(610).
certain_enzyme(659).
certain_enzyme(975).
certain_enzyme(237).
certain_enzyme(787).
certain_enzyme(267).
certain_enzyme(782).
certain_enzyme(815).
certain_enzyme(841).
certain_enzyme(592).
certain_enzyme(844).
certain_enzyme(283).
certain_enzyme(148).
certain_enzyme(783).
certain_enzyme(360).
certain_enzyme(952).
certain_enzyme(421).
certain_enzyme(925).
certain_enzyme(294).
certain_enzyme(186).
certain_enzyme(354).
certain_enzyme(953).
certain_enzyme(928).
certain_enzyme(739).
certain_enzyme(464).
certain_enzyme(275).
certain_enzyme(775).
certain_enzyme(818).
certain_enzyme(320).
certain_enzyme(306).
certain_enzyme(982).
certain_enzyme(369).
certain_enzyme(736).
certain_enzyme(451).
certain_enzyme(949).
certain_enzyme(810).
certain_enzyme(579).
certain_enzyme(824).
certain_enzyme(227).
certain_enzyme(223).
certain_enzyme(395).
certain_enzyme(807).
certain_enzyme(749).
certain_enzyme(492).
certain_enzyme(986).
certain_enzyme(256).
certain_enzyme(730).
certain_enzyme(24).
certain_enzyme(23).
certain_enzyme(901).
certain_enzyme(455).
certain_enzyme(651).
certain_enzyme(124).
certain_enzyme(731).
certain_enzyme(763).
certain_enzyme(384).
certain_enzyme(554).
certain_enzyme(985).
certain_enzyme(941).
certain_enzyme(848).
certain_enzyme(785).
certain_enzyme(302).
certain_enzyme(215).
certain_enzyme(214).
certain_enzyme(624).
certain_enzyme(625).
certain_enzyme(829).
certain_enzyme(972).
certain_enzyme(349).
certain_enzyme(563).
certain_enzyme(724).
certain_enzyme(947).
certain_enzyme(546).
certain_enzyme(741).
certain_enzyme(490).
certain_enzyme(771).
certain_enzyme(650).
certain_enzyme(742).
certain_enzyme(332).
certain_enzyme(257).
certain_enzyme(729).
certain_enzyme(388).
certain_enzyme(907).
certain_enzyme(876).
certain_enzyme(259).
certain_enzyme(555).
certain_enzyme(482).
certain_enzyme(709).
certain_enzyme(668).
certain_enzyme(875).
certain_enzyme(758).
certain_enzyme(491).
certain_enzyme(719).
certain_enzyme(345).
certain_enzyme(161).
certain_enzyme(158).
certain_enzyme(150).
certain_enzyme(654).
certain_enzyme(566).
certain_enzyme(446).
certain_enzyme(894).
certain_enzyme(852).
certain_enzyme(585).
certain_enzyme(487).
certain_enzyme(456).
certain_enzyme(874).
certain_enzyme(582).
certain_enzyme(779).
certain_enzyme(798).
certain_enzyme(517).
certain_enzyme(856).
certain_enzyme(450).
certain_enzyme(734).
certain_enzyme(685).
certain_enzyme(642).
certain_enzyme(282).
certain_enzyme(511).
certain_enzyme(271).
certain_enzyme(68).
certain_enzyme(943).
certain_enzyme(638).
certain_enzyme(400).
certain_enzyme(191).
certain_enzyme(657).
certain_enzyme(361).
certain_enzyme(769).
certain_enzyme(448).
certain_enzyme(531).
certain_enzyme(392).
certain_enzyme(180).
certain_enzyme(179).
certain_enzyme(178).
certain_enzyme(799).
certain_enzyme(944).
certain_enzyme(881).
certain_enzyme(675).
certain_enzyme(623).
certain_enzyme(572).
certain_enzyme(565).
certain_enzyme(552).
certain_enzyme(465).
certain_enzyme(538).
certain_enzyme(915).
certain_enzyme(197).
certain_enzyme(842).
certain_enzyme(980).
certain_enzyme(955).
certain_enzyme(860).
certain_enzyme(948).
certain_enzyme(104).
certain_enzyme(329).
certain_enzyme(350).
certain_enzyme(116).
certain_enzyme(113).
certain_enzyme(353).
certain_enzyme(368).
certain_enzyme(276).
certain_enzyme(415).
certain_enzyme(425).
certain_enzyme(103).
certain_enzyme(660).
certain_enzyme(93).
certain_enzyme(83).
certain_enzyme(172).
certain_enzyme(439).
certain_enzyme(359).
certain_enzyme(666).
certain_enzyme(861).
certain_enzyme(385).
certain_enzyme(640).
certain_enzyme(865).
certain_enzyme(677).
certain_enzyme(529).
certain_enzyme(435).
certain_enzyme(211).
certain_enzyme(890).
certain_enzyme(830).
certain_enzyme(747).
certain_enzyme(218).
certain_enzyme(219).
certain_enzyme(489).
certain_enzyme(512).
certain_enzyme(748).
certain_enzyme(292).
certain_enzyme(177).
certain_enzyme(305).
certain_enzyme(190).
certain_enzyme(633).
certain_enzyme(224).
certain_enzyme(272).
certain_enzyme(476).
certain_enzyme(391).
certain_enzyme(273).
certain_enzyme(988).
certain_enzyme(987).
certain_enzyme(978).
certain_enzyme(965).
certain_enzyme(914).
certain_enzyme(913).
certain_enzyme(905).
certain_enzyme(902).
certain_enzyme(899).
certain_enzyme(891).
certain_enzyme(885).
certain_enzyme(854).
certain_enzyme(840).
certain_enzyme(828).
certain_enzyme(822).
certain_enzyme(819).
certain_enzyme(671).
certain_enzyme(641).
certain_enzyme(621).
certain_enzyme(620).
certain_enzyme(571).
certain_enzyme(556).
certain_enzyme(473).
certain_enzyme(447).
certain_enzyme(379).
certain_enzyme(355).
certain_enzyme(335).
certain_enzyme(314).
certain_enzyme(308).
certain_enzyme(245).
certain_enzyme(984).
certain_enzyme(939).
certain_enzyme(910).
certain_enzyme(872).
certain_enzyme(837).
certain_enzyme(832).
certain_enzyme(817).
certain_enzyme(637).
certain_enzyme(631).
certain_enzyme(611).
certain_enzyme(588).
certain_enzyme(403).
certain_enzyme(382).
certain_enzyme(347).
certain_enzyme(304).
certain_enzyme(277).
certain_enzyme(262).
certain_enzyme(207).
certain_enzyme(663).
certain_enzyme(530).
certain_enzyme(553).
certain_enzyme(979).
certain_enzyme(254).
certain_enzyme(313).
certain_enzyme(937).
certain_enzyme(412).
certain_enzyme(526).
certain_enzyme(606).
certain_enzyme(562).
certain_enzyme(339).
certain_enzyme(847).
certain_enzyme(558).
certain_enzyme(519).
certain_enzyme(285).
certain_enzyme(301).
certain_enzyme(855).
certain_enzyme(777).
certain_enzyme(776).
certain_enzyme(25).
certain_enzyme(205).
certain_enzyme(607).
certain_enzyme(635).
certain_enzyme(880).
certain_enzyme(181).
certain_enzyme(173).
certain_enzyme(386).
certain_enzyme(753).
certain_enzyme(452).
certain_enzyme(942).
certain_enzyme(845).
certain_enzyme(768).
certain_enzyme(762).
certain_enzyme(757).
certain_enzyme(502).
certain_enzyme(437).
certain_enzyme(432).
certain_enzyme(383).
certain_enzyme(342).
certain_enzyme(321).
certain_enzyme(307).
certain_enzyme(293).
certain_enzyme(286).
certain_enzyme(240).
certain_enzyme(210).
certain_enzyme(973).
certain_enzyme(567).
certain_enzyme(289).
certain_enzyme(234).
certain_enzyme(233).
certain_enzyme(201).
certain_enzyme(575).
certain_enzyme(422).
certain_enzyme(542).
certain_enzyme(194).
certain_enzyme(950).
certain_enzyme(795).
certain_enzyme(325).
certain_enzyme(622).
certain_enzyme(974).
certain_enzyme(900).
certain_enzyme(814).
certain_enzyme(781).
certain_enzyme(598).
certain_enzyme(584).
certain_enzyme(453).
certain_enzyme(428).
certain_enzyme(324).
certain_enzyme(261).
certain_enzyme(136).
certain_enzyme(135).
certain_enzyme(134).
certain_enzyme(133).
certain_enzyme(132).
certain_enzyme(131).
certain_enzyme(130).
certain_enzyme(129).
certain_enzyme(128).
certain_enzyme(127).
certain_enzyme(126).
certain_enzyme(541).
certain_enzyme(540).
certain_enzyme(866).
certain_enzyme(918).
certain_enzyme(486).
certain_enzyme(693).
certain_enzyme(945).
certain_enzyme(467).
certain_enzyme(738).
certain_enzyme(655).
certain_enzyme(630).
certain_enzyme(628).
certain_enzyme(596).
certain_enzyme(528).
certain_enzyme(527).
certain_enzyme(266).
certain_enzyme(248).
certain_enzyme(593).
certain_enzyme(966).
certain_enzyme(327).
certain_enzyme(213).
certain_enzyme(597).
certain_enzyme(581).
certain_enzyme(291).
certain_enzyme(896).
certain_enzyme(740).
certain_enzyme(525).
certain_enzyme(364).
certain_enzyme(377).
certain_enzyme(125).
certain_enzyme(764).
certain_enzyme(608).
certain_enzyme(263).
certain_enzyme(26).
certain_enzyme(22).
certain_enzyme(414).
certain_enzyme(812).
certain_enzyme(468).
certain_enzyme(362).
certain_enzyme(746).
certain_enzyme(745).
certain_enzyme(250).
certain_enzyme(805).
certain_enzyme(152).
certain_enzyme(599).
certain_enzyme(971).
certain_enzyme(790).
certain_enzyme(711).
certain_enzyme(557).
certain_enzyme(524).
certain_enzyme(270).
certain_enzyme(206).
certain_enzyme(244).
certain_enzyme(820).
certain_enzyme(735).
certain_enzyme(765).
certain_enzyme(514).
certain_enzyme(231).
certain_enzyme(615).
certain_enzyme(144).
certain_enzyme(303).
certain_enzyme(183).
certain_enzyme(142).
certain_enzyme(140).
certain_enzyme(217).
certain_enzyme(564).
certain_enzyme(235).
certain_enzyme(258).
certain_enzyme(976).
certain_enzyme(895).
certain_enzyme(888).
certain_enzyme(717).
certain_enzyme(699).
certain_enzyme(676).
certain_enzyme(613).
certain_enzyme(376).
certain_enzyme(238).
certain_enzyme(408).
certain_enzyme(702).
certain_enzyme(574).
certain_enzyme(438).
certain_enzyme(344).
certain_enzyme(196).
certain_enzyme(212).
certain_enzyme(157).
certain_enzyme(732).
certain_enzyme(184).
certain_enzyme(394).
certain_enzyme(721).
certain_enzyme(713).
certain_enzyme(498).
certain_enzyme(375).
certain_enzyme(298).
certain_enzyme(192).
certain_enzyme(802).
certain_enzyme(681).
certain_enzyme(886).
certain_enzyme(398).
certain_enzyme(849).
certain_enzyme(189).
certain_enzyme(153).
certain_enzyme(701).
certain_enzyme(859).
certain_enzyme(823).
certain_enzyme(506).
certain_enzyme(665).
certain_enzyme(831).
certain_enzyme(366).
certain_enzyme(401).
certain_enzyme(846).
certain_enzyme(964).
certain_enzyme(423).
certain_enzyme(351).
certain_enzyme(962).
certain_enzyme(924).
certain_enzyme(808).
certain_enzyme(559).
certain_enzyme(520).
certain_enzyme(898).
certain_enzyme(956).
certain_enzyme(504).
certain_enzyme(743).
certain_enzyme(626).
certain_enzyme(461).
certain_enzyme(838).
certain_enzyme(679).
certain_enzyme(946).
certain_enzyme(836).
certain_enzyme(472).
certain_enzyme(442).
certain_enzyme(963).
certain_enzyme(634).
certain_enzyme(284).
certain_enzyme(352).
certain_enzyme(477).
certain_enzyme(595).
certain_enzyme(594).
certain_enzyme(274).
certain_enzyme(430).
certain_enzyme(752).
certain_enzyme(195).
certain_enzyme(760).
certain_enzyme(457).
certain_enzyme(602).
certain_enzyme(614).
certain_enzyme(220).
certain_enzyme(221).
certain_enzyme(337).
certain_enzyme(570).
certain_enzyme(884).
certain_enzyme(407).
certain_enzyme(249).
certain_enzyme(459).
certain_enzyme(935).
certain_enzyme(60).
certain_enzyme(862).
certain_enzyme(674).
certain_enzyme(287).
certain_enzyme(786).
certain_enzyme(669).
certain_enzyme(404).
certain_enzyme(970).
certain_enzyme(547).
certain_enzyme(933).
certain_enzyme(509).
certain_enzyme(523).
certain_enzyme(507).
certain_enzyme(535).
certain_enzyme(331).
certain_enzyme(934).
certain_enzyme(703).
certain_enzyme(977).
certain_enzyme(239).
certain_enzyme(537).
certain_enzyme(431).
certain_enzyme(827).
certain_enzyme(892).
certain_enzyme(870).
certain_enzyme(365).
certain_enzyme(969).
certain_enzyme(716).
certain_enzyme(445).
certain_enzyme(967).
certain_enzyme(278).
certain_enzyme(536).
certain_enzyme(684).
certain_enzyme(578).
certain_enzyme(938).
certain_enzyme(754).
certain_enzyme(816).
certain_enzyme(333).
certain_enzyme(911).
certain_enzyme(500).
certain_enzyme(725).
certain_enzyme(198).
certain_enzyme(908).
certain_enzyme(801).
certain_enzyme(569).
certain_enzyme(410).
certain_enzyme(889).
certain_enzyme(518).
certain_enzyme(968).
certain_enzyme(589).
certain_enzyme(185).
certain_enzyme(912).
certain_enzyme(780).
certain_enzyme(744).
certain_enzyme(686).
certain_enzyme(503).
certain_enzyme(470).
certain_enzyme(436).
certain_enzyme(396).
certain_enzyme(357).
certain_enzyme(343).
certain_enzyme(340).
certain_enzyme(338).
certain_enzyme(295).
certain_enzyme(230).
certain_enzyme(612).
certain_enzyme(858).
certain_enzyme(200).
certain_enzyme(484).
certain_enzyme(441).
certain_enzyme(188).
certain_enzyme(187).
certain_enzyme(851).
certain_enzyme(309).
certain_enzyme(310).
certain_enzyme(485).
certain_enzyme(311).
certain_enzyme(647).
certain_enzyme(208).
certain_enzyme(515).
certain_enzyme(232).
certain_enzyme(825).
certain_enzyme(863).
certain_enzyme(251).
certain_enzyme(312).
certain_enzyme(548).
certain_enzyme(800).
certain_enzyme(496).
certain_enzyme(649).
certain_enzyme(618).
certain_enzyme(471).
certain_enzyme(252).
certain_enzyme(954).
certain_enzyme(843).
certain_enzyme(680).
certain_enzyme(493).
certain_enzyme(609).
certain_enzyme(981).
certain_enzyme(957).
certain_enzyme(936).
certain_enzyme(930).
certain_enzyme(929).
certain_enzyme(916).
certain_enzyme(904).
certain_enzyme(897).
certain_enzyme(893).
certain_enzyme(887).
certain_enzyme(882).
certain_enzyme(879).
certain_enzyme(878).
certain_enzyme(871).
certain_enzyme(853).
certain_enzyme(850).
certain_enzyme(839).
certain_enzyme(833).
certain_enzyme(821).
certain_enzyme(804).
certain_enzyme(797).
certain_enzyme(778).
certain_enzyme(750).
certain_enzyme(737).
certain_enzyme(733).
certain_enzyme(722).
certain_enzyme(720).
certain_enzyme(718).
certain_enzyme(707).
certain_enzyme(705).
certain_enzyme(700).
certain_enzyme(695).
certain_enzyme(690).
certain_enzyme(658).
certain_enzyme(656).
certain_enzyme(646).
certain_enzyme(644).
certain_enzyme(629).
certain_enzyme(627).
certain_enzyme(619).
certain_enzyme(616).
certain_enzyme(587).
certain_enzyme(551).
certain_enzyme(550).
certain_enzyme(549).
certain_enzyme(532).
certain_enzyme(501).
certain_enzyme(497).
certain_enzyme(494).
certain_enzyme(479).
certain_enzyme(474).
certain_enzyme(460).
certain_enzyme(449).
certain_enzyme(443).
certain_enzyme(419).
certain_enzyme(418).
certain_enzyme(417).
certain_enzyme(416).
certain_enzyme(406).
certain_enzyme(405).
certain_enzyme(397).
certain_enzyme(393).
certain_enzyme(390).
certain_enzyme(389).
certain_enzyme(387).
certain_enzyme(372).
certain_enzyme(371).
certain_enzyme(370).
certain_enzyme(367).
certain_enzyme(326).
certain_enzyme(322).
certain_enzyme(281).
certain_enzyme(280).
certain_enzyme(279).
certain_enzyme(269).
certain_enzyme(265).
certain_enzyme(264).
certain_enzyme(226).
certain_enzyme(222).
certain_enzyme(209).
certain_enzyme(182).
certain_enzyme(176).
certain_enzyme(175).
certain_enzyme(174).
certain_enzyme(171).
certain_enzyme(170).
certain_enzyme(169).
certain_enzyme(168).
certain_enzyme(167).
certain_enzyme(166).
certain_enzyme(165).
certain_enzyme(164).
certain_enzyme(163).
certain_enzyme(156).
certain_enzyme(149).
certain_enzyme(143).
certain_enzyme(141).
certain_enzyme(123).
certain_enzyme(122).
certain_enzyme(121).
certain_enzyme(120).
certain_enzyme(119).
certain_enzyme(118).
certain_enzyme(117).
certain_enzyme(115).
certain_enzyme(114).
certain_enzyme(112).
certain_enzyme(111).
certain_enzyme(110).
certain_enzyme(109).
certain_enzyme(108).
certain_enzyme(107).
certain_enzyme(106).
certain_enzyme(105).
certain_enzyme(102).
certain_enzyme(101).
certain_enzyme(100).
certain_enzyme(99).
certain_enzyme(98).
certain_enzyme(97).
certain_enzyme(96).
certain_enzyme(95).
certain_enzyme(94).
certain_enzyme(92).
certain_enzyme(91).
certain_enzyme(90).
certain_enzyme(89).
certain_enzyme(88).
certain_enzyme(87).
certain_enzyme(86).
certain_enzyme(85).
certain_enzyme(84).
certain_enzyme(82).
certain_enzyme(81).
certain_enzyme(80).
certain_enzyme(79).
certain_enzyme(78).
certain_enzyme(77).
certain_enzyme(76).
certain_enzyme(75).
certain_enzyme(74).
certain_enzyme(73).
certain_enzyme(72).
certain_enzyme(71).
certain_enzyme(70).
certain_enzyme(69).
certain_enzyme(67).
certain_enzyme(66).
certain_enzyme(65).
certain_enzyme(64).
certain_enzyme(63).
certain_enzyme(62).
certain_enzyme(61).
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
certain_enzyme(34).
certain_enzyme(33).
certain_enzyme(32).
certain_enzyme(31).
certain_enzyme(30).
certain_enzyme(29).
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

metabolite("23DAACP").
metabolite("2HDACP").
metabolite("2N6H").
metabolite("2NPMB").
metabolite("2NPMMB").
metabolite("2NPMP").
metabolite("2NPPP").
metabolite("3OACP").
metabolite("A6RP").
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
metabolite("C00023").
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
metabolite("C00047").
metabolite("C00048").
metabolite("C00049").
metabolite("C00051").
metabolite("C00052").
metabolite("C00053").
metabolite("C00054").
metabolite("C00055").
metabolite("C00058").
metabolite("C00059").
metabolite("C00060").
metabolite("C00061").
metabolite("C00062").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
metabolite("C00066").
metabolite("C00067").
metabolite("C00068").
metabolite("C00069").
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
metabolite("C00086").
metabolite("C00089").
metabolite("C00091").
metabolite("C00093").
metabolite("C00094").
metabolite("C00095").
metabolite("C00096").
metabolite("C00097").
metabolite("C00098").
metabolite("C00099").
metabolite("C00101").
metabolite("C00103").
metabolite("C00104").
metabolite("C00105").
metabolite("C00106").
metabolite("C00107").
metabolite("C00108").
metabolite("C00109").
metabolite("C00110").
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
metabolite("C00124").
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
metabolite("C00147").
metabolite("C00148").
metabolite("C00152").
metabolite("C00153").
metabolite("C00154").
metabolite("C00155").
metabolite("C00156").
metabolite("C00157").
metabolite("C00158").
metabolite("C00162").
metabolite("C00164").
metabolite("C00165").
metabolite("C00166").
metabolite("C00169").
metabolite("C00170").
metabolite("C00173").
metabolite("C00178").
metabolite("C00182").
metabolite("C00183").
metabolite("C00184").
metabolite("C00186").
metabolite("C00187").
metabolite("C00188").
metabolite("C00189").
metabolite("C00197").
metabolite("C00199").
metabolite("C00201").
metabolite("C00206").
metabolite("C00208").
metabolite("C00212").
metabolite("C00214").
metabolite("C00216").
metabolite("C00221").
metabolite("C00224").
metabolite("C00229").
metabolite("C00232").
metabolite("C00234").
metabolite("C00235").
metabolite("C00236").
metabolite("C00238").
metabolite("C00239").
metabolite("C00242").
metabolite("C00248").
metabolite("C00249").
metabolite("C00250").
metabolite("C00251").
metabolite("C00253").
metabolite("C00254").
metabolite("C00255").
metabolite("C00256").
metabolite("C00262").
metabolite("C00263").
metabolite("C00264").
metabolite("C00266").
metabolite("C00267").
metabolite("C00268").
metabolite("C00269").
metabolite("C00272").
metabolite("C00275").
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
metabolite("C00307").
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
metabolite("C00333").
metabolite("C00334").
metabolite("C00337").
metabolite("C00341").
metabolite("C00342").
metabolite("C00343").
metabolite("C00344").
metabolite("C00345").
metabolite("C00346").
metabolite("C00347").
metabolite("C00350").
metabolite("C00352").
metabolite("C00354").
metabolite("C00356").
metabolite("C00360").
metabolite("C00361").
metabolite("C00362").
metabolite("C00363").
metabolite("C00364").
metabolite("C00365").
metabolite("C00369").
metabolite("C00378").
metabolite("C00380").
metabolite("C00381").
metabolite("C00383").
metabolite("C00385").
metabolite("C00387").
metabolite("C00390").
metabolite("C00399").
metabolite("C00407").
metabolite("C00409").
metabolite("C00410").
metabolite("C00412").
metabolite("C00415").
metabolite("C00416").
metabolite("C00418").
metabolite("C00419").
metabolite("C00422").
metabolite("C00424").
metabolite("C00430").
metabolite("C00437").
metabolite("C00438").
metabolite("C00440").
metabolite("C00441").
metabolite("C00442").
metabolite("C00445").
metabolite("C00446").
metabolite("C00448").
metabolite("C00449").
metabolite("C00455").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00461").
metabolite("C00463").
metabolite("C00469").
metabolite("C00470").
metabolite("C00475").
metabolite("C00490").
metabolite("C00492").
metabolite("C00493").
metabolite("C00496").
metabolite("C00510").
metabolite("C00517").
metabolite("C00522").
metabolite("C00526").
metabolite("C00527").
metabolite("C00531").
metabolite("C00534").
metabolite("C00535").
metabolite("C00542").
metabolite("C00544").
metabolite("C00546").
metabolite("C00555").
metabolite("C00559").
metabolite("C00562").
metabolite("C00568").
metabolite("C00570").
metabolite("C00575").
metabolite("C00579").
metabolite("C00585").
metabolite("C00586").
metabolite("C00588").
metabolite("C00603").
metabolite("C00612").
metabolite("C00620").
metabolite("C00624").
metabolite("C00627").
metabolite("C00631").
metabolite("C00632").
metabolite("C00640").
metabolite("C00641").
metabolite("C00644").
metabolite("C00647").
metabolite("C00652").
metabolite("C00655").
metabolite("C00661").
metabolite("C00665").
metabolite("C00668").
metabolite("C00669").
metabolite("C00670").
metabolite("C00673").
metabolite("C00677").
metabolite("C00685").
metabolite("C00704").
metabolite("C00705").
metabolite("C00711").
metabolite("C00734").
metabolite("C00735").
metabolite("C00750").
metabolite("C00751").
metabolite("C00787").
metabolite("C00794").
metabolite("C00836").
metabolite("C00857").
metabolite("C00860").
metabolite("C00864").
metabolite("C00865").
metabolite("C00870").
metabolite("C00881").
metabolite("C00882").
metabolite("C00886").
metabolite("C00890").
metabolite("C00900").
metabolite("C00909").
metabolite("C00921").
metabolite("C00936").
metabolite("C00941").
metabolite("C00942").
metabolite("C00943").
metabolite("C00944").
metabolite("C00954").
metabolite("C00956").
metabolite("C00965").
metabolite("C00966").
metabolite("C00968").
metabolite("C00979").
metabolite("C00986").
metabolite("C00996").
metabolite("C00999").
metabolite("C01005").
metabolite("C01010").
metabolite("C01031").
metabolite("C01034").
metabolite("C01037").
metabolite("C01051").
metabolite("C01054").
metabolite("C01061").
metabolite("C01063").
metabolite("C01077").
metabolite("C01079").
metabolite("C01081").
metabolite("C01083").
metabolite("C01092").
metabolite("C01094").
metabolite("C01097").
metabolite("C01100").
metabolite("C01102").
metabolite("C01103").
metabolite("C01107").
metabolite("C01118").
metabolite("C01120").
metabolite("C01134").
metabolite("C01136").
metabolite("C01137").
metabolite("C01143").
metabolite("C01157").
metabolite("C01159").
metabolite("C01165").
metabolite("C01167").
metabolite("C01168").
metabolite("C01169").
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
metabolite("C01235").
metabolite("C01236").
metabolite("C01241").
metabolite("C01242").
metabolite("C01246").
metabolite("C01250").
metabolite("C01251").
metabolite("C01260").
metabolite("C01261").
metabolite("C01267").
metabolite("C01268").
metabolite("C01269").
metabolite("C01271").
metabolite("C01279").
metabolite("C01288").
metabolite("C01300").
metabolite("C01302").
metabolite("C01304").
metabolite("C01328").
metabolite("C01330").
metabolite("C01335").
metabolite("C01346").
metabolite("C01352").
metabolite("C01371").
metabolite("C01419").
metabolite("C01429").
metabolite("C01530").
metabolite("C01635").
metabolite("C01638").
metabolite("C01639").
metabolite("C01640").
metabolite("C01642").
metabolite("C01643").
metabolite("C01645").
metabolite("C01646").
metabolite("C01647").
metabolite("C01648").
metabolite("C01649").
metabolite("C01650").
metabolite("C01651").
metabolite("C01652").
metabolite("C01653").
metabolite("C01684").
metabolite("C01694").
metabolite("C01722").
metabolite("C01724").
metabolite("C01762").
metabolite("C01801").
metabolite("C01811").
metabolite("C01909").
metabolite("C01931").
metabolite("C01953").
metabolite("C01967").
metabolite("C01997").
metabolite("C02047").
metabolite("C02051").
metabolite("C02073").
metabolite("C02095").
metabolite("C02100").
metabolite("C02112").
metabolite("C02163").
metabolite("C02165").
metabolite("C02188").
metabolite("C02191").
metabolite("C02218").
metabolite("C02220").
metabolite("C02222").
metabolite("C02225").
metabolite("C02229").
metabolite("C02282").
metabolite("C02291").
metabolite("C02391").
metabolite("C02407").
metabolite("C02412").
metabolite("C02430").
metabolite("C02449").
metabolite("C02472").
metabolite("C02504").
metabolite("C02505").
metabolite("C02530").
metabolite("C02550").
metabolite("C02553").
metabolite("C02554").
metabolite("C02567").
metabolite("C02631").
metabolite("C02637").
metabolite("C02667").
metabolite("C02693").
metabolite("C02700").
metabolite("C02702").
metabolite("C02714").
metabolite("C02737").
metabolite("C02839").
metabolite("C02843").
metabolite("C02863").
metabolite("C02934").
metabolite("C02938").
metabolite("C02972").
metabolite("C02984").
metabolite("C02988").
metabolite("C02992").
metabolite("C03023").
metabolite("C03024").
metabolite("C03028").
metabolite("C03082").
metabolite("C03090").
metabolite("C03120").
metabolite("C03125").
metabolite("C03161").
metabolite("C03175").
metabolite("C03205").
metabolite("C03226").
metabolite("C03232").
metabolite("C03294").
metabolite("C03360").
metabolite("C03373").
metabolite("C03384").
metabolite("C03402").
metabolite("C03406").
metabolite("C03451").
metabolite("C03475").
metabolite("C03479").
metabolite("C03492").
metabolite("C03496").
metabolite("C03506").
metabolite("C03511").
metabolite("C03512").
metabolite("C03518").
metabolite("C03523").
metabolite("C03635").
metabolite("C03722").
metabolite("C03723").
metabolite("C03734").
metabolite("C03785").
metabolite("C03794").
metabolite("C03824").
metabolite("C03836").
metabolite("C03838").
metabolite("C03849").
metabolite("C03862").
metabolite("C03880").
metabolite("C03883").
metabolite("C03892").
metabolite("C03895").
metabolite("C03912").
metabolite("C03939").
metabolite("C04076").
metabolite("C04088").
metabolite("C04133").
metabolite("C04144").
metabolite("C04145").
metabolite("C04158").
metabolite("C04225").
metabolite("C04232").
metabolite("C04236").
metabolite("C04246").
metabolite("C04248").
metabolite("C04252").
metabolite("C04253").
metabolite("C04256").
metabolite("C04272").
metabolite("C04281").
metabolite("C04294").
metabolite("C04295").
metabolite("C04302").
metabolite("C04308").
metabolite("C04327").
metabolite("C04332").
metabolite("C04352").
metabolite("C04376").
metabolite("C04409").
metabolite("C04425").
metabolite("C04431").
metabolite("C04432").
metabolite("C04441").
metabolite("C04454").
metabolite("C04489").
metabolite("C04500").
metabolite("C04506").
metabolite("C04517").
metabolite("C04549").
metabolite("C04556").
metabolite("C04570").
metabolite("C04618").
metabolite("C04619").
metabolite("C04620").
metabolite("C04633").
metabolite("C04640").
metabolite("C04666").
metabolite("C04677").
metabolite("C04681").
metabolite("C04682").
metabolite("C04688").
metabolite("C04691").
metabolite("C04692").
metabolite("C04706").
metabolite("C04727").
metabolite("C04728").
metabolite("C04734").
metabolite("C04735").
metabolite("C04736").
metabolite("C04748").
metabolite("C04751").
metabolite("C04752").
metabolite("C04763").
metabolite("C04801").
metabolite("C04807").
metabolite("C04823").
metabolite("C04827").
metabolite("C04874").
metabolite("C04895").
metabolite("C04896").
metabolite("C05102").
metabolite("C05108").
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
metabolite("C05397").
metabolite("C05399").
metabolite("C05400").
metabolite("C05401").
metabolite("C05402").
metabolite("C05437").
metabolite("C05440").
metabolite("C05485").
metabolite("C05489").
metabolite("C05512").
metabolite("C05533").
metabolite("C05535").
metabolite("C05560").
metabolite("C05662").
metabolite("C05688").
metabolite("C05699").
metabolite("C05700").
metabolite("C05701").
metabolite("C05714").
metabolite("C05715").
metabolite("C05729").
metabolite("C05744").
metabolite("C05745").
metabolite("C05746").
metabolite("C05747").
metabolite("C05748").
metabolite("C05749").
metabolite("C05750").
metabolite("C05751").
metabolite("C05752").
metabolite("C05753").
metabolite("C05754").
metabolite("C05755").
metabolite("C05756").
metabolite("C05757").
metabolite("C05758").
metabolite("C05759").
metabolite("C05760").
metabolite("C05761").
metabolite("C05762").
metabolite("C05763").
metabolite("C05764").
metabolite("C05778").
metabolite("C05824").
metabolite("C05863").
metabolite("C05864").
metabolite("C05873").
metabolite("C05874").
metabolite("C05921").
metabolite("C05925").
metabolite("C05980").
metabolite("C06006").
metabolite("C06010").
metabolite("C06015").
metabolite("C06054").
metabolite("C06055").
metabolite("C06056").
metabolite("C06156").
metabolite("C06157").
metabolite("C06237").
metabolite("C06253").
metabolite("C06254").
metabolite("C06316").
metabolite("C06329").
metabolite("C06369").
metabolite("C06424").
metabolite("C06604").
metabolite("C06606").
metabolite("C06814").
metabolite("C07086").
metabolite("C07090").
metabolite("C07091").
metabolite("C07281").
metabolite("C07282").
metabolite("C08817").
metabolite("C11355").
metabolite("C11455").
metabolite("C11482").
metabolite("C161ACP").
metabolite("C182ACP").
metabolite("C240COA").
metabolite("C260COA").
metabolite("CER2").
metabolite("CER3").
metabolite("CO2").
metabolite("DB4P").
metabolite("DGPP").
metabolite("DMZYMST").
metabolite("DTP").
metabolite("EPST").
metabolite("ERTEOL").
metabolite("ERTROL").
metabolite("G00143").
metabolite("G00144").
metabolite("GLTL").
metabolite("HBA").
metabolite("IGST").
metabolite("IIMZYMST").
metabolite("IIZYMST").
metabolite("IMZYMST").
metabolite("IPC").
metabolite("ISUCC").
metabolite("IZYMST").
metabolite("MACAC").
metabolite("MIP2C").
metabolite("MIPC").
metabolite("MMET").
metabolite("MZYMST").
metabolite("N4HBZ").
metabolite("NAG").
metabolite("NMN").
metabolite("OIVAL").
metabolite("PHSP").
metabolite("PRLP").
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
orf("Q0045").
orf("Q0250").
orf("Q0275").
orf("U100_").
orf("U102_").
orf("U103_").
orf("U104_").
orf("U105_").
orf("U106_").
orf("U107_").
orf("U108_").
orf("U109_").
orf("U10_").
orf("U110_").
orf("U111_").
orf("U114_").
orf("U115_").
orf("U117_").
orf("U119_").
orf("U11_").
orf("U120_").
orf("U121_").
orf("U122_").
orf("U127_").
orf("U128_").
orf("U130_").
orf("U131_").
orf("U132_").
orf("U133_").
orf("U134_").
orf("U135_").
orf("U136_").
orf("U137_").
orf("U139_").
orf("U13_").
orf("U140_").
orf("U142_").
orf("U143_").
orf("U144_").
orf("U145_").
orf("U146_").
orf("U147_").
orf("U14_").
orf("U150_").
orf("U151_").
orf("U152_").
orf("U153_").
orf("U154_").
orf("U155_").
orf("U159_").
orf("U15_").
orf("U160_").
orf("U161_").
orf("U162_").
orf("U165_").
orf("U166_").
orf("U168_").
orf("U171_").
orf("U172_").
orf("U173_").
orf("U174_").
orf("U175_").
orf("U177_").
orf("U178_").
orf("U179_").
orf("U17_").
orf("U180_").
orf("U181_").
orf("U182_").
orf("U183_").
orf("U184_").
orf("U185_").
orf("U187_").
orf("U188_").
orf("U189_").
orf("U18_").
orf("U190_").
orf("U191_").
orf("U192_").
orf("U194_").
orf("U195_").
orf("U196_").
orf("U197_").
orf("U198_").
orf("U199_").
orf("U19_").
orf("U1_").
orf("U200_").
orf("U201_").
orf("U203_").
orf("U204_").
orf("U206_").
orf("U207_").
orf("U208_").
orf("U209_").
orf("U20_").
orf("U213_").
orf("U219_").
orf("U21_").
orf("U220_").
orf("U221_").
orf("U222_").
orf("U223_").
orf("U224_").
orf("U227_").
orf("U228_").
orf("U22_").
orf("U23_").
orf("U24_").
orf("U25_").
orf("U26_").
orf("U27_").
orf("U28_").
orf("U29_").
orf("U30_").
orf("U31_").
orf("U32_").
orf("U33_").
orf("U34_").
orf("U35_").
orf("U36_").
orf("U37_").
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
orf("U51_").
orf("U52_").
orf("U53_").
orf("U54_").
orf("U55_").
orf("U58_").
orf("U5_").
orf("U60_").
orf("U61_").
orf("U62_").
orf("U63_").
orf("U64_").
orf("U65_").
orf("U66_").
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
orf("U78_").
orf("U79_").
orf("U7_").
orf("U80_").
orf("U81_").
orf("U82_").
orf("U83_").
orf("U84_").
orf("U85_").
orf("U87_").
orf("U88_").
orf("U89_").
orf("U8_").
orf("U90_").
orf("U91_").
orf("U93_").
orf("U94_").
orf("U96_").
orf("U98_").
orf("U99_").
orf("U9_").
orf("YAL012W").
orf("YAL026C").
orf("YAL038W").
orf("YAL054C").
orf("YAL062W").
orf("YAR015W").
orf("YAR071W").
orf("YAR073W").
orf("YAR075W").
orf("YBL013W").
orf("YBL015W").
orf("YBL033C").
orf("YBL035C").
orf("YBL039C").
orf("YBL042C").
orf("YBL056W").
orf("YBL068W").
orf("YBL099W").
orf("YBR001C").
orf("YBR002C").
orf("YBR003W").
orf("YBR006W").
orf("YBR011C").
orf("YBR018C").
orf("YBR019C").
orf("YBR021W").
orf("YBR023C").
orf("YBR029C").
orf("YBR035C").
orf("YBR036C").
orf("YBR038W").
orf("YBR068C").
orf("YBR069C").
orf("YBR082C").
orf("YBR084W").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR115C").
orf("YBR117C").
orf("YBR118W").
orf("YBR121C").
orf("YBR125C").
orf("YBR145W").
orf("YBR149W").
orf("YBR153W").
orf("YBR154C").
orf("YBR166C").
orf("YBR176W").
orf("YBR184W").
orf("YBR196C").
orf("YBR208C").
orf("YBR218C").
orf("YBR221C").
orf("YBR243C").
orf("YBR244W").
orf("YBR248C").
orf("YBR249C").
orf("YBR252W").
orf("YBR256C").
orf("YBR265W").
orf("YBR276C").
orf("YBR278W").
orf("YBR284W").
orf("YBR291C").
orf("YBR298C").
orf("YBR299W").
orf("YCL009C").
orf("YCL018W").
orf("YCL025C").
orf("YCL030C").
orf("YCL040W").
orf("YCL050C").
orf("YCL064C").
orf("YCR005C").
orf("YCR012W").
orf("YCR014C").
orf("YCR024C").
orf("YCR024C-A").
orf("YCR028C").
orf("YCR032W").
orf("YCR036W").
orf("YCR048W").
orf("YCR053W").
orf("YCR073W-A").
orf("YDL006W").
orf("YDL021W").
orf("YDL022W").
orf("YDL024C").
orf("YDL033C").
orf("YDL037C").
orf("YDL045C").
orf("YDL047W").
orf("YDL052C").
orf("YDL064W").
orf("YDL067C").
orf("YDL078C").
orf("YDL080C").
orf("YDL085W").
orf("YDL086W").
orf("YDL090C").
orf("YDL100C").
orf("YDL102W").
orf("YDL103C").
orf("YDL131W").
orf("YDL134C").
orf("YDL140C").
orf("YDL141W").
orf("YDL142C").
orf("YDL150W").
orf("YDL168W").
orf("YDL171C").
orf("YDL174C").
orf("YDL182W").
orf("YDL188C").
orf("YDL210W").
orf("YDL215C").
orf("YDL230W").
orf("YDL236W").
orf("YDL245C").
orf("YDR001C").
orf("YDR007W").
orf("YDR009W").
orf("YDR019C").
orf("YDR023W").
orf("YDR035W").
orf("YDR037W").
orf("YDR044W").
orf("YDR045C").
orf("YDR046C").
orf("YDR050C").
orf("YDR054C").
orf("YDR058C").
orf("YDR059C").
orf("YDR072C").
orf("YDR075W").
orf("YDR092W").
orf("YDR093W").
orf("YDR111C").
orf("YDR120C").
orf("YDR121W").
orf("YDR127W").
orf("YDR147W").
orf("YDR148C").
orf("YDR156W").
orf("YDR158W").
orf("YDR177W").
orf("YDR178W").
orf("YDR226W").
orf("YDR232W").
orf("YDR236C").
orf("YDR242W").
orf("YDR256C").
orf("YDR261C").
orf("YDR268W").
orf("YDR294C").
orf("YDR297W").
orf("YDR300C").
orf("YDR307W").
orf("YDR342C").
orf("YDR343C").
orf("YDR345C").
orf("YDR353W").
orf("YDR354W").
orf("YDR380W").
orf("YDR385W").
orf("YDR400W").
orf("YDR402C").
orf("YDR404C").
orf("YDR408C").
orf("YDR410C").
orf("YDR419W").
orf("YDR436W").
orf("YDR441C").
orf("YDR454C").
orf("YDR481C").
orf("YDR497C").
orf("YDR502C").
orf("YDR503C").
orf("YDR508C").
orf("YDR530C").
orf("YDR531W").
orf("YDR536W").
orf("YDR538W").
orf("YEL011W").
orf("YEL012W").
orf("YEL017C-A").
orf("YEL021W").
orf("YEL024W").
orf("YEL041W").
orf("YEL046C").
orf("YEL047C").
orf("YEL055C").
orf("YEL058W").
orf("YEL063C").
orf("YEL069C").
orf("YER003C").
orf("YER005W").
orf("YER014W").
orf("YER015W").
orf("YER023W").
orf("YER026C").
orf("YER042W").
orf("YER043C").
orf("YER052C").
orf("YER053C").
orf("YER056C").
orf("YER060W").
orf("YER060W-A").
orf("YER061C").
orf("YER062C").
orf("YER065C").
orf("YER069W").
orf("YER070W").
orf("YER073W").
orf("YER075C").
orf("YER081W").
orf("YER086W").
orf("YER087W").
orf("YER089C").
orf("YER090W").
orf("YER091C").
orf("YER099C").
orf("YER100W").
orf("YER133W").
orf("YER166W").
orf("YER170W").
orf("YER178W").
orf("YER183C").
orf("YFL001W").
orf("YFL011W").
orf("YFL018C").
orf("YFL022C").
orf("YFL030W").
orf("YFL036W").
orf("YFL053W").
orf("YFL055W").
orf("YFR014C").
orf("YFR015C").
orf("YFR025C").
orf("YFR028C").
orf("YFR030W").
orf("YFR047C").
orf("YFR053C").
orf("YFR055W").
orf("YGL001C").
orf("YGL008C").
orf("YGL009C").
orf("YGL012W").
orf("YGL017W").
orf("YGL019W").
orf("YGL026C").
orf("YGL027C").
orf("YGL037C").
orf("YGL055W").
orf("YGL058W").
orf("YGL062W").
orf("YGL063W").
orf("YGL070C").
orf("YGL077C").
orf("YGL125W").
orf("YGL130W").
orf("YGL148W").
orf("YGL154C").
orf("YGL186C").
orf("YGL187C").
orf("YGL191W").
orf("YGL202W").
orf("YGL205W").
orf("YGL234W").
orf("YGL248W").
orf("YGL253W").
orf("YGL256W").
orf("YGR007W").
orf("YGR012W").
orf("YGR019W").
orf("YGR032W").
orf("YGR037C").
orf("YGR055W").
orf("YGR060W").
orf("YGR061C").
orf("YGR065C").
orf("YGR087C").
orf("YGR088W").
orf("YGR094W").
orf("YGR121C").
orf("YGR123C").
orf("YGR133W").
orf("YGR155W").
orf("YGR157W").
orf("YGR170W").
orf("YGR171C").
orf("YGR180C").
orf("YGR185C").
orf("YGR192C").
orf("YGR194C").
orf("YGR202C").
orf("YGR204W").
orf("YGR234W").
orf("YGR240C").
orf("YGR244C").
orf("YGR248W").
orf("YGR254W").
orf("YGR255C").
orf("YGR256W").
orf("YGR264C").
orf("YGR267C").
orf("YGR282C").
orf("YGR286C").
orf("YGR287C").
orf("YGR292W").
orf("YHL011C").
orf("YHL012W").
orf("YHL032C").
orf("YHL036W").
orf("YHR007C").
orf("YHR008C").
orf("YHR011W").
orf("YHR019C").
orf("YHR020W").
orf("YHR025W").
orf("YHR042W").
orf("YHR043C").
orf("YHR044C").
orf("YHR046C").
orf("YHR051W").
orf("YHR063C").
orf("YHR068W").
orf("YHR072W").
orf("YHR074W").
orf("YHR092C").
orf("YHR094C").
orf("YHR096C").
orf("YHR102W").
orf("YHR123W").
orf("YHR128W").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR144C").
orf("YHR163W").
orf("YHR174W").
orf("YHR179W").
orf("YHR183W").
orf("YHR189W").
orf("YHR190W").
orf("YHR201C").
orf("YHR205W").
orf("YHR208W").
orf("YHR215W").
orf("YHR216W").
orf("YIL009W").
orf("YIL020C").
orf("YIL021W").
orf("YIL035C").
orf("YIL043C").
orf("YIL048W").
orf("YIL053W").
orf("YIL066C").
orf("YIL074C").
orf("YIL078W").
orf("YIL085C").
orf("YIL094C").
orf("YIL099W").
orf("YIL107C").
orf("YIL111W").
orf("YIL113W").
orf("YIL116W").
orf("YIL125W").
orf("YIL134W").
orf("YIL139C").
orf("YIL145C").
orf("YIL155C").
orf("YIL160C").
orf("YIL162W").
orf("YIL167W").
orf("YIL168W").
orf("YIL172C").
orf("YIR019C").
orf("YIR026C").
orf("YIR032C").
orf("YIR034C").
orf("YIR037W").
orf("YJL005W").
orf("YJL026W").
orf("YJL045W").
orf("YJL052W").
orf("YJL068C").
orf("YJL070C").
orf("YJL087C").
orf("YJL088W").
orf("YJL090C").
orf("YJL101C").
orf("YJL102W").
orf("YJL121C").
orf("YJL126W").
orf("YJL129C").
orf("YJL130C").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL155C").
orf("YJL164C").
orf("YJL167W").
orf("YJL200C").
orf("YJL214W").
orf("YJL216C").
orf("YJL219W").
orf("YJL221C").
orf("YJR006W").
orf("YJR009C").
orf("YJR010W").
orf("YJR016C").
orf("YJR019C").
orf("YJR025C").
orf("YJR043C").
orf("YJR049C").
orf("YJR051W").
orf("YJR057W").
orf("YJR063W").
orf("YJR066W").
orf("YJR073C").
orf("YJR077C").
orf("YJR078W").
orf("YJR095W").
orf("YJR103W").
orf("YJR104C").
orf("YJR109C").
orf("YJR130C").
orf("YJR133W").
orf("YJR137C").
orf("YJR139C").
orf("YJR148W").
orf("YJR153W").
orf("YJR158W").
orf("YKL001C").
orf("YKL004W").
orf("YKL024C").
orf("YKL026C").
orf("YKL029C").
orf("YKL035W").
orf("YKL055C").
orf("YKL060C").
orf("YKL067W").
orf("YKL085W").
orf("YKL106W").
orf("YKL127W").
orf("YKL141W").
orf("YKL144C").
orf("YKL148C").
orf("YKL150W").
orf("YKL152C").
orf("YKL166C").
orf("YKL173W").
orf("YKL181W").
orf("YKL182W").
orf("YKL184W").
orf("YKL192C").
orf("YKL194C").
orf("YKL203C").
orf("YKL210W").
orf("YKL211C").
orf("YKL216W").
orf("YKL217W").
orf("YKR009C").
orf("YKR031C").
orf("YKR039W").
orf("YKR053C").
orf("YKR066C").
orf("YKR069W").
orf("YKR080W").
orf("YKR084C").
orf("YKR093W").
orf("YKR097W").
orf("YLL001W").
orf("YLL018C").
orf("YLL041C").
orf("YLL043W").
orf("YLL051C").
orf("YLL061W").
orf("YLL062C").
orf("YLR027C").
orf("YLR028C").
orf("YLR038C").
orf("YLR044C").
orf("YLR056W").
orf("YLR058C").
orf("YLR060W").
orf("YLR069C").
orf("YLR081W").
orf("YLR089C").
orf("YLR100C").
orf("YLR134W").
orf("YLR138W").
orf("YLR142W").
orf("YLR146C").
orf("YLR153C").
orf("YLR164W").
orf("YLR172C").
orf("YLR174W").
orf("YLR180W").
orf("YLR209C").
orf("YLR231C").
orf("YLR237W").
orf("YLR240W").
orf("YLR245C").
orf("YLR258W").
orf("YLR260W").
orf("YLR286C").
orf("YLR299W").
orf("YLR300W").
orf("YLR303W").
orf("YLR304C").
orf("YLR306W").
orf("YLR307W").
orf("YLR308W").
orf("YLR328W").
orf("YLR342W").
orf("YLR348C").
orf("YLR355C").
orf("YLR359W").
orf("YLR377C").
orf("YLR382C").
orf("YLR395C").
orf("YLR432W").
orf("YLR433C").
orf("YLR438W").
orf("YLR450W").
orf("YML004C").
orf("YML008C").
orf("YML016C").
orf("YML022W").
orf("YML035C").
orf("YML054C").
orf("YML056C").
orf("YML057W").
orf("YML070W").
orf("YML075C").
orf("YML082W").
orf("YML086C").
orf("YML120C").
orf("YML126C").
orf("YMR006C").
orf("YMR008C").
orf("YMR011W").
orf("YMR013C").
orf("YMR022W").
orf("YMR036C").
orf("YMR062C").
orf("YMR083W").
orf("YMR101C").
orf("YMR105C").
orf("YMR108W").
orf("YMR118C").
orf("YMR120C").
orf("YMR145C").
orf("YMR169C").
orf("YMR170C").
orf("YMR180C").
orf("YMR189W").
orf("YMR202W").
orf("YMR205C").
orf("YMR208W").
orf("YMR217W").
orf("YMR246W").
orf("YMR250W").
orf("YMR256C").
orf("YMR272C").
orf("YMR281W").
orf("YMR303C").
orf("YMR306W").
orf("YMR323W").
orf("YNL009W").
orf("YNL029C").
orf("YNL037C").
orf("YNL045W").
orf("YNL052W").
orf("YNL053W").
orf("YNL071W").
orf("YNL073W").
orf("YNL102W").
orf("YNL104C").
orf("YNL113W").
orf("YNL141W").
orf("YNL142W").
orf("YNL151C").
orf("YNL169C").
orf("YNL192W").
orf("YNL220W").
orf("YNL241C").
orf("YNL247W").
orf("YNL248C").
orf("YNL256W").
orf("YNL262W").
orf("YNL270C").
orf("YNL280C").
orf("YNL292W").
orf("YNL299W").
orf("YNL316C").
orf("YNL318C").
orf("YNR003C").
orf("YNR008W").
orf("YNR012W").
orf("YNR016C").
orf("YNR019W").
orf("YNR032W").
orf("YNR033W").
orf("YNR034W").
orf("YNR041C").
orf("YNR043W").
orf("YNR056C").
orf("YNR057C").
orf("YNR058W").
orf("YNR072W").
orf("YOL005C").
orf("YOL011W").
orf("YOL016C").
orf("YOL020W").
orf("YOL049W").
orf("YOL052C").
orf("YOL055C").
orf("YOL056W").
orf("YOL058W").
orf("YOL059W").
orf("YOL061W").
orf("YOL064C").
orf("YOL086C").
orf("YOL096C").
orf("YOL097C").
orf("YOL103W").
orf("YOL115W").
orf("YOL126C").
orf("YOL136C").
orf("YOL140W").
orf("YOL143C").
orf("YOL152W").
orf("YOL156W").
orf("YOR011W").
orf("YOR040W").
orf("YOR061W").
orf("YOR071C").
orf("YOR074C").
orf("YOR095C").
orf("YOR116C").
orf("YOR128C").
orf("YOR130C").
orf("YOR133W").
orf("YOR142W").
orf("YOR143C").
orf("YOR151C").
orf("YOR168W").
orf("YOR171C").
orf("YOR184W").
orf("YOR187W").
orf("YOR190W").
orf("YOR192C").
orf("YOR202W").
orf("YOR207C").
orf("YOR208W").
orf("YOR209C").
orf("YOR210W").
orf("YOR221C").
orf("YOR222W").
orf("YOR224C").
orf("YOR236W").
orf("YOR274W").
orf("YOR317W").
orf("YOR323C").
orf("YOR330C").
orf("YOR335C").
orf("YOR339C").
orf("YOR340C").
orf("YOR341W").
orf("YOR347C").
orf("YOR348C").
orf("YOR356W").
orf("YOR360C").
orf("YOR374W").
orf("YOR375C").
orf("YOR381W").
orf("YOR384W").
orf("YOR388C").
orf("YOR393W").
orf("YPL001W").
orf("YPL017C").
orf("YPL023C").
orf("YPL028W").
orf("YPL036W").
orf("YPL057C").
orf("YPL061W").
orf("YPL091W").
orf("YPL097W").
orf("YPL104W").
orf("YPL117C").
orf("YPL134C").
orf("YPL148C").
orf("YPL160W").
orf("YPL167C").
orf("YPL171C").
orf("YPL172C").
orf("YPL179W").
orf("YPL188W").
orf("YPL203W").
orf("YPL206C").
orf("YPL212C").
orf("YPL214C").
orf("YPL227C").
orf("YPL228W").
orf("YPL231W").
orf("YPL258C").
orf("YPL262W").
orf("YPL265W").
orf("YPL266W").
orf("YPL273W").
orf("YPL275W").
orf("YPL276W").
orf("YPL281C").
orf("YPR002W").
orf("YPR006C").
orf("YPR010C").
orf("YPR026W").
orf("YPR033C").
orf("YPR035W").
orf("YPR047W").
orf("YPR060C").
orf("YPR062W").
orf("YPR069C").
orf("YPR073C").
orf("YPR074C").
orf("YPR080W").
orf("YPR081C").
orf("YPR110C").
orf("YPR113W").
orf("YPR121W").
orf("YPR138C").
orf("YPR160W").
orf("YPR167C").
orf("YPR175W").
orf("YPR176C").
orf("YPR183W").
orf("YPR187W").
orf("YPR190C").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

inhibitor(25,"C00082",cytosol).

