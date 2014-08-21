in_compartment(Experiment,Metabolite,Compartment,Day) :-
  start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
  additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,M1,Compartment,Day) :-
  additional_nutrient(Experiment,M2,Compartment),
  contaminated(M2,M1).

in_compartment(Experiment,"C00255",cytosol,Day) :-
  not exclude(10),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00255",medium,Day),
  catalyst(10,Complex),
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

in_compartment(Experiment,"C00750",cytosol,Day) :-
  not exclude(70),
  Day >= 1,
  in_compartment(Experiment,"C00750",medium,Day),
  catalyst(70,Complex),
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

in_compartment(Experiment,"C00499",cytosol,Day) :-
  not exclude(170),
  Day >= 1,
  in_compartment(Experiment,"C00499",medium,Day),
  catalyst(170,Complex),
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

in_compartment(Experiment,"C00266",cytosol,Day) :-
  not exclude(211),
  Day >= 1,
  in_compartment(Experiment,"C00266",medium,Day),
  catalyst(211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00266",medium,Day) :-
  not exclude(212),
  Day >= 1,
  in_compartment(Experiment,"C00266",cytosol,Day),
  catalyst(212,Complex),
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

in_compartment(Experiment,"C00086",cytosol,Day) :-
  not exclude(381),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00086",medium,Day),
  catalyst(381,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(382),
  Day >= 1,
  in_compartment(Experiment,"C00086",cytosol,Day),
  catalyst(382,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00086",medium,Day) :-
  not exclude(382),
  Day >= 1,
  in_compartment(Experiment,"C00086",cytosol,Day),
  catalyst(382,Complex),
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

in_compartment(Experiment,"C00526",cytosol,Day) :-
  not exclude(460),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00526",medium,Day),
  catalyst(460,Complex),
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

in_compartment(Experiment,"C00475",cytosol,Day) :-
  not exclude(530),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00475",medium,Day),
  catalyst(530,Complex),
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

in_compartment(Experiment,"C00106",cytosol,Day) :-
  not exclude(620),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00106",medium,Day),
  catalyst(620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00012",cytosol,Day) :-
  not exclude(630),
  Day >= 1,
  in_compartment(Experiment,"C00012",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(630,Complex),
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

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(740),
  Day >= 1,
  in_compartment(Experiment,"C00019",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(740,Complex),
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

in_compartment(Experiment,"C00047",cytosol,Day) :-
  not exclude(761),
  Day >= 1,
  in_compartment(Experiment,"C00047",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(761,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00047",medium,Day) :-
  not exclude(762),
  Day >= 1,
  in_compartment(Experiment,"C00047",cytosol,Day),
  catalyst(762,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(762),
  Day >= 1,
  in_compartment(Experiment,"C00047",cytosol,Day),
  catalyst(762,Complex),
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

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(941),
  Day >= 1,
  in_compartment(Experiment,"C00041",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(941,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",medium,Day) :-
  not exclude(942),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  catalyst(942,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(942),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  catalyst(942,Complex),
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

in_compartment(Experiment,"C00121",cytosol,Day) :-
  not exclude(970),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00121",medium,Day),
  catalyst(970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00392",cytosol,Day) :-
  not exclude(1010),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00392",medium,Day),
  catalyst(1010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",cytosol,Day) :-
  not exclude(1021),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00256",medium,Day),
  catalyst(1021,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(1022),
  Day >= 1,
  in_compartment(Experiment,"C00256",cytosol,Day),
  catalyst(1022,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",medium,Day) :-
  not exclude(1022),
  Day >= 1,
  in_compartment(Experiment,"C00256",cytosol,Day),
  catalyst(1022,Complex),
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

in_compartment(Experiment,"C00216",cytosol,Day) :-
  not exclude(1081),
  Day >= 1,
  in_compartment(Experiment,"C00216",medium,Day),
  catalyst(1081,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00216",medium,Day) :-
  not exclude(1082),
  Day >= 1,
  in_compartment(Experiment,"C00216",cytosol,Day),
  catalyst(1082,Complex),
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

in_compartment(Experiment,"C00019",mitochondrion,Day) :-
  not exclude(1271),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  catalyst(1271,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00019",cytosol,Day) :-
  not exclude(1272),
  Day >= 1,
  in_compartment(Experiment,"C00019",mitochondrion,Day),
  catalyst(1272,Complex),
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

in_compartment(Experiment,"C00418",mitochondrion,Day) :-
  not exclude(1351),
  Day >= 1,
  in_compartment(Experiment,"C00418",cytosol,Day),
  catalyst(1351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00418",cytosol,Day) :-
  not exclude(1352),
  Day >= 1,
  in_compartment(Experiment,"C00418",mitochondrion,Day),
  catalyst(1352,Complex),
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

in_compartment(Experiment,"C00322",cytosol,Day) :-
  not exclude(1600),
  Day >= 1,
  in_compartment(Experiment,"C00322",mitochondrion,Day),
  catalyst(1600,Complex),
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

in_compartment(Experiment,"C00014",mitochondrion,Day) :-
  not exclude(1771),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  catalyst(1771,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(1772),
  Day >= 1,
  in_compartment(Experiment,"C00014",mitochondrion,Day),
  catalyst(1772,Complex),
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

in_compartment(Experiment,"2NPMMB",mitochondrion,Day) :-
  not exclude(1830),
  Day >= 1,
  in_compartment(Experiment,"2NPMB",mitochondrion,Day),
  in_compartment(Experiment,"C00019",mitochondrion,Day),
  catalyst(1830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00021",mitochondrion,Day) :-
  not exclude(1830),
  Day >= 1,
  in_compartment(Experiment,"2NPMB",mitochondrion,Day),
  in_compartment(Experiment,"C00019",mitochondrion,Day),
  catalyst(1830,Complex),
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

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(1910),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(1910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",mitochondrion,Day) :-
  not exclude(1910),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(1910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02987",mitochondrion,Day) :-
  not exclude(1910),
  Day >= 1,
  in_compartment(Experiment,"C00002",mitochondrion,Day),
  in_compartment(Experiment,"C00025",mitochondrion,Day),
  catalyst(1910,Complex),
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

in_compartment(Experiment,"C00032",mitochondrion,Day) :-
  not exclude(1930),
  Day >= 1,
  in_compartment(Experiment,"C02191",mitochondrion,Day),
  catalyst(1930,Complex),
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

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(1960),
  Day >= 1,
  in_compartment(Experiment,"C01051",cytosol,Day),
  catalyst(1960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02667",cytosol,Day) :-
  not exclude(1960),
  Day >= 1,
  in_compartment(Experiment,"C01051",cytosol,Day),
  catalyst(1960,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01051",cytosol,Day) :-
  not exclude(1970),
  Day >= 1,
  in_compartment(Experiment,"C01024",cytosol,Day),
  catalyst(1970,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",mitochondrion,Day) :-
  not exclude(2020),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  in_compartment(Experiment,"C00253",mitochondrion,Day),
  catalyst(2020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",mitochondrion,Day) :-
  not exclude(2020),
  Day >= 1,
  in_compartment(Experiment,"C00119",mitochondrion,Day),
  in_compartment(Experiment,"C00253",mitochondrion,Day),
  catalyst(2020,Complex),
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
  not exclude(2310),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C03492",cytosol,Day),
  catalyst(2310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(2310),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C03492",cytosol,Day),
  catalyst(2310,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04352",cytosol,Day) :-
  not exclude(2310),
  Day >= 1,
  in_compartment(Experiment,"C00063",cytosol,Day),
  in_compartment(Experiment,"C00097",cytosol,Day),
  in_compartment(Experiment,"C03492",cytosol,Day),
  catalyst(2310,Complex),
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
  not exclude(2461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(2461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03541",cytosol,Day) :-
  not exclude(2461),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00101",cytosol,Day),
  catalyst(2461,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(2462),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03541",cytosol,Day),
  catalyst(2462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(2462),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03541",cytosol,Day),
  catalyst(2462,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00101",cytosol,Day) :-
  not exclude(2462),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C03541",cytosol,Day),
  catalyst(2462,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2530),
  Day >= 1,
  in_compartment(Experiment,"C00568",cytosol,Day),
  in_compartment(Experiment,"C04807",cytosol,Day),
  catalyst(2530,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00921",cytosol,Day) :-
  not exclude(2530),
  Day >= 1,
  in_compartment(Experiment,"C00568",cytosol,Day),
  in_compartment(Experiment,"C04807",cytosol,Day),
  catalyst(2530,Complex),
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
  not exclude(2651),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01063",cytosol,Day),
  catalyst(2651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2651),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01063",cytosol,Day),
  catalyst(2651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01092",cytosol,Day) :-
  not exclude(2651),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C01063",cytosol,Day),
  catalyst(2651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(2652),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(2652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01063",cytosol,Day) :-
  not exclude(2652),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C01092",cytosol,Day),
  catalyst(2652,Complex),
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

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(2700),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00647",cytosol,Day),
  catalyst(2700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00018",cytosol,Day) :-
  not exclude(2700),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00647",cytosol,Day),
  catalyst(2700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00027",cytosol,Day) :-
  not exclude(2700),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00647",cytosol,Day),
  catalyst(2700,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(2850),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C01268",cytosol,Day),
  catalyst(2850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04454",cytosol,Day) :-
  not exclude(2850),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C01268",cytosol,Day),
  catalyst(2850,Complex),
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

in_compartment(Experiment,"DTP",cytosol,Day) :-
  not exclude(2930),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00118",cytosol,Day),
  catalyst(2930,Complex),
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

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(3170),
  Day >= 1,
  in_compartment(Experiment,"C00012",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(3170,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03011",cytosol,Day) :-
  not exclude(3170),
  Day >= 1,
  in_compartment(Experiment,"C00012",cytosol,Day),
  in_compartment(Experiment,"C00024",cytosol,Day),
  catalyst(3170,Complex),
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

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3430),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00544",cytosol,Day) :-
  not exclude(3430),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3430,Complex),
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

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3490),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3490,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02794",cytosol,Day) :-
  not exclude(3490),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3490,Complex),
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
  not exclude(3640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3640),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3640,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(3640),
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

in_compartment(Experiment,"C00021",cytosol,Day) :-
  not exclude(3770),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00135",cytosol,Day),
  catalyst(3770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01152",cytosol,Day) :-
  not exclude(3770),
  Day >= 1,
  in_compartment(Experiment,"C00019",cytosol,Day),
  in_compartment(Experiment,"C00135",cytosol,Day),
  catalyst(3770,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(3800),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00860",cytosol,Day),
  catalyst(3800,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00135",cytosol,Day) :-
  not exclude(3800),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00860",cytosol,Day),
  catalyst(3800,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3870),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02739",cytosol,Day) :-
  not exclude(3870),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3870,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3890),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00062",cytosol,Day),
  in_compartment(Experiment,"C01636",cytosol,Day),
  catalyst(3890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(3890),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00062",cytosol,Day),
  in_compartment(Experiment,"C01636",cytosol,Day),
  catalyst(3890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02163",cytosol,Day) :-
  not exclude(3890),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00062",cytosol,Day),
  in_compartment(Experiment,"C01636",cytosol,Day),
  catalyst(3890,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00077",cytosol,Day) :-
  not exclude(3900),
  Day >= 1,
  in_compartment(Experiment,"C00062",cytosol,Day),
  catalyst(3900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00086",cytosol,Day) :-
  not exclude(3900),
  Day >= 1,
  in_compartment(Experiment,"C00062",cytosol,Day),
  catalyst(3900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(3910),
  Day >= 1,
  in_compartment(Experiment,"C03078",cytosol,Day),
  catalyst(3910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01035",cytosol,Day) :-
  not exclude(3910),
  Day >= 1,
  in_compartment(Experiment,"C03078",cytosol,Day),
  catalyst(3910,Complex),
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

in_compartment(Experiment,"C04002",mitochondrion,Day) :-
  not exclude(4161),
  Day >= 1,
  in_compartment(Experiment,"C01251",mitochondrion,Day),
  catalyst(4161,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01251",mitochondrion,Day) :-
  not exclude(4162),
  Day >= 1,
  in_compartment(Experiment,"C04002",mitochondrion,Day),
  catalyst(4162,Complex),
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

in_compartment(Experiment,"C00010",cytosol,Day) :-
  not exclude(4451),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00263",cytosol,Day),
  catalyst(4451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01077",cytosol,Day) :-
  not exclude(4451),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00263",cytosol,Day),
  catalyst(4451,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(4452),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4452,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00263",cytosol,Day) :-
  not exclude(4452),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01077",cytosol,Day),
  catalyst(4452,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(4690),
  Day >= 1,
  in_compartment(Experiment,"C01005",cytosol,Day),
  catalyst(4690,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(4690),
  Day >= 1,
  in_compartment(Experiment,"C01005",cytosol,Day),
  catalyst(4690,Complex),
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

in_compartment(Experiment,"C00005",mitochondrion,Day) :-
  not exclude(4950),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C01165",mitochondrion,Day),
  catalyst(4950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",mitochondrion,Day) :-
  not exclude(4950),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C01165",mitochondrion,Day),
  catalyst(4950,Complex),
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

in_compartment(Experiment,"C00357",cytosol,Day) :-
  not exclude(4981),
  Day >= 1,
  in_compartment(Experiment,"C04256",cytosol,Day),
  catalyst(4981,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04256",cytosol,Day) :-
  not exclude(4982),
  Day >= 1,
  in_compartment(Experiment,"C00357",cytosol,Day),
  catalyst(4982,Complex),
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

in_compartment(Experiment,"C00343",cytosol,Day) :-
  not exclude(5070),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00460",cytosol,Day) :-
  not exclude(5070),
  Day >= 1,
  in_compartment(Experiment,"C00075",cytosol,Day),
  in_compartment(Experiment,"C00342",cytosol,Day),
  catalyst(5070,Complex),
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
  not exclude(5501),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(5501),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5501,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(5502),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(5502,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00044",cytosol,Day) :-
  not exclude(5502),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00035",cytosol,Day),
  catalyst(5502,Complex),
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

in_compartment(Experiment,"C00262",cytosol,Day) :-
  not exclude(5621),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C05512",cytosol,Day),
  catalyst(5621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03496",cytosol,Day) :-
  not exclude(5621),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C05512",cytosol,Day),
  catalyst(5621,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(5622),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5622,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05512",cytosol,Day) :-
  not exclude(5622),
  Day >= 1,
  in_compartment(Experiment,"C00262",cytosol,Day),
  in_compartment(Experiment,"C03496",cytosol,Day),
  catalyst(5622,Complex),
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
  not exclude(5770),
  Day >= 1,
  in_compartment(Experiment,"C00881",cytosol,Day),
  catalyst(5770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00526",cytosol,Day) :-
  not exclude(5770),
  Day >= 1,
  in_compartment(Experiment,"C00881",cytosol,Day),
  catalyst(5770,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(5840),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00214",cytosol,Day),
  catalyst(5840,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00364",cytosol,Day) :-
  not exclude(5840),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00214",cytosol,Day),
  catalyst(5840,Complex),
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

in_compartment(Experiment,"C00295",cytosol,Day) :-
  not exclude(5901),
  Day >= 1,
  in_compartment(Experiment,"C00337",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(5901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(5901),
  Day >= 1,
  in_compartment(Experiment,"C00337",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(5901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00337",cytosol,Day) :-
  not exclude(5902),
  Day >= 1,
  in_compartment(Experiment,"C00295",cytosol,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(5902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01967",mitochondrion,Day) :-
  not exclude(5902),
  Day >= 1,
  in_compartment(Experiment,"C00295",cytosol,Day),
  in_compartment(Experiment,"C00390",mitochondrion,Day),
  catalyst(5902,Complex),
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
  not exclude(5950),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01260",cytosol,Day) :-
  not exclude(5950),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00044",cytosol,Day),
  catalyst(5950,Complex),
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

in_compartment(Experiment,"C00130",cytosol,Day) :-
  not exclude(5990),
  Day >= 1,
  in_compartment(Experiment,"C00943",cytosol,Day),
  catalyst(5990,Complex),
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

in_compartment(Experiment,"C00122",cytosol,Day) :-
  not exclude(6091),
  Day >= 1,
  in_compartment(Experiment,"C04823",cytosol,Day),
  catalyst(6091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04677",cytosol,Day) :-
  not exclude(6091),
  Day >= 1,
  in_compartment(Experiment,"C04823",cytosol,Day),
  catalyst(6091,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04823",cytosol,Day) :-
  not exclude(6092),
  Day >= 1,
  in_compartment(Experiment,"C00122",cytosol,Day),
  in_compartment(Experiment,"C04677",cytosol,Day),
  catalyst(6092,Complex),
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

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(6160),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(6160),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03090",cytosol,Day) :-
  not exclude(6160),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6160,Complex),
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

in_compartment(Experiment,"C00086",cytosol,Day) :-
  not exclude(6221),
  Day >= 1,
  in_compartment(Experiment,"C00499",cytosol,Day),
  catalyst(6221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00603",cytosol,Day) :-
  not exclude(6221),
  Day >= 1,
  in_compartment(Experiment,"C00499",cytosol,Day),
  catalyst(6221,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00499",cytosol,Day) :-
  not exclude(6222),
  Day >= 1,
  in_compartment(Experiment,"C00086",cytosol,Day),
  in_compartment(Experiment,"C00603",cytosol,Day),
  catalyst(6222,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00499",cytosol,Day) :-
  not exclude(6231),
  Day >= 1,
  in_compartment(Experiment,"C01551",cytosol,Day),
  catalyst(6231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01551",cytosol,Day) :-
  not exclude(6232),
  Day >= 1,
  in_compartment(Experiment,"C00499",cytosol,Day),
  catalyst(6232,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(6420),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00751",cytosol,Day),
  catalyst(6420,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01054",cytosol,Day) :-
  not exclude(6420),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00751",cytosol,Day),
  catalyst(6420,Complex),
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

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(6690),
  Day >= 1,
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(6690,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00165",cytosol,Day) :-
  not exclude(6690),
  Day >= 1,
  in_compartment(Experiment,"C00416",cytosol,Day),
  catalyst(6690,Complex),
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

in_compartment(Experiment,"C00055",mitochondrion,Day) :-
  not exclude(6721),
  Day >= 1,
  in_compartment(Experiment,"C00093",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03892",mitochondrion,Day) :-
  not exclude(6721),
  Day >= 1,
  in_compartment(Experiment,"C00093",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00093",mitochondrion,Day) :-
  not exclude(6722),
  Day >= 1,
  in_compartment(Experiment,"C00055",mitochondrion,Day),
  in_compartment(Experiment,"C03892",mitochondrion,Day),
  catalyst(6722,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00269",mitochondrion,Day) :-
  not exclude(6722),
  Day >= 1,
  in_compartment(Experiment,"C00055",mitochondrion,Day),
  in_compartment(Experiment,"C03892",mitochondrion,Day),
  catalyst(6722,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00165",cytosol,Day) :-
  not exclude(6730),
  Day >= 1,
  in_compartment(Experiment,"C04637",cytosol,Day),
  catalyst(6730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01245",cytosol,Day) :-
  not exclude(6730),
  Day >= 1,
  in_compartment(Experiment,"C04637",cytosol,Day),
  catalyst(6730,Complex),
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

in_compartment(Experiment,"C01177",cytosol,Day) :-
  not exclude(6790),
  Day >= 1,
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(6790,Complex),
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

in_compartment(Experiment,"C00055",cytosol,Day) :-
  not exclude(6830),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C00307",cytosol,Day),
  catalyst(6830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00157",cytosol,Day) :-
  not exclude(6830),
  Day >= 1,
  in_compartment(Experiment,"C00165",cytosol,Day),
  in_compartment(Experiment,"C00307",cytosol,Day),
  catalyst(6830,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6850),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00114",cytosol,Day),
  catalyst(6850,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00588",cytosol,Day) :-
  not exclude(6850),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00114",cytosol,Day),
  catalyst(6850,Complex),
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

in_compartment(Experiment,"C00055",mitochondrion,Day) :-
  not exclude(6911),
  Day >= 1,
  in_compartment(Experiment,"C00065",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02737",mitochondrion,Day) :-
  not exclude(6911),
  Day >= 1,
  in_compartment(Experiment,"C00065",mitochondrion,Day),
  in_compartment(Experiment,"C00269",mitochondrion,Day),
  catalyst(6911,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",mitochondrion,Day) :-
  not exclude(6912),
  Day >= 1,
  in_compartment(Experiment,"C00055",mitochondrion,Day),
  in_compartment(Experiment,"C02737",mitochondrion,Day),
  catalyst(6912,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00269",mitochondrion,Day) :-
  not exclude(6912),
  Day >= 1,
  in_compartment(Experiment,"C00055",mitochondrion,Day),
  in_compartment(Experiment,"C02737",mitochondrion,Day),
  catalyst(6912,Complex),
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

in_compartment(Experiment,"C00009",mitochondrion,Day) :-
  not exclude(7450),
  Day >= 1,
  in_compartment(Experiment,"C00013",mitochondrion,Day),
  catalyst(7450,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(7460),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  catalyst(7460,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00051",cytosol,Day) :-
  not exclude(7480),
  Day >= 1,
  in_compartment(Experiment,"C03451",cytosol,Day),
  catalyst(7480,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00256",cytosol,Day) :-
  not exclude(7480),
  Day >= 1,
  in_compartment(Experiment,"C03451",cytosol,Day),
  catalyst(7480,Complex),
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
  not exclude(7770),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00124",cytosol,Day),
  catalyst(7770,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03384",cytosol,Day) :-
  not exclude(7770),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00124",cytosol,Day),
  catalyst(7770,Complex),
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

in_compartment(Experiment,"C00668",cytosol,Day) :-
  not exclude(7851),
  Day >= 1,
  in_compartment(Experiment,"C00103",cytosol,Day),
  catalyst(7851,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00103",cytosol,Day) :-
  not exclude(7852),
  Day >= 1,
  in_compartment(Experiment,"C00668",cytosol,Day),
  catalyst(7852,Complex),
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

in_compartment(Experiment,"C00279",cytosol,Day) :-
  not exclude(7891),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(7891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05345",cytosol,Day) :-
  not exclude(7891),
  Day >= 1,
  in_compartment(Experiment,"C00118",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(7891,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(7892),
  Day >= 1,
  in_compartment(Experiment,"C00279",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7892,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00281",cytosol,Day) :-
  not exclude(7892),
  Day >= 1,
  in_compartment(Experiment,"C00279",cytosol,Day),
  in_compartment(Experiment,"C05345",cytosol,Day),
  catalyst(7892,Complex),
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

in_compartment(Experiment,"C00011",mitochondrion,Day) :-
  not exclude(8140),
  Day >= 1,
  in_compartment(Experiment,"C05379",mitochondrion,Day),
  catalyst(8140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",mitochondrion,Day) :-
  not exclude(8140),
  Day >= 1,
  in_compartment(Experiment,"C05379",mitochondrion,Day),
  catalyst(8140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",mitochondrion,Day) :-
  not exclude(8160),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05379",mitochondrion,Day) :-
  not exclude(8160),
  Day >= 1,
  in_compartment(Experiment,"C00006",mitochondrion,Day),
  in_compartment(Experiment,"C00311",mitochondrion,Day),
  catalyst(8160,Complex),
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

in_compartment(Experiment,"C00010",mitochondrion,Day) :-
  not exclude(8190),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(8190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00158",mitochondrion,Day) :-
  not exclude(8190),
  Day >= 1,
  in_compartment(Experiment,"C00024",mitochondrion,Day),
  in_compartment(Experiment,"C00036",mitochondrion,Day),
  catalyst(8190,Complex),
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
  not exclude(8300),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(8300,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00447",cytosol,Day) :-
  not exclude(8300),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00281",cytosol,Day),
  catalyst(8300,Complex),
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
  not exclude(8431),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(8431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8431),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(8431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(8431),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(8431,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(8432),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(8432,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00039",cytosol,Day) :-
  not exclude(8432),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00039",cytosol,Day),
  catalyst(8432,Complex),
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
  not exclude(8861),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(8861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00364",cytosol,Day) :-
  not exclude(8861),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00363",cytosol,Day),
  catalyst(8861,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8862),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(8862,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00363",cytosol,Day) :-
  not exclude(8862),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00364",cytosol,Day),
  catalyst(8862,Complex),
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

in_compartment(Experiment,"C00470",cytosol,Day) :-
  not exclude(9051),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00470",cytosol,Day),
  catalyst(9051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04733",cytosol,Day) :-
  not exclude(9051),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00470",cytosol,Day),
  catalyst(9051,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9052),
  Day >= 1,
  in_compartment(Experiment,"C00470",cytosol,Day),
  in_compartment(Experiment,"C04733",cytosol,Day),
  catalyst(9052,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00470",cytosol,Day) :-
  not exclude(9052),
  Day >= 1,
  in_compartment(Experiment,"C00470",cytosol,Day),
  in_compartment(Experiment,"C04733",cytosol,Day),
  catalyst(9052,Complex),
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
  not exclude(9211),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01153",cytosol,Day),
  catalyst(9211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00069",cytosol,Day) :-
  not exclude(9211),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C01153",cytosol,Day),
  catalyst(9211,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9212),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9212,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01153",cytosol,Day) :-
  not exclude(9212),
  Day >= 1,
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9212,Complex),
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

in_compartment(Experiment,"C00162",cytosol,Day) :-
  not exclude(9311),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04230",cytosol,Day),
  catalyst(9311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00670",cytosol,Day) :-
  not exclude(9311),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C04230",cytosol,Day),
  catalyst(9311,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(9312),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9312,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04230",cytosol,Day) :-
  not exclude(9312),
  Day >= 1,
  in_compartment(Experiment,"C00162",cytosol,Day),
  in_compartment(Experiment,"C00670",cytosol,Day),
  catalyst(9312,Complex),
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
  not exclude(9521),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9521),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9521,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9522),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9522,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00046",cytosol,Day) :-
  not exclude(9522),
  Day >= 1,
  in_compartment(Experiment,"C00013",cytosol,Day),
  in_compartment(Experiment,"C00046",cytosol,Day),
  catalyst(9522,Complex),
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
  not exclude(9571),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00257",cytosol,Day),
  catalyst(9571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00345",cytosol,Day) :-
  not exclude(9571),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00257",cytosol,Day),
  catalyst(9571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(9572),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00345",cytosol,Day),
  catalyst(9572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00257",cytosol,Day) :-
  not exclude(9572),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00345",cytosol,Day),
  catalyst(9572,Complex),
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

in_compartment(Experiment,"C00035",cytosol,Day) :-
  not exclude(9701),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C05862",cytosol,Day),
  catalyst(9701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05863",cytosol,Day) :-
  not exclude(9701),
  Day >= 1,
  in_compartment(Experiment,"C00096",cytosol,Day),
  in_compartment(Experiment,"C05862",cytosol,Day),
  catalyst(9701,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00096",cytosol,Day) :-
  not exclude(9702),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C05863",cytosol,Day),
  catalyst(9702,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05862",cytosol,Day) :-
  not exclude(9702),
  Day >= 1,
  in_compartment(Experiment,"C00035",cytosol,Day),
  in_compartment(Experiment,"C05863",cytosol,Day),
  catalyst(9702,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(9791),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05761",cytosol,Day),
  catalyst(9791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05760",cytosol,Day) :-
  not exclude(9791),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05761",cytosol,Day),
  catalyst(9791,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(9792),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05760",cytosol,Day),
  catalyst(9792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05761",cytosol,Day) :-
  not exclude(9792),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C05760",cytosol,Day),
  catalyst(9792,Complex),
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
  not exclude(9921),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01883",cytosol,Day) :-
  not exclude(9921),
  Day >= 1,
  in_compartment(Experiment,"C00024",cytosol,Day),
  in_compartment(Experiment,"C00069",cytosol,Day),
  catalyst(9921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00024",cytosol,Day) :-
  not exclude(9922),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01883",cytosol,Day),
  catalyst(9922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00069",cytosol,Day) :-
  not exclude(9922),
  Day >= 1,
  in_compartment(Experiment,"C00010",cytosol,Day),
  in_compartment(Experiment,"C01883",cytosol,Day),
  catalyst(9922,Complex),
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
  not exclude(10121),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00268",cytosol,Day),
  catalyst(10121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00272",cytosol,Day) :-
  not exclude(10121),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00268",cytosol,Day),
  catalyst(10121,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10122),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00272",cytosol,Day),
  catalyst(10122,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00268",cytosol,Day) :-
  not exclude(10122),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00272",cytosol,Day),
  catalyst(10122,Complex),
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

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(10191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(10191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10191),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(10191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10192),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10192),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(10192),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  catalyst(10192,Complex),
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

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(10351),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10351),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00410",cytosol,Day) :-
  not exclude(10351),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C01953",cytosol,Day),
  catalyst(10351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10352),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00410",cytosol,Day),
  catalyst(10352,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01953",cytosol,Day) :-
  not exclude(10352),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00410",cytosol,Day),
  catalyst(10352,Complex),
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

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(10401),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00288",cytosol,Day),
  catalyst(10401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(10401),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00288",cytosol,Day),
  catalyst(10401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(10401),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00288",cytosol,Day),
  catalyst(10401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00169",cytosol,Day) :-
  not exclude(10401),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00288",cytosol,Day),
  catalyst(10401,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(10402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(10402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(10402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(10402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(10402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(10402,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00288",cytosol,Day) :-
  not exclude(10402),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00009",cytosol,Day),
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00169",cytosol,Day),
  catalyst(10402,Complex),
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
  not exclude(10481),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05749",cytosol,Day),
  catalyst(10481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00229",cytosol,Day) :-
  not exclude(10481),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05749",cytosol,Day),
  catalyst(10481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05750",cytosol,Day) :-
  not exclude(10481),
  Day >= 1,
  in_compartment(Experiment,"C01209",cytosol,Day),
  in_compartment(Experiment,"C05749",cytosol,Day),
  catalyst(10481,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01209",cytosol,Day) :-
  not exclude(10482),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05750",cytosol,Day),
  catalyst(10482,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05749",cytosol,Day) :-
  not exclude(10482),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00229",cytosol,Day),
  in_compartment(Experiment,"C05750",cytosol,Day),
  catalyst(10482,Complex),
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

in_compartment(Experiment,"C00126",cytosol,Day) :-
  not exclude(10651),
  Day >= 1,
  in_compartment(Experiment,"C00125",cytosol,Day),
  in_compartment(Experiment,"C00390",cytosol,Day),
  catalyst(10651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00399",cytosol,Day) :-
  not exclude(10651),
  Day >= 1,
  in_compartment(Experiment,"C00125",cytosol,Day),
  in_compartment(Experiment,"C00390",cytosol,Day),
  catalyst(10651,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00125",cytosol,Day) :-
  not exclude(10652),
  Day >= 1,
  in_compartment(Experiment,"C00126",cytosol,Day),
  in_compartment(Experiment,"C00399",cytosol,Day),
  catalyst(10652,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",cytosol,Day) :-
  not exclude(10652),
  Day >= 1,
  in_compartment(Experiment,"C00126",cytosol,Day),
  in_compartment(Experiment,"C00399",cytosol,Day),
  catalyst(10652,Complex),
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

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(10721),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00068",cytosol,Day) :-
  not exclude(10721),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C05125",cytosol,Day),
  catalyst(10721,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(10722),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(10722,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05125",cytosol,Day) :-
  not exclude(10722),
  Day >= 1,
  in_compartment(Experiment,"C00022",cytosol,Day),
  in_compartment(Experiment,"C00068",cytosol,Day),
  catalyst(10722,Complex),
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
  not exclude(10801),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04688",cytosol,Day),
  catalyst(10801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05759",cytosol,Day) :-
  not exclude(10801),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C04688",cytosol,Day),
  catalyst(10801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(10802),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05759",cytosol,Day),
  catalyst(10802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04688",cytosol,Day) :-
  not exclude(10802),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C05759",cytosol,Day),
  catalyst(10802,Complex),
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

retractable_reaction(10).
retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(51).
retractable_reaction(52).
retractable_reaction(70).
retractable_reaction(91).
retractable_reaction(92).
retractable_reaction(101).
retractable_reaction(102).
retractable_reaction(131).
retractable_reaction(132).
retractable_reaction(141).
retractable_reaction(142).
retractable_reaction(170).
retractable_reaction(190).
retractable_reaction(211).
retractable_reaction(212).
retractable_reaction(220).
retractable_reaction(251).
retractable_reaction(252).
retractable_reaction(310).
retractable_reaction(321).
retractable_reaction(322).
retractable_reaction(331).
retractable_reaction(332).
retractable_reaction(341).
retractable_reaction(342).
retractable_reaction(361).
retractable_reaction(362).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(381).
retractable_reaction(382).
retractable_reaction(401).
retractable_reaction(402).
retractable_reaction(411).
retractable_reaction(412).
retractable_reaction(431).
retractable_reaction(432).
retractable_reaction(441).
retractable_reaction(442).
retractable_reaction(460).
retractable_reaction(480).
retractable_reaction(500).
retractable_reaction(520).
retractable_reaction(530).
retractable_reaction(540).
retractable_reaction(550).
retractable_reaction(560).
retractable_reaction(570).
retractable_reaction(581).
retractable_reaction(582).
retractable_reaction(590).
retractable_reaction(620).
retractable_reaction(630).
retractable_reaction(640).
retractable_reaction(660).
retractable_reaction(670).
retractable_reaction(690).
retractable_reaction(700).
retractable_reaction(710).
retractable_reaction(730).
retractable_reaction(740).
retractable_reaction(750).
retractable_reaction(761).
retractable_reaction(762).
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
retractable_reaction(821).
retractable_reaction(822).
retractable_reaction(831).
retractable_reaction(832).
retractable_reaction(841).
retractable_reaction(842).
retractable_reaction(861).
retractable_reaction(862).
retractable_reaction(881).
retractable_reaction(882).
retractable_reaction(901).
retractable_reaction(902).
retractable_reaction(911).
retractable_reaction(912).
retractable_reaction(921).
retractable_reaction(922).
retractable_reaction(941).
retractable_reaction(942).
retractable_reaction(960).
retractable_reaction(970).
retractable_reaction(1010).
retractable_reaction(1021).
retractable_reaction(1022).
retractable_reaction(1031).
retractable_reaction(1032).
retractable_reaction(1041).
retractable_reaction(1042).
retractable_reaction(1060).
retractable_reaction(1071).
retractable_reaction(1072).
retractable_reaction(1081).
retractable_reaction(1082).
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1121).
retractable_reaction(1122).
retractable_reaction(1130).
retractable_reaction(1150).
retractable_reaction(1160).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1200).
retractable_reaction(1210).
retractable_reaction(1220).
retractable_reaction(1250).
retractable_reaction(1271).
retractable_reaction(1272).
retractable_reaction(1291).
retractable_reaction(1292).
retractable_reaction(1331).
retractable_reaction(1332).
retractable_reaction(1351).
retractable_reaction(1352).
retractable_reaction(1411).
retractable_reaction(1412).
retractable_reaction(1431).
retractable_reaction(1432).
retractable_reaction(1451).
retractable_reaction(1452).
retractable_reaction(1471).
retractable_reaction(1472).
retractable_reaction(1491).
retractable_reaction(1492).
retractable_reaction(1501).
retractable_reaction(1502).
retractable_reaction(1511).
retractable_reaction(1512).
retractable_reaction(1540).
retractable_reaction(1551).
retractable_reaction(1552).
retractable_reaction(1561).
retractable_reaction(1562).
retractable_reaction(1571).
retractable_reaction(1572).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(1600).
retractable_reaction(1611).
retractable_reaction(1612).
retractable_reaction(1620).
retractable_reaction(1671).
retractable_reaction(1672).
retractable_reaction(1691).
retractable_reaction(1692).
retractable_reaction(1701).
retractable_reaction(1702).
retractable_reaction(1731).
retractable_reaction(1732).
retractable_reaction(1741).
retractable_reaction(1742).
retractable_reaction(1751).
retractable_reaction(1752).
retractable_reaction(1771).
retractable_reaction(1772).
retractable_reaction(1791).
retractable_reaction(1792).
retractable_reaction(1810).
retractable_reaction(1820).
retractable_reaction(1830).
retractable_reaction(1840).
retractable_reaction(1850).
retractable_reaction(1880).
retractable_reaction(1890).
retractable_reaction(1910).
retractable_reaction(1920).
retractable_reaction(1930).
retractable_reaction(1940).
retractable_reaction(1950).
retractable_reaction(1960).
retractable_reaction(1970).
retractable_reaction(2020).
retractable_reaction(2041).
retractable_reaction(2042).
retractable_reaction(2051).
retractable_reaction(2052).
retractable_reaction(2070).
retractable_reaction(2090).
retractable_reaction(2100).
retractable_reaction(2110).
retractable_reaction(2121).
retractable_reaction(2122).
retractable_reaction(2140).
retractable_reaction(2150).
retractable_reaction(2170).
retractable_reaction(2180).
retractable_reaction(2190).
retractable_reaction(2210).
retractable_reaction(2231).
retractable_reaction(2232).
retractable_reaction(2240).
retractable_reaction(2250).
retractable_reaction(2260).
retractable_reaction(2270).
retractable_reaction(2280).
retractable_reaction(2300).
retractable_reaction(2310).
retractable_reaction(2320).
retractable_reaction(2340).
retractable_reaction(2350).
retractable_reaction(2360).
retractable_reaction(2370).
retractable_reaction(2380).
retractable_reaction(2401).
retractable_reaction(2402).
retractable_reaction(2410).
retractable_reaction(2420).
retractable_reaction(2431).
retractable_reaction(2432).
retractable_reaction(2450).
retractable_reaction(2461).
retractable_reaction(2462).
retractable_reaction(2470).
retractable_reaction(2480).
retractable_reaction(2490).
retractable_reaction(2500).
retractable_reaction(2510).
retractable_reaction(2520).
retractable_reaction(2530).
retractable_reaction(2540).
retractable_reaction(2550).
retractable_reaction(2560).
retractable_reaction(2570).
retractable_reaction(2580).
retractable_reaction(2600).
retractable_reaction(2610).
retractable_reaction(2621).
retractable_reaction(2622).
retractable_reaction(2641).
retractable_reaction(2642).
retractable_reaction(2651).
retractable_reaction(2652).
retractable_reaction(2670).
retractable_reaction(2691).
retractable_reaction(2692).
retractable_reaction(2700).
retractable_reaction(2711).
retractable_reaction(2712).
retractable_reaction(2721).
retractable_reaction(2722).
retractable_reaction(2731).
retractable_reaction(2732).
retractable_reaction(2740).
retractable_reaction(2750).
retractable_reaction(2760).
retractable_reaction(2790).
retractable_reaction(2810).
retractable_reaction(2820).
retractable_reaction(2830).
retractable_reaction(2840).
retractable_reaction(2850).
retractable_reaction(2860).
retractable_reaction(2891).
retractable_reaction(2892).
retractable_reaction(2910).
retractable_reaction(2920).
retractable_reaction(2930).
retractable_reaction(2940).
retractable_reaction(2950).
retractable_reaction(2970).
retractable_reaction(2980).
retractable_reaction(2990).
retractable_reaction(3000).
retractable_reaction(3010).
retractable_reaction(3020).
retractable_reaction(3030).
retractable_reaction(3050).
retractable_reaction(3070).
retractable_reaction(3090).
retractable_reaction(3100).
retractable_reaction(3110).
retractable_reaction(3141).
retractable_reaction(3142).
retractable_reaction(3160).
retractable_reaction(3170).
retractable_reaction(3200).
retractable_reaction(3220).
retractable_reaction(3230).
retractable_reaction(3240).
retractable_reaction(3260).
retractable_reaction(3290).
retractable_reaction(3300).
retractable_reaction(3310).
retractable_reaction(3330).
retractable_reaction(3350).
retractable_reaction(3360).
retractable_reaction(3370).
retractable_reaction(3380).
retractable_reaction(3390).
retractable_reaction(3430).
retractable_reaction(3440).
retractable_reaction(3450).
retractable_reaction(3460).
retractable_reaction(3470).
retractable_reaction(3480).
retractable_reaction(3490).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3540).
retractable_reaction(3550).
retractable_reaction(3560).
retractable_reaction(3571).
retractable_reaction(3572).
retractable_reaction(3580).
retractable_reaction(3590).
retractable_reaction(3600).
retractable_reaction(3610).
retractable_reaction(3620).
retractable_reaction(3630).
retractable_reaction(3640).
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
retractable_reaction(3770).
retractable_reaction(3780).
retractable_reaction(3800).
retractable_reaction(3820).
retractable_reaction(3860).
retractable_reaction(3870).
retractable_reaction(3890).
retractable_reaction(3900).
retractable_reaction(3910).
retractable_reaction(3930).
retractable_reaction(3941).
retractable_reaction(3942).
retractable_reaction(3950).
retractable_reaction(3971).
retractable_reaction(3972).
retractable_reaction(4000).
retractable_reaction(4040).
retractable_reaction(4050).
retractable_reaction(4060).
retractable_reaction(4070).
retractable_reaction(4121).
retractable_reaction(4122).
retractable_reaction(4131).
retractable_reaction(4132).
retractable_reaction(4141).
retractable_reaction(4142).
retractable_reaction(4161).
retractable_reaction(4162).
retractable_reaction(4230).
retractable_reaction(4240).
retractable_reaction(4250).
retractable_reaction(4271).
retractable_reaction(4272).
retractable_reaction(4281).
retractable_reaction(4282).
retractable_reaction(4291).
retractable_reaction(4292).
retractable_reaction(4301).
retractable_reaction(4302).
retractable_reaction(4350).
retractable_reaction(4371).
retractable_reaction(4372).
retractable_reaction(4380).
retractable_reaction(4390).
retractable_reaction(4400).
retractable_reaction(4430).
retractable_reaction(4440).
retractable_reaction(4451).
retractable_reaction(4452).
retractable_reaction(4460).
retractable_reaction(4470).
retractable_reaction(4480).
retractable_reaction(4500).
retractable_reaction(4510).
retractable_reaction(4530).
retractable_reaction(4551).
retractable_reaction(4552).
retractable_reaction(4560).
retractable_reaction(4570).
retractable_reaction(4590).
retractable_reaction(4600).
retractable_reaction(4610).
retractable_reaction(4620).
retractable_reaction(4630).
retractable_reaction(4640).
retractable_reaction(4690).
retractable_reaction(4710).
retractable_reaction(4720).
retractable_reaction(4730).
retractable_reaction(4740).
retractable_reaction(4750).
retractable_reaction(4760).
retractable_reaction(4771).
retractable_reaction(4772).
retractable_reaction(4811).
retractable_reaction(4812).
retractable_reaction(4840).
retractable_reaction(4850).
retractable_reaction(4870).
retractable_reaction(4891).
retractable_reaction(4892).
retractable_reaction(4900).
retractable_reaction(4910).
retractable_reaction(4920).
retractable_reaction(4940).
retractable_reaction(4950).
retractable_reaction(4960).
retractable_reaction(4971).
retractable_reaction(4972).
retractable_reaction(4981).
retractable_reaction(4982).
retractable_reaction(4991).
retractable_reaction(4992).
retractable_reaction(5000).
retractable_reaction(5010).
retractable_reaction(5020).
retractable_reaction(5030).
retractable_reaction(5040).
retractable_reaction(5050).
retractable_reaction(5070).
retractable_reaction(5090).
retractable_reaction(5100).
retractable_reaction(5110).
retractable_reaction(5120).
retractable_reaction(5130).
retractable_reaction(5140).
retractable_reaction(5150).
retractable_reaction(5160).
retractable_reaction(5190).
retractable_reaction(5210).
retractable_reaction(5220).
retractable_reaction(5240).
retractable_reaction(5250).
retractable_reaction(5270).
retractable_reaction(5281).
retractable_reaction(5282).
retractable_reaction(5310).
retractable_reaction(5320).
retractable_reaction(5330).
retractable_reaction(5340).
retractable_reaction(5350).
retractable_reaction(5381).
retractable_reaction(5382).
retractable_reaction(5391).
retractable_reaction(5392).
retractable_reaction(5411).
retractable_reaction(5412).
retractable_reaction(5421).
retractable_reaction(5422).
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
retractable_reaction(5501).
retractable_reaction(5502).
retractable_reaction(5511).
retractable_reaction(5512).
retractable_reaction(5520).
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
retractable_reaction(5621).
retractable_reaction(5622).
retractable_reaction(5630).
retractable_reaction(5640).
retractable_reaction(5650).
retractable_reaction(5661).
retractable_reaction(5662).
retractable_reaction(5670).
retractable_reaction(5680).
retractable_reaction(5691).
retractable_reaction(5692).
retractable_reaction(5701).
retractable_reaction(5702).
retractable_reaction(5711).
retractable_reaction(5712).
retractable_reaction(5730).
retractable_reaction(5750).
retractable_reaction(5761).
retractable_reaction(5762).
retractable_reaction(5770).
retractable_reaction(5780).
retractable_reaction(5791).
retractable_reaction(5792).
retractable_reaction(5801).
retractable_reaction(5802).
retractable_reaction(5810).
retractable_reaction(5820).
retractable_reaction(5840).
retractable_reaction(5850).
retractable_reaction(5860).
retractable_reaction(5880).
retractable_reaction(5901).
retractable_reaction(5902).
retractable_reaction(5940).
retractable_reaction(5950).
retractable_reaction(5960).
retractable_reaction(5990).
retractable_reaction(6010).
retractable_reaction(6020).
retractable_reaction(6030).
retractable_reaction(6040).
retractable_reaction(6071).
retractable_reaction(6072).
retractable_reaction(6091).
retractable_reaction(6092).
retractable_reaction(6120).
retractable_reaction(6130).
retractable_reaction(6140).
retractable_reaction(6151).
retractable_reaction(6152).
retractable_reaction(6160).
retractable_reaction(6171).
retractable_reaction(6172).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6191).
retractable_reaction(6192).
retractable_reaction(6200).
retractable_reaction(6211).
retractable_reaction(6212).
retractable_reaction(6221).
retractable_reaction(6222).
retractable_reaction(6231).
retractable_reaction(6232).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(6250).
retractable_reaction(6280).
retractable_reaction(6290).
retractable_reaction(6300).
retractable_reaction(6330).
retractable_reaction(6340).
retractable_reaction(6350).
retractable_reaction(6360).
retractable_reaction(6370).
retractable_reaction(6380).
retractable_reaction(6390).
retractable_reaction(6400).
retractable_reaction(6410).
retractable_reaction(6420).
retractable_reaction(6440).
retractable_reaction(6450).
retractable_reaction(6470).
retractable_reaction(6480).
retractable_reaction(6490).
retractable_reaction(6510).
retractable_reaction(6520).
retractable_reaction(6550).
retractable_reaction(6560).
retractable_reaction(6570).
retractable_reaction(6580).
retractable_reaction(6600).
retractable_reaction(6610).
retractable_reaction(6620).
retractable_reaction(6640).
retractable_reaction(6650).
retractable_reaction(6680).
retractable_reaction(6690).
retractable_reaction(6700).
retractable_reaction(6710).
retractable_reaction(6721).
retractable_reaction(6722).
retractable_reaction(6730).
retractable_reaction(6740).
retractable_reaction(6750).
retractable_reaction(6770).
retractable_reaction(6780).
retractable_reaction(6790).
retractable_reaction(6801).
retractable_reaction(6802).
retractable_reaction(6810).
retractable_reaction(6820).
retractable_reaction(6830).
retractable_reaction(6850).
retractable_reaction(6860).
retractable_reaction(6890).
retractable_reaction(6900).
retractable_reaction(6911).
retractable_reaction(6912).
retractable_reaction(6921).
retractable_reaction(6922).
retractable_reaction(6950).
retractable_reaction(6960).
retractable_reaction(6970).
retractable_reaction(6980).
retractable_reaction(7010).
retractable_reaction(7040).
retractable_reaction(7050).
retractable_reaction(7060).
retractable_reaction(7070).
retractable_reaction(7080).
retractable_reaction(7090).
retractable_reaction(7100).
retractable_reaction(7110).
retractable_reaction(7120).
retractable_reaction(7130).
retractable_reaction(7141).
retractable_reaction(7142).
retractable_reaction(7151).
retractable_reaction(7152).
retractable_reaction(7161).
retractable_reaction(7162).
retractable_reaction(7170).
retractable_reaction(7190).
retractable_reaction(7220).
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
retractable_reaction(7411).
retractable_reaction(7412).
retractable_reaction(7420).
retractable_reaction(7440).
retractable_reaction(7450).
retractable_reaction(7460).
retractable_reaction(7480).
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
retractable_reaction(7620).
retractable_reaction(7630).
retractable_reaction(7641).
retractable_reaction(7642).
retractable_reaction(7671).
retractable_reaction(7672).
retractable_reaction(7730).
retractable_reaction(7741).
retractable_reaction(7742).
retractable_reaction(7751).
retractable_reaction(7752).
retractable_reaction(7761).
retractable_reaction(7762).
retractable_reaction(7770).
retractable_reaction(7780).
retractable_reaction(7790).
retractable_reaction(7800).
retractable_reaction(7810).
retractable_reaction(7841).
retractable_reaction(7842).
retractable_reaction(7851).
retractable_reaction(7852).
retractable_reaction(7861).
retractable_reaction(7862).
retractable_reaction(7880).
retractable_reaction(7891).
retractable_reaction(7892).
retractable_reaction(7901).
retractable_reaction(7902).
retractable_reaction(7911).
retractable_reaction(7912).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(7931).
retractable_reaction(7932).
retractable_reaction(7950).
retractable_reaction(7961).
retractable_reaction(7962).
retractable_reaction(7970).
retractable_reaction(7980).
retractable_reaction(7990).
retractable_reaction(8000).
retractable_reaction(8010).
retractable_reaction(8020).
retractable_reaction(8031).
retractable_reaction(8032).
retractable_reaction(8041).
retractable_reaction(8042).
retractable_reaction(8051).
retractable_reaction(8052).
retractable_reaction(8070).
retractable_reaction(8080).
retractable_reaction(8091).
retractable_reaction(8092).
retractable_reaction(8101).
retractable_reaction(8102).
retractable_reaction(8111).
retractable_reaction(8112).
retractable_reaction(8120).
retractable_reaction(8140).
retractable_reaction(8160).
retractable_reaction(8170).
retractable_reaction(8181).
retractable_reaction(8182).
retractable_reaction(8190).
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
retractable_reaction(8281).
retractable_reaction(8282).
retractable_reaction(8291).
retractable_reaction(8292).
retractable_reaction(8300).
retractable_reaction(8310).
retractable_reaction(8320).
retractable_reaction(8331).
retractable_reaction(8332).
retractable_reaction(8351).
retractable_reaction(8352).
retractable_reaction(8360).
retractable_reaction(8370).
retractable_reaction(8380).
retractable_reaction(8390).
retractable_reaction(8400).
retractable_reaction(8411).
retractable_reaction(8412).
retractable_reaction(8431).
retractable_reaction(8432).
retractable_reaction(8441).
retractable_reaction(8442).
retractable_reaction(8451).
retractable_reaction(8452).
retractable_reaction(8461).
retractable_reaction(8462).
retractable_reaction(8511).
retractable_reaction(8512).
retractable_reaction(8521).
retractable_reaction(8522).
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
retractable_reaction(8611).
retractable_reaction(8612).
retractable_reaction(8621).
retractable_reaction(8622).
retractable_reaction(8631).
retractable_reaction(8632).
retractable_reaction(8651).
retractable_reaction(8652).
retractable_reaction(8671).
retractable_reaction(8672).
retractable_reaction(8681).
retractable_reaction(8682).
retractable_reaction(8711).
retractable_reaction(8712).
retractable_reaction(8741).
retractable_reaction(8742).
retractable_reaction(8761).
retractable_reaction(8762).
retractable_reaction(8781).
retractable_reaction(8782).
retractable_reaction(8791).
retractable_reaction(8792).
retractable_reaction(8801).
retractable_reaction(8802).
retractable_reaction(8811).
retractable_reaction(8812).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(8861).
retractable_reaction(8862).
retractable_reaction(8881).
retractable_reaction(8882).
retractable_reaction(8891).
retractable_reaction(8892).
retractable_reaction(8901).
retractable_reaction(8902).
retractable_reaction(8931).
retractable_reaction(8932).
retractable_reaction(8951).
retractable_reaction(8952).
retractable_reaction(8961).
retractable_reaction(8962).
retractable_reaction(8981).
retractable_reaction(8982).
retractable_reaction(8991).
retractable_reaction(8992).
retractable_reaction(9001).
retractable_reaction(9002).
retractable_reaction(9021).
retractable_reaction(9022).
retractable_reaction(9041).
retractable_reaction(9042).
retractable_reaction(9051).
retractable_reaction(9052).
retractable_reaction(9061).
retractable_reaction(9062).
retractable_reaction(9071).
retractable_reaction(9072).
retractable_reaction(9111).
retractable_reaction(9112).
retractable_reaction(9131).
retractable_reaction(9132).
retractable_reaction(9141).
retractable_reaction(9142).
retractable_reaction(9171).
retractable_reaction(9172).
retractable_reaction(9181).
retractable_reaction(9182).
retractable_reaction(9191).
retractable_reaction(9192).
retractable_reaction(9201).
retractable_reaction(9202).
retractable_reaction(9211).
retractable_reaction(9212).
retractable_reaction(9231).
retractable_reaction(9232).
retractable_reaction(9251).
retractable_reaction(9252).
retractable_reaction(9261).
retractable_reaction(9262).
retractable_reaction(9271).
retractable_reaction(9272).
retractable_reaction(9291).
retractable_reaction(9292).
retractable_reaction(9311).
retractable_reaction(9312).
retractable_reaction(9331).
retractable_reaction(9332).
retractable_reaction(9341).
retractable_reaction(9342).
retractable_reaction(9351).
retractable_reaction(9352).
retractable_reaction(9361).
retractable_reaction(9362).
retractable_reaction(9371).
retractable_reaction(9372).
retractable_reaction(9391).
retractable_reaction(9392).
retractable_reaction(9411).
retractable_reaction(9412).
retractable_reaction(9421).
retractable_reaction(9422).
retractable_reaction(9441).
retractable_reaction(9442).
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
retractable_reaction(9521).
retractable_reaction(9522).
retractable_reaction(9541).
retractable_reaction(9542).
retractable_reaction(9561).
retractable_reaction(9562).
retractable_reaction(9571).
retractable_reaction(9572).
retractable_reaction(9581).
retractable_reaction(9582).
retractable_reaction(9591).
retractable_reaction(9592).
retractable_reaction(9601).
retractable_reaction(9602).
retractable_reaction(9611).
retractable_reaction(9612).
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
retractable_reaction(9681).
retractable_reaction(9682).
retractable_reaction(9691).
retractable_reaction(9692).
retractable_reaction(9701).
retractable_reaction(9702).
retractable_reaction(9741).
retractable_reaction(9742).
retractable_reaction(9751).
retractable_reaction(9752).
retractable_reaction(9761).
retractable_reaction(9762).
retractable_reaction(9791).
retractable_reaction(9792).
retractable_reaction(9811).
retractable_reaction(9812).
retractable_reaction(9831).
retractable_reaction(9832).
retractable_reaction(9861).
retractable_reaction(9862).
retractable_reaction(9901).
retractable_reaction(9902).
retractable_reaction(9911).
retractable_reaction(9912).
retractable_reaction(9921).
retractable_reaction(9922).
retractable_reaction(9931).
retractable_reaction(9932).
retractable_reaction(9961).
retractable_reaction(9962).
retractable_reaction(9981).
retractable_reaction(9982).
retractable_reaction(9991).
retractable_reaction(9992).
retractable_reaction(10011).
retractable_reaction(10012).
retractable_reaction(10021).
retractable_reaction(10022).
retractable_reaction(10031).
retractable_reaction(10032).
retractable_reaction(10051).
retractable_reaction(10052).
retractable_reaction(10081).
retractable_reaction(10082).
retractable_reaction(10091).
retractable_reaction(10092).
retractable_reaction(10101).
retractable_reaction(10102).
retractable_reaction(10111).
retractable_reaction(10112).
retractable_reaction(10121).
retractable_reaction(10122).
retractable_reaction(10161).
retractable_reaction(10162).
retractable_reaction(10191).
retractable_reaction(10192).
retractable_reaction(10201).
retractable_reaction(10202).
retractable_reaction(10211).
retractable_reaction(10212).
retractable_reaction(10231).
retractable_reaction(10232).
retractable_reaction(10251).
retractable_reaction(10252).
retractable_reaction(10271).
retractable_reaction(10272).
retractable_reaction(10281).
retractable_reaction(10282).
retractable_reaction(10311).
retractable_reaction(10312).
retractable_reaction(10321).
retractable_reaction(10322).
retractable_reaction(10331).
retractable_reaction(10332).
retractable_reaction(10341).
retractable_reaction(10342).
retractable_reaction(10351).
retractable_reaction(10352).
retractable_reaction(10361).
retractable_reaction(10362).
retractable_reaction(10371).
retractable_reaction(10372).
retractable_reaction(10381).
retractable_reaction(10382).
retractable_reaction(10391).
retractable_reaction(10392).
retractable_reaction(10401).
retractable_reaction(10402).
retractable_reaction(10411).
retractable_reaction(10412).
retractable_reaction(10441).
retractable_reaction(10442).
retractable_reaction(10451).
retractable_reaction(10452).
retractable_reaction(10481).
retractable_reaction(10482).
retractable_reaction(10491).
retractable_reaction(10492).
retractable_reaction(10501).
retractable_reaction(10502).
retractable_reaction(10521).
retractable_reaction(10522).
retractable_reaction(10531).
retractable_reaction(10532).
retractable_reaction(10541).
retractable_reaction(10542).
retractable_reaction(10551).
retractable_reaction(10552).
retractable_reaction(10571).
retractable_reaction(10572).
retractable_reaction(10581).
retractable_reaction(10582).
retractable_reaction(10601).
retractable_reaction(10602).
retractable_reaction(10611).
retractable_reaction(10612).
retractable_reaction(10651).
retractable_reaction(10652).
retractable_reaction(10671).
retractable_reaction(10672).
retractable_reaction(10681).
retractable_reaction(10682).
retractable_reaction(10691).
retractable_reaction(10692).
retractable_reaction(10701).
retractable_reaction(10702).
retractable_reaction(10721).
retractable_reaction(10722).
retractable_reaction(10731).
retractable_reaction(10732).
retractable_reaction(10741).
retractable_reaction(10742).
retractable_reaction(10751).
retractable_reaction(10752).
retractable_reaction(10761).
retractable_reaction(10762).
retractable_reaction(10781).
retractable_reaction(10782).
retractable_reaction(10801).
retractable_reaction(10802).
retractable_reaction(10821).
retractable_reaction(10822).
retractable_reaction(10831).
retractable_reaction(10832).
retractable_reaction(10851).
retractable_reaction(10852).
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

component("YNL280C",749).
component("YLR056W",635).
component("YGR060W",445).
component("YGL012W",413).
component("YKR009C",618).
component("YOL086C",780).
component("YMR303C",718).
component("YMR083W",693).
component("YGL256W",437).
component("YDL168W",271).
component("YBR145W",204).
component("YPL231W",853).
component("U46_",113).
component("YBR149W",205).
component("YBR149W",206).
component("YJR159W",587).
component("YGL001C",410).
component("YIL094C",520).
component("YHR063C",493).
component("YBR153W",207).
component("YML056C",678).
component("YLR432W",671).
component("YHR216W",510).
component("YAR075W",166).
component("YAR073W",165).
component("YCL030C",231).
component("YDR127W",301).
component("YJR139C",581).
component("YOL126C",785).
component("YKL085W",597).
component("YDL078C",252).
component("YKL029C",592).
component("YOR136W",797).
component("YNL037C",723).
component("YDL066W",251).
component("YNL241C",739).
component("YOL059W",778).
component("YDL022W",245).
component("YLR355C",667).
component("YIL074C",518).
component("YER081W",380).
component("YML054C",677).
component("YDL174C",273).
component("YML086C",681).
component("YIL155C",526).
component("YPR191W",890).
component("YOR065W",791).
component("YJL166W",555).
component("YHR001W-A",482).
component("YGR183C",460).
component("YFR033C",406).
component("YDR529C",347).
component("YBL045C",172).
component("Q0105",18).
component("YGR088W",448).
component("YDR256C",316).
component("YKL026C",591).
component("YIR037W",536).
component("YBR244W",219).
component("YJR078W",572).
component("YJR025C",564).
component("YGR255C",472).
component("U108_",22).
component("YBL098W",176).
component("YMR015C",690).
component("YHR007C",483).
component("YDR402C",336).
component("YGL055W",420).
component("YGR175C",457).
component("YJR104C",575).
component("YHR008C",484).
component("YJL026W",538).
component("YIL066C",517).
component("YGR180C",459).
component("YER070W",377).
component("U38_",108).
component("U36_",107).
component("U35_",106).
component("YDL168W",272).
component("YDR158W",309).
component("YBR006W",179).
component("YPL276W",865).
component("YPL275W",864).
component("YOR388C",830).
component("YOR374W",827).
component("YER073W",378).
component("U68_",129).
component("YGL154C",428).
component("U55_",122).
component("YOR323C",819).
component("YMR170C",702).
component("YMR169C",701).
component("U2_",102).
component("YER178W",393).
component("YBR221C",217).
component("YIL125W",524).
component("U52_",119).
component("YBR166C",210).
component("YNL280C",750).
component("YGL012W",414).
component("U57_",124).
component("YKL216W",615).
component("YDR044W",289).
component("YER014W",361).
component("YKR009C",619).
component("YIL160C",528).
component("YGL205W",431).
component("YMR118C",698).
component("YLR164W",648).
component("YLL041C",628).
component("YKL148C",604).
component("YKL141W",602).
component("YJL045W",539).
component("YDR178W",310).
component("YJR051W",567).
component("YEL047C",355).
component("YDL215C",277).
component("YOR375C",828).
component("YDL215C",278).
component("YAL062W",163).
component("U99_",157).
component("YBR035C",189).
component("YMR189W",704).
component("U56_",123).
component("YHR037W",490).
component("YKR080W",623).
component("YER023W",363).
component("YPL023C",834).
component("YGL125W",425).
component("YOR236W",812).
component("YGR204W",464).
component("YLR142W",643).
component("U62_",127).
component("YKL150W",605).
component("YIL043C",514).
component("YHR042W",491).
component("YOR221C",810).
component("YML120C",684).
component("YKL192C",612).
component("YKL055C",594).
component("YER061C",372).
component("YGR234W",467).
component("YFR030W",405).
component("YPL017C",833).
component("YFL018C",397).
component("YDR353W",331).
component("YER042W",365).
component("YJR137C",580).
component("YPL266W",860).
component("YML110C",683).
component("YBR034C",188).
component("YPL273W",862).
component("YLL062C",631).
component("YDR410C",339).
component("U47_",114).
component("YER091C",385).
component("YJR073C",570).
component("YDR120C",299).
component("YDL033C",247).
component("YOL096C",781).
component("YLR172C",649).
component("YDR019C",285).
component("YBR176W",211).
component("YDR408C",338).
component("YMR120C",699).
component("YBL013W",167).
component("YKL024C",590).
component("YPR074C",879).
component("YBR117C",200).
component("YLR354C",666).
component("YGR043C",443).
component("YMR108W",696).
component("YCL009C",229).
component("YMR062C",692).
component("YNL071W",726).
component("YNR008W",757).
component("YIL160C",529).
component("YNL277W",748).
component("YFL017C",396).
component("YPL231W",854).
component("YER061C",373).
component("U86_",145).
component("YPL001W",832).
component("YDL052C",250).
component("U8_",149).
component("YDR148C",307).
component("YOR377W",829).
component("YGR177C",458).
component("YPL231W",855).
component("YGR147C",453).
component("YDL040C",248).
component("YPL028W",835).
component("YGL017W",415).
component("YPR001W",867).
component("YNR001C",755).
component("YCR005C",235).
component("YDL182W",274).
component("YDL131W",262).
component("YNL117W",730).
component("YIR031C",534).
component("YOR321W",818).
component("YJR143C",582).
component("YGR199W",463).
component("YDR307W",325).
component("YDL095W",257).
component("YDL093W",256).
component("YAL023C",160).
component("YNL029C",722).
component("YIL085C",519).
component("YMR261C",712).
component("YML100W",682).
component("YBR126C",203).
component("YNL192W",738).
component("YBR038W",191).
component("YBR023C",187).
component("YMR306W",720).
component("YLR342W",664).
component("YGR032W",441).
component("YLR209C",650).
component("U104_",21).
component("YOR209C",808).
component("YMR300C",717).
component("YER055C",368).
component("YDR354W",332) :- not remove_orf("YDR354W",332).
component("YFR047C",407).
component("YJR133W",579).
component("YLR209C",651).
component("YML022W",674).
component("YDR441C",342).
component("YDR399W",334).
component("YPR176C",887).
component("YPL172C",845).
component("YNR041C",763).
component("YMR101C",694).
component("YDL090C",255).
component("YBR003W",178).
component("YBR002C",177).
component("YJL167W",556).
component("YJL167W",557).
component("YNL256W",742).
component("YPR069C",876).
component("YDR127W",302).
component("YLR303W",658).
component("YGR012W",439).
component("YJR130C",578).
component("YLR303W",659).
component("YDR035W",287).
component("YBR249C",220).
component("YOR274W",814).
component("YOL143C",787).
component("YBR256C",222).
component("YHR137W",502).
component("YGL202W",430).
component("YLR027C",632).
component("YKL106W",599).
component("YKL104C",598).
component("YGR019W",440).
component("YLR089C",638).
component("U64_",128).
component("U61_",126).
component("U51_",118).
component("YJR148W",583).
component("YHR208W",508).
component("YOR184W",803).
component("YNR058W",766).
component("YIL116W",523).
component("YGL253W",436).
component("YFR053C",408).
component("YOL136C",786).
component("YIL107C",521).
component("YMR013C",689).
component("YMR205C",705).
component("YGR240C",468).
component("YDR248C",315).
component("YCR036W",241).
component("YGR194C",462).
component("YCL040W",233).
component("YJR105W",576).
component("U16_",55).
component("U15_",49).
component("YPL188W",847).
component("YJR049C",566).
component("YEL041W",353).
component("U96_",155).
component("YKL001C",588).
component("YDR236C",313).
component("YML070W",680).
component("YFL053W",400).
component("YHL032C",480).
component("YLR133W",640).
component("YDR531W",349).
component("U83_",143).
component("U82_",142).
component("U81_",141).
component("YMR208W",706).
component("YPL203W",848).
component("YOR061W",790).
component("YKL166C",607).
component("YJL164C",554).
component("YIL035C",513).
component("YHR205W",507).
component("YHR102W",500).
component("YGL019W",416).
component("YHR025W",489).
component("YOR347C",824).
component("YAL038W",162).
component("YNR012W",758).
component("YPR121W",883).
component("YPL258C",857).
component("YOL055C",774).
component("YPL214C",851).
component("U1_",78).
component("YDR009W",284).
component("YBR020W",185).
component("YNL267W",746).
component("YLR305C",661).
component("YFR019W",403).
component("YDR208W",311).
component("YDR127W",303).
component("U21_",89).
component("U20_",86).
component("YDR147W",306).
component("YDR300C",324).
component("YCR012W",236).
component("YER052C",366).
component("YER069W",376).
component("U18_",70).
component("U17_",63).
component("U76_",137).
component("YMR220W",708).
component("YER170W",392).
component("YDR226W",312).
component("YKL067W",596).
component("YOL055C",775).
component("YDR454C",343).
component("YJR057W",568).
component("YOL061W",779).
component("YKL181W",608).
component("YHL011C",477).
component("YER099C",387).
component("YBL068W",175).
component("YOR143C",799).
component("YNL256W",743).
component("YLR328W",662).
component("YBR018C",181).
component("YBR018C",182).
component("YGR007W",438).
component("YLR328W",663).
component("YKR002W",617).
component("YDL103C",260).
component("U94_",154).
component("YJR010W",563).
component("YGL130W",426).
component("YDR530C",348).
component("YCL050C",234).
component("YPR190C",889).
component("YPR187W",888).
component("YPR110C",881).
component("YPR010C",870).
component("YOR341W",823).
component("YOR340C",822).
component("YOR224C",811).
component("YOR210W",809).
component("YOR207C",806).
component("YOR151C",800).
component("YOR116C",794).
component("YOL005C",768).
component("YNR003C",756).
component("YNL248C",741).
component("YNL151C",735).
component("YNL113W",729).
component("YKL144C",603).
component("YJR063W",569).
component("YJL148W",551).
component("YJL140W",550).
component("YIL021W",512).
component("YHR143W-A",503).
component("YGL070C",423).
component("YFL036W",399).
component("YDR404C",337).
component("YDR156W",308).
component("YDR045C",290).
component("YDL150W",269).
component("YDL140C",264).
component("YBR154C",209).
component("YPR175W",886).
component("YPL167C",844).
component("YOR330C",820).
component("YOL115W",784).
component("YNL299W",752).
component("YNL262W",745).
component("YNL102W",728).
component("YJR043C",565).
component("YJR006W",562).
component("YJL090C",543).
component("YIL139C",525).
component("YEL055C",356).
component("YDR419W",340).
component("YDR121W",300).
component("YDL102W",259).
component("YCR014C",237).
component("YBR278W",224).
component("YBL035C",169).
component("YKL035W",593).
component("YHL012W",478).
component("YHR123W",501).
component("YPR113W",882).
component("YBR243C",218).
component("YNL130C",731).
component("YDL142C",268).
component("YPL148C",842).
component("YER026C",364).
component("YCL004W",228).
component("YGR286C",476).
component("YJL068C",540).
component("YDR058C",294).
component("YNR034W",762).
component("YHR163W",505).
component("YGR248W",470).
component("YCR073W-A",242).
component("YDL086W",254).
component("YOL011W",770).
component("YMR008C",687).
component("YMR006C",686).
component("U101_",19).
component("YBL015W",168).
component("YJL068C",541).
component("YPL072W",838).
component("YOR124C",795).
component("YNL186W",737).
component("YMR304W",719).
component("YMR223W",709).
component("YKR098C",626).
component("YJL197W",558).
component("YIL156W",527).
component("YFR010W",402).
component("YER151C",390).
component("YER144C",389).
component("YER098W",386).
component("YDR069C",295).
component("YDL122W",261).
component("YBR058C",192).
component("YBL067C",174).
component("YDR272W",319).
component("U84_",144).
component("YLR377C",669).
component("YDR074W",296).
component("YPL179W",846).
component("YNR032W",760).
component("YML057W",679).
component("YML016C",673).
component("YLR433C",672).
component("YGR123C",451).
component("YER133W",388).
component("YER089C",383).
component("YDR436W",341).
component("YDR075W",297).
component("YDL188C",275).
component("YDL134C",263).
component("YDL047W",249).
component("YDL006W",243).
component("YBR125C",202).
component("YBL056W",173).
component("YPR073C",877).
component("YHR215W",509).
component("YDL024C",246).
component("YBR093C",198).
component("YBR092C",197).
component("YAR071W",164).
component("YIL053W",516).
component("YER062C",374).
component("YHR046C",492).
component("U9_",158).
component("YGR208W",466).
component("YPL228W",852).
component("YMR180C",703).
component("YDL236W",280).
component("YJL155C",553).
component("YPR073C",878).
component("YOR208W",807).
component("YNL053W",725).
component("YMR036C",691).
component("YIR026C",531).
component("YIL113W",522).
component("YFR028C",404).
component("YER075C",379).
component("YDL230W",279).
component("YBR276C",223).
component("U34_",105).
component("U33_",104).
component("U30_",103).
component("U28_",101).
component("U27_",100).
component("U25_",99).
component("U24_",98).
component("YPL268W",861).
component("YOR360C",826).
component("YGL248W",435).
component("YKR031C",620).
component("YPL206C",849).
component("YGL027C",418).
component("YLR286C",656).
component("YJR153W",585).
component("YBR184W",212).
component("YOR190W",804).
component("YLR300W",657).
component("YGR282C",475).
component("YDR261C",317).
component("YDR400W",335).
component("U23_",97).
component("YML035C",675).
component("YJL070C",542).
component("YBR284W",225).
component("U102_",20).
component("YNL045W",724).
component("YLR160C",647).
component("YLR158C",646).
component("YLR157C",645).
component("YLR155C",644).
component("YDR321W",326).
component("YGL037C",419).
component("YMR293C",716).
component("YDR242W",314).
component("YBR208C",214).
component("YMR281W",715).
component("U53_",120).
component("YIR027C",532).
component("YPL111W",841).
component("YIR032C",535).
component("YIR029W",533).
component("YPR062W",875).
component("YMR120C",700).
component("YLR028C",633).
component("YHR144C",504).
component("YGR267C",474).
component("YNL141W",732).
component("YBR153W",208).
component("YDL238C",281).
component("YNL141W",733).
component("YLR245C",654).
component("YML035C",676).
component("YBR084W",195).
component("YJL126W",546).
component("U44_",112).
component("YDL100C",258).
component("U87_",146).
component("U40_",110).
component("YMR267W",713).
component("YBR011C",180).
component("YBR111C",199).
component("YBR252W",221).
component("YCL030C",232).
component("YER005W",360).
component("YIL048W",515).
component("YER166W",391).
component("YDR093W",298).
component("YAL026C",161).
component("YLR231C",652).
component("U88_",147).
component("YLR134W",641).
component("YLR044C",634).
component("YGR087C",447).
component("YDR380W",333).
component("YDL080C",253).
component("U98_",156).
component("YMR250W",711).
component("YKL184W",611).
component("YEL021W",352).
component("YNR043W",764).
component("U93_",153).
component("YDR047W",292).
component("U54_",121).
component("YKL211C",613) :- not remove_orf("YKL211C",613).
component("YKR097W",625).
component("YOL052C",773).
component("YNL169C",736).
component("YGR170W",455).
component("YKL060C",595).
component("YNL256W",744).
component("YDR294C",321).
component("YEL046C",354).
component("YNR033W",761).
component("YPR006C",869).
component("YER065C",375).
component("YKL211C",614) :- not remove_orf("YKL211C",614).
component("YER090W",614) :- not remove_orf("YER090W",614).
component("YER090W",384) :- not remove_orf("YER090W",384).
component("YDR127W",304).
component("YPL281C",866).
component("YOR393W",831).
component("YMR323W",721).
component("YHR174W",506).
component("YGR254W",471).
component("YPL262W",858).
component("YGL026C",417) :- not remove_orf("YGL026C",417).
component("YGR155W",454).
component("YLR304C",660).
component("YJL200C",559).
component("YNL316C",753).
component("YKL182W",609).
component("YPL212C",850).
component("YNL292W",751).
component("YGL063W",422).
component("YFL001W",394).
component("YOR278W",815).
component("YPR002W",868).
component("U49_",115).
component("YDR127W",305).
component("YGL148W",427).
component("YIL168W",530).
component("YER086W",381).
component("YLR359W",668).
component("YAL012W",159).
component("YFR055W",409).
component("YJL005W",537).
component("YOR176W",802).
component("YJL121C",545).
component("YBR019C",183).
component("YBR019C",184).
component("YDR050C",293).
component("YDR007W",283) :- not remove_orf("YDR007W",283).
component("YOR095C",793).
component("YER003C",359).
component("YBR196C",213).
component("YGL001C",411).
component("U14_",42).
component("YOL056W",776).
component("YKL152C",606).
component("YDL021W",244).
component("YMR105C",695).
component("YKL127W",600).
component("YEL058W",357).
component("YPR060C",874).
component("YHR072W",494).
component("YJL153C",552).
component("YPL097W",839).
component("YGR185C",461).
component("YGR264C",473).
component("YGR171C",456).
component("YHR011W",485).
component("YDR023W",286).
component("YPL104W",840).
component("YLL018C",627).
component("YPR081C",880).
component("YBR121C",201).
component("YHR020W",488).
component("YER087W",382).
component("YNL247W",740).
component("YOL033W",772).
component("YGL245W",434).
component("YHR091C",496).
component("YDR341C",327).
component("YOL097C",782).
component("YDR268W",318).
component("YPR047W",873).
component("YLR060W",636).
component("YFL022C",398).
component("YPR033C",871).
component("YHR019C",486).
component("YCR024C",238).
component("YHR019C",487).
component("YPL160W",843).
component("YLR382C",670).
component("YNL073W",727).
component("YDR037W",288).
component("YOR335C",821).
component("YGR094W",449).
component("YOR317W",817).
component("YMR246W",710).
component("YIL009W",511).
component("YER015W",362).
component("YOR142W",798).
component("YGR244C",469).
component("YPR035W",872).
component("U89_",148).
component("YOR241W",813).
component("YMR113W",697).
component("YKL132C",601).
component("YJL101C",544).
component("U92_",152).
component("YGL234W",432).
component("U91_",151).
component("U90_",150).
component("YDL141W",265).
component("YDL141W",266).
component("YGL234W",433).
component("YDL141W",267).
component("YJR103W",574).
component("YBL039C",170).
component("YGR204W",465).
component("YBR084W",196).
component("YOL058W",777).
component("YBR208C",215).
component("YHR074W",495).
component("YMR217W",707).
component("YGR061C",446).
component("YPR145W",885).
component("YGR124W",452).
component("YOR303W",816).
component("YJR109C",577).
component("YJL130C",548).
component("YGL062W",421).
component("YBR218C",216).
component("YPL231W",856).
component("YNR016C",759).
component("YKL182W",610).
component("YGR037C",442).
component("YOR005C",789).
component("YDL164C",270).
component("YOL010W",769).
component("YPR138C",884).
component("YPL274W",863).
component("YPL265W",859).
component("YPL057C",837).
component("YPL036W",836).
component("YOR348C",825).
component("YOR192C",805).
component("YOR171C",801).
component("YOR130C",796).
component("YOR071C",792).
component("YOL156W",788).
component("YOL103W",783).
component("YOL020W",771) :- not remove_orf("YOL020W",771).
component("YNR072W",767).
component("YNR056C",765).
component("YNL318C",754).
component("YNL268W",747).
component("YNL142W",734).
component("YMR272C",714).
component("YMR011W",688).
component("YML123C",685).
component("YLR348C",665).
component("YLR260W",655).
component("YLR237W",653).
component("YLR138W",642).
component("YLR100C",639).
component("YLR081W",637).
component("YLL061W",630).
component("YLL043W",629).
component("YKR093W",624).
component("YKR053C",622).
component("YKR039W",621) :- not remove_orf("YKR039W",621).
component("YKL217W",616).
component("YKL004W",589).
component("YJR158W",586).
component("YJR152W",584).
component("YJR095W",573).
component("YJR077C",571).
component("YJL219W",561).
component("YJL214W",560).
component("YJL134W",549).
component("YJL129C",547).
component("YHR096C",499).
component("YHR094C",498).
component("YHR092C",497).
component("YHL036W",481).
component("YHL016C",479).
component("YGR121C",450).
component("YGR055W",444).
component("YGL186C",429).
component("YGL077C",424).
component("YGL008C",412).
component("YFL055W",401).
component("YFL011W",395).
component("YER060W-A",371).
component("YER060W",370).
component("YER056C",369).
component("YER053C",367).
component("YEL069C",358).
component("YEL017C-A",351).
component("YDR536W",350).
component("YDR508C",346).
component("YDR503C",345).
component("YDR497C",344).
component("YDR345C",330).
component("YDR343C",329).
component("YDR342C",328).
component("YDR297W",323).
component("YDR294C",322).
component("YDR284C",320).
component("YDR046C",291) :- not remove_orf("YDR046C",291).
component("YDL245C",282).
component("YDL210W",276).
component("YCR032W",240).
component("YCR024C-A",239).
component("YCL025C",230).
component("YBR298C",227).
component("YBR291C",226).
component("YBR069C",194) :- not remove_orf("YBR069C",194).
component("YBR068C",193) :- not remove_orf("YBR068C",193).
component("YBR036C",190).
component("YBR021W",186).
component("YBL042C",171).
component("U7_",140).
component("U79_",139).
component("U78_",138).
component("U75_",136).
component("U74_",135).
component("U73_",134).
component("U72_",133).
component("U71_",132).
component("U6_",131).
component("U69_",130).
component("U5_",125).
component("U50_",117).
component("U4_",116).
component("U41_",111).
component("U3_",109).
component("U229_",96).
component("U228_",95).
component("U227_",94).
component("U225_",93).
component("U223_",92).
component("U222_",91).
component("U220_",90).
component("U219_",88).
component("U215_",87).
component("U208_",85).
component("U207_",84).
component("U206_",83).
component("U205_",82).
component("U204_",81).
component("U202_",80).
component("U200_",79).
component("U198_",77).
component("U196_",76).
component("U194_",75).
component("U193_",74).
component("U192_",73).
component("U191_",72).
component("U190_",71).
component("U188_",69).
component("U186_",68).
component("U185_",67).
component("U184_",66).
component("U182_",65).
component("U180_",64).
component("U178_",62).
component("U177_",61).
component("U176_",60).
component("U175_",59).
component("U174_",58).
component("U172_",57).
component("U171_",56).
component("U168_",54).
component("U167_",53).
component("U163_",52).
component("U162_",51).
component("U160_",50).
component("U159_",48).
component("U158_",47).
component("U155_",46).
component("U154_",45).
component("U153_",44).
component("U152_",43).
component("U149_",41).
component("U147_",40).
component("U143_",39).
component("U141_",38).
component("U136_",37).
component("U134_",36).
component("U132_",35).
component("U129_",34).
component("U128_",33).
component("U127_",32).
component("U122_",31).
component("U120_",30).
component("U119_",29).
component("U116_",28).
component("U115_",27).
component("U114_",26).
component("U112_",25).
component("U110_",24).
component("U10_",23).
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


catalyst(6390,749).
catalyst(6300,635).
catalyst(6350,445).
catalyst(6380,445).
catalyst(6280,413).
catalyst(7301,618).
catalyst(7302,618).
catalyst(7501,780).
catalyst(7502,780).
catalyst(7501,718).
catalyst(7502,718).
catalyst(7511,693).
catalyst(7512,693).
catalyst(7501,437).
catalyst(7502,437).
catalyst(7501,271).
catalyst(7502,271).
catalyst(7501,204).
catalyst(7502,204).
catalyst(10781,853).
catalyst(10782,853).
catalyst(10801,853).
catalyst(10802,853).
catalyst(10821,853).
catalyst(10822,853).
catalyst(10831,853).
catalyst(10832,853).
catalyst(10851,853).
catalyst(10852,853).
catalyst(4510,113).
catalyst(10391,205).
catalyst(10392,205).
catalyst(4850,206).
catalyst(7780,587).
catalyst(10251,410).
catalyst(10252,410).
catalyst(10271,410).
catalyst(10272,410).
catalyst(10281,410).
catalyst(10282,410).
catalyst(10311,410).
catalyst(10312,410).
catalyst(10321,410).
catalyst(10322,410).
catalyst(10331,410).
catalyst(10332,410).
catalyst(10341,410).
catalyst(10342,410).
catalyst(10351,410).
catalyst(10352,410).
catalyst(10361,410).
catalyst(10362,410).
catalyst(10371,410).
catalyst(10372,410).
catalyst(10381,410).
catalyst(10382,410).
catalyst(4141,520).
catalyst(4142,520).
catalyst(2350,493).
catalyst(2850,207).
catalyst(6040,678).
catalyst(6040,671).
catalyst(6040,510).
catalyst(6040,166).
catalyst(6040,165).
catalyst(3800,231).
catalyst(3730,301).
catalyst(4600,581).
catalyst(4610,581).
catalyst(8031,785).
catalyst(8032,785).
catalyst(8041,597).
catalyst(8042,597).
catalyst(8031,252).
catalyst(8032,252).
catalyst(7970,592).
catalyst(10861,797).
catalyst(10862,797).
catalyst(8170,723).
catalyst(8140,251).
catalyst(8160,251).
catalyst(7961,739).
catalyst(7962,739).
catalyst(3020,778).
catalyst(3020,245).
catalyst(2340,667).
catalyst(4230,667).
catalyst(4240,667).
catalyst(4710,518).
catalyst(4710,380).
catalyst(7370,677).
catalyst(7360,273).
catalyst(10231,681).
catalyst(10232,681).
catalyst(3000,526).
catalyst(10651,890).
catalyst(10652,890).
catalyst(10651,791).
catalyst(10652,791).
catalyst(10651,555).
catalyst(10652,555).
catalyst(10651,482).
catalyst(10652,482).
catalyst(10651,460).
catalyst(10652,460).
catalyst(10651,406).
catalyst(10652,406).
catalyst(10651,347).
catalyst(10652,347).
catalyst(10651,172).
catalyst(10652,172).
catalyst(10651,18).
catalyst(10652,18).
catalyst(3580,448).
catalyst(3580,316).
catalyst(3141,591).
catalyst(3142,591).
catalyst(3141,536).
catalyst(3142,536).
catalyst(3141,219).
catalyst(3142,219).
catalyst(3520,572).
catalyst(3470,564).
catalyst(1820,472).
catalyst(1840,22).
catalyst(3490,176).
catalyst(6290,690).
catalyst(6400,483).
catalyst(10031,336).
catalyst(10032,336).
catalyst(10051,336).
catalyst(10052,336).
catalyst(10021,420).
catalyst(10022,420).
catalyst(6420,457).
catalyst(10011,575).
catalyst(10012,575).
catalyst(10011,484).
catalyst(10012,484).
catalyst(10601,538).
catalyst(10602,538).
catalyst(10611,538).
catalyst(10612,538).
catalyst(5140,517).
catalyst(10601,459).
catalyst(10602,459).
catalyst(10611,459).
catalyst(10612,459).
catalyst(5110,377).
catalyst(5120,377).
catalyst(5130,377).
catalyst(5140,377).
catalyst(5070,108).
catalyst(5090,107).
catalyst(5100,106).
catalyst(7571,272).
catalyst(7572,272).
catalyst(4620,309).
catalyst(5010,179).
catalyst(7350,865).
catalyst(7350,864).
catalyst(7350,830).
catalyst(3540,827).
catalyst(3550,827).
catalyst(3540,378).
catalyst(3220,129).
catalyst(10731,428).
catalyst(10732,428).
catalyst(10741,428).
catalyst(10742,428).
catalyst(10751,428).
catalyst(10752,428).
catalyst(10761,428).
catalyst(10762,428).
catalyst(3450,122).
catalyst(3290,819).
catalyst(3300,819).
catalyst(3560,702).
catalyst(3560,701).
catalyst(7440,102).
catalyst(8210,393).
catalyst(10681,217).
catalyst(10682,217).
catalyst(10691,217).
catalyst(10692,217).
catalyst(10701,217).
catalyst(10702,217).
catalyst(10721,217).
catalyst(10722,217).
catalyst(8120,524).
catalyst(3640,119).
catalyst(3660,210).
catalyst(10211,750).
catalyst(10212,750).
catalyst(10201,414).
catalyst(10202,414).
catalyst(3430,124).
catalyst(5901,615).
catalyst(5902,615).
catalyst(1950,289).
catalyst(1940,361).
catalyst(7010,619).
catalyst(7010,528).
catalyst(7010,431).
catalyst(10671,698).
catalyst(10672,698).
catalyst(10671,648).
catalyst(10672,648).
catalyst(10671,628).
catalyst(10672,628).
catalyst(10671,604).
catalyst(10672,604).
catalyst(7411,602).
catalyst(7412,602).
catalyst(8091,602).
catalyst(8092,602).
catalyst(10671,539).
catalyst(10672,539).
catalyst(10671,310).
catalyst(10672,310).
catalyst(8070,567).
catalyst(8080,355).
catalyst(10191,277).
catalyst(10192,277).
catalyst(4910,828).
catalyst(4920,278).
catalyst(4910,163).
catalyst(2210,157).
catalyst(2700,189).
catalyst(2711,189).
catalyst(2712,189).
catalyst(2721,189).
catalyst(2722,189).
catalyst(2731,189).
catalyst(2732,189).
catalyst(4551,704).
catalyst(4552,704).
catalyst(3440,123).
catalyst(4950,490).
catalyst(2380,623).
catalyst(3240,363).
catalyst(3260,363).
catalyst(2450,834).
catalyst(2450,425).
catalyst(2490,812).
catalyst(2500,812).
catalyst(2431,464).
catalyst(2432,464).
catalyst(3230,643).
catalyst(3350,127).
catalyst(10161,605).
catalyst(10162,605).
catalyst(10161,514).
catalyst(10162,514).
catalyst(7420,491).
catalyst(7170,810).
catalyst(7190,810).
catalyst(7220,810).
catalyst(7260,684).
catalyst(7170,612).
catalyst(7190,612).
catalyst(7220,612).
catalyst(7260,612).
catalyst(7170,594).
catalyst(7190,594).
catalyst(7220,594).
catalyst(7170,372).
catalyst(7190,372).
catalyst(7220,372).
catalyst(10111,467).
catalyst(10112,467).
catalyst(10121,467).
catalyst(10122,467).
catalyst(4371,405).
catalyst(4372,405).
catalyst(10091,833).
catalyst(10092,833).
catalyst(10101,833).
catalyst(10102,833).
catalyst(10701,833).
catalyst(10702,833).
catalyst(10091,397).
catalyst(10092,397).
catalyst(10101,397).
catalyst(10102,397).
catalyst(10701,397).
catalyst(10702,397).
catalyst(5750,331).
catalyst(10081,365).
catalyst(10082,365).
catalyst(4371,580).
catalyst(4372,580).
catalyst(1850,860).
catalyst(1830,683).
catalyst(3770,188).
catalyst(4750,862).
catalyst(4750,631).
catalyst(9961,339).
catalyst(9962,339).
catalyst(4470,114).
catalyst(4480,385).
catalyst(6860,570).
catalyst(9991,299).
catalyst(9992,299).
catalyst(9981,247).
catalyst(9982,247).
catalyst(1810,781).
catalyst(4400,649).
catalyst(4640,285).
catalyst(2360,211).
catalyst(6140,338).
catalyst(6071,699).
catalyst(6072,699).
catalyst(2370,167).
catalyst(5281,590).
catalyst(5282,590).
catalyst(7901,879).
catalyst(7902,879).
catalyst(7911,879).
catalyst(7912,879).
catalyst(7901,200).
catalyst(7902,200).
catalyst(7911,200).
catalyst(7912,200).
catalyst(7891,666).
catalyst(7892,666).
catalyst(7891,443).
catalyst(7892,443).
catalyst(4250,696).
catalyst(10551,229).
catalyst(10552,229).
catalyst(10571,229).
catalyst(10572,229).
catalyst(10581,229).
catalyst(10582,229).
catalyst(10721,229).
catalyst(10722,229).
catalyst(4050,692).
catalyst(10541,726).
catalyst(10542,726).
catalyst(10701,726).
catalyst(10702,726).
catalyst(9761,757).
catalyst(9762,757).
catalyst(7290,529).
catalyst(4451,748).
catalyst(4452,748).
catalyst(4991,396).
catalyst(4992,396).
catalyst(10451,854).
catalyst(10452,854).
catalyst(10481,854).
catalyst(10482,854).
catalyst(10491,854).
catalyst(10492,854).
catalyst(10501,854).
catalyst(10502,854).
catalyst(10521,854).
catalyst(10522,854).
catalyst(10531,854).
catalyst(10532,854).
catalyst(7130,373).
catalyst(2651,145).
catalyst(2652,145).
catalyst(9931,832).
catalyst(9932,832).
catalyst(6950,250).
catalyst(6950,149).
catalyst(10441,307).
catalyst(10442,307).
catalyst(9921,829).
catalyst(9922,829).
catalyst(9921,458).
catalyst(9922,458).
catalyst(9791,855).
catalyst(9792,855).
catalyst(9811,855).
catalyst(9812,855).
catalyst(9831,855).
catalyst(9832,855).
catalyst(9861,855).
catalyst(9862,855).
catalyst(9901,855).
catalyst(9902,855).
catalyst(9911,855).
catalyst(9912,855).
catalyst(3170,453).
catalyst(3170,248).
catalyst(7271,835).
catalyst(7272,835).
catalyst(7281,835).
catalyst(7282,835).
catalyst(9751,415).
catalyst(9752,415).
catalyst(8190,867).
catalyst(8190,755).
catalyst(8200,235).
catalyst(7520,274).
catalyst(7530,274).
catalyst(7530,262).
catalyst(8010,730).
catalyst(8010,534).
catalyst(3070,818).
catalyst(3070,582).
catalyst(3070,463).
catalyst(9741,325).
catalyst(9742,325).
catalyst(3070,257).
catalyst(3070,256).
catalyst(3070,160).
catalyst(9691,722).
catalyst(9692,722).
catalyst(9701,722).
catalyst(9702,722).
catalyst(9691,519).
catalyst(9692,519).
catalyst(9701,519).
catalyst(9702,519).
catalyst(7630,712).
catalyst(7630,682).
catalyst(7630,203).
catalyst(4960,738).
catalyst(4960,191).
catalyst(4960,187).
catalyst(3110,720).
catalyst(3110,664).
catalyst(3110,441).
catalyst(2041,650).
catalyst(2042,650).
catalyst(2051,650).
catalyst(2052,650).
catalyst(5561,650).
catalyst(5562,650).
catalyst(5571,650).
catalyst(5572,650).
catalyst(5581,650).
catalyst(5582,650).
catalyst(5591,650).
catalyst(5592,650).
catalyst(5601,650).
catalyst(5602,650).
catalyst(5611,650).
catalyst(5612,650).
catalyst(5621,650).
catalyst(5622,650).
catalyst(2121,21).
catalyst(2122,21).
catalyst(2020,808).
catalyst(6160,717).
catalyst(3870,368).
catalyst(3620,332) :- not remove_reaction(3620,332).
catalyst(2110,407).
catalyst(2190,407).
catalyst(5550,579).
catalyst(5791,651).
catalyst(5792,651).
catalyst(5801,651).
catalyst(5802,651).
catalyst(5650,674).
catalyst(5650,342).
catalyst(5310,334).
catalyst(5320,334).
catalyst(1880,887).
catalyst(1880,845).
catalyst(1880,763).
catalyst(1880,694).
catalyst(1880,255).
catalyst(1880,178).
catalyst(1880,177).
catalyst(6450,556).
catalyst(6440,557).
catalyst(2520,742).
catalyst(2530,742).
catalyst(3930,876).
catalyst(3710,302).
catalyst(4430,658).
catalyst(4350,439).
catalyst(9591,578).
catalyst(9592,578).
catalyst(9601,578).
catalyst(9602,578).
catalyst(9611,578).
catalyst(9612,578).
catalyst(9621,578).
catalyst(9622,578).
catalyst(9631,578).
catalyst(9632,578).
catalyst(9641,578).
catalyst(9642,578).
catalyst(9651,578).
catalyst(9652,578).
catalyst(9661,578).
catalyst(9662,578).
catalyst(4440,659).
catalyst(3760,287).
catalyst(3760,220).
catalyst(9681,814).
catalyst(9682,814).
catalyst(10411,787).
catalyst(10412,787).
catalyst(2820,222).
catalyst(3650,502).
catalyst(3671,502).
catalyst(3672,502).
catalyst(3650,430).
catalyst(3571,632).
catalyst(3572,632).
catalyst(4811,632).
catalyst(4812,632).
catalyst(3571,599).
catalyst(3572,599).
catalyst(5000,598).
catalyst(5020,440).
catalyst(4771,638).
catalyst(4772,638).
catalyst(3330,128).
catalyst(3360,126).
catalyst(4121,118).
catalyst(4122,118).
catalyst(4271,583).
catalyst(4272,583).
catalyst(4281,583).
catalyst(4282,583).
catalyst(4291,583).
catalyst(4292,583).
catalyst(4301,508).
catalyst(4302,508).
catalyst(2691,803).
catalyst(2692,803).
catalyst(2641,766).
catalyst(2642,766).
catalyst(3820,523).
catalyst(8360,436).
catalyst(8370,436).
catalyst(8380,436).
catalyst(8390,436).
catalyst(8360,408).
catalyst(8370,408).
catalyst(8380,408).
catalyst(8390,408).
catalyst(7810,786).
catalyst(7810,521).
catalyst(3090,689).
catalyst(8320,705).
catalyst(8300,468).
catalyst(8310,468).
catalyst(8320,468).
catalyst(9571,315).
catalyst(9572,315).
catalyst(7880,241).
catalyst(4840,462).
catalyst(8370,233).
catalyst(8380,233).
catalyst(8400,233).
catalyst(5520,576).
catalyst(5840,55).
catalyst(5850,49).
catalyst(2070,847).
catalyst(2070,566).
catalyst(2070,353).
catalyst(2260,155).
catalyst(2270,155).
catalyst(4380,588).
catalyst(2790,313).
catalyst(3030,680).
catalyst(3030,400).
catalyst(3010,480).
catalyst(6850,640).
catalyst(2320,349).
catalyst(2740,143).
catalyst(2750,142).
catalyst(2760,141).
catalyst(6490,706).
catalyst(6510,706).
catalyst(6520,706).
catalyst(9561,848).
catalyst(9562,848).
catalyst(9561,790).
catalyst(9562,790).
catalyst(9561,607).
catalyst(9562,607).
catalyst(9561,554).
catalyst(9562,554).
catalyst(9561,513).
catalyst(9562,513).
catalyst(9561,507).
catalyst(9562,507).
catalyst(9561,500).
catalyst(9562,500).
catalyst(9561,416).
catalyst(9562,416).
catalyst(4590,489).
catalyst(8220,824).
catalyst(8220,162).
catalyst(5810,758).
catalyst(5820,758).
catalyst(2950,883).
catalyst(2950,857).
catalyst(2950,774).
catalyst(2910,851).
catalyst(7790,78).
catalyst(9581,284).
catalyst(9582,284).
catalyst(7770,185).
catalyst(6750,746).
catalyst(6750,661).
catalyst(6740,403).
catalyst(6740,311).
catalyst(3720,303).
catalyst(5330,89).
catalyst(5340,86).
catalyst(6820,306).
catalyst(3310,324).
catalyst(8261,236).
catalyst(8262,236).
catalyst(4630,366).
catalyst(4040,376).
catalyst(5701,70).
catalyst(5702,70).
catalyst(5711,63).
catalyst(5712,63).
catalyst(2891,137).
catalyst(2892,137).
catalyst(6480,708).
catalyst(5461,392).
catalyst(5462,392).
catalyst(5471,392).
catalyst(5472,392).
catalyst(5481,392).
catalyst(5482,392).
catalyst(5501,312).
catalyst(5502,312).
catalyst(5511,312).
catalyst(5512,312).
catalyst(5381,596).
catalyst(5382,596).
catalyst(5391,596).
catalyst(5392,596).
catalyst(5411,596).
catalyst(5412,596).
catalyst(5421,596).
catalyst(5422,596).
catalyst(5431,596).
catalyst(5432,596).
catalyst(5441,596).
catalyst(5442,596).
catalyst(5451,596).
catalyst(5452,596).
catalyst(2940,775).
catalyst(6171,343).
catalyst(6172,343).
catalyst(6181,343).
catalyst(6182,343).
catalyst(6191,343).
catalyst(6192,343).
catalyst(5761,568).
catalyst(5762,568).
catalyst(6241,779).
catalyst(6242,779).
catalyst(6241,608).
catalyst(6242,608).
catalyst(6241,477).
catalyst(6242,477).
catalyst(6241,387).
catalyst(6242,387).
catalyst(6241,175).
catalyst(6242,175).
catalyst(2970,799).
catalyst(2980,799).
catalyst(2560,743).
catalyst(9541,662).
catalyst(9542,662).
catalyst(7761,181).
catalyst(7762,181).
catalyst(7641,182).
catalyst(7642,182).
catalyst(6810,438).
catalyst(2090,663).
catalyst(2100,663).
catalyst(2180,663).
catalyst(9521,617).
catalyst(9522,617).
catalyst(4971,260).
catalyst(4972,260).
catalyst(2280,154).
catalyst(4390,563).
catalyst(9421,426).
catalyst(9422,426).
catalyst(5960,348).
catalyst(5940,234).
catalyst(5950,234).
catalyst(9481,889).
catalyst(9482,889).
catalyst(9491,889).
catalyst(9492,889).
catalyst(9501,889).
catalyst(9502,889).
catalyst(9511,889).
catalyst(9512,889).
catalyst(9521,889).
catalyst(9522,889).
catalyst(9481,888).
catalyst(9482,888).
catalyst(9491,888).
catalyst(9492,888).
catalyst(9501,888).
catalyst(9502,888).
catalyst(9511,888).
catalyst(9512,888).
catalyst(9521,888).
catalyst(9522,888).
catalyst(9481,881).
catalyst(9482,881).
catalyst(9491,881).
catalyst(9492,881).
catalyst(9501,881).
catalyst(9502,881).
catalyst(9511,881).
catalyst(9512,881).
catalyst(9521,881).
catalyst(9522,881).
catalyst(9481,870).
catalyst(9482,870).
catalyst(9491,870).
catalyst(9492,870).
catalyst(9501,870).
catalyst(9502,870).
catalyst(9511,870).
catalyst(9512,870).
catalyst(9521,870).
catalyst(9522,870).
catalyst(9481,823).
catalyst(9482,823).
catalyst(9491,823).
catalyst(9492,823).
catalyst(9501,823).
catalyst(9502,823).
catalyst(9511,823).
catalyst(9512,823).
catalyst(9521,823).
catalyst(9522,823).
catalyst(9481,822).
catalyst(9482,822).
catalyst(9491,822).
catalyst(9492,822).
catalyst(9501,822).
catalyst(9502,822).
catalyst(9511,822).
catalyst(9512,822).
catalyst(9521,822).
catalyst(9522,822).
catalyst(9481,811).
catalyst(9482,811).
catalyst(9491,811).
catalyst(9492,811).
catalyst(9501,811).
catalyst(9502,811).
catalyst(9511,811).
catalyst(9512,811).
catalyst(9521,811).
catalyst(9522,811).
catalyst(9481,809).
catalyst(9482,809).
catalyst(9491,809).
catalyst(9492,809).
catalyst(9501,809).
catalyst(9502,809).
catalyst(9511,809).
catalyst(9512,809).
catalyst(9521,809).
catalyst(9522,809).
catalyst(9481,806).
catalyst(9482,806).
catalyst(9491,806).
catalyst(9492,806).
catalyst(9501,806).
catalyst(9502,806).
catalyst(9511,806).
catalyst(9512,806).
catalyst(9521,806).
catalyst(9522,806).
catalyst(9481,800).
catalyst(9482,800).
catalyst(9491,800).
catalyst(9492,800).
catalyst(9501,800).
catalyst(9502,800).
catalyst(9511,800).
catalyst(9512,800).
catalyst(9521,800).
catalyst(9522,800).
catalyst(9481,794).
catalyst(9482,794).
catalyst(9491,794).
catalyst(9492,794).
catalyst(9501,794).
catalyst(9502,794).
catalyst(9511,794).
catalyst(9512,794).
catalyst(9521,794).
catalyst(9522,794).
catalyst(9481,768).
catalyst(9482,768).
catalyst(9491,768).
catalyst(9492,768).
catalyst(9501,768).
catalyst(9502,768).
catalyst(9511,768).
catalyst(9512,768).
catalyst(9521,768).
catalyst(9522,768).
catalyst(9481,756).
catalyst(9482,756).
catalyst(9491,756).
catalyst(9492,756).
catalyst(9501,756).
catalyst(9502,756).
catalyst(9511,756).
catalyst(9512,756).
catalyst(9521,756).
catalyst(9522,756).
catalyst(9481,741).
catalyst(9482,741).
catalyst(9491,741).
catalyst(9492,741).
catalyst(9501,741).
catalyst(9502,741).
catalyst(9511,741).
catalyst(9512,741).
catalyst(9521,741).
catalyst(9522,741).
catalyst(9481,735).
catalyst(9482,735).
catalyst(9491,735).
catalyst(9492,735).
catalyst(9501,735).
catalyst(9502,735).
catalyst(9511,735).
catalyst(9512,735).
catalyst(9521,735).
catalyst(9522,735).
catalyst(9481,729).
catalyst(9482,729).
catalyst(9491,729).
catalyst(9492,729).
catalyst(9501,729).
catalyst(9502,729).
catalyst(9511,729).
catalyst(9512,729).
catalyst(9521,729).
catalyst(9522,729).
catalyst(9481,603).
catalyst(9482,603).
catalyst(9491,603).
catalyst(9492,603).
catalyst(9501,603).
catalyst(9502,603).
catalyst(9511,603).
catalyst(9512,603).
catalyst(9521,603).
catalyst(9522,603).
catalyst(9481,569).
catalyst(9482,569).
catalyst(9491,569).
catalyst(9492,569).
catalyst(9501,569).
catalyst(9502,569).
catalyst(9511,569).
catalyst(9512,569).
catalyst(9521,569).
catalyst(9522,569).
catalyst(9481,551).
catalyst(9482,551).
catalyst(9491,551).
catalyst(9492,551).
catalyst(9501,551).
catalyst(9502,551).
catalyst(9511,551).
catalyst(9512,551).
catalyst(9521,551).
catalyst(9522,551).
catalyst(9481,550).
catalyst(9482,550).
catalyst(9491,550).
catalyst(9492,550).
catalyst(9501,550).
catalyst(9502,550).
catalyst(9511,550).
catalyst(9512,550).
catalyst(9521,550).
catalyst(9522,550).
catalyst(9481,512).
catalyst(9482,512).
catalyst(9491,512).
catalyst(9492,512).
catalyst(9501,512).
catalyst(9502,512).
catalyst(9511,512).
catalyst(9512,512).
catalyst(9521,512).
catalyst(9522,512).
catalyst(9481,503).
catalyst(9482,503).
catalyst(9491,503).
catalyst(9492,503).
catalyst(9501,503).
catalyst(9502,503).
catalyst(9511,503).
catalyst(9512,503).
catalyst(9521,503).
catalyst(9522,503).
catalyst(9481,423).
catalyst(9482,423).
catalyst(9491,423).
catalyst(9492,423).
catalyst(9501,423).
catalyst(9502,423).
catalyst(9511,423).
catalyst(9512,423).
catalyst(9521,423).
catalyst(9522,423).
catalyst(9481,399).
catalyst(9482,399).
catalyst(9491,399).
catalyst(9492,399).
catalyst(9501,399).
catalyst(9502,399).
catalyst(9511,399).
catalyst(9512,399).
catalyst(9521,399).
catalyst(9522,399).
catalyst(9481,337).
catalyst(9482,337).
catalyst(9491,337).
catalyst(9492,337).
catalyst(9501,337).
catalyst(9502,337).
catalyst(9511,337).
catalyst(9512,337).
catalyst(9521,337).
catalyst(9522,337).
catalyst(9481,308).
catalyst(9482,308).
catalyst(9491,308).
catalyst(9492,308).
catalyst(9501,308).
catalyst(9502,308).
catalyst(9511,308).
catalyst(9512,308).
catalyst(9521,308).
catalyst(9522,308).
catalyst(9481,290).
catalyst(9482,290).
catalyst(9491,290).
catalyst(9492,290).
catalyst(9501,290).
catalyst(9502,290).
catalyst(9511,290).
catalyst(9512,290).
catalyst(9521,290).
catalyst(9522,290).
catalyst(9481,269).
catalyst(9482,269).
catalyst(9491,269).
catalyst(9492,269).
catalyst(9501,269).
catalyst(9502,269).
catalyst(9511,269).
catalyst(9512,269).
catalyst(9521,269).
catalyst(9522,269).
catalyst(9481,264).
catalyst(9482,264).
catalyst(9491,264).
catalyst(9492,264).
catalyst(9501,264).
catalyst(9502,264).
catalyst(9511,264).
catalyst(9512,264).
catalyst(9521,264).
catalyst(9522,264).
catalyst(9481,209).
catalyst(9482,209).
catalyst(9491,209).
catalyst(9492,209).
catalyst(9501,209).
catalyst(9502,209).
catalyst(9511,209).
catalyst(9512,209).
catalyst(9521,209).
catalyst(9522,209).
catalyst(9441,886).
catalyst(9442,886).
catalyst(9461,886).
catalyst(9462,886).
catalyst(9471,886).
catalyst(9472,886).
catalyst(9441,844).
catalyst(9442,844).
catalyst(9461,844).
catalyst(9462,844).
catalyst(9471,844).
catalyst(9472,844).
catalyst(9441,820).
catalyst(9442,820).
catalyst(9461,820).
catalyst(9462,820).
catalyst(9471,820).
catalyst(9472,820).
catalyst(9441,784).
catalyst(9442,784).
catalyst(9461,784).
catalyst(9462,784).
catalyst(9471,784).
catalyst(9472,784).
catalyst(9441,752).
catalyst(9442,752).
catalyst(9461,752).
catalyst(9462,752).
catalyst(9471,752).
catalyst(9472,752).
catalyst(9441,745).
catalyst(9442,745).
catalyst(9461,745).
catalyst(9462,745).
catalyst(9471,745).
catalyst(9472,745).
catalyst(9441,728).
catalyst(9442,728).
catalyst(9461,728).
catalyst(9462,728).
catalyst(9471,728).
catalyst(9472,728).
catalyst(9441,565).
catalyst(9442,565).
catalyst(9461,565).
catalyst(9462,565).
catalyst(9471,565).
catalyst(9472,565).
catalyst(9441,562).
catalyst(9442,562).
catalyst(9461,562).
catalyst(9462,562).
catalyst(9471,562).
catalyst(9472,562).
catalyst(9441,543).
catalyst(9442,543).
catalyst(9461,543).
catalyst(9462,543).
catalyst(9471,543).
catalyst(9472,543).
catalyst(9441,525).
catalyst(9442,525).
catalyst(9461,525).
catalyst(9462,525).
catalyst(9471,525).
catalyst(9472,525).
catalyst(9441,356).
catalyst(9442,356).
catalyst(9461,356).
catalyst(9462,356).
catalyst(9471,356).
catalyst(9472,356).
catalyst(9441,340).
catalyst(9442,340).
catalyst(9461,340).
catalyst(9462,340).
catalyst(9471,340).
catalyst(9472,340).
catalyst(9441,300).
catalyst(9442,300).
catalyst(9461,300).
catalyst(9462,300).
catalyst(9471,300).
catalyst(9472,300).
catalyst(9441,259).
catalyst(9442,259).
catalyst(9461,259).
catalyst(9462,259).
catalyst(9471,259).
catalyst(9472,259).
catalyst(9441,237).
catalyst(9442,237).
catalyst(9461,237).
catalyst(9462,237).
catalyst(9471,237).
catalyst(9472,237).
catalyst(9441,224).
catalyst(9442,224).
catalyst(9461,224).
catalyst(9462,224).
catalyst(9471,224).
catalyst(9472,224).
catalyst(9441,169).
catalyst(9442,169).
catalyst(9461,169).
catalyst(9462,169).
catalyst(9471,169).
catalyst(9472,169).
catalyst(7741,593).
catalyst(7742,593).
catalyst(7741,478).
catalyst(7742,478).
catalyst(6801,501).
catalyst(6802,501).
catalyst(6770,882).
catalyst(9411,218).
catalyst(9412,218).
catalyst(6830,731).
catalyst(6700,268).
catalyst(2240,842).
catalyst(6911,364).
catalyst(6912,364).
catalyst(6921,364).
catalyst(6922,364).
catalyst(6721,228).
catalyst(6722,228).
catalyst(2621,476).
catalyst(2622,476).
catalyst(9391,540).
catalyst(9392,540).
catalyst(9341,294).
catalyst(9342,294).
catalyst(9351,294).
catalyst(9352,294).
catalyst(9361,294).
catalyst(9362,294).
catalyst(9371,294).
catalyst(9372,294).
catalyst(7950,762).
catalyst(7950,505).
catalyst(7950,470).
catalyst(7950,242).
catalyst(9251,254).
catalyst(9252,254).
catalyst(9261,254).
catalyst(9262,254).
catalyst(9271,254).
catalyst(9272,254).
catalyst(9291,770).
catalyst(9292,770).
catalyst(9311,770).
catalyst(9312,770).
catalyst(9331,770).
catalyst(9332,770).
catalyst(9291,687).
catalyst(9292,687).
catalyst(9311,687).
catalyst(9312,687).
catalyst(9331,687).
catalyst(9332,687).
catalyst(9291,686).
catalyst(9292,686).
catalyst(9311,686).
catalyst(9312,686).
catalyst(9331,686).
catalyst(9332,686).
catalyst(2150,19).
catalyst(7540,168).
catalyst(7561,541).
catalyst(7562,541).
catalyst(9231,838).
catalyst(9232,838).
catalyst(9231,795).
catalyst(9232,795).
catalyst(9231,737).
catalyst(9232,737).
catalyst(9231,719).
catalyst(9232,719).
catalyst(9231,709).
catalyst(9232,709).
catalyst(9231,626).
catalyst(9232,626).
catalyst(9231,558).
catalyst(9232,558).
catalyst(9231,527).
catalyst(9232,527).
catalyst(9231,402).
catalyst(9232,402).
catalyst(9231,390).
catalyst(9232,390).
catalyst(9231,389).
catalyst(9232,389).
catalyst(9231,386).
catalyst(9232,386).
catalyst(9231,295).
catalyst(9232,295).
catalyst(9231,261).
catalyst(9232,261).
catalyst(9231,192).
catalyst(9232,192).
catalyst(9231,174).
catalyst(9232,174).
catalyst(7480,319).
catalyst(2670,144).
catalyst(7990,669).
catalyst(7620,296).
catalyst(9191,846).
catalyst(9192,846).
catalyst(9191,760).
catalyst(9192,760).
catalyst(9191,679).
catalyst(9192,679).
catalyst(9191,673).
catalyst(9192,673).
catalyst(9191,672).
catalyst(9192,672).
catalyst(9191,451).
catalyst(9192,451).
catalyst(9191,388).
catalyst(9192,388).
catalyst(9191,383).
catalyst(9192,383).
catalyst(9191,341).
catalyst(9192,341).
catalyst(9191,297).
catalyst(9192,297).
catalyst(9191,275).
catalyst(9192,275).
catalyst(9191,263).
catalyst(9192,263).
catalyst(9191,249).
catalyst(9192,249).
catalyst(9191,243).
catalyst(9192,243).
catalyst(9191,202).
catalyst(9192,202).
catalyst(9191,173).
catalyst(9192,173).
catalyst(9201,877).
catalyst(9202,877).
catalyst(9211,877).
catalyst(9212,877).
catalyst(9201,509).
catalyst(9202,509).
catalyst(9211,509).
catalyst(9212,509).
catalyst(9201,246).
catalyst(9202,246).
catalyst(9211,246).
catalyst(9212,246).
catalyst(9201,198).
catalyst(9202,198).
catalyst(9211,198).
catalyst(9212,198).
catalyst(9201,197).
catalyst(9202,197).
catalyst(9211,197).
catalyst(9212,197).
catalyst(2810,164).
catalyst(3050,516).
catalyst(3050,374).
catalyst(6780,492).
catalyst(6710,158).
catalyst(4690,466).
catalyst(9181,852).
catalyst(9182,852).
catalyst(9181,703).
catalyst(9182,703).
catalyst(9201,280).
catalyst(9202,280).
catalyst(7800,553).
catalyst(9171,878).
catalyst(9172,878).
catalyst(9171,807).
catalyst(9172,807).
catalyst(9171,725).
catalyst(9172,725).
catalyst(9171,691).
catalyst(9172,691).
catalyst(9171,531).
catalyst(9172,531).
catalyst(9171,522).
catalyst(9172,522).
catalyst(9171,404).
catalyst(9172,404).
catalyst(9171,379).
catalyst(9172,379).
catalyst(9171,279).
catalyst(9172,279).
catalyst(9171,223).
catalyst(9172,223).
catalyst(5150,105).
catalyst(5160,104).
catalyst(5190,103).
catalyst(5210,101).
catalyst(5220,100).
catalyst(5240,99).
catalyst(5250,98).
catalyst(6730,861).
catalyst(5990,826).
catalyst(6010,826).
catalyst(6010,435).
catalyst(9131,620).
catalyst(9132,620).
catalyst(9141,620).
catalyst(9142,620).
catalyst(9111,849).
catalyst(9112,849).
catalyst(9041,418).
catalyst(9042,418).
catalyst(9071,656).
catalyst(9072,656).
catalyst(9051,585).
catalyst(9052,585).
catalyst(9061,585).
catalyst(9062,585).
catalyst(7671,212).
catalyst(7672,212).
catalyst(7730,212).
catalyst(3100,804).
catalyst(3100,657).
catalyst(3100,475).
catalyst(3100,317).
catalyst(5530,335).
catalyst(5540,335).
catalyst(5270,97).
catalyst(5040,675).
catalyst(5040,542).
catalyst(5040,225).
catalyst(2140,20).
catalyst(9021,724).
catalyst(9022,724).
catalyst(4720,647).
catalyst(4720,646).
catalyst(4720,645).
catalyst(4720,644).
catalyst(4720,326).
catalyst(2231,419).
catalyst(2232,419).
catalyst(3910,716).
catalyst(3370,314).
catalyst(3380,314).
catalyst(3910,314).
catalyst(7330,214).
catalyst(9001,715).
catalyst(9002,715).
catalyst(3510,120).
catalyst(6231,532).
catalyst(6232,532).
catalyst(3900,841).
catalyst(6211,535).
catalyst(6212,535).
catalyst(6221,533).
catalyst(6222,533).
catalyst(5860,875).
catalyst(8981,700).
catalyst(8982,700).
catalyst(6071,633).
catalyst(6072,633).
catalyst(5691,504).
catalyst(5692,504).
catalyst(2610,474).
catalyst(5350,732).
catalyst(2860,208).
catalyst(8991,281).
catalyst(8992,281).
catalyst(5630,733).
catalyst(5640,733).
catalyst(5770,654).
catalyst(5780,654).
catalyst(6020,676).
catalyst(2401,195).
catalyst(2402,195).
catalyst(3200,546).
catalyst(7320,546).
catalyst(4870,112).
catalyst(2580,258).
catalyst(2600,146).
catalyst(5050,110).
catalyst(7450,713).
catalyst(7460,180).
catalyst(8821,199).
catalyst(8822,199).
catalyst(5730,221).
catalyst(3860,232).
catalyst(8861,360).
catalyst(8862,360).
catalyst(8881,360).
catalyst(8882,360).
catalyst(8891,360).
catalyst(8892,360).
catalyst(8901,360).
catalyst(8902,360).
catalyst(8931,360).
catalyst(8932,360).
catalyst(8951,360).
catalyst(8952,360).
catalyst(8961,360).
catalyst(8962,360).
catalyst(8961,515).
catalyst(8962,515).
catalyst(8961,391).
catalyst(8962,391).
catalyst(8961,298).
catalyst(8962,298).
catalyst(8961,161).
catalyst(8962,161).
catalyst(3480,652).
catalyst(3500,652).
catalyst(2540,147).
catalyst(7550,641).
catalyst(7550,634).
catalyst(7550,447).
catalyst(8791,333).
catalyst(8792,333).
catalyst(8801,333).
catalyst(8802,333).
catalyst(8811,333).
catalyst(8812,333).
catalyst(8791,253).
catalyst(8792,253).
catalyst(8801,253).
catalyst(8802,253).
catalyst(8811,253).
catalyst(8812,253).
catalyst(2250,156).
catalyst(5030,711).
catalyst(3950,611).
catalyst(5880,352).
catalyst(6470,764).
catalyst(2300,153).
catalyst(1960,292).
catalyst(3460,121).
catalyst(3600,613) :- not remove_reaction(3600,613).
catalyst(8000,625).
catalyst(3941,773).
catalyst(3942,773).
catalyst(6890,736).
catalyst(6900,455).
catalyst(8291,595).
catalyst(8292,595).
catalyst(2570,744).
catalyst(8781,321).
catalyst(8782,321).
catalyst(4560,354).
catalyst(2550,761).
catalyst(8020,869).
catalyst(8020,375).
catalyst(1890,614) :- not remove_reaction(1890,614).
catalyst(3630,614) :- not remove_reaction(3630,614).
catalyst(1890,384) :- not remove_reaction(1890,384).
catalyst(3630,384) :- not remove_reaction(3630,384).
catalyst(3740,304).
catalyst(8231,866).
catalyst(8232,866).
catalyst(8231,831).
catalyst(8232,831).
catalyst(8231,721).
catalyst(8232,721).
catalyst(8231,506).
catalyst(8232,506).
catalyst(8231,471).
catalyst(8232,471).
catalyst(8051,858).
catalyst(8052,858).
catalyst(3590,417) :- not remove_reaction(3590,417).
catalyst(10910,417) :- not remove_reaction(10910,417).
catalyst(4570,454).
catalyst(8181,660).
catalyst(8182,660).
catalyst(8181,559).
catalyst(8182,559).
catalyst(3680,753).
catalyst(7141,609).
catalyst(7142,609).
catalyst(7151,609).
catalyst(7152,609).
catalyst(5661,850).
catalyst(5662,850).
catalyst(5661,751).
catalyst(5662,751).
catalyst(5661,422).
catalyst(5662,422).
catalyst(5661,394).
catalyst(5662,394).
catalyst(1970,815).
catalyst(8761,868).
catalyst(8762,868).
catalyst(4161,115).
catalyst(4162,115).
catalyst(3750,305).
catalyst(3700,427).
catalyst(8741,530).
catalyst(8742,530).
catalyst(4530,381).
catalyst(6091,668).
catalyst(6092,668).
catalyst(4460,159).
catalyst(4500,409).
catalyst(6200,537).
catalyst(1930,802).
catalyst(7931,545).
catalyst(7932,545).
catalyst(7751,183).
catalyst(7752,183).
catalyst(8711,184).
catalyst(8712,184).
catalyst(8281,293).
catalyst(8282,293).
catalyst(3610,283) :- not remove_reaction(3610,283).
catalyst(7921,793).
catalyst(7922,793).
catalyst(7841,359).
catalyst(7842,359).
catalyst(8331,213).
catalyst(8332,213).
catalyst(8351,213).
catalyst(8352,213).
catalyst(6340,411).
catalyst(6370,411).
catalyst(6250,42).
catalyst(8241,776).
catalyst(8242,776).
catalyst(8241,606).
catalyst(8242,606).
catalyst(8251,606).
catalyst(8252,606).
catalyst(8241,244).
catalyst(8242,244).
catalyst(7851,695).
catalyst(7852,695).
catalyst(7861,695).
catalyst(7862,695).
catalyst(7851,600).
catalyst(7852,600).
catalyst(7861,600).
catalyst(7862,600).
catalyst(4891,357).
catalyst(4892,357).
catalyst(4981,357).
catalyst(4982,357).
catalyst(3690,874).
catalyst(6410,494).
catalyst(6790,552).
catalyst(8681,839).
catalyst(8682,839).
catalyst(8681,461).
catalyst(8682,461).
catalyst(8611,473).
catalyst(8612,473).
catalyst(8611,456).
catalyst(8612,456).
catalyst(8591,485).
catalyst(8592,485).
catalyst(8591,286).
catalyst(8592,286).
catalyst(8571,840).
catalyst(8572,840).
catalyst(8571,627).
catalyst(8572,627).
catalyst(8561,880).
catalyst(8562,880).
catalyst(8561,201).
catalyst(8562,201).
catalyst(8551,488).
catalyst(8552,488).
catalyst(8551,382).
catalyst(8552,382).
catalyst(8541,740).
catalyst(8542,740).
catalyst(1910,772).
catalyst(1920,434).
catalyst(3890,496).
catalyst(3890,327).
catalyst(8671,782).
catalyst(8672,782).
catalyst(3390,318).
catalyst(8521,873).
catalyst(8522,873).
catalyst(8521,636).
catalyst(8522,636).
catalyst(8521,398).
catalyst(8522,398).
catalyst(3780,871).
catalyst(8511,486).
catalyst(8512,486).
catalyst(4740,238).
catalyst(4730,487).
catalyst(8651,843).
catalyst(8652,843).
catalyst(8651,670).
catalyst(8652,670).
catalyst(4060,727).
catalyst(4070,288).
catalyst(8631,821).
catalyst(8632,821).
catalyst(8621,449).
catalyst(8622,449).
catalyst(7311,817).
catalyst(7312,817).
catalyst(7311,710).
catalyst(7312,710).
catalyst(7311,511).
catalyst(7312,511).
catalyst(7311,362).
catalyst(7312,362).
catalyst(8101,798).
catalyst(8102,798).
catalyst(8111,469).
catalyst(8112,469).
catalyst(4900,872).
catalyst(2510,148).
catalyst(2461,813).
catalyst(2462,813).
catalyst(2461,697).
catalyst(2462,697).
catalyst(2461,601).
catalyst(2462,601).
catalyst(3160,544).
catalyst(2310,152).
catalyst(6120,432).
catalyst(2470,151).
catalyst(2480,150).
catalyst(8461,265).
catalyst(8462,265).
catalyst(8451,266).
catalyst(8452,266).
catalyst(6151,433).
catalyst(6152,433).
catalyst(8441,267).
catalyst(8442,267).
catalyst(5670,574).
catalyst(5680,574).
catalyst(5670,170).
catalyst(5680,170).
catalyst(2410,465).
catalyst(2420,196).
catalyst(3971,777).
catalyst(3972,777).
catalyst(7341,215).
catalyst(7342,215).
catalyst(2170,495).
catalyst(6030,707).
catalyst(6130,446).
catalyst(4760,885).
catalyst(4760,452).
catalyst(10401,816).
catalyst(10402,816).
catalyst(4000,577).
catalyst(4000,548).
catalyst(7980,421).
catalyst(7980,216).
catalyst(7040,856).
catalyst(7050,856).
catalyst(7060,856).
catalyst(7070,856).
catalyst(7080,856).
catalyst(7090,856).
catalyst(7100,856).
catalyst(7110,856).
catalyst(7120,856).
catalyst(7040,759).
catalyst(7050,759).
catalyst(7060,759).
catalyst(7070,759).
catalyst(7080,759).
catalyst(7090,759).
catalyst(7100,759).
catalyst(7110,759).
catalyst(7120,759).
catalyst(7161,759).
catalyst(7162,759).
catalyst(7040,610).
catalyst(7050,610).
catalyst(7060,610).
catalyst(7070,610).
catalyst(7080,610).
catalyst(7090,610).
catalyst(7100,610).
catalyst(7110,610).
catalyst(7120,610).
catalyst(7040,442).
catalyst(7050,442).
catalyst(7060,442).
catalyst(7070,442).
catalyst(7080,442).
catalyst(7090,442).
catalyst(7100,442).
catalyst(7110,442).
catalyst(7120,442).
catalyst(8431,789).
catalyst(8432,789).
catalyst(8431,270).
catalyst(8432,270).
catalyst(8411,769).
catalyst(8412,769).
catalyst(371,884).
catalyst(372,884).
catalyst(740,863).
catalyst(781,859).
catalyst(782,859).
catalyst(881,859).
catalyst(882,859).
catalyst(911,859).
catalyst(912,859).
catalyst(921,859).
catalyst(922,859).
catalyst(941,859).
catalyst(942,859).
catalyst(1191,859).
catalyst(1192,859).
catalyst(6600,837).
catalyst(220,836).
catalyst(730,825).
catalyst(821,825).
catalyst(822,825).
catalyst(941,825).
catalyst(942,825).
catalyst(190,805).
catalyst(6570,801).
catalyst(6580,801).
catalyst(1431,796).
catalyst(1432,796).
catalyst(190,792).
catalyst(1200,788).
catalyst(1210,788).
catalyst(1160,783).
catalyst(801,771) :- not remove_reaction(801,771).
catalyst(802,771) :- not remove_reaction(802,771).
catalyst(811,771) :- not remove_reaction(811,771).
catalyst(812,771) :- not remove_reaction(812,771).
catalyst(831,771) :- not remove_reaction(831,771).
catalyst(832,771) :- not remove_reaction(832,771).
catalyst(901,771) :- not remove_reaction(901,771).
catalyst(902,771) :- not remove_reaction(902,771).
catalyst(941,771) :- not remove_reaction(941,771).
catalyst(942,771) :- not remove_reaction(942,771).
catalyst(1210,767).
catalyst(700,765).
catalyst(1200,754).
catalyst(761,747).
catalyst(762,747).
catalyst(371,734).
catalyst(372,734).
catalyst(6620,714).
catalyst(1210,688).
catalyst(341,685).
catalyst(342,685).
catalyst(1540,665).
catalyst(1551,665).
catalyst(1552,665).
catalyst(1561,665).
catalyst(1562,665).
catalyst(6570,655).
catalyst(6580,655).
catalyst(190,653).
catalyst(251,642).
catalyst(252,642).
catalyst(6330,639).
catalyst(6360,639).
catalyst(1200,637).
catalyst(1210,637).
catalyst(750,630).
catalyst(1031,629).
catalyst(1032,629).
catalyst(630,624).
catalyst(640,624).
catalyst(6560,622).
catalyst(761,621) :- not remove_reaction(761,621).
catalyst(762,621) :- not remove_reaction(762,621).
catalyst(771,621) :- not remove_reaction(771,621).
catalyst(772,621) :- not remove_reaction(772,621).
catalyst(781,621) :- not remove_reaction(781,621).
catalyst(782,621) :- not remove_reaction(782,621).
catalyst(791,621) :- not remove_reaction(791,621).
catalyst(792,621) :- not remove_reaction(792,621).
catalyst(801,621) :- not remove_reaction(801,621).
catalyst(802,621) :- not remove_reaction(802,621).
catalyst(811,621) :- not remove_reaction(811,621).
catalyst(812,621) :- not remove_reaction(812,621).
catalyst(821,621) :- not remove_reaction(821,621).
catalyst(822,621) :- not remove_reaction(822,621).
catalyst(831,621) :- not remove_reaction(831,621).
catalyst(832,621) :- not remove_reaction(832,621).
catalyst(841,621) :- not remove_reaction(841,621).
catalyst(842,621) :- not remove_reaction(842,621).
catalyst(861,621) :- not remove_reaction(861,621).
catalyst(862,621) :- not remove_reaction(862,621).
catalyst(881,621) :- not remove_reaction(881,621).
catalyst(882,621) :- not remove_reaction(882,621).
catalyst(901,621) :- not remove_reaction(901,621).
catalyst(902,621) :- not remove_reaction(902,621).
catalyst(911,621) :- not remove_reaction(911,621).
catalyst(912,621) :- not remove_reaction(912,621).
catalyst(921,621) :- not remove_reaction(921,621).
catalyst(922,621) :- not remove_reaction(922,621).
catalyst(941,621) :- not remove_reaction(941,621).
catalyst(942,621) :- not remove_reaction(942,621).
catalyst(1191,621) :- not remove_reaction(1191,621).
catalyst(1192,621) :- not remove_reaction(1192,621).
catalyst(1021,616).
catalyst(1022,616).
catalyst(6610,589).
catalyst(1210,586).
catalyst(170,584).
catalyst(1250,573).
catalyst(1581,571).
catalyst(1582,571).
catalyst(1200,561).
catalyst(1210,561).
catalyst(1210,560).
catalyst(6560,549).
catalyst(361,547).
catalyst(362,547).
catalyst(1210,499).
catalyst(1210,498).
catalyst(1210,497).
catalyst(841,481).
catalyst(842,481).
catalyst(381,479).
catalyst(382,479).
catalyst(371,450).
catalyst(372,450).
catalyst(841,444).
catalyst(842,444).
catalyst(581,429).
catalyst(582,429).
catalyst(590,429).
catalyst(710,424).
catalyst(220,412).
catalyst(781,401).
catalyst(782,401).
catalyst(911,401).
catalyst(912,401).
catalyst(1191,401).
catalyst(1192,401).
catalyst(1200,395).
catalyst(1210,395).
catalyst(581,371).
catalyst(582,371).
catalyst(590,371).
catalyst(581,370).
catalyst(582,370).
catalyst(590,370).
catalyst(581,369).
catalyst(582,369).
catalyst(590,369).
catalyst(1571,367).
catalyst(1572,367).
catalyst(1210,358).
catalyst(220,351).
catalyst(1191,350).
catalyst(1192,350).
catalyst(1200,350).
catalyst(1210,350).
catalyst(771,346).
catalyst(772,346).
catalyst(781,346).
catalyst(782,346).
catalyst(841,346).
catalyst(842,346).
catalyst(881,346).
catalyst(882,346).
catalyst(901,346).
catalyst(902,346).
catalyst(921,346).
catalyst(922,346).
catalyst(6680,345).
catalyst(1160,344).
catalyst(1210,330).
catalyst(1210,329).
catalyst(1210,328).
catalyst(6650,323).
catalyst(6550,322).
catalyst(6690,320).
catalyst(791,291) :- not remove_reaction(791,291).
catalyst(792,291) :- not remove_reaction(792,291).
catalyst(801,291) :- not remove_reaction(801,291).
catalyst(802,291) :- not remove_reaction(802,291).
catalyst(811,291) :- not remove_reaction(811,291).
catalyst(812,291) :- not remove_reaction(812,291).
catalyst(831,291) :- not remove_reaction(831,291).
catalyst(832,291) :- not remove_reaction(832,291).
catalyst(841,291) :- not remove_reaction(841,291).
catalyst(842,291) :- not remove_reaction(842,291).
catalyst(861,291) :- not remove_reaction(861,291).
catalyst(862,291) :- not remove_reaction(862,291).
catalyst(901,291) :- not remove_reaction(901,291).
catalyst(902,291) :- not remove_reaction(902,291).
catalyst(1210,282).
catalyst(690,276).
catalyst(730,276).
catalyst(431,240).
catalyst(432,240).
catalyst(220,239).
catalyst(771,230).
catalyst(772,230).
catalyst(781,230).
catalyst(782,230).
catalyst(791,230).
catalyst(792,230).
catalyst(801,230).
catalyst(802,230).
catalyst(831,230).
catalyst(832,230).
catalyst(841,230).
catalyst(842,230).
catalyst(861,230).
catalyst(862,230).
catalyst(881,230).
catalyst(882,230).
catalyst(921,230).
catalyst(922,230).
catalyst(941,230).
catalyst(942,230).
catalyst(1191,230).
catalyst(1192,230).
catalyst(1121,227).
catalyst(1122,227).
catalyst(1491,226).
catalyst(1492,226).
catalyst(1501,226).
catalyst(1502,226).
catalyst(1511,226).
catalyst(1512,226).
catalyst(771,194) :- not remove_reaction(771,194).
catalyst(772,194) :- not remove_reaction(772,194).
catalyst(791,194) :- not remove_reaction(791,194).
catalyst(792,194) :- not remove_reaction(792,194).
catalyst(801,194) :- not remove_reaction(801,194).
catalyst(802,194) :- not remove_reaction(802,194).
catalyst(811,194) :- not remove_reaction(811,194).
catalyst(812,194) :- not remove_reaction(812,194).
catalyst(861,194) :- not remove_reaction(861,194).
catalyst(862,194) :- not remove_reaction(862,194).
catalyst(901,194) :- not remove_reaction(901,194).
catalyst(902,194) :- not remove_reaction(902,194).
catalyst(791,193) :- not remove_reaction(791,193).
catalyst(792,193) :- not remove_reaction(792,193).
catalyst(801,193) :- not remove_reaction(801,193).
catalyst(802,193) :- not remove_reaction(802,193).
catalyst(811,193) :- not remove_reaction(811,193).
catalyst(812,193) :- not remove_reaction(812,193).
catalyst(831,193) :- not remove_reaction(831,193).
catalyst(832,193) :- not remove_reaction(832,193).
catalyst(841,193) :- not remove_reaction(841,193).
catalyst(842,193) :- not remove_reaction(842,193).
catalyst(861,193) :- not remove_reaction(861,193).
catalyst(862,193) :- not remove_reaction(862,193).
catalyst(901,193) :- not remove_reaction(901,193).
catalyst(902,193) :- not remove_reaction(902,193).
catalyst(6600,190).
catalyst(620,186).
catalyst(540,171).
catalyst(6960,140).
catalyst(2830,139).
catalyst(2840,138).
catalyst(2920,136).
catalyst(2920,135).
catalyst(2920,134).
catalyst(2920,133).
catalyst(2930,132).
catalyst(6970,131).
catalyst(2990,130).
catalyst(6970,125).
catalyst(4131,117).
catalyst(4132,117).
catalyst(6980,116).
catalyst(4940,111).
catalyst(6980,109).
catalyst(10,96).
catalyst(41,95).
catalyst(42,95).
catalyst(51,94).
catalyst(52,94).
catalyst(70,93).
catalyst(91,92).
catalyst(92,92).
catalyst(101,91).
catalyst(102,91).
catalyst(131,90).
catalyst(132,90).
catalyst(141,88).
catalyst(142,88).
catalyst(211,87).
catalyst(212,87).
catalyst(310,85).
catalyst(321,84).
catalyst(322,84).
catalyst(331,83).
catalyst(332,83).
catalyst(401,82).
catalyst(402,82).
catalyst(411,81).
catalyst(412,81).
catalyst(441,80).
catalyst(442,80).
catalyst(460,79).
catalyst(480,77).
catalyst(500,76).
catalyst(520,75).
catalyst(530,74).
catalyst(550,73).
catalyst(560,72).
catalyst(460,71).
catalyst(480,69).
catalyst(530,68).
catalyst(560,67).
catalyst(460,66).
catalyst(480,65).
catalyst(500,64).
catalyst(570,62).
catalyst(520,61).
catalyst(530,60).
catalyst(550,59).
catalyst(560,58).
catalyst(660,57).
catalyst(670,56).
catalyst(960,54).
catalyst(970,53).
catalyst(1010,52).
catalyst(1041,51).
catalyst(1042,51).
catalyst(1060,50).
catalyst(1071,48).
catalyst(1072,48).
catalyst(1081,47).
catalyst(1082,47).
catalyst(1111,46).
catalyst(1112,46).
catalyst(1130,45).
catalyst(1150,44).
catalyst(1220,43).
catalyst(1271,41).
catalyst(1272,41).
catalyst(1291,40).
catalyst(1292,40).
catalyst(1331,39).
catalyst(1332,39).
catalyst(1351,38).
catalyst(1352,38).
catalyst(1411,37).
catalyst(1412,37).
catalyst(1451,36).
catalyst(1452,36).
catalyst(1471,35).
catalyst(1472,35).
catalyst(1600,34).
catalyst(1611,33).
catalyst(1612,33).
catalyst(1620,32).
catalyst(1671,31).
catalyst(1672,31).
catalyst(1691,30).
catalyst(1692,30).
catalyst(1701,29).
catalyst(1702,29).
catalyst(1731,28).
catalyst(1732,28).
catalyst(1741,27).
catalyst(1742,27).
catalyst(1751,26).
catalyst(1752,26).
catalyst(1771,25).
catalyst(1772,25).
catalyst(1791,24).
catalyst(1792,24).
catalyst(6640,23).
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

modifiable_enzyme(332).
modifiable_enzyme(613).
modifiable_enzyme(614).
modifiable_enzyme(384).
modifiable_enzyme(417).
modifiable_enzyme(283).
modifiable_enzyme(771).
modifiable_enzyme(621).
modifiable_enzyme(291).
modifiable_enzyme(194).
modifiable_enzyme(193).
modifiable_enzyme(14).
modifiable_enzyme(10).

certain_enzyme(749).
certain_enzyme(635).
certain_enzyme(445).
certain_enzyme(413).
certain_enzyme(618).
certain_enzyme(780).
certain_enzyme(718).
certain_enzyme(693).
certain_enzyme(437).
certain_enzyme(271).
certain_enzyme(204).
certain_enzyme(853).
certain_enzyme(113).
certain_enzyme(205).
certain_enzyme(206).
certain_enzyme(587).
certain_enzyme(410).
certain_enzyme(520).
certain_enzyme(493).
certain_enzyme(207).
certain_enzyme(678).
certain_enzyme(671).
certain_enzyme(510).
certain_enzyme(166).
certain_enzyme(165).
certain_enzyme(231).
certain_enzyme(301).
certain_enzyme(581).
certain_enzyme(785).
certain_enzyme(597).
certain_enzyme(252).
certain_enzyme(592).
certain_enzyme(797).
certain_enzyme(723).
certain_enzyme(251).
certain_enzyme(739).
certain_enzyme(778).
certain_enzyme(245).
certain_enzyme(667).
certain_enzyme(518).
certain_enzyme(380).
certain_enzyme(677).
certain_enzyme(273).
certain_enzyme(681).
certain_enzyme(526).
certain_enzyme(890).
certain_enzyme(791).
certain_enzyme(555).
certain_enzyme(482).
certain_enzyme(460).
certain_enzyme(406).
certain_enzyme(347).
certain_enzyme(172).
certain_enzyme(18).
certain_enzyme(448).
certain_enzyme(316).
certain_enzyme(591).
certain_enzyme(536).
certain_enzyme(219).
certain_enzyme(572).
certain_enzyme(564).
certain_enzyme(472).
certain_enzyme(22).
certain_enzyme(176).
certain_enzyme(690).
certain_enzyme(483).
certain_enzyme(336).
certain_enzyme(420).
certain_enzyme(457).
certain_enzyme(575).
certain_enzyme(484).
certain_enzyme(538).
certain_enzyme(517).
certain_enzyme(459).
certain_enzyme(377).
certain_enzyme(108).
certain_enzyme(107).
certain_enzyme(106).
certain_enzyme(272).
certain_enzyme(309).
certain_enzyme(179).
certain_enzyme(865).
certain_enzyme(864).
certain_enzyme(830).
certain_enzyme(827).
certain_enzyme(378).
certain_enzyme(129).
certain_enzyme(428).
certain_enzyme(122).
certain_enzyme(819).
certain_enzyme(702).
certain_enzyme(701).
certain_enzyme(102).
certain_enzyme(393).
certain_enzyme(217).
certain_enzyme(524).
certain_enzyme(119).
certain_enzyme(210).
certain_enzyme(750).
certain_enzyme(414).
certain_enzyme(124).
certain_enzyme(615).
certain_enzyme(289).
certain_enzyme(361).
certain_enzyme(619).
certain_enzyme(528).
certain_enzyme(431).
certain_enzyme(698).
certain_enzyme(648).
certain_enzyme(628).
certain_enzyme(604).
certain_enzyme(602).
certain_enzyme(539).
certain_enzyme(310).
certain_enzyme(567).
certain_enzyme(355).
certain_enzyme(277).
certain_enzyme(828).
certain_enzyme(278).
certain_enzyme(163).
certain_enzyme(157).
certain_enzyme(189).
certain_enzyme(704).
certain_enzyme(123).
certain_enzyme(490).
certain_enzyme(623).
certain_enzyme(363).
certain_enzyme(834).
certain_enzyme(425).
certain_enzyme(812).
certain_enzyme(464).
certain_enzyme(643).
certain_enzyme(127).
certain_enzyme(605).
certain_enzyme(514).
certain_enzyme(491).
certain_enzyme(810).
certain_enzyme(684).
certain_enzyme(612).
certain_enzyme(594).
certain_enzyme(372).
certain_enzyme(467).
certain_enzyme(405).
certain_enzyme(833).
certain_enzyme(397).
certain_enzyme(331).
certain_enzyme(365).
certain_enzyme(580).
certain_enzyme(860).
certain_enzyme(683).
certain_enzyme(188).
certain_enzyme(862).
certain_enzyme(631).
certain_enzyme(339).
certain_enzyme(114).
certain_enzyme(385).
certain_enzyme(570).
certain_enzyme(299).
certain_enzyme(247).
certain_enzyme(781).
certain_enzyme(649).
certain_enzyme(285).
certain_enzyme(211).
certain_enzyme(338).
certain_enzyme(699).
certain_enzyme(167).
certain_enzyme(590).
certain_enzyme(879).
certain_enzyme(200).
certain_enzyme(666).
certain_enzyme(443).
certain_enzyme(696).
certain_enzyme(229).
certain_enzyme(692).
certain_enzyme(726).
certain_enzyme(757).
certain_enzyme(529).
certain_enzyme(748).
certain_enzyme(396).
certain_enzyme(854).
certain_enzyme(373).
certain_enzyme(145).
certain_enzyme(832).
certain_enzyme(250).
certain_enzyme(149).
certain_enzyme(307).
certain_enzyme(829).
certain_enzyme(458).
certain_enzyme(855).
certain_enzyme(453).
certain_enzyme(248).
certain_enzyme(835).
certain_enzyme(415).
certain_enzyme(867).
certain_enzyme(755).
certain_enzyme(235).
certain_enzyme(274).
certain_enzyme(262).
certain_enzyme(730).
certain_enzyme(534).
certain_enzyme(818).
certain_enzyme(582).
certain_enzyme(463).
certain_enzyme(325).
certain_enzyme(257).
certain_enzyme(256).
certain_enzyme(160).
certain_enzyme(722).
certain_enzyme(519).
certain_enzyme(712).
certain_enzyme(682).
certain_enzyme(203).
certain_enzyme(738).
certain_enzyme(191).
certain_enzyme(187).
certain_enzyme(720).
certain_enzyme(664).
certain_enzyme(441).
certain_enzyme(650).
certain_enzyme(21).
certain_enzyme(808).
certain_enzyme(717).
certain_enzyme(368).
certain_enzyme(407).
certain_enzyme(579).
certain_enzyme(651).
certain_enzyme(674).
certain_enzyme(342).
certain_enzyme(334).
certain_enzyme(887).
certain_enzyme(845).
certain_enzyme(763).
certain_enzyme(694).
certain_enzyme(255).
certain_enzyme(178).
certain_enzyme(177).
certain_enzyme(556).
certain_enzyme(557).
certain_enzyme(742).
certain_enzyme(876).
certain_enzyme(302).
certain_enzyme(658).
certain_enzyme(439).
certain_enzyme(578).
certain_enzyme(659).
certain_enzyme(287).
certain_enzyme(220).
certain_enzyme(814).
certain_enzyme(787).
certain_enzyme(222).
certain_enzyme(502).
certain_enzyme(430).
certain_enzyme(632).
certain_enzyme(599).
certain_enzyme(598).
certain_enzyme(440).
certain_enzyme(638).
certain_enzyme(128).
certain_enzyme(126).
certain_enzyme(118).
certain_enzyme(583).
certain_enzyme(508).
certain_enzyme(803).
certain_enzyme(766).
certain_enzyme(523).
certain_enzyme(436).
certain_enzyme(408).
certain_enzyme(786).
certain_enzyme(521).
certain_enzyme(689).
certain_enzyme(705).
certain_enzyme(468).
certain_enzyme(315).
certain_enzyme(241).
certain_enzyme(462).
certain_enzyme(233).
certain_enzyme(576).
certain_enzyme(55).
certain_enzyme(49).
certain_enzyme(847).
certain_enzyme(566).
certain_enzyme(353).
certain_enzyme(155).
certain_enzyme(588).
certain_enzyme(313).
certain_enzyme(680).
certain_enzyme(400).
certain_enzyme(480).
certain_enzyme(640).
certain_enzyme(349).
certain_enzyme(143).
certain_enzyme(142).
certain_enzyme(141).
certain_enzyme(706).
certain_enzyme(848).
certain_enzyme(790).
certain_enzyme(607).
certain_enzyme(554).
certain_enzyme(513).
certain_enzyme(507).
certain_enzyme(500).
certain_enzyme(416).
certain_enzyme(489).
certain_enzyme(824).
certain_enzyme(162).
certain_enzyme(758).
certain_enzyme(883).
certain_enzyme(857).
certain_enzyme(774).
certain_enzyme(851).
certain_enzyme(78).
certain_enzyme(284).
certain_enzyme(185).
certain_enzyme(746).
certain_enzyme(661).
certain_enzyme(403).
certain_enzyme(311).
certain_enzyme(303).
certain_enzyme(89).
certain_enzyme(86).
certain_enzyme(306).
certain_enzyme(324).
certain_enzyme(236).
certain_enzyme(366).
certain_enzyme(376).
certain_enzyme(70).
certain_enzyme(63).
certain_enzyme(137).
certain_enzyme(708).
certain_enzyme(392).
certain_enzyme(312).
certain_enzyme(596).
certain_enzyme(775).
certain_enzyme(343).
certain_enzyme(568).
certain_enzyme(779).
certain_enzyme(608).
certain_enzyme(477).
certain_enzyme(387).
certain_enzyme(175).
certain_enzyme(799).
certain_enzyme(743).
certain_enzyme(662).
certain_enzyme(181).
certain_enzyme(182).
certain_enzyme(438).
certain_enzyme(663).
certain_enzyme(617).
certain_enzyme(260).
certain_enzyme(154).
certain_enzyme(563).
certain_enzyme(426).
certain_enzyme(348).
certain_enzyme(234).
certain_enzyme(889).
certain_enzyme(888).
certain_enzyme(881).
certain_enzyme(870).
certain_enzyme(823).
certain_enzyme(822).
certain_enzyme(811).
certain_enzyme(809).
certain_enzyme(806).
certain_enzyme(800).
certain_enzyme(794).
certain_enzyme(768).
certain_enzyme(756).
certain_enzyme(741).
certain_enzyme(735).
certain_enzyme(729).
certain_enzyme(603).
certain_enzyme(569).
certain_enzyme(551).
certain_enzyme(550).
certain_enzyme(512).
certain_enzyme(503).
certain_enzyme(423).
certain_enzyme(399).
certain_enzyme(337).
certain_enzyme(308).
certain_enzyme(290).
certain_enzyme(269).
certain_enzyme(264).
certain_enzyme(209).
certain_enzyme(886).
certain_enzyme(844).
certain_enzyme(820).
certain_enzyme(784).
certain_enzyme(752).
certain_enzyme(745).
certain_enzyme(728).
certain_enzyme(565).
certain_enzyme(562).
certain_enzyme(543).
certain_enzyme(525).
certain_enzyme(356).
certain_enzyme(340).
certain_enzyme(300).
certain_enzyme(259).
certain_enzyme(237).
certain_enzyme(224).
certain_enzyme(169).
certain_enzyme(593).
certain_enzyme(478).
certain_enzyme(501).
certain_enzyme(882).
certain_enzyme(218).
certain_enzyme(731).
certain_enzyme(268).
certain_enzyme(842).
certain_enzyme(364).
certain_enzyme(228).
certain_enzyme(476).
certain_enzyme(540).
certain_enzyme(294).
certain_enzyme(762).
certain_enzyme(505).
certain_enzyme(470).
certain_enzyme(242).
certain_enzyme(254).
certain_enzyme(770).
certain_enzyme(687).
certain_enzyme(686).
certain_enzyme(19).
certain_enzyme(168).
certain_enzyme(541).
certain_enzyme(838).
certain_enzyme(795).
certain_enzyme(737).
certain_enzyme(719).
certain_enzyme(709).
certain_enzyme(626).
certain_enzyme(558).
certain_enzyme(527).
certain_enzyme(402).
certain_enzyme(390).
certain_enzyme(389).
certain_enzyme(386).
certain_enzyme(295).
certain_enzyme(261).
certain_enzyme(192).
certain_enzyme(174).
certain_enzyme(319).
certain_enzyme(144).
certain_enzyme(669).
certain_enzyme(296).
certain_enzyme(846).
certain_enzyme(760).
certain_enzyme(679).
certain_enzyme(673).
certain_enzyme(672).
certain_enzyme(451).
certain_enzyme(388).
certain_enzyme(383).
certain_enzyme(341).
certain_enzyme(297).
certain_enzyme(275).
certain_enzyme(263).
certain_enzyme(249).
certain_enzyme(243).
certain_enzyme(202).
certain_enzyme(173).
certain_enzyme(877).
certain_enzyme(509).
certain_enzyme(246).
certain_enzyme(198).
certain_enzyme(197).
certain_enzyme(164).
certain_enzyme(516).
certain_enzyme(374).
certain_enzyme(492).
certain_enzyme(158).
certain_enzyme(466).
certain_enzyme(852).
certain_enzyme(703).
certain_enzyme(280).
certain_enzyme(553).
certain_enzyme(878).
certain_enzyme(807).
certain_enzyme(725).
certain_enzyme(691).
certain_enzyme(531).
certain_enzyme(522).
certain_enzyme(404).
certain_enzyme(379).
certain_enzyme(279).
certain_enzyme(223).
certain_enzyme(105).
certain_enzyme(104).
certain_enzyme(103).
certain_enzyme(101).
certain_enzyme(100).
certain_enzyme(99).
certain_enzyme(98).
certain_enzyme(861).
certain_enzyme(826).
certain_enzyme(435).
certain_enzyme(620).
certain_enzyme(849).
certain_enzyme(418).
certain_enzyme(656).
certain_enzyme(585).
certain_enzyme(212).
certain_enzyme(804).
certain_enzyme(657).
certain_enzyme(475).
certain_enzyme(317).
certain_enzyme(335).
certain_enzyme(97).
certain_enzyme(675).
certain_enzyme(542).
certain_enzyme(225).
certain_enzyme(20).
certain_enzyme(724).
certain_enzyme(647).
certain_enzyme(646).
certain_enzyme(645).
certain_enzyme(644).
certain_enzyme(326).
certain_enzyme(419).
certain_enzyme(716).
certain_enzyme(314).
certain_enzyme(214).
certain_enzyme(715).
certain_enzyme(120).
certain_enzyme(532).
certain_enzyme(841).
certain_enzyme(535).
certain_enzyme(533).
certain_enzyme(875).
certain_enzyme(700).
certain_enzyme(633).
certain_enzyme(504).
certain_enzyme(474).
certain_enzyme(732).
certain_enzyme(208).
certain_enzyme(281).
certain_enzyme(733).
certain_enzyme(654).
certain_enzyme(676).
certain_enzyme(195).
certain_enzyme(546).
certain_enzyme(112).
certain_enzyme(258).
certain_enzyme(146).
certain_enzyme(110).
certain_enzyme(713).
certain_enzyme(180).
certain_enzyme(199).
certain_enzyme(221).
certain_enzyme(232).
certain_enzyme(360).
certain_enzyme(515).
certain_enzyme(391).
certain_enzyme(298).
certain_enzyme(161).
certain_enzyme(652).
certain_enzyme(147).
certain_enzyme(641).
certain_enzyme(634).
certain_enzyme(447).
certain_enzyme(333).
certain_enzyme(253).
certain_enzyme(156).
certain_enzyme(711).
certain_enzyme(611).
certain_enzyme(352).
certain_enzyme(764).
certain_enzyme(153).
certain_enzyme(292).
certain_enzyme(121).
certain_enzyme(625).
certain_enzyme(773).
certain_enzyme(736).
certain_enzyme(455).
certain_enzyme(595).
certain_enzyme(744).
certain_enzyme(321).
certain_enzyme(354).
certain_enzyme(761).
certain_enzyme(869).
certain_enzyme(375).
certain_enzyme(304).
certain_enzyme(866).
certain_enzyme(831).
certain_enzyme(721).
certain_enzyme(506).
certain_enzyme(471).
certain_enzyme(858).
certain_enzyme(454).
certain_enzyme(660).
certain_enzyme(559).
certain_enzyme(753).
certain_enzyme(609).
certain_enzyme(850).
certain_enzyme(751).
certain_enzyme(422).
certain_enzyme(394).
certain_enzyme(815).
certain_enzyme(868).
certain_enzyme(115).
certain_enzyme(305).
certain_enzyme(427).
certain_enzyme(530).
certain_enzyme(381).
certain_enzyme(668).
certain_enzyme(159).
certain_enzyme(409).
certain_enzyme(537).
certain_enzyme(802).
certain_enzyme(545).
certain_enzyme(183).
certain_enzyme(184).
certain_enzyme(293).
certain_enzyme(793).
certain_enzyme(359).
certain_enzyme(213).
certain_enzyme(411).
certain_enzyme(42).
certain_enzyme(776).
certain_enzyme(606).
certain_enzyme(244).
certain_enzyme(695).
certain_enzyme(600).
certain_enzyme(357).
certain_enzyme(874).
certain_enzyme(494).
certain_enzyme(552).
certain_enzyme(839).
certain_enzyme(461).
certain_enzyme(473).
certain_enzyme(456).
certain_enzyme(485).
certain_enzyme(286).
certain_enzyme(840).
certain_enzyme(627).
certain_enzyme(880).
certain_enzyme(201).
certain_enzyme(488).
certain_enzyme(382).
certain_enzyme(740).
certain_enzyme(772).
certain_enzyme(434).
certain_enzyme(496).
certain_enzyme(327).
certain_enzyme(782).
certain_enzyme(318).
certain_enzyme(873).
certain_enzyme(636).
certain_enzyme(398).
certain_enzyme(871).
certain_enzyme(486).
certain_enzyme(238).
certain_enzyme(487).
certain_enzyme(843).
certain_enzyme(670).
certain_enzyme(727).
certain_enzyme(288).
certain_enzyme(821).
certain_enzyme(449).
certain_enzyme(817).
certain_enzyme(710).
certain_enzyme(511).
certain_enzyme(362).
certain_enzyme(798).
certain_enzyme(469).
certain_enzyme(872).
certain_enzyme(148).
certain_enzyme(813).
certain_enzyme(697).
certain_enzyme(601).
certain_enzyme(544).
certain_enzyme(152).
certain_enzyme(432).
certain_enzyme(151).
certain_enzyme(150).
certain_enzyme(265).
certain_enzyme(266).
certain_enzyme(433).
certain_enzyme(267).
certain_enzyme(574).
certain_enzyme(170).
certain_enzyme(465).
certain_enzyme(196).
certain_enzyme(777).
certain_enzyme(215).
certain_enzyme(495).
certain_enzyme(707).
certain_enzyme(446).
certain_enzyme(885).
certain_enzyme(452).
certain_enzyme(816).
certain_enzyme(577).
certain_enzyme(548).
certain_enzyme(421).
certain_enzyme(216).
certain_enzyme(856).
certain_enzyme(759).
certain_enzyme(610).
certain_enzyme(442).
certain_enzyme(789).
certain_enzyme(270).
certain_enzyme(769).
certain_enzyme(884).
certain_enzyme(863).
certain_enzyme(859).
certain_enzyme(837).
certain_enzyme(836).
certain_enzyme(825).
certain_enzyme(805).
certain_enzyme(801).
certain_enzyme(796).
certain_enzyme(792).
certain_enzyme(788).
certain_enzyme(783).
certain_enzyme(767).
certain_enzyme(765).
certain_enzyme(754).
certain_enzyme(747).
certain_enzyme(734).
certain_enzyme(714).
certain_enzyme(688).
certain_enzyme(685).
certain_enzyme(665).
certain_enzyme(655).
certain_enzyme(653).
certain_enzyme(642).
certain_enzyme(639).
certain_enzyme(637).
certain_enzyme(630).
certain_enzyme(629).
certain_enzyme(624).
certain_enzyme(622).
certain_enzyme(616).
certain_enzyme(589).
certain_enzyme(586).
certain_enzyme(584).
certain_enzyme(573).
certain_enzyme(571).
certain_enzyme(561).
certain_enzyme(560).
certain_enzyme(549).
certain_enzyme(547).
certain_enzyme(499).
certain_enzyme(498).
certain_enzyme(497).
certain_enzyme(481).
certain_enzyme(479).
certain_enzyme(450).
certain_enzyme(444).
certain_enzyme(429).
certain_enzyme(424).
certain_enzyme(412).
certain_enzyme(401).
certain_enzyme(395).
certain_enzyme(371).
certain_enzyme(370).
certain_enzyme(369).
certain_enzyme(367).
certain_enzyme(358).
certain_enzyme(351).
certain_enzyme(350).
certain_enzyme(346).
certain_enzyme(345).
certain_enzyme(344).
certain_enzyme(330).
certain_enzyme(329).
certain_enzyme(328).
certain_enzyme(323).
certain_enzyme(322).
certain_enzyme(320).
certain_enzyme(282).
certain_enzyme(276).
certain_enzyme(240).
certain_enzyme(239).
certain_enzyme(230).
certain_enzyme(227).
certain_enzyme(226).
certain_enzyme(190).
certain_enzyme(186).
certain_enzyme(171).
certain_enzyme(140).
certain_enzyme(139).
certain_enzyme(138).
certain_enzyme(136).
certain_enzyme(135).
certain_enzyme(134).
certain_enzyme(133).
certain_enzyme(132).
certain_enzyme(131).
certain_enzyme(130).
certain_enzyme(125).
certain_enzyme(117).
certain_enzyme(116).
certain_enzyme(111).
certain_enzyme(109).
certain_enzyme(96).
certain_enzyme(95).
certain_enzyme(94).
certain_enzyme(93).
certain_enzyme(92).
certain_enzyme(91).
certain_enzyme(90).
certain_enzyme(88).
certain_enzyme(87).
certain_enzyme(85).
certain_enzyme(84).
certain_enzyme(83).
certain_enzyme(82).
certain_enzyme(81).
certain_enzyme(80).
certain_enzyme(79).
certain_enzyme(77).
certain_enzyme(76).
certain_enzyme(75).
certain_enzyme(74).
certain_enzyme(73).
certain_enzyme(72).
certain_enzyme(71).
certain_enzyme(69).
certain_enzyme(68).
certain_enzyme(67).
certain_enzyme(66).
certain_enzyme(65).
certain_enzyme(64).
certain_enzyme(62).
certain_enzyme(61).
certain_enzyme(60).
certain_enzyme(59).
certain_enzyme(58).
certain_enzyme(57).
certain_enzyme(56).
certain_enzyme(54).
certain_enzyme(53).
certain_enzyme(52).
certain_enzyme(51).
certain_enzyme(50).
certain_enzyme(48).
certain_enzyme(47).
certain_enzyme(46).
certain_enzyme(45).
certain_enzyme(44).
certain_enzyme(43).
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
certain_enzyme(28).
certain_enzyme(27).
certain_enzyme(26).
certain_enzyme(25).
certain_enzyme(24).
certain_enzyme(23).
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
metabolite("2NPMB").
metabolite("2NPMMB").
metabolite("2NPMP").
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
metabolite("C00012").
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
metabolite("C00032").
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
metabolite("C00141").
metabolite("C00143").
metabolite("C00144").
metabolite("C00145").
metabolite("C00147").
metabolite("C00148").
metabolite("C00152").
metabolite("C00153").
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
metabolite("C00178").
metabolite("C00183").
metabolite("C00184").
metabolite("C00186").
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
metabolite("C00250").
metabolite("C00251").
metabolite("C00253").
metabolite("C00254").
metabolite("C00255").
metabolite("C00256").
metabolite("C00257").
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
metabolite("C00288").
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
metabolite("C00357").
metabolite("C00361").
metabolite("C00362").
metabolite("C00363").
metabolite("C00364").
metabolite("C00365").
metabolite("C00378").
metabolite("C00380").
metabolite("C00381").
metabolite("C00385").
metabolite("C00387").
metabolite("C00390").
metabolite("C00392").
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
metabolite("C00430").
metabolite("C00440").
metabolite("C00441").
metabolite("C00442").
metabolite("C00445").
metabolite("C00446").
metabolite("C00447").
metabolite("C00448").
metabolite("C00455").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00461").
metabolite("C00463").
metabolite("C00464").
metabolite("C00469").
metabolite("C00470").
metabolite("C00475").
metabolite("C00490").
metabolite("C00493").
metabolite("C00496").
metabolite("C00499").
metabolite("C00510").
metabolite("C00517").
metabolite("C00522").
metabolite("C00526").
metabolite("C00531").
metabolite("C00534").
metabolite("C00535").
metabolite("C00542").
metabolite("C00544").
metabolite("C00555").
metabolite("C00559").
metabolite("C00562").
metabolite("C00568").
metabolite("C00570").
metabolite("C00575").
metabolite("C00579").
metabolite("C00585").
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
metabolite("C00647").
metabolite("C00652").
metabolite("C00655").
metabolite("C00661").
metabolite("C00665").
metabolite("C00668").
metabolite("C00669").
metabolite("C00670").
metabolite("C00685").
metabolite("C00689").
metabolite("C00704").
metabolite("C00705").
metabolite("C00711").
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
metabolite("C00900").
metabolite("C00909").
metabolite("C00921").
metabolite("C00936").
metabolite("C00943").
metabolite("C00944").
metabolite("C00954").
metabolite("C00956").
metabolite("C00965").
metabolite("C00966").
metabolite("C00979").
metabolite("C00996").
metabolite("C00999").
metabolite("C01005").
metabolite("C01010").
metabolite("C01024").
metabolite("C01031").
metabolite("C01034").
metabolite("C01035").
metabolite("C01037").
metabolite("C01051").
metabolite("C01054").
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
metabolite("C01152").
metabolite("C01153").
metabolite("C01157").
metabolite("C01159").
metabolite("C01165").
metabolite("C01167").
metabolite("C01168").
metabolite("C01169").
metabolite("C01172").
metabolite("C01177").
metabolite("C01179").
metabolite("C01185").
metabolite("C01194").
metabolite("C01203").
metabolite("C01209").
metabolite("C01227").
metabolite("C01236").
metabolite("C01242").
metabolite("C01245").
metabolite("C01251").
metabolite("C01260").
metabolite("C01261").
metabolite("C01267").
metabolite("C01268").
metabolite("C01269").
metabolite("C01271").
metabolite("C01277").
metabolite("C01279").
metabolite("C01300").
metabolite("C01302").
metabolite("C01304").
metabolite("C01328").
metabolite("C01330").
metabolite("C01346").
metabolite("C01352").
metabolite("C01429").
metabolite("C01551").
metabolite("C01635").
metabolite("C01636").
metabolite("C01637").
metabolite("C01638").
metabolite("C01639").
metabolite("C01642").
metabolite("C01643").
metabolite("C01645").
metabolite("C01646").
metabolite("C01647").
metabolite("C01648").
metabolite("C01649").
metabolite("C01650").
metabolite("C01652").
metabolite("C01653").
metabolite("C01694").
metabolite("C01724").
metabolite("C01762").
metabolite("C01811").
metabolite("C01883").
metabolite("C01885").
metabolite("C01909").
metabolite("C01931").
metabolite("C01953").
metabolite("C01967").
metabolite("C01997").
metabolite("C02047").
metabolite("C02051").
metabolite("C02095").
metabolite("C02100").
metabolite("C02112").
metabolite("C02163").
metabolite("C02165").
metabolite("C02191").
metabolite("C02218").
metabolite("C02220").
metabolite("C02222").
metabolite("C02225").
metabolite("C02229").
metabolite("C02291").
metabolite("C02391").
metabolite("C02407").
metabolite("C02412").
metabolite("C02430").
metabolite("C02505").
metabolite("C02550").
metabolite("C02553").
metabolite("C02554").
metabolite("C02567").
metabolite("C02637").
metabolite("C02667").
metabolite("C02693").
metabolite("C02700").
metabolite("C02702").
metabolite("C02714").
metabolite("C02737").
metabolite("C02739").
metabolite("C02794").
metabolite("C02839").
metabolite("C02863").
metabolite("C02938").
metabolite("C02972").
metabolite("C02984").
metabolite("C02987").
metabolite("C02988").
metabolite("C03011").
metabolite("C03023").
metabolite("C03024").
metabolite("C03028").
metabolite("C03078").
metabolite("C03082").
metabolite("C03090").
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
metabolite("C03492").
metabolite("C03496").
metabolite("C03506").
metabolite("C03511").
metabolite("C03512").
metabolite("C03518").
metabolite("C03541").
metabolite("C03638").
metabolite("C03722").
metabolite("C03723").
metabolite("C03734").
metabolite("C03785").
metabolite("C03824").
metabolite("C03836").
metabolite("C03838").
metabolite("C03849").
metabolite("C03862").
metabolite("C03883").
metabolite("C03892").
metabolite("C03895").
metabolite("C03912").
metabolite("C03939").
metabolite("C04002").
metabolite("C04076").
metabolite("C04088").
metabolite("C04090").
metabolite("C04133").
metabolite("C04144").
metabolite("C04145").
metabolite("C04158").
metabolite("C04225").
metabolite("C04230").
metabolite("C04232").
metabolite("C04236").
metabolite("C04246").
metabolite("C04252").
metabolite("C04256").
metabolite("C04272").
metabolite("C04281").
metabolite("C04294").
metabolite("C04295").
metabolite("C04302").
metabolite("C04308").
metabolite("C04312").
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
metabolite("C04556").
metabolite("C04619").
metabolite("C04620").
metabolite("C04637").
metabolite("C04640").
metabolite("C04677").
metabolite("C04681").
metabolite("C04688").
metabolite("C04691").
metabolite("C04692").
metabolite("C04706").
metabolite("C04727").
metabolite("C04728").
metabolite("C04733").
metabolite("C04734").
metabolite("C04735").
metabolite("C04748").
metabolite("C04752").
metabolite("C04763").
metabolite("C04801").
metabolite("C04807").
metabolite("C04823").
metabolite("C04827").
metabolite("C04874").
metabolite("C04895").
metabolite("C05102").
metabolite("C05108").
metabolite("C05125").
metabolite("C05139").
metabolite("C05140").
metabolite("C05223").
metabolite("C05330").
metabolite("C05345").
metabolite("C05378").
metabolite("C05379").
metabolite("C05399").
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
metabolite("C05702").
metabolite("C05714").
metabolite("C05745").
metabolite("C05746").
metabolite("C05748").
metabolite("C05749").
metabolite("C05750").
metabolite("C05753").
metabolite("C05754").
metabolite("C05755").
metabolite("C05756").
metabolite("C05757").
metabolite("C05759").
metabolite("C05760").
metabolite("C05761").
metabolite("C05762").
metabolite("C05764").
metabolite("C05824").
metabolite("C05862").
metabolite("C05863").
metabolite("C05864").
metabolite("C05873").
metabolite("C05874").
metabolite("C05925").
metabolite("C05980").
metabolite("C06006").
metabolite("C06010").
metabolite("C06015").
metabolite("C06054").
metabolite("C06055").
metabolite("C06156").
metabolite("C06237").
metabolite("C06253").
metabolite("C06254").
metabolite("C06316").
metabolite("C06329").
metabolite("C06424").
metabolite("C06604").
metabolite("C06606").
metabolite("C06814").
metabolite("C07086").
metabolite("C07090").
metabolite("C07091").
metabolite("C11355").
metabolite("C11455").
metabolite("C11482").
metabolite("C161ACP").
metabolite("C16A").
metabolite("C182ACP").
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
metabolite("MIPC").
metabolite("MMET").
metabolite("MZYMST").
metabolite("N4HBZ").
metabolite("NMN").
metabolite("OIVAL").
metabolite("PHSP").
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
orf("Q0105").
orf("U101_").
orf("U102_").
orf("U104_").
orf("U108_").
orf("U10_").
orf("U110_").
orf("U112_").
orf("U114_").
orf("U115_").
orf("U116_").
orf("U119_").
orf("U120_").
orf("U122_").
orf("U127_").
orf("U128_").
orf("U129_").
orf("U132_").
orf("U134_").
orf("U136_").
orf("U141_").
orf("U143_").
orf("U147_").
orf("U149_").
orf("U14_").
orf("U152_").
orf("U153_").
orf("U154_").
orf("U155_").
orf("U158_").
orf("U159_").
orf("U15_").
orf("U160_").
orf("U162_").
orf("U163_").
orf("U167_").
orf("U168_").
orf("U16_").
orf("U171_").
orf("U172_").
orf("U174_").
orf("U175_").
orf("U176_").
orf("U177_").
orf("U178_").
orf("U17_").
orf("U180_").
orf("U182_").
orf("U184_").
orf("U185_").
orf("U186_").
orf("U188_").
orf("U18_").
orf("U190_").
orf("U191_").
orf("U192_").
orf("U193_").
orf("U194_").
orf("U196_").
orf("U198_").
orf("U1_").
orf("U200_").
orf("U202_").
orf("U204_").
orf("U205_").
orf("U206_").
orf("U207_").
orf("U208_").
orf("U20_").
orf("U215_").
orf("U219_").
orf("U21_").
orf("U220_").
orf("U222_").
orf("U223_").
orf("U225_").
orf("U227_").
orf("U228_").
orf("U229_").
orf("U23_").
orf("U24_").
orf("U25_").
orf("U27_").
orf("U28_").
orf("U2_").
orf("U30_").
orf("U33_").
orf("U34_").
orf("U35_").
orf("U36_").
orf("U38_").
orf("U3_").
orf("U40_").
orf("U41_").
orf("U44_").
orf("U46_").
orf("U47_").
orf("U49_").
orf("U4_").
orf("U50_").
orf("U51_").
orf("U52_").
orf("U53_").
orf("U54_").
orf("U55_").
orf("U56_").
orf("U57_").
orf("U5_").
orf("U61_").
orf("U62_").
orf("U64_").
orf("U68_").
orf("U69_").
orf("U6_").
orf("U71_").
orf("U72_").
orf("U73_").
orf("U74_").
orf("U75_").
orf("U76_").
orf("U78_").
orf("U79_").
orf("U7_").
orf("U81_").
orf("U82_").
orf("U83_").
orf("U84_").
orf("U86_").
orf("U87_").
orf("U88_").
orf("U89_").
orf("U8_").
orf("U90_").
orf("U91_").
orf("U92_").
orf("U93_").
orf("U94_").
orf("U96_").
orf("U98_").
orf("U99_").
orf("U9_").
orf("YAL012W").
orf("YAL023C").
orf("YAL026C").
orf("YAL038W").
orf("YAL062W").
orf("YAR071W").
orf("YAR073W").
orf("YAR075W").
orf("YBL013W").
orf("YBL015W").
orf("YBL035C").
orf("YBL039C").
orf("YBL042C").
orf("YBL045C").
orf("YBL056W").
orf("YBL067C").
orf("YBL068W").
orf("YBL098W").
orf("YBR002C").
orf("YBR003W").
orf("YBR006W").
orf("YBR011C").
orf("YBR018C").
orf("YBR019C").
orf("YBR020W").
orf("YBR021W").
orf("YBR023C").
orf("YBR034C").
orf("YBR035C").
orf("YBR036C").
orf("YBR038W").
orf("YBR058C").
orf("YBR068C").
orf("YBR069C").
orf("YBR084W").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR117C").
orf("YBR121C").
orf("YBR125C").
orf("YBR126C").
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
orf("YBR249C").
orf("YBR252W").
orf("YBR256C").
orf("YBR276C").
orf("YBR278W").
orf("YBR284W").
orf("YBR291C").
orf("YBR298C").
orf("YCL004W").
orf("YCL009C").
orf("YCL025C").
orf("YCL030C").
orf("YCL040W").
orf("YCL050C").
orf("YCR005C").
orf("YCR012W").
orf("YCR014C").
orf("YCR024C").
orf("YCR024C-A").
orf("YCR032W").
orf("YCR036W").
orf("YCR073W-A").
orf("YDL006W").
orf("YDL021W").
orf("YDL022W").
orf("YDL024C").
orf("YDL033C").
orf("YDL040C").
orf("YDL047W").
orf("YDL052C").
orf("YDL066W").
orf("YDL078C").
orf("YDL080C").
orf("YDL086W").
orf("YDL090C").
orf("YDL093W").
orf("YDL095W").
orf("YDL100C").
orf("YDL102W").
orf("YDL103C").
orf("YDL122W").
orf("YDL131W").
orf("YDL134C").
orf("YDL140C").
orf("YDL141W").
orf("YDL142C").
orf("YDL150W").
orf("YDL164C").
orf("YDL168W").
orf("YDL174C").
orf("YDL182W").
orf("YDL188C").
orf("YDL210W").
orf("YDL215C").
orf("YDL230W").
orf("YDL236W").
orf("YDL238C").
orf("YDL245C").
orf("YDR007W").
orf("YDR009W").
orf("YDR019C").
orf("YDR023W").
orf("YDR035W").
orf("YDR037W").
orf("YDR044W").
orf("YDR045C").
orf("YDR046C").
orf("YDR047W").
orf("YDR050C").
orf("YDR058C").
orf("YDR069C").
orf("YDR074W").
orf("YDR075W").
orf("YDR093W").
orf("YDR120C").
orf("YDR121W").
orf("YDR127W").
orf("YDR147W").
orf("YDR148C").
orf("YDR156W").
orf("YDR158W").
orf("YDR178W").
orf("YDR208W").
orf("YDR226W").
orf("YDR236C").
orf("YDR242W").
orf("YDR248C").
orf("YDR256C").
orf("YDR261C").
orf("YDR268W").
orf("YDR272W").
orf("YDR284C").
orf("YDR294C").
orf("YDR297W").
orf("YDR300C").
orf("YDR307W").
orf("YDR321W").
orf("YDR341C").
orf("YDR342C").
orf("YDR343C").
orf("YDR345C").
orf("YDR353W").
orf("YDR354W").
orf("YDR380W").
orf("YDR399W").
orf("YDR400W").
orf("YDR402C").
orf("YDR404C").
orf("YDR408C").
orf("YDR410C").
orf("YDR419W").
orf("YDR436W").
orf("YDR441C").
orf("YDR454C").
orf("YDR497C").
orf("YDR503C").
orf("YDR508C").
orf("YDR529C").
orf("YDR530C").
orf("YDR531W").
orf("YDR536W").
orf("YEL017C-A").
orf("YEL021W").
orf("YEL041W").
orf("YEL046C").
orf("YEL047C").
orf("YEL055C").
orf("YEL058W").
orf("YEL069C").
orf("YER003C").
orf("YER005W").
orf("YER014W").
orf("YER015W").
orf("YER023W").
orf("YER026C").
orf("YER042W").
orf("YER052C").
orf("YER053C").
orf("YER055C").
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
orf("YER098W").
orf("YER099C").
orf("YER133W").
orf("YER144C").
orf("YER151C").
orf("YER166W").
orf("YER170W").
orf("YER178W").
orf("YFL001W").
orf("YFL011W").
orf("YFL017C").
orf("YFL018C").
orf("YFL022C").
orf("YFL036W").
orf("YFL053W").
orf("YFL055W").
orf("YFR010W").
orf("YFR019W").
orf("YFR028C").
orf("YFR030W").
orf("YFR033C").
orf("YFR047C").
orf("YFR053C").
orf("YFR055W").
orf("YGL001C").
orf("YGL008C").
orf("YGL012W").
orf("YGL017W").
orf("YGL019W").
orf("YGL026C").
orf("YGL027C").
orf("YGL037C").
orf("YGL055W").
orf("YGL062W").
orf("YGL063W").
orf("YGL070C").
orf("YGL077C").
orf("YGL125W").
orf("YGL130W").
orf("YGL148W").
orf("YGL154C").
orf("YGL186C").
orf("YGL202W").
orf("YGL205W").
orf("YGL234W").
orf("YGL245W").
orf("YGL248W").
orf("YGL253W").
orf("YGL256W").
orf("YGR007W").
orf("YGR012W").
orf("YGR019W").
orf("YGR032W").
orf("YGR037C").
orf("YGR043C").
orf("YGR055W").
orf("YGR060W").
orf("YGR061C").
orf("YGR087C").
orf("YGR088W").
orf("YGR094W").
orf("YGR121C").
orf("YGR123C").
orf("YGR124W").
orf("YGR147C").
orf("YGR155W").
orf("YGR170W").
orf("YGR171C").
orf("YGR175C").
orf("YGR177C").
orf("YGR180C").
orf("YGR183C").
orf("YGR185C").
orf("YGR194C").
orf("YGR199W").
orf("YGR204W").
orf("YGR208W").
orf("YGR234W").
orf("YGR240C").
orf("YGR244C").
orf("YGR248W").
orf("YGR254W").
orf("YGR255C").
orf("YGR264C").
orf("YGR267C").
orf("YGR282C").
orf("YGR286C").
orf("YHL011C").
orf("YHL012W").
orf("YHL016C").
orf("YHL032C").
orf("YHL036W").
orf("YHR001W-A").
orf("YHR007C").
orf("YHR008C").
orf("YHR011W").
orf("YHR019C").
orf("YHR020W").
orf("YHR025W").
orf("YHR037W").
orf("YHR042W").
orf("YHR046C").
orf("YHR063C").
orf("YHR072W").
orf("YHR074W").
orf("YHR091C").
orf("YHR092C").
orf("YHR094C").
orf("YHR096C").
orf("YHR102W").
orf("YHR123W").
orf("YHR137W").
orf("YHR143W-A").
orf("YHR144C").
orf("YHR163W").
orf("YHR174W").
orf("YHR205W").
orf("YHR208W").
orf("YHR215W").
orf("YHR216W").
orf("YIL009W").
orf("YIL021W").
orf("YIL035C").
orf("YIL043C").
orf("YIL048W").
orf("YIL053W").
orf("YIL066C").
orf("YIL074C").
orf("YIL085C").
orf("YIL094C").
orf("YIL107C").
orf("YIL113W").
orf("YIL116W").
orf("YIL125W").
orf("YIL139C").
orf("YIL155C").
orf("YIL156W").
orf("YIL160C").
orf("YIL168W").
orf("YIR026C").
orf("YIR027C").
orf("YIR029W").
orf("YIR031C").
orf("YIR032C").
orf("YIR037W").
orf("YJL005W").
orf("YJL026W").
orf("YJL045W").
orf("YJL068C").
orf("YJL070C").
orf("YJL090C").
orf("YJL101C").
orf("YJL121C").
orf("YJL126W").
orf("YJL129C").
orf("YJL130C").
orf("YJL134W").
orf("YJL140W").
orf("YJL148W").
orf("YJL153C").
orf("YJL155C").
orf("YJL164C").
orf("YJL166W").
orf("YJL167W").
orf("YJL197W").
orf("YJL200C").
orf("YJL214W").
orf("YJL219W").
orf("YJR006W").
orf("YJR010W").
orf("YJR025C").
orf("YJR043C").
orf("YJR049C").
orf("YJR051W").
orf("YJR057W").
orf("YJR063W").
orf("YJR073C").
orf("YJR077C").
orf("YJR078W").
orf("YJR095W").
orf("YJR103W").
orf("YJR104C").
orf("YJR105W").
orf("YJR109C").
orf("YJR130C").
orf("YJR133W").
orf("YJR137C").
orf("YJR139C").
orf("YJR143C").
orf("YJR148W").
orf("YJR152W").
orf("YJR153W").
orf("YJR158W").
orf("YJR159W").
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
orf("YKL104C").
orf("YKL106W").
orf("YKL127W").
orf("YKL132C").
orf("YKL141W").
orf("YKL144C").
orf("YKL148C").
orf("YKL150W").
orf("YKL152C").
orf("YKL166C").
orf("YKL181W").
orf("YKL182W").
orf("YKL184W").
orf("YKL192C").
orf("YKL211C").
orf("YKL216W").
orf("YKL217W").
orf("YKR002W").
orf("YKR009C").
orf("YKR031C").
orf("YKR039W").
orf("YKR053C").
orf("YKR080W").
orf("YKR093W").
orf("YKR097W").
orf("YKR098C").
orf("YLL018C").
orf("YLL041C").
orf("YLL043W").
orf("YLL061W").
orf("YLL062C").
orf("YLR027C").
orf("YLR028C").
orf("YLR044C").
orf("YLR056W").
orf("YLR060W").
orf("YLR081W").
orf("YLR089C").
orf("YLR100C").
orf("YLR133W").
orf("YLR134W").
orf("YLR138W").
orf("YLR142W").
orf("YLR155C").
orf("YLR157C").
orf("YLR158C").
orf("YLR160C").
orf("YLR164W").
orf("YLR172C").
orf("YLR209C").
orf("YLR231C").
orf("YLR237W").
orf("YLR245C").
orf("YLR260W").
orf("YLR286C").
orf("YLR300W").
orf("YLR303W").
orf("YLR304C").
orf("YLR305C").
orf("YLR328W").
orf("YLR342W").
orf("YLR348C").
orf("YLR354C").
orf("YLR355C").
orf("YLR359W").
orf("YLR377C").
orf("YLR382C").
orf("YLR432W").
orf("YLR433C").
orf("YML016C").
orf("YML022W").
orf("YML035C").
orf("YML054C").
orf("YML056C").
orf("YML057W").
orf("YML070W").
orf("YML086C").
orf("YML100W").
orf("YML110C").
orf("YML120C").
orf("YML123C").
orf("YMR006C").
orf("YMR008C").
orf("YMR011W").
orf("YMR013C").
orf("YMR015C").
orf("YMR036C").
orf("YMR062C").
orf("YMR083W").
orf("YMR101C").
orf("YMR105C").
orf("YMR108W").
orf("YMR113W").
orf("YMR118C").
orf("YMR120C").
orf("YMR169C").
orf("YMR170C").
orf("YMR180C").
orf("YMR189W").
orf("YMR205C").
orf("YMR208W").
orf("YMR217W").
orf("YMR220W").
orf("YMR223W").
orf("YMR246W").
orf("YMR250W").
orf("YMR261C").
orf("YMR267W").
orf("YMR272C").
orf("YMR281W").
orf("YMR293C").
orf("YMR300C").
orf("YMR303C").
orf("YMR304W").
orf("YMR306W").
orf("YMR323W").
orf("YNL029C").
orf("YNL037C").
orf("YNL045W").
orf("YNL053W").
orf("YNL071W").
orf("YNL073W").
orf("YNL102W").
orf("YNL113W").
orf("YNL117W").
orf("YNL130C").
orf("YNL141W").
orf("YNL142W").
orf("YNL151C").
orf("YNL169C").
orf("YNL186W").
orf("YNL192W").
orf("YNL241C").
orf("YNL247W").
orf("YNL248C").
orf("YNL256W").
orf("YNL262W").
orf("YNL267W").
orf("YNL268W").
orf("YNL277W").
orf("YNL280C").
orf("YNL292W").
orf("YNL299W").
orf("YNL316C").
orf("YNL318C").
orf("YNR001C").
orf("YNR003C").
orf("YNR008W").
orf("YNR012W").
orf("YNR016C").
orf("YNR032W").
orf("YNR033W").
orf("YNR034W").
orf("YNR041C").
orf("YNR043W").
orf("YNR056C").
orf("YNR058W").
orf("YNR072W").
orf("YOL005C").
orf("YOL010W").
orf("YOL011W").
orf("YOL020W").
orf("YOL033W").
orf("YOL052C").
orf("YOL055C").
orf("YOL056W").
orf("YOL058W").
orf("YOL059W").
orf("YOL061W").
orf("YOL086C").
orf("YOL096C").
orf("YOL097C").
orf("YOL103W").
orf("YOL115W").
orf("YOL126C").
orf("YOL136C").
orf("YOL143C").
orf("YOL156W").
orf("YOR005C").
orf("YOR061W").
orf("YOR065W").
orf("YOR071C").
orf("YOR095C").
orf("YOR116C").
orf("YOR124C").
orf("YOR130C").
orf("YOR136W").
orf("YOR142W").
orf("YOR143C").
orf("YOR151C").
orf("YOR171C").
orf("YOR176W").
orf("YOR184W").
orf("YOR190W").
orf("YOR192C").
orf("YOR207C").
orf("YOR208W").
orf("YOR209C").
orf("YOR210W").
orf("YOR221C").
orf("YOR224C").
orf("YOR236W").
orf("YOR241W").
orf("YOR274W").
orf("YOR278W").
orf("YOR303W").
orf("YOR317W").
orf("YOR321W").
orf("YOR323C").
orf("YOR330C").
orf("YOR335C").
orf("YOR340C").
orf("YOR341W").
orf("YOR347C").
orf("YOR348C").
orf("YOR360C").
orf("YOR374W").
orf("YOR375C").
orf("YOR377W").
orf("YOR388C").
orf("YOR393W").
orf("YPL001W").
orf("YPL017C").
orf("YPL023C").
orf("YPL028W").
orf("YPL036W").
orf("YPL057C").
orf("YPL072W").
orf("YPL097W").
orf("YPL104W").
orf("YPL111W").
orf("YPL148C").
orf("YPL160W").
orf("YPL167C").
orf("YPL172C").
orf("YPL179W").
orf("YPL188W").
orf("YPL203W").
orf("YPL206C").
orf("YPL212C").
orf("YPL214C").
orf("YPL228W").
orf("YPL231W").
orf("YPL258C").
orf("YPL262W").
orf("YPL265W").
orf("YPL266W").
orf("YPL268W").
orf("YPL273W").
orf("YPL274W").
orf("YPL275W").
orf("YPL276W").
orf("YPL281C").
orf("YPR001W").
orf("YPR002W").
orf("YPR006C").
orf("YPR010C").
orf("YPR033C").
orf("YPR035W").
orf("YPR047W").
orf("YPR060C").
orf("YPR062W").
orf("YPR069C").
orf("YPR073C").
orf("YPR074C").
orf("YPR081C").
orf("YPR110C").
orf("YPR113W").
orf("YPR121W").
orf("YPR138C").
orf("YPR145W").
orf("YPR175W").
orf("YPR176C").
orf("YPR187W").
orf("YPR190C").
orf("YPR191W").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

inhibitor(22,"C00082",cytosol).
inhibitor(22,"C00082",cytosol).

