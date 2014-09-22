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

in_compartment(Experiment,"C00294",cytosol,Day) :-
  not exclude(520),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00294",medium,Day),
  catalyst(520,Complex),
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

retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(520).
retractable_reaction(570).
retractable_reaction(581).
retractable_reaction(582).
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
retractable_reaction(1111).
retractable_reaction(1112).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(1581).
retractable_reaction(1582).
retractable_reaction(2190).
retractable_reaction(2380).
retractable_reaction(2631).
retractable_reaction(2632).
retractable_reaction(3300).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
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
retractable_reaction(4510).
retractable_reaction(4671).
retractable_reaction(4672).
retractable_reaction(5190).
retractable_reaction(5250).
retractable_reaction(5441).
retractable_reaction(5442).
retractable_reaction(5540).
retractable_reaction(5561).
retractable_reaction(5562).
retractable_reaction(5810).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(7880).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8571).
retractable_reaction(8572).
retractable_reaction(8601).
retractable_reaction(8602).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(10791).
retractable_reaction(10792).
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

component("YPL231W",91).
component("U46_",25).
component("YDR127W",39).
component("YJR078W",67).
component("YOR323C",88).
component("U52_",26).
component("YBR166C",32).
component("YKR080W",74).
component("YLR058C",77).
component("YLR209C",78).
component("YDR354W",44) :- not remove_orf("YDR354W",44).
component("YFR047C",55).
component("YDR127W",40).
component("YDR035W",37).
component("YBR249C",33).
component("YHR137W",64).
component("YLR027C",76).
component("YKL106W",69).
component("YCR036W",35).
component("YNR012W",83).
component("YDR127W",41).
component("YKL067W",68).
component("YDR454C",46).
component("YOL061W",86).
component("YKL181W",70).
component("YHL011C",63).
component("YER099C",53).
component("YBL068W",28).
component("U30_",24).
component("U24_",23).
component("YDR400W",45).
component("U53_",27).
component("YBR111C",31).
component("YLR231C",79).
component("YKL211C",71) :- not remove_orf("YKL211C",71).
component("YKL211C",72) :- not remove_orf("YKL211C",72).
component("YER090W",72) :- not remove_orf("YER090W",72).
component("YER090W",52) :- not remove_orf("YER090W",52).
component("YDR127W",42).
component("YPL281C",93).
component("YOR393W",89).
component("YMR323W",80).
component("YHR174W",65).
component("YGR254W",61).
component("YGL026C",56) :- not remove_orf("YGL026C",56).
component("YNL316C",82).
component("YDR127W",43).
component("YGL148W",57).
component("YDR007W",36) :- not remove_orf("YDR007W",36).
component("YOR095C",87).
component("YPR060C",94).
component("YGR264C",62).
component("YGR171C",60).
component("YPL104W",90).
component("YLL018C",75).
component("YNR057C",84).
component("YPR138C",95).
component("YPL265W",92).
component("YOL020W",85) :- not remove_orf("YOL020W",85).
component("YNL142W",81).
component("YKR039W",73) :- not remove_orf("YKR039W",73).
component("YJR077C",66).
component("YGR121C",59).
component("YGL186C",58).
component("YFL055W",54).
component("YER060W-A",51).
component("YER060W",50).
component("YER056C",49).
component("YDR536W",48).
component("YDR508C",47).
component("YDR046C",38) :- not remove_orf("YDR046C",38).
component("YCL025C",34).
component("YBR069C",30) :- not remove_orf("YBR069C",30).
component("YBR068C",29) :- not remove_orf("YBR068C",29).
component("U228_",22).
component("U194_",21).
component("U178_",20).
component("U177_",19).
component("U155_",18).
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


