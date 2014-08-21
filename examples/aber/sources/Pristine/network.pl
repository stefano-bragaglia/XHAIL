in_compartment(Experiment,Metabolite,Compartment,Day) :-
  start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
  additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,M1,Compartment,Day) :-
  additional_nutrient(Experiment,M2,Compartment),
  contaminated(M2,M1).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(1),
  Day >= 1,
  in_compartment(Experiment,"C00074",medium,Day),
  catalyst(1,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(2),
  Day >= 1,
  in_compartment(Experiment,"C00078",medium,Day),
  catalyst(2,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(3),
  Day >= 1,
  in_compartment(Experiment,"C00079",medium,Day),
  catalyst(3,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(4),
  Day >= 1,
  in_compartment(Experiment,"C00082",medium,Day),
  catalyst(4,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(5),
  Day >= 1,
  in_compartment(Experiment,"C00108",medium,Day),
  catalyst(5,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(6),
  Day >= 2,
  in_compartment(Experiment,"C00166",medium,Day),
  catalyst(6,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  not exclude(7),
  Day >= 1,
  in_compartment(Experiment,"C00463",medium,Day),
  catalyst(7,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(8),
  Day >= 1,
  in_compartment(Experiment,"C00493",medium,Day),
  catalyst(8,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(9),
  Day >= 2,
  in_compartment(Experiment,"C01179",medium,Day),
  catalyst(9,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00631",medium,Day),
  catalyst(10,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00279",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00279",medium,Day),
  catalyst(11,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00005",medium,Day),
  catalyst(12,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00000",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00000",medium,Day),
  catalyst(13,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00002",medium,Day),
  catalyst(14,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00014",medium,Day),
  catalyst(15,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00064",medium,Day),
  catalyst(16,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00119",medium,Day),
  catalyst(17,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00065",medium,Day),
  catalyst(18,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00003",medium,Day),
  catalyst(19,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00006",medium,Day),
  catalyst(20,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00001",medium,Day),
  catalyst(21,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00011",medium,Day),
  catalyst(22,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  Day >= 1,
  in_compartment(Experiment,"C00025",medium,Day),
  catalyst(23,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(24),
  Day >= 1,
  in_compartment(Experiment,"C00631",cytosol,Day),
  catalyst(24,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(24),
  Day >= 1,
  in_compartment(Experiment,"C00631",cytosol,Day),
  catalyst(24,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(25),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(25,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04691",cytosol,Day) :-
  not exclude(25),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(25,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(26),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(26,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00944",cytosol,Day) :-
  not exclude(26),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(26,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(27),
  Day >= 1,
  in_compartment(Experiment,"C00944",cytosol,Day),
  catalyst(27,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02637",cytosol,Day) :-
  not exclude(27),
  Day >= 1,
  in_compartment(Experiment,"C00944",cytosol,Day),
  catalyst(27,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02652",cytosol,Day) :-
  not exclude(28),
  Day >= 1,
  in_compartment(Experiment,"C02637",cytosol,Day),
  catalyst(28,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(29),
  Day >= 1,
  in_compartment(Experiment,"C00000",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02652",cytosol,Day),
  catalyst(29,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(29),
  Day >= 1,
  in_compartment(Experiment,"C00000",cytosol,Day),
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02652",cytosol,Day),
  catalyst(29,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(30),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(30,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03175",cytosol,Day) :-
  not exclude(30),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(30,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(31),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(31,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01269",cytosol,Day) :-
  not exclude(31),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(31,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(32),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(32,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00251",cytosol,Day) :-
  not exclude(32),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(32,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(33),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(33,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(33),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(33,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(33),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(33,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(34),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(34,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(34),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(34,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(34),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(34,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(35),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(35,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04302",cytosol,Day) :-
  not exclude(35),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(35,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01302",cytosol,Day) :-
  not exclude(36),
  Day >= 1,
  in_compartment(Experiment,"C04302",cytosol,Day),
  catalyst(36,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(37),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(37,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(37),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(37,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03506",cytosol,Day) :-
  not exclude(37),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(37,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(38),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(38,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(38),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(38,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00661",cytosol,Day) :-
  not exclude(38),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(38,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  not exclude(39),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(39,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00661",cytosol,Day) :-
  not exclude(39),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(39,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(40),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(40,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(40),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(40,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00254",cytosol,Day) :-
  not exclude(41),
  Day >= 1,
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(41,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(42),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(42,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(42),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(42,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(42),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(42,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00000",cytosol,Day) :-
  not exclude(43),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(43,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(43),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(43,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(43),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(43,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(43),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(43,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(44),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(44,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(44),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(44,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(45),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(45,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(45),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(45,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  include(0),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(0,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C15522",cytosol,Day) :-
  include(0),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(0,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  include(350),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  include(350),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(350,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  include(351),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00328",cytosol,Day) :-
  include(351),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(351,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02700",cytosol,Day) :-
  include(352),
  Day >= 1,
  in_compartment(Experiment,"C00078",cytosol,Day),
  in_compartment(Experiment,"C00007",cytosol,Day),
  catalyst(352,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",cytosol,Day) :-
  include(219),
  Day >= 1,
  in_compartment(Experiment,"C03722",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(219,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  include(219),
  Day >= 1,
  in_compartment(Experiment,"C03722",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(219,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  include(219),
  Day >= 1,
  in_compartment(Experiment,"C03722",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(219,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  include(624),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(624,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  include(624),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(624,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  include(792),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(792,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  include(788),
  Day >= 1,
  in_compartment(Experiment,"C00121",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(788,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  include(788),
  Day >= 1,
  in_compartment(Experiment,"C00121",cytosol,Day),
  in_compartment(Experiment,"C00002",cytosol,Day),
  catalyst(788,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  include(882),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  include(882),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

assertable_reaction(0).
assertable_reaction(350).
assertable_reaction(351).
assertable_reaction(352).
assertable_reaction(219).
assertable_reaction(624).
assertable_reaction(792).
assertable_reaction(788).
assertable_reaction(882).

retractable_reaction(1).
retractable_reaction(2).
retractable_reaction(3).
retractable_reaction(4).
retractable_reaction(5).
retractable_reaction(6).
retractable_reaction(7).
retractable_reaction(8).
retractable_reaction(9).
retractable_reaction(24).
retractable_reaction(25).
retractable_reaction(26).
retractable_reaction(27).
retractable_reaction(28).
retractable_reaction(29).
retractable_reaction(30).
retractable_reaction(31).
retractable_reaction(32).
retractable_reaction(33).
retractable_reaction(34).
retractable_reaction(35).
retractable_reaction(36).
retractable_reaction(37).
retractable_reaction(38).
retractable_reaction(39).
retractable_reaction(40).
retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(43).
retractable_reaction(44).
retractable_reaction(45).

certain_reaction(10).
certain_reaction(11).
certain_reaction(12).
certain_reaction(13).
certain_reaction(14).
certain_reaction(15).
certain_reaction(16).
certain_reaction(17).
certain_reaction(18).
certain_reaction(19).
certain_reaction(20).
certain_reaction(21).
certain_reaction(22).
certain_reaction(23).

reactionID(E) :- assertable_reaction(E).
reactionID(E) :- retractable_reaction(E).
reactionID(E) :- certain_reaction(E).

enzyme_info(Reaction) :- catalyst(Reaction,Complex), Complex\=unknown.
catalyst(Reaction,unknown) :- not enzyme_info(Reaction).

component("YHR137W",1).
component("YGL202W",2).
component("YBR166C",3).
component("YNL316C",4).
component("YPR060C",5).
component("YGL026C",6).
component("YKL211C",7).
component("YDR007W",8).
component("YDR354W",9).
component("YKL211C",10).
component("YER090W",10).
component("YER090W",11).
component("YGL148W",12).
component("YDR127W",13).
component("YBR249C",14).
component("YDR035W",15).
component("YGR254W",16).
component("YHR174W",17).
component("YMR323W",18).
component("I00074",21).
component("I00078",22).
component("I00079",23).
component("I00082",24).
component("I00108",25).
component("I00166",26).
component("I00463",27).
component("I00493",28).
component("I01179",29).


catalyst(44,1).
catalyst(45,1).
catalyst(44,2).
catalyst(45,2).
catalyst(43,3).
catalyst(42,4).
catalyst(41,5).
catalyst(38,6).
catalyst(39,6).
catalyst(40,6).
catalyst(37,7).
catalyst(36,8).
catalyst(35,9).
catalyst(34,10).
catalyst(33,11).
catalyst(32,12).
catalyst(31,13).
catalyst(30,13).
catalyst(29,13).
catalyst(28,13).
catalyst(27,13).
catalyst(26,13).
catalyst(25,14).
catalyst(25,15).
catalyst(24,16).
catalyst(24,17).
catalyst(24,18).
catalyst(1,21).
catalyst(2,22).
catalyst(3,23).
catalyst(4,24).
catalyst(5,25).
catalyst(6,26).
catalyst(7,27).
catalyst(8,28).
catalyst(9,29).

unknown_enzyme(unknown).


certain_enzyme(1).
certain_enzyme(2).
certain_enzyme(3).
certain_enzyme(4).
certain_enzyme(5).
certain_enzyme(6).
certain_enzyme(7).
certain_enzyme(8).
certain_enzyme(9).
certain_enzyme(10).
certain_enzyme(11).
certain_enzyme(12).
certain_enzyme(13).
certain_enzyme(14).
certain_enzyme(15).
certain_enzyme(16).
certain_enzyme(17).
certain_enzyme(18).
certain_enzyme(21).
certain_enzyme(22).
certain_enzyme(23).
certain_enzyme(24).
certain_enzyme(25).
certain_enzyme(26).
certain_enzyme(27).
certain_enzyme(28).
certain_enzyme(29).

enzymeID(E) :- unknown_enzyme(E).
enzymeID(E) :- modifiable_enzyme(E).
enzymeID(E) :- certain_enzyme(E).

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

day(1).

inhibitor(14,"C00082",cytosol).