catalyst(10791,91).
catalyst(10792,91).
catalyst(4510,25).
catalyst(3730,39).
catalyst(3520,67).
catalyst(3300,88).
catalyst(3640,26).
catalyst(3660,32).
catalyst(2380,74).
catalyst(4671,77).
catalyst(4672,77).
catalyst(5561,78).
catalyst(5562,78).
catalyst(3620,44) :- not remove_reaction(3620,44).
catalyst(2190,55).
catalyst(3710,40).
catalyst(3760,37).
catalyst(3760,33).
catalyst(3671,64).
catalyst(3672,64).
catalyst(3571,76).
catalyst(3572,76).
catalyst(3571,69).
catalyst(3572,69).
catalyst(7880,35).
catalyst(5810,83).
catalyst(3720,41).
catalyst(5441,68).
catalyst(5442,68).
catalyst(6181,46).
catalyst(6182,46).
catalyst(6241,86).
catalyst(6242,86).
catalyst(6241,70).
catalyst(6242,70).
catalyst(6241,63).
catalyst(6242,63).
catalyst(6241,53).
catalyst(6242,53).
catalyst(6241,28).
catalyst(6242,28).
catalyst(5190,24).
catalyst(5250,23).
catalyst(5540,45).
catalyst(3510,27).
catalyst(8821,31).
catalyst(8822,31).
catalyst(3500,79).
catalyst(3600,71) :- not remove_reaction(3600,71).
catalyst(3630,72) :- not remove_reaction(3630,72).
catalyst(3630,52) :- not remove_reaction(3630,52).
catalyst(3740,42).
catalyst(8231,93).
catalyst(8232,93).
catalyst(8231,89).
catalyst(8232,89).
catalyst(8231,80).
catalyst(8232,80).
catalyst(8231,65).
catalyst(8232,65).
catalyst(8231,61).
catalyst(8232,61).
catalyst(3590,56) :- not remove_reaction(3590,56).
catalyst(10910,56) :- not remove_reaction(10910,56).
catalyst(3680,82).
catalyst(3750,43).
catalyst(3700,57).
catalyst(3610,36) :- not remove_reaction(3610,36).
catalyst(7921,87).
catalyst(7922,87).
catalyst(3690,94).
catalyst(8601,62).
catalyst(8602,62).
catalyst(8601,60).
catalyst(8602,60).
catalyst(8571,90).
catalyst(8572,90).
catalyst(8571,75).
catalyst(8572,75).
catalyst(2631,84).
catalyst(2632,84).
catalyst(371,95).
catalyst(372,95).
catalyst(781,92).
catalyst(782,92).
catalyst(881,92).
catalyst(882,92).
catalyst(1191,92).
catalyst(1192,92).
catalyst(801,85) :- not remove_reaction(801,85).
catalyst(802,85) :- not remove_reaction(802,85).
catalyst(811,85) :- not remove_reaction(811,85).
catalyst(812,85) :- not remove_reaction(812,85).
catalyst(831,85) :- not remove_reaction(831,85).
catalyst(832,85) :- not remove_reaction(832,85).
catalyst(371,81).
catalyst(372,81).
catalyst(781,73) :- not remove_reaction(781,73).
catalyst(782,73) :- not remove_reaction(782,73).
catalyst(801,73) :- not remove_reaction(801,73).
catalyst(802,73) :- not remove_reaction(802,73).
catalyst(811,73) :- not remove_reaction(811,73).
catalyst(812,73) :- not remove_reaction(812,73).
catalyst(831,73) :- not remove_reaction(831,73).
catalyst(832,73) :- not remove_reaction(832,73).
catalyst(881,73) :- not remove_reaction(881,73).
catalyst(882,73) :- not remove_reaction(882,73).
catalyst(1191,73) :- not remove_reaction(1191,73).
catalyst(1192,73) :- not remove_reaction(1192,73).
catalyst(1581,66).
catalyst(1582,66).
catalyst(371,59).
catalyst(372,59).
catalyst(581,58).
catalyst(582,58).
catalyst(781,54).
catalyst(782,54).
catalyst(1191,54).
catalyst(1192,54).
catalyst(581,51).
catalyst(582,51).
catalyst(581,50).
catalyst(582,50).
catalyst(581,49).
catalyst(582,49).
catalyst(1191,48).
catalyst(1192,48).
catalyst(781,47).
catalyst(782,47).
catalyst(881,47).
catalyst(882,47).
catalyst(801,38) :- not remove_reaction(801,38).
catalyst(802,38) :- not remove_reaction(802,38).
catalyst(811,38) :- not remove_reaction(811,38).
catalyst(812,38) :- not remove_reaction(812,38).
catalyst(831,38) :- not remove_reaction(831,38).
catalyst(832,38) :- not remove_reaction(832,38).
catalyst(781,34).
catalyst(782,34).
catalyst(801,34).
catalyst(802,34).
catalyst(831,34).
catalyst(832,34).
catalyst(881,34).
catalyst(882,34).
catalyst(1191,34).
catalyst(1192,34).
catalyst(801,30) :- not remove_reaction(801,30).
catalyst(802,30) :- not remove_reaction(802,30).
catalyst(811,30) :- not remove_reaction(811,30).
catalyst(812,30) :- not remove_reaction(812,30).
catalyst(801,29) :- not remove_reaction(801,29).
catalyst(802,29) :- not remove_reaction(802,29).
catalyst(811,29) :- not remove_reaction(811,29).
catalyst(812,29) :- not remove_reaction(812,29).
catalyst(831,29) :- not remove_reaction(831,29).
catalyst(832,29) :- not remove_reaction(832,29).
catalyst(41,22).
catalyst(42,22).
catalyst(520,21).
catalyst(570,20).
catalyst(520,19).
catalyst(1111,18).
catalyst(1112,18).
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

modifiable_enzyme(44).
modifiable_enzyme(71).
modifiable_enzyme(72).
modifiable_enzyme(52).
modifiable_enzyme(56).
modifiable_enzyme(36).
modifiable_enzyme(85).
modifiable_enzyme(73).
modifiable_enzyme(38).
modifiable_enzyme(30).
modifiable_enzyme(29).
modifiable_enzyme(14).
modifiable_enzyme(10).

certain_enzyme(91).
certain_enzyme(25).
certain_enzyme(39).
certain_enzyme(67).
certain_enzyme(88).
certain_enzyme(26).
certain_enzyme(32).
certain_enzyme(74).
certain_enzyme(77).
certain_enzyme(78).
certain_enzyme(55).
certain_enzyme(40).
certain_enzyme(37).
certain_enzyme(33).
certain_enzyme(64).
certain_enzyme(76).
certain_enzyme(69).
certain_enzyme(35).
certain_enzyme(83).
certain_enzyme(41).
certain_enzyme(68).
certain_enzyme(46).
certain_enzyme(86).
certain_enzyme(70).
certain_enzyme(63).
certain_enzyme(53).
certain_enzyme(28).
certain_enzyme(24).
certain_enzyme(23).
certain_enzyme(45).
certain_enzyme(27).
certain_enzyme(31).
certain_enzyme(79).
certain_enzyme(42).
certain_enzyme(93).
certain_enzyme(89).
certain_enzyme(80).
certain_enzyme(65).
certain_enzyme(61).
certain_enzyme(82).
certain_enzyme(43).
certain_enzyme(57).
certain_enzyme(87).
certain_enzyme(94).
certain_enzyme(62).
certain_enzyme(60).
certain_enzyme(90).
certain_enzyme(75).
certain_enzyme(84).
certain_enzyme(95).
certain_enzyme(92).
certain_enzyme(81).
certain_enzyme(66).
certain_enzyme(59).
certain_enzyme(58).
certain_enzyme(54).
certain_enzyme(51).
certain_enzyme(50).
certain_enzyme(49).
certain_enzyme(48).
certain_enzyme(47).
certain_enzyme(34).
certain_enzyme(22).
certain_enzyme(21).
certain_enzyme(20).
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
metabolite("C00033").
metabolite("C00037").
metabolite("C00041").
metabolite("C00049").
metabolite("C00058").
metabolite("C00063").
metabolite("C00064").
metabolite("C00065").
metabolite("C00074").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00082").
metabolite("C00101").
metabolite("C00105").
metabolite("C00108").
metabolite("C00112").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00121").
metabolite("C00143").
metabolite("C00166").
metabolite("C00188").
metabolite("C00199").
metabolite("C00212").
metabolite("C00242").
metabolite("C00251").
metabolite("C00254").
metabolite("C00279").
metabolite("C00294").
metabolite("C00299").
metabolite("C00301").
metabolite("C00328").
metabolite("C00361").
metabolite("C00362").
metabolite("C00365").
metabolite("C00385").
metabolite("C00387").
metabolite("C00445").
metabolite("C00463").
metabolite("C00493").
metabolite("C00526").
metabolite("C00620").
metabolite("C00631").
metabolite("C00661").
metabolite("C00711").
metabolite("C00944").
metabolite("C01037").
metabolite("C01165").
metabolite("C01179").
metabolite("C01185").
metabolite("C01269").
metabolite("C01302").
metabolite("C01638").
metabolite("C01647").
metabolite("C01762").
metabolite("C01909").
metabolite("C02637").
metabolite("C02700").
metabolite("C02984").
metabolite("C03175").
metabolite("C03506").
metabolite("C03722").
metabolite("C03734").
metabolite("C04302").
metabolite("C04691").
metabolite("C05335").
metabolite("C05336").
metabolite("C05746").
metabolite("C05747").

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
orf("U155_").
orf("U177_").
orf("U178_").
orf("U194_").
orf("U228_").
orf("U24_").
orf("U30_").
orf("U46_").
orf("U52_").
orf("U53_").
orf("YBL068W").
orf("YBR068C").
orf("YBR069C").
orf("YBR111C").
orf("YBR166C").
orf("YBR249C").
orf("YCL025C").
orf("YCR036W").
orf("YDR007W").
orf("YDR035W").
orf("YDR046C").
orf("YDR127W").
orf("YDR354W").
orf("YDR400W").
orf("YDR454C").
orf("YDR508C").
orf("YDR536W").
orf("YER056C").
orf("YER060W").
orf("YER060W-A").
orf("YER090W").
orf("YER099C").
orf("YFL055W").
orf("YFR047C").
orf("YGL026C").
orf("YGL148W").
orf("YGL186C").
orf("YGR121C").
orf("YGR171C").
orf("YGR254W").
orf("YGR264C").
orf("YHL011C").
orf("YHR137W").
orf("YHR174W").
orf("YJR077C").
orf("YJR078W").
orf("YKL067W").
orf("YKL106W").
orf("YKL181W").
orf("YKL211C").
orf("YKR039W").
orf("YKR080W").
orf("YLL018C").
orf("YLR027C").
orf("YLR058C").
orf("YLR209C").
orf("YLR231C").
orf("YMR323W").
orf("YNL142W").
orf("YNL316C").
orf("YNR012W").
orf("YNR057C").
orf("YOL020W").
orf("YOL061W").
orf("YOR095C").
orf("YOR323C").
orf("YOR393W").
orf("YPL104W").
orf("YPL231W").
orf("YPL265W").
orf("YPL281C").
orf("YPR060C").
orf("YPR138C").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

inhibitor(33,"C00082",cytosol).

