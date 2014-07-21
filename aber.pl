%=====================================================================
% reaction(
%  1(integer): Unique reaction identifier, 
%  2(modifiable|assertable|retractable): 
%  3(string): Label (usually EC number, if available)
%  4(1|2): Rate (day on which product is available)
%  5(list): Substrates (compartment, stochiotemetry, ID)
%  6(list): Products (compartment, stochiotemetry, ID)
% )

% import reactions
reaction("1", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00255")], [reactant(cytosol, 1, "C00255")]). % was (->)
reaction("2a", retractable, none, 3, [reactant(external, 1, "C05437")], [reactant(cytosol, 1, "C05437")]). % was <->
reaction("2b", retractable, none, 3, [reactant(cytosol, 1, "C05437")], [reactant(external, 1, "C05437")]). % was <->
reaction("3a", retractable, none, 3, [reactant(external, 1, "C01694")], [reactant(cytosol, 1, "C01694")]). % was <->
reaction("3b", retractable, none, 3, [reactant(cytosol, 1, "C01694")], [reactant(external, 1, "C01694")]). % was <->
reaction("4a", retractable, none, 3, [reactant(external, 1, "C00011")], [reactant(cytosol, 1, "C00011")]). % was <->
reaction("4b", retractable, none, 3, [reactant(cytosol, 1, "C00011")], [reactant(external, 1, "C00011")]). % was <->
reaction("5a", retractable, none, 3, [reactant(external, 1, "C00007")], [reactant(cytosol, 1, "C00007")]). % was <->
reaction("5b", retractable, none, 3, [reactant(cytosol, 1, "C00007")], [reactant(external, 1, "C00007")]). % was <->
reaction("6", retractable, none, 3, [reactant(external, 1, "C02656")], [reactant(cytosol, 1, "C02656")]). % was (->)
reaction("7", retractable, none, 3, [reactant(external, 1, "C00750")], [reactant(cytosol, 1, "C00750")]). % was (->)
reaction("8", retractable, none, 3, [reactant(external, 1, "C00127")], [reactant(cytosol, 1, "C00127")]). % was (->)
reaction("9a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01037")], [reactant(cytosol, 1, "C01037")]). % was <->
reaction("9b", retractable, none, 3, [reactant(cytosol, 1, "C01037")], [reactant(external, 1, "C00080"), reactant(external, 1, "C01037")]). % was <->
reaction("10a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01092")], [reactant(cytosol, 1, "C01092")]). % was <->
reaction("10b", retractable, none, 3, [reactant(cytosol, 1, "C01092")], [reactant(external, 1, "C00080"), reactant(external, 1, "C01092")]). % was <->
reaction("11a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00120")], [reactant(cytosol, 1, "C00120")]). % was <->
reaction("11b", retractable, none, 3, [reactant(cytosol, 1, "C00120")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00120")]). % was <->
reaction("12a", retractable, none, 3, [reactant(external, 1, "C00352")], [reactant(cytosol, 1, "C00352")]). % was <->
reaction("12b", retractable, none, 3, [reactant(cytosol, 1, "C00352")], [reactant(external, 1, "C00352")]). % was <->
reaction("13a", retractable, none, 3, [reactant(external, 1, "C00178")], [reactant(cytosol, 1, "C00178"), reactant(external, 1, "C00080")]). % was <->
reaction("13b", retractable, none, 3, [reactant(cytosol, 1, "C00178"), reactant(external, 1, "C00080")], [reactant(external, 1, "C00178")]). % was <->
reaction("14a", retractable, none, 3, [reactant(external, 1, "C00459")], [reactant(cytosol, 1, "C00459")]). % was <->
reaction("14b", retractable, none, 3, [reactant(cytosol, 1, "C00459")], [reactant(external, 1, "C00459")]). % was <->
reaction("15a", retractable, none, 3, [reactant(external, 1, "C00054")], [reactant(cytosol, 1, "C00054")]). % was <->
reaction("15b", retractable, none, 3, [reactant(cytosol, 1, "C00054")], [reactant(external, 1, "C00054")]). % was <->
reaction("16a", retractable, none, 3, [reactant(external, 1, "C01438")], [reactant(cytosol, 1, "C01438")]). % was <->
reaction("16b", retractable, none, 3, [reactant(cytosol, 1, "C01438")], [reactant(external, 1, "C01438")]). % was <->
reaction("17", retractable, none, 3, [reactant(external, 1, "C00499")], [reactant(cytosol, 1, "C00499")]). % was (->)
reaction("18", retractable, none, 3, [reactant(external, 1, "C01551")], [reactant(cytosol, 1, "C01551")]). % was (->)
reaction("19", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00378")], [reactant(cytosol, 1, "C00378")]). % was (->)
reaction("19", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00378")], [reactant(cytosol, 1, "C00378")]). % was (->)
reaction("19", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00378")], [reactant(cytosol, 1, "C00378")]). % was (->)
reaction("20a", retractable, none, 3, [reactant(external, 1, "C00084")], [reactant(cytosol, 1, "C00084")]). % was <->
reaction("20b", retractable, none, 3, [reactant(cytosol, 1, "C00084")], [reactant(external, 1, "C00084")]). % was <->
reaction("21a", retractable, none, 3, [reactant(external, 1, "C00266")], [reactant(cytosol, 1, "C00266")]). % was <->
reaction("21b", retractable, none, 3, [reactant(cytosol, 1, "C00266")], [reactant(external, 1, "C00266")]). % was <->
reaction("22", retractable, none, 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(external, 1, "C00080")]). % was (->)
reaction("22", retractable, none, 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(external, 1, "C00080")]). % was (->)
reaction("22", retractable, none, 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(external, 1, "C00080")]). % was (->)
reaction("22", retractable, none, 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(external, 1, "C00080")]). % was (->)
reaction("24a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00864")], [reactant(cytosol, 1, "C00864")]). % was <->
reaction("24b", retractable, none, 3, [reactant(cytosol, 1, "C00864")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00864")]). % was <->
reaction("25a", retractable, none, 3, [reactant(external, 1, "C01330")], [reactant(cytosol, 1, "C01330"), reactant(external, 1, "C00080")]). % was <->
reaction("25b", retractable, none, 3, [reactant(cytosol, 1, "C01330"), reactant(external, 1, "C00080")], [reactant(external, 1, "C01330")]). % was <->
reaction("26a", retractable, none, 3, [reactant(external, 1, "C00026"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00026")]). % was <->
reaction("26b", retractable, none, 3, [reactant(cytosol, 1, "C00026")], [reactant(external, 1, "C00026"), reactant(external, 1, "C00080")]). % was <->
reaction("27", retractable, none, 3, [reactant(external, 1, "C181")], [reactant(cytosol, 1, "C181")]). % was (->)
reaction("28", retractable, none, 3, [reactant(external, 1, "C01530")], [reactant(cytosol, 1, "C01530")]). % was (->)
reaction("29", retractable, none, 3, [reactant(external, 1, "C161")], [reactant(cytosol, 1, "C161")]). % was (->)
reaction("30", retractable, none, 3, [reactant(external, 1, "C00249")], [reactant(cytosol, 1, "C00249")]). % was (->)
reaction("31", retractable, none, 3, [reactant(external, 1, "C06424")], [reactant(cytosol, 1, "C06424")]). % was (->)
reaction("32a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00122")], [reactant(cytosol, 1, "C00122")]). % was <->
reaction("32b", retractable, none, 3, [reactant(cytosol, 1, "C00122")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00122")]). % was <->
reaction("33a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00158")], [reactant(cytosol, 1, "C00158")]). % was <->
reaction("33b", retractable, none, 3, [reactant(cytosol, 1, "C00158")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00158")]). % was <->
reaction("34a", retractable, none, 3, [reactant(external, 1, "C00009"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00009")]). % was <->
reaction("34b", retractable, none, 3, [reactant(cytosol, 1, "C00009")], [reactant(external, 1, "C00009"), reactant(external, 1, "C00080")]). % was <->
reaction("35", retractable, none, 3, [reactant(external, 1, "C00059")], [reactant(cytosol, 1, "C00059")]). % was (->)
reaction("35", retractable, none, 3, [reactant(external, 1, "C00059")], [reactant(cytosol, 1, "C00059")]). % was (->)
reaction("35", retractable, none, 3, [reactant(external, 1, "C00059")], [reactant(cytosol, 1, "C00059")]). % was (->)
reaction("36a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00238")], [reactant(cytosol, 1, "C00238")]). % was <->
reaction("36b", retractable, none, 3, [reactant(cytosol, 1, "C00238")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00238")]). % was <->
reaction("37a", retractable, none, 3, [reactant(external, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction("37b", retractable, none, 3, [reactant(cytosol, 1, "C00014")], [reactant(external, 1, "C00014")]). % was <->
reaction("37a", retractable, none, 3, [reactant(external, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction("37b", retractable, none, 3, [reactant(cytosol, 1, "C00014")], [reactant(external, 1, "C00014")]). % was <->
reaction("37a", retractable, none, 3, [reactant(external, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction("37b", retractable, none, 3, [reactant(cytosol, 1, "C00014")], [reactant(external, 1, "C00014")]). % was <->
reaction("38a", retractable, none, 3, [reactant(external, 1, "C00086"), reactant(external, 2, "C00080")], [reactant(cytosol, 1, "C00086")]). % was <->
reaction("38b", retractable, none, 3, [reactant(cytosol, 1, "C00086")], [reactant(external, 1, "C00086"), reactant(external, 2, "C00080")]). % was <->
reaction("39", retractable, none, 3, [reactant(external, 1, "C00022"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00022")]). % was (->)
reaction("40a", retractable, none, 3, [reactant(external, 1, "C00042"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00042")]). % was <->
reaction("40b", retractable, none, 3, [reactant(cytosol, 1, "C00042")], [reactant(external, 1, "C00042"), reactant(external, 1, "C00080")]). % was <->
reaction("41a", retractable, none, 3, [reactant(external, 1, "C00469")], [reactant(cytosol, 1, "C00469")]). % was <->
reaction("41b", retractable, none, 3, [reactant(cytosol, 1, "C00469")], [reactant(external, 1, "C00469")]). % was <->
reaction("42a", retractable, none, 3, [reactant(external, 1, "C00058")], [reactant(cytosol, 1, "C00058")]). % was <->
reaction("42b", retractable, none, 3, [reactant(cytosol, 1, "C00058")], [reactant(external, 1, "C00058")]). % was <->
reaction("43a", retractable, none, 3, [reactant(external, 1, "C00033"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00033")]). % was <->
reaction("43b", retractable, none, 3, [reactant(cytosol, 1, "C00033")], [reactant(external, 1, "C00033"), reactant(external, 1, "C00080")]). % was <->
reaction("44a", retractable, none, 3, [reactant(external, 1, "C00385")], [reactant(cytosol, 1, "C00385")]). % was <->
reaction("44b", retractable, none, 3, [reactant(cytosol, 1, "C00385")], [reactant(external, 1, "C00385")]). % was <->
reaction("45a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00262")], [reactant(cytosol, 1, "C00262")]). % was <->
reaction("45b", retractable, none, 3, [reactant(cytosol, 1, "C00262")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00262")]). % was <->
reaction("46", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00526")], [reactant(cytosol, 1, "C00526")]). % was (->)
reaction("46", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00526")], [reactant(cytosol, 1, "C00526")]). % was (->)
reaction("46", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00526")], [reactant(cytosol, 1, "C00526")]). % was (->)
reaction("47", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00881")], [reactant(cytosol, 1, "C00881")]). % was (->)
reaction("47", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00881")], [reactant(cytosol, 1, "C00881")]). % was (->)
reaction("47", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00881")], [reactant(cytosol, 1, "C00881")]). % was (->)
reaction("48", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00559")], [reactant(cytosol, 1, "C00559")]). % was (->)
reaction("48", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00559")], [reactant(cytosol, 1, "C00559")]). % was (->)
reaction("48", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00559")], [reactant(cytosol, 1, "C00559")]). % was (->)
reaction("49", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00330")], [reactant(cytosol, 1, "C00330")]). % was (->)
reaction("49", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00330")], [reactant(cytosol, 1, "C00330")]). % was (->)
reaction("50", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C05512")], [reactant(cytosol, 1, "C05512")]). % was (->)
reaction("50", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C05512")], [reactant(cytosol, 1, "C05512")]). % was (->)
reaction("51", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00214")], [reactant(cytosol, 1, "C00214")]). % was (->)
reaction("51", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00214")], [reactant(cytosol, 1, "C00214")]). % was (->)
reaction("51", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00214")], [reactant(cytosol, 1, "C00214")]). % was (->)
reaction("52", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00294")], [reactant(cytosol, 1, "C00294")]). % was (->)
reaction("52", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00294")], [reactant(cytosol, 1, "C00294")]). % was (->)
reaction("53", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00475")], [reactant(cytosol, 1, "C00475")]). % was (->)
reaction("53", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00475")], [reactant(cytosol, 1, "C00475")]). % was (->)
reaction("53", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00475")], [reactant(cytosol, 1, "C00475")]). % was (->)
reaction("54", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00299")], [reactant(cytosol, 1, "C00299")]). % was (->)
reaction("54", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00299")], [reactant(cytosol, 1, "C00299")]). % was (->)
reaction("54", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00299")], [reactant(cytosol, 1, "C00299")]). % was (->)
reaction("55", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00387")], [reactant(cytosol, 1, "C00387")]). % was (->)
reaction("55", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00387")], [reactant(cytosol, 1, "C00387")]). % was (->)
reaction("56", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00212")], [reactant(cytosol, 1, "C00212")]). % was (->)
reaction("56", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00212")], [reactant(cytosol, 1, "C00212")]). % was (->)
reaction("56", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00212")], [reactant(cytosol, 1, "C00212")]). % was (->)
reaction("57", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01762")], [reactant(cytosol, 1, "C01762")]). % was (->)
reaction("58a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")], [reactant(cytosol, 1, "C00242")]). % was <->
reaction("58b", retractable, none, 3, [reactant(cytosol, 1, "C00242")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")]). % was <->
reaction("58a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")], [reactant(cytosol, 1, "C00242")]). % was <->
reaction("58b", retractable, none, 3, [reactant(cytosol, 1, "C00242")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")]). % was <->
reaction("58a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")], [reactant(cytosol, 1, "C00242")]). % was <->
reaction("58b", retractable, none, 3, [reactant(cytosol, 1, "C00242")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")]). % was <->
reaction("58a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")], [reactant(cytosol, 1, "C00242")]). % was <->
reaction("58b", retractable, none, 3, [reactant(cytosol, 1, "C00242")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00242")]). % was <->
reaction("59", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00147")], [reactant(cytosol, 1, "C00147")]). % was (->)
reaction("59", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00147")], [reactant(cytosol, 1, "C00147")]). % was (->)
reaction("59", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00147")], [reactant(cytosol, 1, "C00147")]). % was (->)
reaction("59", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00147")], [reactant(cytosol, 1, "C00147")]). % was (->)
reaction("60", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00380")], [reactant(cytosol, 1, "C00380")]). % was (->)
reaction("60", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00380")], [reactant(cytosol, 1, "C00380")]). % was (->)
reaction("60", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00380")], [reactant(cytosol, 1, "C00380")]). % was (->)
reaction("60", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00380")], [reactant(cytosol, 1, "C00380")]). % was (->)
reaction("61", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "NMN")], [reactant(cytosol, 1, "NMN")]). % was (->)
reaction("62", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00106")], [reactant(cytosol, 1, "C00106")]). % was (->)
reaction("63", retractable, none, 3, [reactant(external, 1, "C00012"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00012")]). % was (->)
reaction("64", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00098")], [reactant(cytosol, 1, "C00098")]). % was (->)
reaction("65", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00107")], [reactant(cytosol, 1, "C00107")]). % was (->)
reaction("66", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00315")], [reactant(cytosol, 1, "C00315")]). % was (->)
reaction("67", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00134")], [reactant(cytosol, 1, "C00134")]). % was (->)
reaction("68a", retractable, none, 3, [reactant(external, 1, "C00077"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00077")]). % was <->
reaction("68b", retractable, none, 3, [reactant(cytosol, 1, "C00077")], [reactant(external, 1, "C00077"), reactant(external, 1, "C00080")]). % was <->
reaction("68a", retractable, none, 3, [reactant(external, 1, "C00077"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00077")]). % was <->
reaction("68b", retractable, none, 3, [reactant(cytosol, 1, "C00077")], [reactant(external, 1, "C00077"), reactant(external, 1, "C00080")]). % was <->
reaction("69", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00430")], [reactant(cytosol, 1, "C00430")]). % was (->)
reaction("70", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00120")], [reactant(cytosol, 1, "C00120")]). % was (->)
reaction("71", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00114")], [reactant(cytosol, 1, "C00114")]). % was (->)
reaction("72a", retractable, none, 3, [reactant(external, 1, "C00487")], [reactant(cytosol, 1, "C00487")]). % was <->
reaction("72b", retractable, none, 3, [reactant(cytosol, 1, "C00487")], [reactant(external, 1, "C00487")]). % was <->
reaction("73", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00334")], [reactant(cytosol, 1, "C00334")]). % was (->)
reaction("73", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00334")], [reactant(cytosol, 1, "C00334")]). % was (->)
reaction("74", retractable, none, 3, [reactant(external, 1, "C00019"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00019")]). % was (->)
reaction("75", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "MMET")], [reactant(cytosol, 1, "MMET")]). % was (->)
reaction("76a", retractable, none, 3, [reactant(external, 1, "C00047"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00047")]). % was <->
reaction("76b", retractable, none, 3, [reactant(cytosol, 1, "C00047")], [reactant(external, 1, "C00047"), reactant(external, 1, "C00080")]). % was <->
reaction("76a", retractable, none, 3, [reactant(external, 1, "C00047"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00047")]). % was <->
reaction("76b", retractable, none, 3, [reactant(cytosol, 1, "C00047")], [reactant(external, 1, "C00047"), reactant(external, 1, "C00080")]). % was <->
reaction("77a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction("77b", retractable, none, 3, [reactant(cytosol, 1, "C00188")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")]). % was <->
reaction("77a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction("77b", retractable, none, 3, [reactant(cytosol, 1, "C00188")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")]). % was <->
reaction("77a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction("77b", retractable, none, 3, [reactant(cytosol, 1, "C00188")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")]). % was <->
reaction("77a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction("77b", retractable, none, 3, [reactant(cytosol, 1, "C00188")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00188")]). % was <->
reaction("78a", retractable, none, 3, [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("78b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")]). % was <->
reaction("78a", retractable, none, 3, [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("78b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")]). % was <->
reaction("78a", retractable, none, 3, [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("78b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")]). % was <->
reaction("78a", retractable, none, 3, [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("78b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")]). % was <->
reaction("78a", retractable, none, 3, [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("78b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(external, 1, "C00065"), reactant(external, 1, "C00080")]). % was <->
reaction("79a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")], [reactant(cytosol, 1, "C00183")]). % was <->
reaction("79b", retractable, none, 3, [reactant(cytosol, 1, "C00183")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")]). % was <->
reaction("79a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")], [reactant(cytosol, 1, "C00183")]). % was <->
reaction("79b", retractable, none, 3, [reactant(cytosol, 1, "C00183")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")]). % was <->
reaction("79a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")], [reactant(cytosol, 1, "C00183")]). % was <->
reaction("79b", retractable, none, 3, [reactant(cytosol, 1, "C00183")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")]). % was <->
reaction("79a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")], [reactant(cytosol, 1, "C00183")]). % was <->
reaction("79b", retractable, none, 3, [reactant(cytosol, 1, "C00183")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")]). % was <->
reaction("79a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")], [reactant(cytosol, 1, "C00183")]). % was <->
reaction("79b", retractable, none, 3, [reactant(cytosol, 1, "C00183")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00183")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("80a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")], [reactant(cytosol, 1, "C00082")]). % was <->
reaction("80b", retractable, none, 3, [reactant(cytosol, 1, "C00082")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00082")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("81a", retractable, none, 3, [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00078")]). % was <->
reaction("81b", retractable, none, 3, [reactant(cytosol, 1, "C00078")], [reactant(external, 1, "C00078"), reactant(external, 1, "C00080")]). % was <->
reaction("82a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00148")], [reactant(cytosol, 1, "C00148")]). % was <->
reaction("82b", retractable, none, 3, [reactant(cytosol, 1, "C00148")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00148")]). % was <->
reaction("82a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00148")], [reactant(cytosol, 1, "C00148")]). % was <->
reaction("82b", retractable, none, 3, [reactant(cytosol, 1, "C00148")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00148")]). % was <->
reaction("83a", retractable, none, 3, [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction("83b", retractable, none, 3, [reactant(cytosol, 1, "C00079")], [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")]). % was <->
reaction("83a", retractable, none, 3, [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction("83b", retractable, none, 3, [reactant(cytosol, 1, "C00079")], [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")]). % was <->
reaction("83a", retractable, none, 3, [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction("83b", retractable, none, 3, [reactant(cytosol, 1, "C00079")], [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")]). % was <->
reaction("83a", retractable, none, 3, [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction("83b", retractable, none, 3, [reactant(cytosol, 1, "C00079")], [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")]). % was <->
reaction("83a", retractable, none, 3, [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00079")]). % was <->
reaction("83b", retractable, none, 3, [reactant(cytosol, 1, "C00079")], [reactant(external, 1, "C00079"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("84a", retractable, none, 3, [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00073")]). % was <->
reaction("84b", retractable, none, 3, [reactant(cytosol, 1, "C00073")], [reactant(external, 1, "C00073"), reactant(external, 1, "C00080")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("85a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")], [reactant(cytosol, 1, "C00123")]). % was <->
reaction("85b", retractable, none, 3, [reactant(cytosol, 1, "C00123")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00123")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("86a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")], [reactant(cytosol, 1, "C00407")]). % was <->
reaction("86b", retractable, none, 3, [reactant(cytosol, 1, "C00407")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00407")]). % was <->
reaction("87a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")], [reactant(cytosol, 1, "C00135")]). % was <->
reaction("87b", retractable, none, 3, [reactant(cytosol, 1, "C00135")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")]). % was <->
reaction("87a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")], [reactant(cytosol, 1, "C00135")]). % was <->
reaction("87b", retractable, none, 3, [reactant(cytosol, 1, "C00135")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")]). % was <->
reaction("87a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")], [reactant(cytosol, 1, "C00135")]). % was <->
reaction("87b", retractable, none, 3, [reactant(cytosol, 1, "C00135")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")]). % was <->
reaction("87a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")], [reactant(cytosol, 1, "C00135")]). % was <->
reaction("87b", retractable, none, 3, [reactant(cytosol, 1, "C00135")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00135")]). % was <->
reaction("88a", retractable, none, 3, [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction("88b", retractable, none, 3, [reactant(cytosol, 1, "C00064")], [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")]). % was <->
reaction("88a", retractable, none, 3, [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction("88b", retractable, none, 3, [reactant(cytosol, 1, "C00064")], [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")]). % was <->
reaction("88a", retractable, none, 3, [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction("88b", retractable, none, 3, [reactant(cytosol, 1, "C00064")], [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")]). % was <->
reaction("88a", retractable, none, 3, [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00064")]). % was <->
reaction("88b", retractable, none, 3, [reactant(cytosol, 1, "C00064")], [reactant(external, 1, "C00064"), reactant(external, 1, "C00080")]). % was <->
reaction("89a", retractable, none, 3, [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00037")]). % was <->
reaction("89b", retractable, none, 3, [reactant(cytosol, 1, "C00037")], [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")]). % was <->
reaction("89a", retractable, none, 3, [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00037")]). % was <->
reaction("89b", retractable, none, 3, [reactant(cytosol, 1, "C00037")], [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")]). % was <->
reaction("89a", retractable, none, 3, [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00037")]). % was <->
reaction("89b", retractable, none, 3, [reactant(cytosol, 1, "C00037")], [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")]). % was <->
reaction("89a", retractable, none, 3, [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00037")]). % was <->
reaction("89b", retractable, none, 3, [reactant(cytosol, 1, "C00037")], [reactant(external, 1, "C00037"), reactant(external, 1, "C00080")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("90a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")], [reactant(cytosol, 1, "C00097")]). % was <->
reaction("90b", retractable, none, 3, [reactant(cytosol, 1, "C00097")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00097")]). % was <->
reaction("91a", retractable, none, 3, [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00049")]). % was <->
reaction("91b", retractable, none, 3, [reactant(cytosol, 1, "C00049")], [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")]). % was <->
reaction("91a", retractable, none, 3, [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00049")]). % was <->
reaction("91b", retractable, none, 3, [reactant(cytosol, 1, "C00049")], [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")]). % was <->
reaction("91a", retractable, none, 3, [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00049")]). % was <->
reaction("91b", retractable, none, 3, [reactant(cytosol, 1, "C00049")], [reactant(external, 1, "C00049"), reactant(external, 1, "C00080")]). % was <->
reaction("92a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")], [reactant(cytosol, 1, "C00152")]). % was <->
reaction("92b", retractable, none, 3, [reactant(cytosol, 1, "C00152")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")]). % was <->
reaction("92a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")], [reactant(cytosol, 1, "C00152")]). % was <->
reaction("92b", retractable, none, 3, [reactant(cytosol, 1, "C00152")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")]). % was <->
reaction("92a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")], [reactant(cytosol, 1, "C00152")]). % was <->
reaction("92b", retractable, none, 3, [reactant(cytosol, 1, "C00152")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")]). % was <->
reaction("92a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")], [reactant(cytosol, 1, "C00152")]). % was <->
reaction("92b", retractable, none, 3, [reactant(cytosol, 1, "C00152")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00152")]). % was <->
reaction("93a", retractable, none, 3, [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00062")]). % was <->
reaction("93b", retractable, none, 3, [reactant(cytosol, 1, "C00062")], [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")]). % was <->
reaction("93a", retractable, none, 3, [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00062")]). % was <->
reaction("93b", retractable, none, 3, [reactant(cytosol, 1, "C00062")], [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")]). % was <->
reaction("93a", retractable, none, 3, [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00062")]). % was <->
reaction("93b", retractable, none, 3, [reactant(cytosol, 1, "C00062")], [reactant(external, 1, "C00062"), reactant(external, 1, "C00080")]). % was <->
reaction("94a", retractable, none, 3, [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00041")]). % was <->
reaction("94b", retractable, none, 3, [reactant(cytosol, 1, "C00041")], [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")]). % was <->
reaction("94a", retractable, none, 3, [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00041")]). % was <->
reaction("94b", retractable, none, 3, [reactant(cytosol, 1, "C00041")], [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")]). % was <->
reaction("94a", retractable, none, 3, [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00041")]). % was <->
reaction("94b", retractable, none, 3, [reactant(cytosol, 1, "C00041")], [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")]). % was <->
reaction("94a", retractable, none, 3, [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00041")]). % was <->
reaction("94b", retractable, none, 3, [reactant(cytosol, 1, "C00041")], [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")]). % was <->
reaction("94a", retractable, none, 3, [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")], [reactant(cytosol, 1, "C00041")]). % was <->
reaction("94b", retractable, none, 3, [reactant(cytosol, 1, "C00041")], [reactant(external, 1, "C00041"), reactant(external, 1, "C00080")]). % was <->
reaction("95a", retractable, none, 3, [reactant(external, 1, "C00181")], [reactant(cytosol, 1, "C00181")]). % was <->
reaction("95b", retractable, none, 3, [reactant(cytosol, 1, "C00181")], [reactant(external, 1, "C00181")]). % was <->
reaction("96", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01083")], [reactant(cytosol, 1, "C01083")]). % was (->)
reaction("97", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00121")], [reactant(cytosol, 1, "C00121")]). % was (->)
reaction("98", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01684")], [reactant(cytosol, 1, "C01684")]). % was (->)
reaction("99", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "NAG")], [reactant(cytosol, 1, "NAG")]). % was (->)
reaction("100", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C05402")], [reactant(cytosol, 1, "C05402")]). % was (->)
reaction("101", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00392")], [reactant(cytosol, 1, "C00392")]). % was (->)
reaction("102a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00256")], [reactant(cytosol, 1, "C00256")]). % was <->
reaction("102b", retractable, none, 3, [reactant(cytosol, 1, "C00256")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00256")]). % was <->
reaction("103a", retractable, none, 3, [reactant(external, 1, "C00116")], [reactant(cytosol, 1, "C00116")]). % was <->
reaction("103b", retractable, none, 3, [reactant(cytosol, 1, "C00116")], [reactant(external, 1, "C00116")]). % was <->
reaction("104a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01811")], [reactant(cytosol, 1, "C01811")]). % was <->
reaction("104b", retractable, none, 3, [reactant(cytosol, 1, "C01811")], [reactant(external, 1, "C00080"), reactant(external, 1, "C01811")]). % was <->
reaction("105", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C01722")], [reactant(cytosol, 1, "C01722")]). % was (->)
reaction("106", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "GLTL")], [reactant(cytosol, 1, "GLTL")]). % was (->)
reaction("107a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C02095")], [reactant(cytosol, 1, "C02095")]). % was <->
reaction("107b", retractable, none, 3, [reactant(cytosol, 1, "C02095")], [reactant(external, 1, "C00080"), reactant(external, 1, "C02095")]). % was <->
reaction("108a", retractable, none, 3, [reactant(external, 1, "C00216")], [reactant(cytosol, 1, "C00216")]). % was <->
reaction("108b", retractable, none, 3, [reactant(cytosol, 1, "C00216")], [reactant(external, 1, "C00216")]). % was <->
reaction("109a", retractable, none, 3, [reactant(external, 1, "C01452")], [reactant(cytosol, 1, "C01452")]). % was <->
reaction("109b", retractable, none, 3, [reactant(cytosol, 1, "C01452")], [reactant(external, 1, "C01452")]). % was <->
reaction("110a", retractable, none, 3, [reactant(external, 1, "AMG")], [reactant(cytosol, 1, "AMG")]). % was <->
reaction("110b", retractable, none, 3, [reactant(cytosol, 1, "AMG")], [reactant(external, 1, "AMG")]). % was <->
reaction("111a", retractable, none, 3, [reactant(cytosol, 1, "C00026"), reactant(external, 1, "C00711")], [reactant(cytosol, 1, "C00711"), reactant(external, 1, "C00026")]). % was <->
reaction("111b", retractable, none, 3, [reactant(cytosol, 1, "C00711"), reactant(external, 1, "C00026")], [reactant(cytosol, 1, "C00026"), reactant(external, 1, "C00711")]). % was <->
reaction("112a", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00711")], [reactant(cytosol, 1, "C00711")]). % was <->
reaction("112b", retractable, none, 3, [reactant(cytosol, 1, "C00711")], [reactant(external, 1, "C00080"), reactant(external, 1, "C00711")]). % was <->
reaction("113", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00089")], [reactant(cytosol, 1, "C00089")]). % was (->)
reaction("115", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00208")], [reactant(cytosol, 1, "C00208")]). % was (->)
reaction("116", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00137")], [reactant(cytosol, 1, "C00137")]). % was (->)
reaction("116", retractable, none, 3, [reactant(external, 1, "C00080"), reactant(external, 1, "C00137")], [reactant(cytosol, 1, "C00137")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("117", retractable, none, 3, [reactant(external, 1, "C00936")], [reactant(cytosol, 1, "C00936")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("118", retractable, none, 3, [reactant(external, 1, "C00095")], [reactant(cytosol, 1, "C00095")]). % was (->)
reaction("119a", retractable, none, 3, [reactant(external, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("119b", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(external, 1, "C00025")]). % was <->
reaction("119a", retractable, none, 3, [reactant(external, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("119b", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(external, 1, "C00025")]). % was <->
reaction("119a", retractable, none, 3, [reactant(external, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("119b", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(external, 1, "C00025")]). % was <->
reaction("119a", retractable, none, 3, [reactant(external, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("119b", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(external, 1, "C00025")]). % was <->
reaction("119a", retractable, none, 3, [reactant(external, 1, "C00025")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("119b", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(external, 1, "C00025")]). % was <->
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("120", retractable, none, 3, [reactant(external, 1, "C00124")], [reactant(cytosol, 1, "C00124")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("121", retractable, none, 3, [reactant(external, 1, "C00267")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("122", retractable, none, 3, [reactant(cytosol, 1, "C00093")], [reactant(mitochondrion, 1, "C00093")]). % was (->)
reaction("123", retractable, none, 3, [reactant(mitochondrion, 1, "C00111")], [reactant(cytosol, 1, "C00111")]). % was (->)
reaction("124a", retractable, none, 3, [reactant(cytosol, 1, "C05533"), reactant(mitochondrion, 1, "C00026")], [reactant(cytosol, 1, "C00026"), reactant(mitochondrion, 1, "C05533")]). % was <->
reaction("124b", retractable, none, 3, [reactant(cytosol, 1, "C00026"), reactant(mitochondrion, 1, "C05533")], [reactant(cytosol, 1, "C05533"), reactant(mitochondrion, 1, "C00026")]). % was <->
reaction("124a", retractable, none, 3, [reactant(cytosol, 1, "C05533"), reactant(mitochondrion, 1, "C00026")], [reactant(cytosol, 1, "C00026"), reactant(mitochondrion, 1, "C05533")]). % was <->
reaction("124b", retractable, none, 3, [reactant(cytosol, 1, "C00026"), reactant(mitochondrion, 1, "C05533")], [reactant(cytosol, 1, "C05533"), reactant(mitochondrion, 1, "C00026")]). % was <->
reaction("125", retractable, none, 3, [reactant(cytosol, 1, "C00042"), reactant(mitochondrion, 1, "C00122")], [reactant(cytosol, 1, "C00122"), reactant(mitochondrion, 1, "C00042")]). % was (->)
reaction("126a", retractable, none, 3, [reactant(cytosol, 1, "C00021")], [reactant(mitochondrion, 1, "C00021")]). % was <->
reaction("126b", retractable, none, 3, [reactant(mitochondrion, 1, "C00021")], [reactant(cytosol, 1, "C00021")]). % was <->
reaction("127a", retractable, none, 3, [reactant(cytosol, 1, "C00019")], [reactant(mitochondrion, 1, "C00019")]). % was <->
reaction("127b", retractable, none, 3, [reactant(mitochondrion, 1, "C00019")], [reactant(cytosol, 1, "C00019")]). % was <->
reaction("128a", retractable, none, 3, [reactant(cytosol, 1, "OPP")], [reactant(mitochondrion, 1, "OPP")]). % was <->
reaction("128b", retractable, none, 3, [reactant(mitochondrion, 1, "OPP")], [reactant(cytosol, 1, "OPP")]). % was <->
reaction("129a", retractable, none, 3, [reactant(cytosol, 1, "C03722")], [reactant(mitochondrion, 1, "C03722")]). % was <->
reaction("129b", retractable, none, 3, [reactant(mitochondrion, 1, "C03722")], [reactant(cytosol, 1, "C03722")]). % was <->
reaction("130a", retractable, none, 3, [reactant(cytosol, 1, "C00415")], [reactant(mitochondrion, 1, "C00415")]). % was <->
reaction("130b", retractable, none, 3, [reactant(mitochondrion, 1, "C00415")], [reactant(cytosol, 1, "C00415")]). % was <->
reaction("131a", retractable, none, 3, [reactant(cytosol, 1, "C00119")], [reactant(mitochondrion, 1, "C00119")]). % was <->
reaction("131b", retractable, none, 3, [reactant(mitochondrion, 1, "C00119")], [reactant(cytosol, 1, "C00119")]). % was <->
reaction("132a", retractable, none, 3, [reactant(cytosol, 1, "C00147")], [reactant(mitochondrion, 1, "C00147")]). % was <->
reaction("132b", retractable, none, 3, [reactant(mitochondrion, 1, "C00147")], [reactant(cytosol, 1, "C00147")]). % was <->
reaction("133a", retractable, none, 3, [reactant(cytosol, 1, "C01134")], [reactant(mitochondrion, 1, "C01134")]). % was <->
reaction("133b", retractable, none, 3, [reactant(mitochondrion, 1, "C01134")], [reactant(cytosol, 1, "C01134")]). % was <->
reaction("134a", retractable, none, 3, [reactant(cytosol, 1, "C00416")], [reactant(mitochondrion, 1, "C00416")]). % was <->
reaction("134b", retractable, none, 3, [reactant(mitochondrion, 1, "C00416")], [reactant(cytosol, 1, "C00416")]). % was <->
reaction("135a", retractable, none, 3, [reactant(cytosol, 1, "C00418")], [reactant(mitochondrion, 1, "C00418")]). % was <->
reaction("135b", retractable, none, 3, [reactant(mitochondrion, 1, "C00418")], [reactant(cytosol, 1, "C00418")]). % was <->
reaction("136a", retractable, none, 3, [reactant(cytosol, 1, "C00356")], [reactant(mitochondrion, 1, "C00356")]). % was <->
reaction("136b", retractable, none, 3, [reactant(mitochondrion, 1, "C00356")], [reactant(cytosol, 1, "C00356")]). % was <->
reaction("137a", retractable, none, 3, [reactant(cytosol, 1, "C01909")], [reactant(mitochondrion, 1, "C01909")]). % was <->
reaction("137b", retractable, none, 3, [reactant(mitochondrion, 1, "C01909")], [reactant(cytosol, 1, "C01909")]). % was <->
reaction("138a", retractable, none, 3, [reactant(cytosol, 1, "C00255")], [reactant(mitochondrion, 1, "C00255")]). % was <->
reaction("138b", retractable, none, 3, [reactant(mitochondrion, 1, "C00255")], [reactant(cytosol, 1, "C00255")]). % was <->
reaction("139", retractable, none, 3, [reactant(cytosol, 1, "C00016"), reactant(mitochondrion, 1, "C00061")], [reactant(cytosol, 1, "C00061"), reactant(mitochondrion, 1, "C00016")]). % was (->)
reaction("140a", retractable, none, 3, [reactant(cytosol, 1, "C00141")], [reactant(mitochondrion, 1, "C00141")]). % was <->
reaction("140b", retractable, none, 3, [reactant(mitochondrion, 1, "C00141")], [reactant(cytosol, 1, "C00141")]). % was <->
reaction("141a", retractable, none, 3, [reactant(cytosol, 1, "OIVAL")], [reactant(mitochondrion, 1, "OIVAL")]). % was <->
reaction("141b", retractable, none, 3, [reactant(mitochondrion, 1, "OIVAL")], [reactant(cytosol, 1, "OIVAL")]). % was <->
reaction("142", retractable, none, 3, [reactant(cytosol, 1, "C02571"), reactant(mitochondrion, 1, "C00487")], [reactant(cytosol, 1, "C00487"), reactant(mitochondrion, 1, "C02571")]). % was (->)
reaction("143a", retractable, none, 3, [reactant(cytosol, 1, "C00077"), reactant(mitochondrion, 1, "C00080")], [reactant(mitochondrion, 1, "C00077")]). % was <->
reaction("143b", retractable, none, 3, [reactant(mitochondrion, 1, "C00077")], [reactant(cytosol, 1, "C00077"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction("144", retractable, none, 3, [reactant(cytosol, 1, "C00025"), reactant(mitochondrion, 1, "C01328")], [reactant(mitochondrion, 1, "C00025")]). % was (->)
reaction("145a", retractable, none, 3, [reactant(cytosol, 1, "C00025")], [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction("145b", retractable, none, 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00025")]). % was <->
reaction("146a", retractable, none, 3, [reactant(cytosol, 1, "C00022")], [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction("146b", retractable, none, 3, [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00022")]). % was <->
reaction("147a", retractable, none, 3, [reactant(cytosol, 1, "C00256")], [reactant(mitochondrion, 1, "C00080"), reactant(mitochondrion, 1, "C00256")]). % was <->
reaction("147b", retractable, none, 3, [reactant(mitochondrion, 1, "C00080"), reactant(mitochondrion, 1, "C00256")], [reactant(cytosol, 1, "C00256")]). % was <->
reaction("148a", retractable, none, 3, [reactant(cytosol, 1, "C02504")], [reactant(mitochondrion, 1, "C02504")]). % was <->
reaction("148b", retractable, none, 3, [reactant(mitochondrion, 1, "C02504")], [reactant(cytosol, 1, "C02504")]). % was <->
reaction("149a", retractable, none, 3, [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00311")], [reactant(cytosol, 1, "C00311"), reactant(mitochondrion, 1, "C00158")]). % was <->
reaction("149b", retractable, none, 3, [reactant(cytosol, 1, "C00311"), reactant(mitochondrion, 1, "C00158")], [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00311")]). % was <->
reaction("150a", retractable, none, 3, [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00074")], [reactant(cytosol, 1, "C00074"), reactant(mitochondrion, 1, "C00158")]). % was <->
reaction("150b", retractable, none, 3, [reactant(cytosol, 1, "C00074"), reactant(mitochondrion, 1, "C00158")], [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00074")]). % was <->
reaction("151a", retractable, none, 3, [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00711")], [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00158")]). % was <->
reaction("151b", retractable, none, 3, [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00158")], [reactant(cytosol, 1, "C00158"), reactant(mitochondrion, 1, "C00711")]). % was <->
reaction("152a", retractable, none, 3, [reactant(cytosol, 1, "C00036")], [reactant(mitochondrion, 1, "C00036"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction("152b", retractable, none, 3, [reactant(mitochondrion, 1, "C00036"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00036")]). % was <->
reaction("153a", retractable, none, 3, [reactant(cytosol, 1, "C00383"), reactant(mitochondrion, 1, "C00009")], [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00383")]). % was <->
reaction("153b", retractable, none, 3, [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00383")], [reactant(cytosol, 1, "C00383"), reactant(mitochondrion, 1, "C00009")]). % was <->
reaction("154", retractable, none, 3, [reactant(cytosol, 1, "C00042"), reactant(mitochondrion, 1, "C00009")], [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00042")]). % was (->)
reaction("155a", retractable, none, 3, [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00009")], [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00711")]). % was <->
reaction("155b", retractable, none, 3, [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00711")], [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00009")]). % was <->
reaction("156a", retractable, none, 3, [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00042")], [reactant(cytosol, 1, "C00042"), reactant(mitochondrion, 1, "C00711")]). % was <->
reaction("156b", retractable, none, 3, [reactant(cytosol, 1, "C00042"), reactant(mitochondrion, 1, "C00711")], [reactant(cytosol, 1, "C00711"), reactant(mitochondrion, 1, "C00042")]). % was <->
reaction("157a", retractable, none, 3, [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C01328")], [reactant(mitochondrion, 1, "C00009")]). % was <->
reaction("157b", retractable, none, 3, [reactant(mitochondrion, 1, "C00009")], [reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C01328")]). % was <->
reaction("158a", retractable, none, 3, [reactant(cytosol, 1, "C00009")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was <->
reaction("158b", retractable, none, 3, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")], [reactant(cytosol, 1, "C00009")]). % was <->
reaction("159", retractable, none, 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00002")], [reactant(cytosol, 1, "C00002"), reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was (->)
reaction("159", retractable, none, 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00002")], [reactant(cytosol, 1, "C00002"), reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was (->)
reaction("159", retractable, none, 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(mitochondrion, 1, "C00002")], [reactant(cytosol, 1, "C00002"), reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00080")]). % was (->)
reaction("160", retractable, none, 3, [reactant(mitochondrion, 1, "C00322")], [reactant(cytosol, 1, "C00322")]). % was (->)
reaction("161a", retractable, none, 3, [reactant(mitochondrion, 1, "C00188")], [reactant(cytosol, 1, "C00188")]). % was <->
reaction("161b", retractable, none, 3, [reactant(cytosol, 1, "C00188")], [reactant(mitochondrion, 1, "C00188")]). % was <->
reaction("162", retractable, none, 3, [reactant(cytosol, 1, "C00059")], [reactant(mitochondrion, 1, "C00059"), reactant(mitochondrion, 1, "C00080")]). % was (->)
reaction("163a", retractable, none, 3, [reactant(cytosol, 1, "C00164")], [reactant(mitochondrion, 1, "C00164")]). % was <->
reaction("163b", retractable, none, 3, [reactant(mitochondrion, 1, "C00164")], [reactant(cytosol, 1, "C00164")]). % was <->
reaction("164a", retractable, none, 3, [reactant(cytosol, 1, "C00900")], [reactant(mitochondrion, 1, "C00900")]). % was <->
reaction("164b", retractable, none, 3, [reactant(mitochondrion, 1, "C00900")], [reactant(cytosol, 1, "C00900")]). % was <->
reaction("165", retractable, none, 3, [reactant(mitochondrion, 1, "C00487")], [reactant(cytosol, 1, "C00487")]). % was (->)
reaction("166", retractable, none, 3, [reactant(cytosol, 1, "C02571")], [reactant(mitochondrion, 1, "C02571")]). % was (->)
reaction("167a", retractable, none, 3, [reactant(mitochondrion, 1, "C00033")], [reactant(cytosol, 1, "C00033")]). % was <->
reaction("167b", retractable, none, 3, [reactant(cytosol, 1, "C00033")], [reactant(mitochondrion, 1, "C00033")]). % was <->
reaction("168a", retractable, none, 3, [reactant(mitochondrion, 1, "C00055")], [reactant(cytosol, 1, "C00055")]). % was <->
reaction("168b", retractable, none, 3, [reactant(cytosol, 1, "C00055")], [reactant(mitochondrion, 1, "C00055")]). % was <->
reaction("169a", retractable, none, 3, [reactant(mitochondrion, 1, "C00148")], [reactant(cytosol, 1, "C00148")]). % was <->
reaction("169b", retractable, none, 3, [reactant(cytosol, 1, "C00148")], [reactant(mitochondrion, 1, "C00148")]). % was <->
reaction("170a", retractable, none, 3, [reactant(mitochondrion, 1, "C04236")], [reactant(cytosol, 1, "C04236")]). % was <->
reaction("170b", retractable, none, 3, [reactant(cytosol, 1, "C04236")], [reactant(mitochondrion, 1, "C04236")]). % was <->
reaction("171a", retractable, none, 3, [reactant(mitochondrion, 1, "C04411")], [reactant(cytosol, 1, "C04411")]). % was <->
reaction("171b", retractable, none, 3, [reactant(cytosol, 1, "C04411")], [reactant(mitochondrion, 1, "C04411")]). % was <->
reaction("172a", retractable, none, 3, [reactant(mitochondrion, 1, "C00037")], [reactant(cytosol, 1, "C00037")]). % was <->
reaction("172b", retractable, none, 3, [reactant(cytosol, 1, "C00037")], [reactant(mitochondrion, 1, "C00037")]). % was <->
reaction("173a", retractable, none, 3, [reactant(mitochondrion, 1, "C00065")], [reactant(cytosol, 1, "C00065")]). % was <->
reaction("173b", retractable, none, 3, [reactant(cytosol, 1, "C00065")], [reactant(mitochondrion, 1, "C00065")]). % was <->
reaction("174a", retractable, none, 3, [reactant(mitochondrion, 1, "C00143")], [reactant(cytosol, 1, "C00143")]). % was <->
reaction("174b", retractable, none, 3, [reactant(cytosol, 1, "C00143")], [reactant(mitochondrion, 1, "C00143")]). % was <->
reaction("175a", retractable, none, 3, [reactant(mitochondrion, 1, "C00101")], [reactant(cytosol, 1, "C00101")]). % was <->
reaction("175b", retractable, none, 3, [reactant(cytosol, 1, "C00101")], [reactant(mitochondrion, 1, "C00101")]). % was <->
reaction("176a", retractable, none, 3, [reactant(cytosol, 1, "C01438")], [reactant(mitochondrion, 1, "C01438")]). % was <->
reaction("176b", retractable, none, 3, [reactant(mitochondrion, 1, "C01438")], [reactant(cytosol, 1, "C01438")]). % was <->
reaction("177a", retractable, none, 3, [reactant(cytosol, 1, "C00014")], [reactant(mitochondrion, 1, "C00014")]). % was <->
reaction("177b", retractable, none, 3, [reactant(mitochondrion, 1, "C00014")], [reactant(cytosol, 1, "C00014")]). % was <->
reaction("178a", retractable, none, 3, [reactant(cytosol, 1, "C00469")], [reactant(mitochondrion, 1, "C00469")]). % was <->
reaction("178b", retractable, none, 3, [reactant(mitochondrion, 1, "C00469")], [reactant(cytosol, 1, "C00469")]). % was <->
reaction("179a", retractable, none, 3, [reactant(cytosol, 1, "C00011")], [reactant(mitochondrion, 1, "C00011")]). % was <->
reaction("179b", retractable, none, 3, [reactant(mitochondrion, 1, "C00011")], [reactant(cytosol, 1, "C00011")]). % was <->
reaction("180a", retractable, none, 3, [reactant(cytosol, 1, "C00007")], [reactant(mitochondrion, 1, "C00007")]). % was <->
reaction("180b", retractable, none, 3, [reactant(mitochondrion, 1, "C00007")], [reactant(cytosol, 1, "C00007")]). % was <->
reaction("194", retractable, "1.3.3.4", 3, [reactant(cytosol, 1, "C00007"), reactant(mitochondrion, 1, "C01079")], [reactant(mitochondrion, 1, "C02191")]). % was (->)
reaction("221", retractable, "1.4.3.-", 3, [reactant(cytosol, 1, "C00049"), reactant(mitochondrion, 1, "C00016")], [reactant(cytosol, 1, "ISUCC"), reactant(mitochondrion, 1, "C01352")]). % was (->)
reaction("300", retractable, "1.1.99.5", 3, [reactant(cytosol, 1, "C00093"), reactant(mitochondrion, 1, "C00016")], [reactant(cytosol, 1, "C00111"), reactant(mitochondrion, 1, "C01352")]). % was (->)
reaction("388", retractable, "1.5.99.6", 3, [reactant(cytosol, 1, "C00315"), reactant(mitochondrion, 1, "C01967")], [reactant(cytosol, 1, "C00986"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("465", retractable, "2.1.2.10", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00101")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00014"), reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00143")]). % was (->)
reaction("590a", retractable, "1.3.3.1", 3, [reactant(cytosol, 1, "C00337"), reactant(mitochondrion, 1, "C01967")], [reactant(cytosol, 1, "C00295"), reactant(mitochondrion, 1, "C00390")]). % was <->
reaction("590b", retractable, "1.3.3.1", 3, [reactant(cytosol, 1, "C00295"), reactant(mitochondrion, 1, "C00390")], [reactant(cytosol, 1, "C00337"), reactant(mitochondrion, 1, "C01967")]). % was <->
reaction("699", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("699", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("699", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("699", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("699", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("699", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01530"), reactant(cytosol, 9, "C00003"), reactant(cytosol, 9, "C00010"), reactant(mitochondrion, 9, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 9, "C00004"), reactant(cytosol, 9, "C00024"), reactant(mitochondrion, 9, "C01352")]). % was (->)
reaction("700", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("700", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("700", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("700", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("700", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("700", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00249"), reactant(cytosol, 8, "C00003"), reactant(cytosol, 8, "C00010"), reactant(mitochondrion, 8, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 8, "C00004"), reactant(cytosol, 8, "C00024"), reactant(mitochondrion, 8, "C01352")]). % was (->)
reaction("701", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("701", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("701", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("701", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("701", retractable, "1.3.3.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("701", retractable, "2.3.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C06424"), reactant(cytosol, 7, "C00003"), reactant(cytosol, 7, "C00010"), reactant(mitochondrion, 7, "C00016")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 7, "C00004"), reactant(cytosol, 7, "C00024"), reactant(mitochondrion, 7, "C01352")]). % was (->)
reaction("742", retractable, "1.6.2.4", 3, [reactant(cytosol, 1, "C00005"), reactant(mitochondrion, 2, "C00125")], [reactant(cytosol, 1, "C00006"), reactant(mitochondrion, 2, "C00126")]). % was (->)
reaction("743", retractable, "1.6.5.3", 3, [reactant(cytosol, 1, "C00004"), reactant(mitochondrion, 1, "C01967")], [reactant(cytosol, 1, "C00003"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("743", retractable, "1.6.5.3", 3, [reactant(cytosol, 1, "C00004"), reactant(mitochondrion, 1, "C01967")], [reactant(cytosol, 1, "C00003"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("744", retractable, "1.2.2.1", 3, [reactant(cytosol, 1, "C00058"), reactant(mitochondrion, 1, "C01967")], [reactant(cytosol, 1, "C00011"), reactant(external, 2, "C00080"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("808", retractable, "1.3.99.1", 3, [reactant(cytosol, 1, "C00122"), reactant(mitochondrion, 1, "C01352")], [reactant(cytosol, 1, "C00042"), reactant(mitochondrion, 1, "C00016")]). % was (->)

% metabolic reactions
reaction("1086A", retractable, "1.1.1.41", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")]). % was <=>
reaction("1086B", retractable, "1.1.1.41", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00311")]). % was <=>
reaction("1085A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01271")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00685")]). % was <=>
reaction("1085B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00685")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01271")]). % was <=>
reaction("1084A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")]). % was <=>
reaction("1084B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")]). % was <=>
reaction("1084A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")]). % was <=>
reaction("1084B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05744")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04618")]). % was <=>
reaction("1083A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04619")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05753")]). % was <=>
reaction("1083B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05753")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04619")]). % was <=>
reaction("1083A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04619")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05753")]). % was <=>
reaction("1083B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05753")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04619")]). % was <=>
reaction("1082A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04620")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05750")]). % was <=>
reaction("1082B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05750")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04620")]). % was <=>
reaction("1082A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04620")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05750")]). % was <=>
reaction("1082B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05750")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04620")]). % was <=>
reaction("1081A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04633")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05762")]). % was <=>
reaction("1081B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05762")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04633")]). % was <=>
reaction("1081A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04633")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05762")]). % was <=>
reaction("1081B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05762")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04633")]). % was <=>
reaction("1080A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04688")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05759")]). % was <=>
reaction("1080B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05759")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04688")]). % was <=>
reaction("1080A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04688")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05759")]). % was <=>
reaction("1080B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05759")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04688")]). % was <=>
reaction("1079A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction("1079B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")]). % was <=>
reaction("1079A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction("1079B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05747")]). % was <=>
reaction("1078A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")]). % was <=>
reaction("1078B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")]). % was <=>
reaction("1078A", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")]). % was <=>
reaction("1078B", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05756")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05757")]). % was <=>
reaction("1077A", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C05560")]). % was <=>
reaction("1077B", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C05560")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00956")]). % was <=>
reaction("1076A", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C04076")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00956")]). % was <=>
reaction("1076B", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C04076")]). % was <=>
reaction("1075A", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04076")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00956")]). % was <=>
reaction("1075B", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04076")]). % was <=>
reaction("1074A", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05535")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04076"), reactant(cytosol, 1, "C11482")]). % was <=>
reaction("1074B", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04076"), reactant(cytosol, 1, "C11482")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05535")]). % was <=>
reaction("1073A", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C05560"), reactant(cytosol, 1, "C11482")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05535")]). % was <=>
reaction("1073B", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05535")], [reactant(cytosol, 1, "C05560"), reactant(cytosol, 1, "C11482")]). % was <=>
reaction("1072A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00068")]). % was <=>
reaction("1072B", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1072A", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00068")]). % was <=>
reaction("1072B", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1071A", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1071B", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1071A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1071B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1071A", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1071B", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1071A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1071B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1070A", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1070B", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1070A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1070B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1070A", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1070B", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1070A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <=>
reaction("1070B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("1069A", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00248")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01136")]). % was <=>
reaction("1069B", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01136")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00248")]). % was <=>
reaction("1068A", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00248"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C01136")]). % was <=>
reaction("1068B", retractable, "1.2.4.1", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C01136")], [reactant(cytosol, 1, "C00248"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1067A", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")]). % was <=>
reaction("1067B", retractable, "1.3.5.1", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00390")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00399")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1066A", retractable, "1.9.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")]). % was <=>
reaction("1066B", retractable, "1.9.3.1", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 4, "C00125")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 4, "C00126")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1065A", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1065B", retractable, "1.10.2.2", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1064A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1064B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")]). % was <=>
reaction("1064A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1064B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")]). % was <=>
reaction("1063A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C01346")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1063B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C01346")]). % was <=>
reaction("1063A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C01346")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1063B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C01346")]). % was <=>
reaction("1062A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1062B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00361")]). % was <=>
reaction("1062A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1062B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00361")]). % was <=>
reaction("1061A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")], [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1061B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")]). % was <=>
reaction("1061A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")], [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")]). % was <=>
reaction("1061B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")]). % was <=>
reaction("1060A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C04232")], [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03723")]). % was <=>
reaction("1060B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03723")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C04232")]). % was <=>
reaction("1060A", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C04232")], [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03723")]). % was <=>
reaction("1060B", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03723")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C04232")]). % was <=>
reaction("1059A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00900")], [reactant(cytosol, 2, "C00022")]). % was <=>
reaction("1059B", retractable, "2.2.1.6", 3, [reactant(cytosol, 2, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00900")]). % was <=>
reaction("1058A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C06010")], [reactant(cytosol, 2, "C00022")]). % was <=>
reaction("1058B", retractable, "2.2.1.6", 3, [reactant(cytosol, 2, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C06010")]). % was <=>
reaction("1057A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00900")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1057B", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00900")]). % was <=>
reaction("1056A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C06010")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1056B", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C06010")]). % was <=>
reaction("1055A", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00109"), reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C06006")]). % was <=>
reaction("1055B", retractable, "2.2.1.6", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C06006")], [reactant(cytosol, 1, "C00109"), reactant(cytosol, 1, "C05125")]). % was <=>
reaction("1054A", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00579")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01136")]). % was <=>
reaction("1054B", retractable, "2.3.1.12", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01136")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00579")]). % was <=>
reaction("1053A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03939")]). % was <=>
reaction("1053B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03939")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <=>
reaction("1053A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03939")]). % was <=>
reaction("1053B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03939")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <=>
reaction("1052A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00685")]). % was <=>
reaction("1052B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00685")], [reactant(cytosol, 1, "C00173"), reactant(cytosol, 1, "C01209")]). % was <=>
reaction("1051A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C03939")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05744")]). % was <=>
reaction("1051B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05744")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C03939")]). % was <=>
reaction("1051A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C03939")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05744")]). % was <=>
reaction("1051B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05744")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C03939")]). % was <=>
reaction("1050A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05223")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05759")]). % was <=>
reaction("1050B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05759")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05223")]). % was <=>
reaction("1050A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05223")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05759")]). % was <=>
reaction("1050B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05759")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05223")]). % was <=>
reaction("1049A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction("1049B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")]). % was <=>
reaction("1049A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")]). % was <=>
reaction("1049B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05746")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05745")]). % was <=>
reaction("1048A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05749")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05750")]). % was <=>
reaction("1048B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05750")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05749")]). % was <=>
reaction("1048A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05749")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05750")]). % was <=>
reaction("1048B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05750")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05749")]). % was <=>
reaction("1047A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05752")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05753")]). % was <=>
reaction("1047B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05753")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05752")]). % was <=>
reaction("1047A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05752")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05753")]). % was <=>
reaction("1047B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05753")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05752")]). % was <=>
reaction("1046A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05755")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05756")]). % was <=>
reaction("1046B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05756")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05755")]). % was <=>
reaction("1046A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05755")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05756")]). % was <=>
reaction("1046B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05756")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05755")]). % was <=>
reaction("1045A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05761")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05762")]). % was <=>
reaction("1045B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05762")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05761")]). % was <=>
reaction("1045A", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05761")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05762")]). % was <=>
reaction("1045B", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C05762")], [reactant(cytosol, 1, "C01209"), reactant(cytosol, 1, "C05761")]). % was <=>
reaction("1044A", retractable, "2.3.1.61", 3, [reactant(cytosol, 1, "C00091"), reactant(cytosol, 1, "C00579")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01169")]). % was <=>
reaction("1044B", retractable, "2.3.1.61", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01169")], [reactant(cytosol, 1, "C00091"), reactant(cytosol, 1, "C00579")]). % was <=>
reaction("1043A", retractable, "2.3.1.61", 3, [reactant(cytosol, 1, "C00527"), reactant(cytosol, 1, "C00579")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C06157")]). % was <=>
reaction("1043B", retractable, "2.3.1.61", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C06157")], [reactant(cytosol, 1, "C00527"), reactant(cytosol, 1, "C00579")]). % was <=>
reaction("1042A", retractable, "2.5.1.9", 3, [reactant(cytosol, 2, "C04332")], [reactant(cytosol, 1, "C00255"), reactant(cytosol, 1, "C04732")]). % was <=>
reaction("1042B", retractable, "2.5.1.9", 3, [reactant(cytosol, 1, "C00255"), reactant(cytosol, 1, "C04732")], [reactant(cytosol, 2, "C04332")]). % was <=>
reaction("1041A", retractable, "2.5.1.9", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04332")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C04454")]). % was <=>
reaction("1041B", retractable, "2.5.1.9", 3, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C04454")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04332")]). % was <=>
reaction("1040A", retractable, "6.3.5.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00288"), reactant(cytosol, 2, "C00002")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00169"), reactant(cytosol, 2, "C00008")]). % was <=>
reaction("1040B", retractable, "6.3.5.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00169"), reactant(cytosol, 2, "C00008")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00288"), reactant(cytosol, 2, "C00002")]). % was <=>
reaction("1039A", retractable, "1.1.1.116", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00216")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00652")]). % was <=>
reaction("1039B", retractable, "1.1.1.116", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00652")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00216")]). % was <=>
reaction("1038A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01227")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")]). % was <=>
reaction("1038B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01227")]). % was <=>
reaction("1037A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01227")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")]). % was <=>
reaction("1037B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00280")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01227")]). % was <=>
reaction("1036A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01953")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00410")]). % was <=>
reaction("1036B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00410")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01953")]). % was <=>
reaction("1035A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01953")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00410")]). % was <=>
reaction("1035B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00410")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01953")]). % was <=>
reaction("1034A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C04295")]). % was <=>
reaction("1034B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C04295")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")]). % was <=>
reaction("1033A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04295")]). % was <=>
reaction("1033B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04295")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00535")]). % was <=>
reaction("1032A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00735")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05489")]). % was <=>
reaction("1032B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05489")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C00735")]). % was <=>
reaction("1031A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C03836")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01034")]). % was <=>
reaction("1031B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01034")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C03836")]). % was <=>
reaction("1030A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05138")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")]). % was <=>
reaction("1030B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05138")]). % was <=>
reaction("1029A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05138")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")]). % was <=>
reaction("1029B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01176")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05138")]). % was <=>
reaction("1028A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05485")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")]). % was <=>
reaction("1028B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05485")]). % was <=>
reaction("1027A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05485")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")]). % was <=>
reaction("1027B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C03205")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05485")]). % was <=>
reaction("1026A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05140")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05139")]). % was <=>
reaction("1026B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05139")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05140")]). % was <=>
reaction("1025A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05140")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05139")]). % was <=>
reaction("1025B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05139")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05140")]). % was <=>
reaction("1024A", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05488")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05487")]). % was <=>
reaction("1024B", retractable, "1.1.1.145", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05487")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05488")]). % was <=>
reaction("1023A", retractable, "1.1.3.37", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00652")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C06316")]). % was <=>
reaction("1023B", retractable, "1.1.3.37", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C06316")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00652")]). % was <=>
reaction("1022A", retractable, "1.3.1.70", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01724")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C05108")]). % was <=>
reaction("1022B", retractable, "1.3.1.70", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C05108")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C01724")]). % was <=>
reaction("1021A", retractable, "1.3.1.70", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05108")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C11455")]). % was <=>
reaction("1021B", retractable, "1.3.1.70", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C11455")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05108")]). % was <=>
reaction("1020A", retractable, "1.3.1.71", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01694")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05440")]). % was <=>
reaction("1020B", retractable, "1.3.1.71", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 1, "C05440")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01694")]). % was <=>
reaction("1019A", retractable, "1.4.1.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")]). % was <=>
reaction("1019B", retractable, "1.4.1.2", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00080")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00025")]). % was <=>
reaction("1018A", retractable, "1.4.1.13", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 2, "C00025")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00064")]). % was <=>
reaction("1018B", retractable, "1.4.1.13", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 2, "C00025")]). % was <=>
reaction("1017A", retractable, "1.5.5.1", 3, [reactant(cytosol, 1, "C00399"), reactant(cytosol, 1, "C04570")], [reactant(cytosol, 1, "C00390"), reactant(cytosol, 1, "C04253")]). % was <=>
reaction("1017B", retractable, "1.5.5.1", 3, [reactant(cytosol, 1, "C00390"), reactant(cytosol, 1, "C04253")], [reactant(cytosol, 1, "C00399"), reactant(cytosol, 1, "C04570")]). % was <=>
reaction("1016A", retractable, "1.6.2.2", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")]). % was <=>
reaction("1016B", retractable, "1.6.2.2", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")]). % was <=>
reaction("1016A", retractable, "1.6.2.2", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")]). % was <=>
reaction("1016B", retractable, "1.6.2.2", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00999")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 2, "C00996")]). % was <=>
reaction("1015A", retractable, "1.6.5.5", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00472")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05309")]). % was <=>
reaction("1015B", retractable, "1.6.5.5", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05309")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00472")]). % was <=>
reaction("1014A", retractable, "1.6.99.1", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1014B", retractable, "1.6.99.1", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1014A", retractable, "1.6.99.1", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1014B", retractable, "1.6.99.1", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1013A", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1013B", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1013A", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1013B", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1013A", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1013B", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1013A", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")]). % was <=>
reaction("1013B", retractable, "1.6.99.3", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00030")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00028")]). % was <=>
reaction("1012A", retractable, "1.6.99.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00268")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00272")]). % was <=>
reaction("1012B", retractable, "1.6.99.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00272")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00268")]). % was <=>
reaction("1011A", retractable, "1.6.99.7", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00268")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00272")]). % was <=>
reaction("1011B", retractable, "1.6.99.7", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00272")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00268")]). % was <=>
reaction("1010A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00579")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00248")]). % was <=>
reaction("1010B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00248")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00579")]). % was <=>
reaction("1010A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00579")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00248")]). % was <=>
reaction("1010B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00248")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00579")]). % was <=>
reaction("1009A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C02972")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02051")]). % was <=>
reaction("1009B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02051")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C02972")]). % was <=>
reaction("1009A", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C02972")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02051")]). % was <=>
reaction("1009B", retractable, "1.8.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02051")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C02972")]). % was <=>
reaction("1008A", retractable, "1.8.4.6", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C03023")], [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03895")]). % was <=>
reaction("1008B", retractable, "1.8.4.6", 3, [reactant(cytosol, 1, "C00342"), reactant(cytosol, 1, "C03895")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C03023")]). % was <=>
reaction("1007A", retractable, "1.11.1.5", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00126")], [reactant(cytosol, 2, "C00001"), reactant(cytosol, 2, "C00125")]). % was <=>
reaction("1007B", retractable, "1.11.1.5", 3, [reactant(cytosol, 2, "C00001"), reactant(cytosol, 2, "C00125")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00126")]). % was <=>
reaction("1006A", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01598"), reactant(cytosol, 1, "C03024")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03161"), reactant(cytosol, 1, "C05643")]). % was <=>
reaction("1006B", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03161"), reactant(cytosol, 1, "C05643")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01598"), reactant(cytosol, 1, "C03024")]). % was <=>
reaction("1005A", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C03024")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03161"), reactant(cytosol, 1, "C05102")]). % was <=>
reaction("1005B", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03161"), reactant(cytosol, 1, "C05102")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C03024")]). % was <=>
reaction("1004A", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01371"), reactant(cytosol, 1, "C03024")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01335"), reactant(cytosol, 1, "C03161")]). % was <=>
reaction("1004B", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01335"), reactant(cytosol, 1, "C03161")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01371"), reactant(cytosol, 1, "C03024")]). % was <=>
reaction("1003A", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06604")], [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C06606")]). % was <=>
reaction("1003B", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C06606")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06604")]). % was <=>
reaction("1002A", retractable, "1.14.19.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00030"), reactant(cytosol, 1, "C00412")], [reactant(cytosol, 1, "C00028"), reactant(cytosol, 1, "C00510"), reactant(cytosol, 2, "C00001")]). % was <=>
reaction("1002B", retractable, "1.14.19.1", 3, [reactant(cytosol, 1, "C00028"), reactant(cytosol, 1, "C00510"), reactant(cytosol, 2, "C00001")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00030"), reactant(cytosol, 1, "C00412")]). % was <=>
reaction("1001A", retractable, "1.15.1.1", 3, [reactant(cytosol, 2, "C00080"), reactant(cytosol, 2, "C00704")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00027")]). % was <=>
reaction("1001B", retractable, "1.15.1.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00027")], [reactant(cytosol, 2, "C00080"), reactant(cytosol, 2, "C00704")]). % was <=>
reaction("1001A", retractable, "1.15.1.1", 3, [reactant(cytosol, 2, "C00080"), reactant(cytosol, 2, "C00704")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00027")]). % was <=>
reaction("1001B", retractable, "1.15.1.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00027")], [reactant(cytosol, 2, "C00080"), reactant(cytosol, 2, "C00704")]). % was <=>
reaction("1000A", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000B", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000A", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000B", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000A", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000B", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000A", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("1000B", retractable, "1.16.1.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00080"), reactant(cytosol, 2, "C00023")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00023")]). % was <=>
reaction("999A", retractable, "2.1.1.32", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04158")]). % was <=>
reaction("999B", retractable, "2.1.1.32", 3, [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04158")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")]). % was <=>
reaction("998A", retractable, "2.1.1.61", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04728")]). % was <=>
reaction("998B", retractable, "2.1.1.61", 3, [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04728")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00066")]). % was <=>
reaction("997A", retractable, "2.1.1.63", 3, [reactant(cytosol, 1, "C02743"), reactant(cytosol, 1, "C04250")], [reactant(cytosol, 1, "C03800"), reactant(cytosol, 1, "C11475")]). % was <=>
reaction("997B", retractable, "2.1.1.63", 3, [reactant(cytosol, 1, "C03800"), reactant(cytosol, 1, "C11475")], [reactant(cytosol, 1, "C02743"), reactant(cytosol, 1, "C04250")]). % was <=>
reaction("996A", retractable, "2.1.1.100", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C04506")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04748")]). % was <=>
reaction("996B", retractable, "2.1.1.100", 3, [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04748")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C04506")]). % was <=>
reaction("995A", retractable, "2.1.1.114", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05200")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C05313")]). % was <=>
reaction("995B", retractable, "2.1.1.114", 3, [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C05313")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05200")]). % was <=>
reaction("994A", retractable, "2.3.1.26", 3, [reactant(cytosol, 1, "C00040"), reactant(cytosol, 1, "C00187")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02530")]). % was <=>
reaction("994B", retractable, "2.3.1.26", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02530")], [reactant(cytosol, 1, "C00040"), reactant(cytosol, 1, "C00187")]). % was <=>
reaction("994A", retractable, "2.3.1.26", 3, [reactant(cytosol, 1, "C00040"), reactant(cytosol, 1, "C00187")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02530")]). % was <=>
reaction("994B", retractable, "2.3.1.26", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02530")], [reactant(cytosol, 1, "C00040"), reactant(cytosol, 1, "C00187")]). % was <=>
reaction("993A", retractable, "2.3.1.48", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C01429")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01997")]). % was <=>
reaction("993B", retractable, "2.3.1.48", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01997")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C01429")]). % was <=>
reaction("992A", retractable, "2.3.1.84", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01883")]). % was <=>
reaction("992B", retractable, "2.3.1.84", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01883")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("992A", retractable, "2.3.1.84", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01883")]). % was <=>
reaction("992B", retractable, "2.3.1.84", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01883")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("991A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <=>
reaction("991B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <=>
reaction("990A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05745")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C04246")]). % was <=>
reaction("990B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C04246")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05745")]). % was <=>
reaction("989A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C04619")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05754")]). % was <=>
reaction("989B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05754")], [reactant(cytosol, 1, "C04619")]). % was <=>
reaction("988A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C04620")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05751")]). % was <=>
reaction("988B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05751")], [reactant(cytosol, 1, "C04620")]). % was <=>
reaction("987A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C04633")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05763")]). % was <=>
reaction("987B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05763")], [reactant(cytosol, 1, "C04633")]). % was <=>
reaction("986A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C04688")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05760")]). % was <=>
reaction("986B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05760")], [reactant(cytosol, 1, "C04688")]). % was <=>
reaction("985A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05223")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05758")]). % was <=>
reaction("985B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05758")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05223")]). % was <=>
reaction("984A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C05747")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05748")]). % was <=>
reaction("984B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05748")], [reactant(cytosol, 1, "C05747")]). % was <=>
reaction("983A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05749")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05748")]). % was <=>
reaction("983B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05748")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05749")]). % was <=>
reaction("982A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05752")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05751")]). % was <=>
reaction("982B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05751")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05752")]). % was <=>
reaction("981A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05755")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05754")]). % was <=>
reaction("981B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05754")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05755")]). % was <=>
reaction("980A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C05757")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05758")]). % was <=>
reaction("980B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05758")], [reactant(cytosol, 1, "C05757")]). % was <=>
reaction("979A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05761")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05760")]). % was <=>
reaction("979B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05760")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05761")]). % was <=>
reaction("978A", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05764")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05763")]). % was <=>
reaction("978B", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05763")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C05764")]). % was <=>
reaction("977A", retractable, "2.3.1.86", 3, [reactant(cytosol, "2n", "C00005"), reactant(cytosol, "2n", "C00080"), reactant(cytosol, 1, "C00024"), reactant(cytosol, n, "C00083")], [reactant(cytosol, "2n", "C00006"), reactant(cytosol, 1, "C02843"), reactant(cytosol, n, "C00001"), reactant(cytosol, n, "C00010"), reactant(cytosol, n, "C00011")]). % was <=>
reaction("977B", retractable, "2.3.1.86", 3, [reactant(cytosol, "2n", "C00006"), reactant(cytosol, 1, "C02843"), reactant(cytosol, n, "C00001"), reactant(cytosol, n, "C00010"), reactant(cytosol, n, "C00011")], [reactant(cytosol, "2n", "C00005"), reactant(cytosol, "2n", "C00080"), reactant(cytosol, 1, "C00024"), reactant(cytosol, n, "C00083")]). % was <=>
reaction("976A", retractable, "2.3.1.158", 3, [reactant(cytosol, 1, "C00641"), reactant(cytosol, 1, "C00865")], [reactant(cytosol, 1, "C00422"), reactant(cytosol, 1, "C06254")]). % was <=>
reaction("976B", retractable, "2.3.1.158", 3, [reactant(cytosol, 1, "C00422"), reactant(cytosol, 1, "C06254")], [reactant(cytosol, 1, "C00641"), reactant(cytosol, 1, "C00865")]). % was <=>
reaction("975A", retractable, "2.3.2.8", 3, [reactant(cytosol, 1, "C00017"), reactant(cytosol, 1, "C02163")], [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C02550")]). % was <=>
reaction("975B", retractable, "2.3.2.8", 3, [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C02550")], [reactant(cytosol, 1, "C00017"), reactant(cytosol, 1, "C02163")]). % was <=>
reaction("974A", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C00017"), reactant(cytosol, 1, "C03862")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C02863")]). % was <=>
reaction("974B", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C02863")], [reactant(cytosol, 1, "C00017"), reactant(cytosol, 1, "C03862")]). % was <=>
reaction("973A", retractable, "2.4.1.117", 3, [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C00110")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C01246")]). % was <=>
reaction("973B", retractable, "2.4.1.117", 3, [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C01246")], [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C00110")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("972A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")]). % was <=>
reaction("972B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C11572")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C04213")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("971A", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")], [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("971B", retractable, "2.4.1.119", 3, [reactant(cytosol, 1, "C00621"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C03021"), reactant(cytosol, 1, "C05872")]). % was <=>
reaction("970A", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05862")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05863")]). % was <=>
reaction("970B", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05863")], [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05862")]). % was <=>
reaction("970A", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05862")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05863")]). % was <=>
reaction("970B", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05863")], [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05862")]). % was <=>
reaction("969A", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")]). % was <=>
reaction("969B", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")], [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")]). % was <=>
reaction("969A", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")]). % was <=>
reaction("969B", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C05864")], [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C05863")]). % was <=>
reaction("968A", retractable, "2.5.1.8", 3, [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C00129")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04432")]). % was <=>
reaction("968B", retractable, "2.5.1.8", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04432")], [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C00129")]). % was <=>
reaction("967A", retractable, "2.5.1.46", 3, [reactant(cytosol, 1, "C00315"), reactant(cytosol, 1, "C07281")], [reactant(cytosol, 1, "C00986"), reactant(cytosol, 1, "C07282")]). % was <=>
reaction("967B", retractable, "2.5.1.46", 3, [reactant(cytosol, 1, "C00986"), reactant(cytosol, 1, "C07282")], [reactant(cytosol, 1, "C00315"), reactant(cytosol, 1, "C07281")]). % was <=>
reaction("966A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")]). % was <=>
reaction("966B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction("965A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00297"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00155")]). % was <=>
reaction("965B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00155")], [reactant(cytosol, 1, "C00297"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction("964A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00542")], [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction("964B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00542")]). % was <=>
reaction("963A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00320"), reactant(cytosol, 1, "C00979")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05824")]). % was <=>
reaction("963B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05824")], [reactant(cytosol, 1, "C00320"), reactant(cytosol, 1, "C00979")]). % was <=>
reaction("962A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C02291")]). % was <=>
reaction("962B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C02291")], [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01118")]). % was <=>
reaction("961A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05702")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05699")]). % was <=>
reaction("961B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05699")], [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05702")]). % was <=>
reaction("960A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05700")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05699")]). % was <=>
reaction("960B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05699")], [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05700")]). % was <=>
reaction("959A", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05701")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C05699")]). % was <=>
reaction("959B", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C05699")], [reactant(cytosol, 1, "C05688"), reactant(cytosol, 1, "C05701")]). % was <=>
reaction("958A", retractable, "2.7.1.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00124")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00446")]). % was <=>
reaction("958B", retractable, "2.7.1.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00446")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00124")]). % was <=>
reaction("957A", retractable, "2.7.1.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00257")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00345")]). % was <=>
reaction("957B", retractable, "2.7.1.12", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00345")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00257")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("956A", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("956B", retractable, "2.7.1.37", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("955A", retractable, "2.7.1.123", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C02449")]). % was <=>
reaction("955B", retractable, "2.7.1.123", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C02449")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("955A", retractable, "2.7.1.123", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C02449")]). % was <=>
reaction("955B", retractable, "2.7.1.123", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C02449")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("954A", retractable, "2.7.7.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00455")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00013")]). % was <=>
reaction("954B", retractable, "2.7.7.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00013")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00455")]). % was <=>
reaction("953A", retractable, "2.7.7.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01185")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00857")]). % was <=>
reaction("953B", retractable, "2.7.7.1", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00857")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01185")]). % was <=>
reaction("952A", retractable, "2.7.7.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("952B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("951B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("950A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("950B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("949A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("949B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("948A", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("948B", retractable, "2.7.7.6", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00046"), reactant(cytosol, 1, "C00201")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("947A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("947B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00131")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("946A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("946B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00286")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("945A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("945B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00458")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("944A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("944B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("943A", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("943B", retractable, "2.7.7.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00039"), reactant(cytosol, 1, "C00677")]). % was <=>
reaction("942A", retractable, "2.7.7.50", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C02100")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C02407")]). % was <=>
reaction("942B", retractable, "2.7.7.50", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C02407")], [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C02100")]). % was <=>
reaction("941A", retractable, "2.7.8.15", 3, [reactant(cytosol, 1, "C00043"), reactant(cytosol, 1, "C00110")], [reactant(cytosol, 1, "C00105"), reactant(cytosol, 1, "C04500")]). % was <=>
reaction("941B", retractable, "2.7.8.15", 3, [reactant(cytosol, 1, "C00105"), reactant(cytosol, 1, "C04500")], [reactant(cytosol, 1, "C00043"), reactant(cytosol, 1, "C00110")]). % was <=>
reaction("940A", retractable, "2.8.1.1", 3, [reactant(cytosol, 1, "C00320"), reactant(cytosol, 1, "C01326")], [reactant(cytosol, 1, "C00094"), reactant(cytosol, 1, "C01755")]). % was <=>
reaction("940B", retractable, "2.8.1.1", 3, [reactant(cytosol, 1, "C00094"), reactant(cytosol, 1, "C01755")], [reactant(cytosol, 1, "C00320"), reactant(cytosol, 1, "C01326")]). % was <=>
reaction("939A", retractable, "3.1.1.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C02391")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("939B", retractable, "3.1.1.1", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C02391")]). % was <=>
reaction("938A", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00422")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00165")]). % was <=>
reaction("938B", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00165")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00422")]). % was <=>
reaction("937A", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00422")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00641")]). % was <=>
reaction("937B", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00641")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00422")]). % was <=>
reaction("936A", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00641")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C01885")]). % was <=>
reaction("936B", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C01885")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00641")]). % was <=>
reaction("935A", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00641")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C02112")]). % was <=>
reaction("935B", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C02112")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00641")]). % was <=>
reaction("934A", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00165")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C01885")]). % was <=>
reaction("934B", retractable, "3.1.1.3", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C01885")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00165")]). % was <=>
reaction("933A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")]). % was <=>
reaction("933B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")], [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")]). % was <=>
reaction("933A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")]). % was <=>
reaction("933B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")], [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")]). % was <=>
reaction("933A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")]). % was <=>
reaction("933B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 2, "C00162")], [reactant(cytosol, 1, "C00157"), reactant(cytosol, 2, "C00001")]). % was <=>
reaction("932A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")]). % was <=>
reaction("932B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("932A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")]). % was <=>
reaction("932B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("932A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")]). % was <=>
reaction("932B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01178")], [reactant(cytosol, 1, "C00060"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("931A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("931B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")]). % was <=>
reaction("931A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("931B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")]). % was <=>
reaction("931A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("931B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04230")]). % was <=>
reaction("930A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("930B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")]). % was <=>
reaction("930A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("930B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")]). % was <=>
reaction("930A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")], [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("930B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00162"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04233")]). % was <=>
reaction("929A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")]). % was <=>
reaction("929B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")]). % was <=>
reaction("929A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")]). % was <=>
reaction("929B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")]). % was <=>
reaction("929A", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")], [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")]). % was <=>
reaction("929B", retractable, "3.1.1.5", 3, [reactant(cytosol, 1, "C00670"), reactant(cytosol, 1, "C06015")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04517")]). % was <=>
reaction("928A", retractable, "3.1.1.29", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03880")], [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C03523")]). % was <=>
reaction("928B", retractable, "3.1.1.29", 3, [reactant(cytosol, 1, "C00066"), reactant(cytosol, 1, "C03523")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03880")]). % was <=>
reaction("927A", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04431")], [reactant(cytosol, 1, "C02222")]). % was <=>
reaction("927B", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C02222")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04431")]). % was <=>
reaction("926A", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C07090")], [reactant(cytosol, 1, "C07091")]). % was <=>
reaction("926B", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C07091")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C07090")]). % was <=>
reaction("925A", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04706")], [reactant(cytosol, 1, "C06329")]). % was <=>
reaction("925B", retractable, "3.1.1.45", 3, [reactant(cytosol, 1, "C06329")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04706")]). % was <=>
reaction("924A", retractable, "3.1.2.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00154")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00249")]). % was <=>
reaction("924B", retractable, "3.1.2.2", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00249")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00154")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("923A", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")], [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")]). % was <=>
reaction("923B", retractable, "3.1.2.15", 3, [reactant(cytosol, 1, "C00145"), reactant(cytosol, 1, "C00496")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04090")]). % was <=>
reaction("922A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was <=>
reaction("922B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")]). % was <=>
reaction("922A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was <=>
reaction("922B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")]). % was <=>
reaction("922A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was <=>
reaction("922B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")]). % was <=>
reaction("922A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was <=>
reaction("922B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")]). % was <=>
reaction("922A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was <=>
reaction("922B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00061")]). % was <=>
reaction("921A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("921B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")]). % was <=>
reaction("921A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("921B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")]). % was <=>
reaction("921A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("921B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")]). % was <=>
reaction("921A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("921B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")]). % was <=>
reaction("921A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")]). % was <=>
reaction("921B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00069")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01153")]). % was <=>
reaction("920A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("920A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("920A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("920A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("920A", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("920A", retractable, "3.1.3.41", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")]). % was <=>
reaction("920B", retractable, "3.1.3.41", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00870")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03360")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("919A", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")]). % was <=>
reaction("919B", retractable, "3.1.3.16", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00017")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00562")]). % was <=>
reaction("918A", retractable, "3.1.3.33", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")]). % was <=>
reaction("918B", retractable, "3.1.3.33", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")]). % was <=>
reaction("918A", retractable, "3.1.3.33", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")]). % was <=>
reaction("918B", retractable, "3.1.3.33", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00419")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03475")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("917A", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")]). % was <=>
reaction("917B", retractable, "3.1.3.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00585")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01167")]). % was <=>
reaction("916A", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00354")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01094")]). % was <=>
reaction("916B", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01094")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00354")]). % was <=>
reaction("916A", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00354")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01094")]). % was <=>
reaction("916B", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01094")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00354")]). % was <=>
reaction("915A", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06369")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00586")]). % was <=>
reaction("915B", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00586")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06369")]). % was <=>
reaction("915A", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06369")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00586")]). % was <=>
reaction("915B", retractable, "3.1.3.68", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00586")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C06369")]). % was <=>
reaction("914A", retractable, "3.1.4.4", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00157")], [reactant(cytosol, 1, "C00114"), reactant(cytosol, 1, "C00416")]). % was <=>
reaction("914B", retractable, "3.1.4.4", 3, [reactant(cytosol, 1, "C00114"), reactant(cytosol, 1, "C00416")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00157")]). % was <=>
reaction("913A", retractable, "3.1.4.4", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00350")], [reactant(cytosol, 1, "C00189"), reactant(cytosol, 1, "C00416")]). % was <=>
reaction("913B", retractable, "3.1.4.4", 3, [reactant(cytosol, 1, "C00189"), reactant(cytosol, 1, "C00416")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00350")]). % was <=>
reaction("912A", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03120")], [reactant(cytosol, 1, "C00069"), reactant(cytosol, 1, "C00093")]). % was <=>
reaction("912B", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00069"), reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C03120")]). % was <=>
reaction("911A", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00670")], [reactant(cytosol, 1, "C00093"), reactant(cytosol, 1, "C00114")]). % was <=>
reaction("911B", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00093"), reactant(cytosol, 1, "C00114")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00670")]). % was <=>
reaction("910A", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01233")], [reactant(cytosol, 1, "C00093"), reactant(cytosol, 1, "C00189")]). % was <=>
reaction("910B", retractable, "3.1.4.46", 3, [reactant(cytosol, 1, "C00093"), reactant(cytosol, 1, "C00189")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01233")]). % was <=>
reaction("909A", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")], [reactant(cytosol, 1, "C00267")]). % was <=>
reaction("909B", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")]). % was <=>
reaction("909A", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")], [reactant(cytosol, 1, "C00267")]). % was <=>
reaction("909B", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")]). % was <=>
reaction("909A", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")], [reactant(cytosol, 1, "C00267")]). % was <=>
reaction("909B", retractable, "3.2.1.3", 3, [reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00369")]). % was <=>
reaction("908A", retractable, "3.2.1.14", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")], [reactant(cytosol, 1, "C00140")]). % was <=>
reaction("908B", retractable, "3.2.1.14", 3, [reactant(cytosol, 1, "C00140")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")]). % was <=>
reaction("907A", retractable, "3.2.1.14", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")], [reactant(cytosol, 1, "C03518")]). % was <=>
reaction("907B", retractable, "3.2.1.14", 3, [reactant(cytosol, 1, "C03518")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00461")]). % was <=>
reaction("906A", retractable, "3.2.1.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00470")], [reactant(cytosol, 1, "C00333")]). % was <=>
reaction("906B", retractable, "3.2.1.15", 3, [reactant(cytosol, 1, "C00333")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00470")]). % was <=>
reaction("905A", retractable, "3.2.1.15", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00470")], [reactant(cytosol, 1, "C00470"), reactant(cytosol, 1, "C04733")]). % was <=>
reaction("905B", retractable, "3.2.1.15", 3, [reactant(cytosol, 1, "C00470"), reactant(cytosol, 1, "C04733")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00470")]). % was <=>
reaction("904A", retractable, "3.2.1.106", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05873")], [reactant(cytosol, 1, "C00267"), reactant(cytosol, 1, "C05874")]). % was <=>
reaction("904B", retractable, "3.2.1.106", 3, [reactant(cytosol, 1, "C00267"), reactant(cytosol, 1, "C05874")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05873")]). % was <=>
reaction("903A", retractable, "3.2.1.113", 3, [reactant(cytosol, 1, "C05876"), reactant(cytosol, 4, "C00001")], [reactant(cytosol, 1, "C05881"), reactant(cytosol, 4, "C00936")]). % was <=>
reaction("903B", retractable, "3.2.1.113", 3, [reactant(cytosol, 1, "C05881"), reactant(cytosol, 4, "C00936")], [reactant(cytosol, 1, "C05876"), reactant(cytosol, 4, "C00001")]). % was <=>
reaction("902A", retractable, "3.3.2.6", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00909")], [reactant(cytosol, 1, "C02165")]). % was <=>
reaction("902B", retractable, "3.3.2.6", 3, [reactant(cytosol, 1, "C02165")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00909")]). % was <=>
reaction("901A", retractable, "3.5.1.89", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01288")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C04248")]). % was <=>
reaction("901B", retractable, "3.5.1.89", 3, [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C04248")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C01288")]). % was <=>
reaction("900A", retractable, "3.5.1.89", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "G00143")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "G00144")]). % was <=>
reaction("900B", retractable, "3.5.1.89", 3, [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "G00144")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "G00143")]). % was <=>
reaction("899A", retractable, "3.5.4.3", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00242")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00385")]). % was <=>
reaction("899B", retractable, "3.5.4.3", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00385")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00242")]). % was <=>
reaction("898A", retractable, "3.5.4.10", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C04734")]). % was <=>
reaction("898B", retractable, "3.5.4.10", 3, [reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00130")]). % was <=>
reaction("897A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 2, "C00001")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 2, "C00009")]). % was <=>
reaction("897B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 2, "C00009")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 2, "C00001")]). % was <=>
reaction("896A", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was <=>
reaction("896B", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction("896A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was <=>
reaction("896B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction("896A", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was <=>
reaction("896B", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction("896A", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was <=>
reaction("896B", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction("896A", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was <=>
reaction("896B", retractable, "3.6.3.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00002")]). % was <=>
reaction("895A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00008")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00020")]). % was <=>
reaction("895B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00008")]). % was <=>
reaction("894A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00105")]). % was <=>
reaction("894B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00105")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00015")]). % was <=>
reaction("893A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00015")]). % was <=>
reaction("893B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00075")]). % was <=>
reaction("892A", retractable, "3.6.1.42", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00144")]). % was <=>
reaction("892B", retractable, "3.6.1.42", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("892A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00144")]). % was <=>
reaction("892B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.50", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.50", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("891A", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")]). % was <=>
reaction("891B", retractable, "3.6.1.48", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00044")]). % was <=>
reaction("890A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00112")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00055")]). % was <=>
reaction("890B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00055")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00112")]). % was <=>
reaction("889A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00112")]). % was <=>
reaction("889B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00112")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00063")]). % was <=>
reaction("888A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00081")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00104")]). % was <=>
reaction("888B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00104")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00081")]). % was <=>
reaction("887A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00104")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00130")]). % was <=>
reaction("887B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00104")]). % was <=>
reaction("886A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00363")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00364")]). % was <=>
reaction("886B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00364")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00363")]). % was <=>
reaction("885A", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00363")]). % was <=>
reaction("885B", retractable, "3.6.1.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00363")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00459")]). % was <=>
reaction("884A", retractable, "3.6.1.11", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00890")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00890")]). % was <=>
reaction("884B", retractable, "3.6.1.11", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00890")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00890")]). % was <=>
reaction("883A", retractable, "3.6.1.11", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04494")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01228")]). % was <=>
reaction("883B", retractable, "3.6.1.11", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01228")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04494")]). % was <=>
reaction("882A", retractable, "3.6.1.13", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")]). % was <=>
reaction("882B", retractable, "3.6.1.13", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C00301")]). % was <=>
reaction("881A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was <=>
reaction("881B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00022")]). % was <=>
reaction("881A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was <=>
reaction("881B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00022")]). % was <=>
reaction("880A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00161")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00071")]). % was <=>
reaction("880B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00071")], [reactant(cytosol, 1, "C00161")]). % was <=>
reaction("880A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00161")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00071")]). % was <=>
reaction("880B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00071")], [reactant(cytosol, 1, "C00161")]). % was <=>
reaction("879A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C05125")]). % was <=>
reaction("879B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00084")]). % was <=>
reaction("879A", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C05125")]). % was <=>
reaction("879B", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C05125")], [reactant(cytosol, 1, "C00068"), reactant(cytosol, 1, "C00084")]). % was <=>
reaction("878A", retractable, "4.1.2.27", 3, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00346"), reactant(cytosol, 1, "C00517")]). % was <=>
reaction("878B", retractable, "4.1.2.27", 3, [reactant(cytosol, 1, "C00346"), reactant(cytosol, 1, "C00517")], [reactant(cytosol, 1, "C01120")]). % was <=>
reaction("877A", retractable, "4.1.99.3", 3, [reactant(cytosol, 1, "C03103")], [reactant(cytosol, 2, "C08249")]). % was <=>
reaction("877B", retractable, "4.1.99.3", 3, [reactant(cytosol, 2, "C08249")], [reactant(cytosol, 1, "C03103")]). % was <=>
reaction("876A", retractable, "4.2.1.79", 3, [reactant(cytosol, 1, "C02225")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04225")]). % was <=>
reaction("876B", retractable, "4.2.1.79", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C04225")], [reactant(cytosol, 1, "C02225")]). % was <=>
reaction("875A", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")]). % was <=>
reaction("875B", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00065")]). % was <=>
reaction("874A", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C02218")]). % was <=>
reaction("874B", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C02218")], [reactant(cytosol, 1, "C00065")]). % was <=>
reaction("873A", retractable, "4.4.1.17", 3, [reactant(cytosol, 1, "C00524")], [reactant(cytosol, 1, "C00032"), reactant(cytosol, 1, "C02248")]). % was <=>
reaction("873B", retractable, "4.4.1.17", 3, [reactant(cytosol, 1, "C00032"), reactant(cytosol, 1, "C02248")], [reactant(cytosol, 1, "C00524")]). % was <=>
reaction("872A", retractable, "4.4.1.17", 3, [reactant(cytosol, 1, "C02416")], [reactant(cytosol, 1, "C00032"), reactant(cytosol, 1, "C02248")]). % was <=>
reaction("872B", retractable, "4.4.1.17", 3, [reactant(cytosol, 1, "C00032"), reactant(cytosol, 1, "C02248")], [reactant(cytosol, 1, "C02416")]). % was <=>
reaction("871A", retractable, "5.1.3.3", 3, [reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00221")]). % was <=>
reaction("871B", retractable, "5.1.3.3", 3, [reactant(cytosol, 1, "C00221")], [reactant(cytosol, 1, "C00267")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("870A", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03798")], [reactant(cytosol, 1, "C03633")]). % was <=>
reaction("870B", retractable, "5.2.1.8", 3, [reactant(cytosol, 1, "C03633")], [reactant(cytosol, 1, "C03798")]). % was <=>
reaction("869A", retractable, "5.4.2.8", 3, [reactant(cytosol, 1, "C00275")], [reactant(cytosol, 1, "C00636")]). % was <=>
reaction("869B", retractable, "5.4.2.8", 3, [reactant(cytosol, 1, "C00636")], [reactant(cytosol, 1, "C00275")]). % was <=>
reaction("868A", retractable, "6.1.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")]). % was <=>
reaction("868B", retractable, "6.1.1.1", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")]). % was <=>
reaction("868A", retractable, "6.1.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")]). % was <=>
reaction("868B", retractable, "6.1.1.1", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02839")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00787")]). % was <=>
reaction("867A", retractable, "6.1.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C01652")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03512")]). % was <=>
reaction("867B", retractable, "6.1.1.2", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03512")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C01652")]). % was <=>
reaction("866A", retractable, "6.1.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00188"), reactant(cytosol, 1, "C01651")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02992")]). % was <=>
reaction("866B", retractable, "6.1.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02992")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00188"), reactant(cytosol, 1, "C01651")]). % was <=>
reaction("866A", retractable, "6.1.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00188"), reactant(cytosol, 1, "C01651")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02992")]). % was <=>
reaction("866B", retractable, "6.1.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02992")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00188"), reactant(cytosol, 1, "C01651")]). % was <=>
reaction("865A", retractable, "6.1.1.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00123"), reactant(cytosol, 1, "C01645")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02047")]). % was <=>
reaction("865B", retractable, "6.1.1.4", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02047")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00123"), reactant(cytosol, 1, "C01645")]). % was <=>
reaction("865A", retractable, "6.1.1.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00123"), reactant(cytosol, 1, "C01645")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02047")]). % was <=>
reaction("865B", retractable, "6.1.1.4", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02047")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00123"), reactant(cytosol, 1, "C01645")]). % was <=>
reaction("864A", retractable, "6.1.1.5", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00407"), reactant(cytosol, 1, "C01644")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03127")]). % was <=>
reaction("864B", retractable, "6.1.1.5", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03127")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00407"), reactant(cytosol, 1, "C01644")]). % was <=>
reaction("864A", retractable, "6.1.1.5", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00407"), reactant(cytosol, 1, "C01644")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03127")]). % was <=>
reaction("864B", retractable, "6.1.1.5", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03127")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00407"), reactant(cytosol, 1, "C01644")]). % was <=>
reaction("863A", retractable, "6.1.1.7", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")]). % was <=>
reaction("863B", retractable, "6.1.1.7", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00886")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01635")]). % was <=>
reaction("862A", retractable, "6.1.1.9", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00183"), reactant(cytosol, 1, "C01653")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02554")]). % was <=>
reaction("862B", retractable, "6.1.1.9", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02554")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00183"), reactant(cytosol, 1, "C01653")]). % was <=>
reaction("861A", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C01647")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02430")]). % was <=>
reaction("861B", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02430")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C01647")]). % was <=>
reaction("861A", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C01647")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02430")]). % was <=>
reaction("861B", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02430")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C01647")]). % was <=>
reaction("860A", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")]). % was <=>
reaction("860B", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")]). % was <=>
reaction("860A", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")]). % was <=>
reaction("860B", retractable, "6.1.1.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C05336")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01647"), reactant(cytosol, 1, "C05335")]). % was <=>
reaction("859A", retractable, "6.1.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C01650")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02553")]). % was <=>
reaction("859B", retractable, "6.1.1.11", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02553")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C01650")]). % was <=>
reaction("859A", retractable, "6.1.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C01650")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02553")]). % was <=>
reaction("859B", retractable, "6.1.1.11", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02553")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C01650")]). % was <=>
reaction("858A", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01637")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C06113")]). % was <=>
reaction("858B", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C06113")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01637")]). % was <=>
reaction("858A", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01637")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C06113")]). % was <=>
reaction("858B", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C06113")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01637")]). % was <=>
reaction("857A", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")]). % was <=>
reaction("857B", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")]). % was <=>
reaction("857A", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")]). % was <=>
reaction("857B", retractable, "6.1.1.12", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02984")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C01638")]). % was <=>
reaction("856A", retractable, "6.1.1.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C01642")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02412")]). % was <=>
reaction("856B", retractable, "6.1.1.14", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02412")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C01642")]). % was <=>
reaction("856A", retractable, "6.1.1.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C01642")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02412")]). % was <=>
reaction("856B", retractable, "6.1.1.14", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02412")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C01642")]). % was <=>
reaction("855A", retractable, "6.1.1.15", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00148"), reactant(cytosol, 1, "C01649")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02702")]). % was <=>
reaction("855B", retractable, "6.1.1.15", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02702")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00148"), reactant(cytosol, 1, "C01649")]). % was <=>
reaction("855A", retractable, "6.1.1.15", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00148"), reactant(cytosol, 1, "C01649")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02702")]). % was <=>
reaction("855B", retractable, "6.1.1.15", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02702")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00148"), reactant(cytosol, 1, "C01649")]). % was <=>
reaction("854A", retractable, "6.1.1.16", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01639")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03125")]). % was <=>
reaction("854B", retractable, "6.1.1.16", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03125")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01639")]). % was <=>
reaction("853A", retractable, "6.1.1.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C01640")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02282")]). % was <=>
reaction("853B", retractable, "6.1.1.18", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02282")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C01640")]). % was <=>
reaction("852A", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")]). % was <=>
reaction("852B", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")]). % was <=>
reaction("852A", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")]). % was <=>
reaction("852B", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")]). % was <=>
reaction("852A", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")]). % was <=>
reaction("852B", retractable, "6.1.1.20", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03511")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00079"), reactant(cytosol, 1, "C01648")]). % was <=>
reaction("851A", retractable, "6.1.1.22", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00152"), reactant(cytosol, 1, "C01637")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03402")]). % was <=>
reaction("851B", retractable, "6.1.1.22", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03402")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00152"), reactant(cytosol, 1, "C01637")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("850A", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")]). % was <=>
reaction("850B", retractable, "6.3.2.19", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03635")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00496"), reactant(cytosol, 1, "C02188")]). % was <=>
reaction("849A", retractable, "6.3.3.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C03479")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00445")]). % was <=>
reaction("849B", retractable, "6.3.3.2", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00445")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C03479")]). % was <=>
reaction("848A", retractable, "6.3.4.9", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04736")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04682")]). % was <=>
reaction("848B", retractable, "6.3.4.9", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04682")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04736")]). % was <=>
reaction("847A", retractable, "6.3.4.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C05921")]). % was <=>
reaction("847B", retractable, "6.3.4.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C05921")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120")]). % was <=>
reaction("846A", retractable, "6.3.4.10", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04763")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04727")]). % was <=>
reaction("846B", retractable, "6.3.4.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04727")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04763")]). % was <=>
reaction("845A", retractable, "6.3.4.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04827")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04801")]). % was <=>
reaction("845B", retractable, "6.3.4.11", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04801")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04827")]). % was <=>
reaction("844A", retractable, "6.3.4.15", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04735")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04681")]). % was <=>
reaction("844B", retractable, "6.3.4.15", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04681")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00120"), reactant(cytosol, 1, "C04735")]). % was <=>
reaction("843A", retractable, "6.5.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("843B", retractable, "6.5.1.1", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("843A", retractable, "6.5.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("843B", retractable, "6.5.1.1", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00039")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00039")]). % was <=>
reaction("842A", retractable, "6.5.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02073")]). % was <=>
reaction("842B", retractable, "6.5.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02073")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00046")]). % was <=>
reaction("841A", retractable, "6.5.1.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C03638")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04312")]). % was <=>
reaction("841B", retractable, "6.5.1.4", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04312")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C03638")]). % was <=>
reaction("1087A", retractable, unknown, 3, [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05764")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00249")]). % was <=>
reaction("1087B", retractable, unknown, 3, [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00249")], [reactant(cytosol, 1, "C00001"), reactant(cytosol, 1, "C05764")]). % was <=>
reaction("23", retractable, none, 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009")]). % was (->)
reaction("114", retractable, "3.2.1.26", 3, [reactant(external, 1, "C00089")], [reactant(external, 1, "C00095"), reactant(external, 1, "C00267")]). % was (->)
reaction("181", retractable, "2.1.1.64", 3, [reactant(mitochondrion, 1, "C00019"), reactant(mitochondrion, 1, "C03226")], [reactant(mitochondrion, 1, "C00021"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("182", retractable, "1.14.13.-", 3, [reactant(mitochondrion, 1, "2NPMMB"), reactant(mitochondrion, 1, "C00007")], [reactant(mitochondrion, 1, "C03226")]). % was (->)
reaction("183", retractable, "2.1.1.-", 3, [reactant(mitochondrion, 1, "2NPMB"), reactant(mitochondrion, 1, "C00019")], [reactant(mitochondrion, 1, "2NPMMB"), reactant(mitochondrion, 1, "C00021")]). % was (->)
reaction("184", retractable, "1.14.13.-", 3, [reactant(mitochondrion, 1, "2NPMP"), reactant(mitochondrion, 1, "C00007")], [reactant(mitochondrion, 1, "2NPMB")]). % was (->)
reaction("185", retractable, "2.1.1.-", 3, [reactant(cytosol, 1, "2N6H"), reactant(cytosol, 1, "C00019")], [reactant(cytosol, 1, "2NPMP"), reactant(cytosol, 1, "C00021")]). % was (->)
reaction("186", retractable, "1.13.14.-", 3, [reactant(cytosol, 1, "2NPPP"), reactant(cytosol, 1, "C00007")], [reactant(cytosol, 1, "2N6H")]). % was (->)
reaction("187", retractable, "4.1.1.-", 3, [reactant(cytosol, 1, "N4HBZ")], [reactant(cytosol, 1, "2NPPP"), reactant(cytosol, 1, "C00011")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("188", retractable, "2.5.1.-", 3, [reactant(cytosol, 1, "C00156"), reactant(cytosol, 1, "C04145")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "N4HBZ")]). % was (->)
reaction("189", retractable, "4.1.3.27", 3, [reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00156")]). % was (->)
reaction("189", retractable, "4.1.3.27", 3, [reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00156")]). % was (->)
reaction("190", retractable, "2.1.1.107", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01051")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C05778")]). % was (->)
reaction("191", retractable, "6.1.1.17", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00025")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C02987")]). % was (->)
reaction("192", retractable, "6.1.1.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02987")]). % was (->)
reaction("193", retractable, "4.99.1.1", 3, [reactant(mitochondrion, 1, "C02191")], [reactant(mitochondrion, 1, "C00032")]). % was (->)
reaction("195", retractable, "1.3.3.3", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C02667")], [reactant(cytosol, 1, "C01079"), reactant(cytosol, 2, "C00011")]). % was (->)
reaction("196", retractable, "4.1.1.37", 3, [reactant(cytosol, 1, "C01051")], [reactant(cytosol, 1, "C02667"), reactant(cytosol, 4, "C00011")]). % was (->)
reaction("197", retractable, "4.2.1.75", 3, [reactant(cytosol, 1, "C01024")], [reactant(cytosol, 1, "C01051")]). % was (->)
reaction("198", retractable, "4.3.1.8", 3, [reactant(cytosol, 4, "C00931")], [reactant(cytosol, 1, "C01024"), reactant(cytosol, 4, "C00014")]). % was (->)
reaction("199", retractable, "4.2.1.24", 3, [reactant(cytosol, 2, "C00430")], [reactant(cytosol, 1, "C00931")]). % was (->)
reaction("200", retractable, "2.3.1.37", 3, [reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00091")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00430")]). % was (->)
reaction("201", retractable, "3.2.2.5", 3, [reactant(mitochondrion, 1, "C00003")], [reactant(mitochondrion, 1, "C00153"), reactant(mitochondrion, 1, "C00301")]). % was (->)
reaction("202", retractable, "2.4.2.11", 3, [reactant(mitochondrion, 1, "C00119"), reactant(mitochondrion, 1, "C00253")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C01185")]). % was (->)
reaction("203a", retractable, "3.5.1.19", 3, [reactant(mitochondrion, 1, "C00153")], [reactant(mitochondrion, 1, "C00014"), reactant(mitochondrion, 1, "C00253")]). % was <->
reaction("203b", retractable, "3.5.1.19", 3, [reactant(mitochondrion, 1, "C00014"), reactant(mitochondrion, 1, "C00253")], [reactant(mitochondrion, 1, "C00153")]). % was <->
reaction("204a", retractable, "2.4.2.1", 3, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00387")], [reactant(mitochondrion, 1, "C00242"), reactant(mitochondrion, 1, "C00442")]). % was <->
reaction("204b", retractable, "2.4.2.1", 3, [reactant(mitochondrion, 1, "C00242"), reactant(mitochondrion, 1, "C00442")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00387")]). % was <->
reaction("205a", retractable, "2.4.2.1", 3, [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00212")], [reactant(mitochondrion, 1, "C00147"), reactant(mitochondrion, 1, "C00442")]). % was <->
reaction("205b", retractable, "2.4.2.1", 3, [reactant(mitochondrion, 1, "C00147"), reactant(mitochondrion, 1, "C00442")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00212")]). % was <->
reaction("206", retractable, "3.1.2.-", 3, [reactant(mitochondrion, 1, "C00006")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00009")]). % was (->)
reaction("207", retractable, "2.7.1.23", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00003")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00008")]). % was (->)
reaction("207", retractable, "2.7.1.23", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00003")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00008")]). % was (->)
reaction("207", retractable, "2.7.1.23", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00003")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00008")]). % was (->)
reaction("208", retractable, "6.3.5.1", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00014"), reactant(mitochondrion, 1, "C00857")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020")]). % was (->)
reaction("209", retractable, "2.7.7.18", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "NMN")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00013")]). % was (->)
reaction("210", retractable, "2.7.7.18", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C01185")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00857")]). % was (->)
reaction("211", retractable, "2.4.2.19", 3, [reactant(mitochondrion, 1, "C00119"), reactant(mitochondrion, 1, "C03722")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C01185")]). % was (->)
reaction("212a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00442")]). % was <->
reaction("212b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00442")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")]). % was <->
reaction("213a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")], [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C00442")]). % was <->
reaction("213b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C00442")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")]). % was <->
reaction("214", retractable, "3.2.2.5", 3, [reactant(cytosol, 1, "C00003")], [reactant(cytosol, 1, "C00153"), reactant(cytosol, 1, "C00301")]). % was (->)
reaction("215", retractable, "3.1.2.-", 3, [reactant(cytosol, 1, "C00006")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009")]). % was (->)
reaction("216", retractable, "2.7.1.23", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00003")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00008")]). % was (->)
reaction("216", retractable, "2.7.1.23", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00003")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00008")]). % was (->)
reaction("216", retractable, "2.7.1.23", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00003")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00008")]). % was (->)
reaction("217", retractable, "6.3.5.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00857")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction("218", retractable, "2.7.7.18", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01185")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00857")]). % was (->)
reaction("219", retractable, "2.4.2.19", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C03722")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01185")]). % was (->)
reaction("220", retractable, "1.4.3.16", 3, [reactant(cytosol, 1, "C00111"), reactant(cytosol, 1, "ISUCC")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03722")]). % was (->)
reaction("222", retractable, "2.4.2.11", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00253")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01185")]). % was (->)
reaction("223a", retractable, "3.5.1.19", 3, [reactant(cytosol, 1, "C00153")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00253")]). % was <->
reaction("223b", retractable, "3.5.1.19", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00253")], [reactant(cytosol, 1, "C00153")]). % was <->
reaction("224", retractable, "2.7.8.7", 3, [reactant(cytosol, 1, "C00010")], [reactant(cytosol, 1, "C00054"), reactant(cytosol, 1, "C00229")]). % was (->)
reaction("225", retractable, "4.1.1.11", 3, [reactant(cytosol, 1, "C00049")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00099")]). % was (->)
reaction("226", retractable, "2.7.1.24", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00882")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00010")]). % was (->)
reaction("227", retractable, "2.7.1.24", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00882")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00010")]). % was (->)
reaction("228", retractable, "2.7.7.3", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C01134")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00882")]). % was (->)
reaction("229", retractable, "2.7.7.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01134")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00882")]). % was (->)
reaction("230", retractable, "4.1.1.36", 3, [reactant(cytosol, 1, "C04352")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01134")]). % was (->)
reaction("231", retractable, "6.3.2.5", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C03492")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C04352")]). % was (->)
reaction("232", retractable, "2.7.1.33", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00864")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03492")]). % was (->)
reaction("233", retractable, "6.3.2.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00099"), reactant(cytosol, 1, "C00522")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00864")]). % was (->)
reaction("234", retractable, "1.1.1.86", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00966")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00522")]). % was (->)
reaction("235", retractable, "1.1.1.169", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00966")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00522")]). % was (->)
reaction("236", retractable, "2.1.2.11", 3, [reactant(cytosol, 1, "C00143"), reactant(cytosol, 1, "OIVAL")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C00966")]). % was (->)
reaction("237", retractable, "2.1.2.9", 3, [reactant(mitochondrion, 1, "C00234"), reactant(mitochondrion, 1, "C02430")], [reactant(mitochondrion, 1, "C00101"), reactant(mitochondrion, 1, "C03294")]). % was (->)
reaction("238", retractable, "1.5.1.15", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00143")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00445")]). % was (->)
reaction("239a", retractable, "3.5.4.9", 3, [reactant(cytosol, 1, "C00445")], [reactant(cytosol, 1, "C00234")]). % was <->
reaction("239b", retractable, "3.5.4.9", 3, [reactant(cytosol, 1, "C00234")], [reactant(cytosol, 1, "C00445")]). % was <->
reaction("240a", retractable, "3.5.4.9", 3, [reactant(mitochondrion, 1, "C00445")], [reactant(mitochondrion, 1, "C00234")]). % was <->
reaction("240b", retractable, "3.5.4.9", 3, [reactant(mitochondrion, 1, "C00234")], [reactant(mitochondrion, 1, "C00445")]). % was <->
reaction("241", retractable, "6.3.4.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00234")]). % was (->)
reaction("242", retractable, "6.3.4.3", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00058"), reactant(mitochondrion, 1, "C00101")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00234")]). % was (->)
reaction("243a", retractable, "1.5.1.5", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00143")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00445")]). % was <->
reaction("243b", retractable, "1.5.1.5", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00445")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00143")]). % was <->
reaction("244a", retractable, "1.5.1.5", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00143")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00445")]). % was <->
reaction("244b", retractable, "1.5.1.5", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00445")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00143")]). % was <->
reaction("245", retractable, "1.5.1.20", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00143")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00440")]). % was (->)
reaction("245", retractable, "1.5.1.20", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00143")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00440")]). % was (->)
reaction("246a", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")]). % was <->
reaction("246b", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")]). % was <->
reaction("246a", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")]). % was <->
reaction("246b", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")]). % was <->
reaction("246a", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")]). % was <->
reaction("246b", retractable, "6.3.2.17", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03541")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00101")]). % was <->
reaction("247", retractable, "6.3.3.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00234")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00440")]). % was (->)
reaction("248", retractable, "6.3.3.2", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00234")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00440")]). % was (->)
reaction("249", retractable, "1.5.1.3", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00415")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00101")]). % was (->)
reaction("250", retractable, "1.5.1.3", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00415")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00101")]). % was (->)
reaction("251", retractable, "6.3.2.12", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00921")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00415")]). % was (->)
reaction("252", retractable, "2.5.1.15", 3, [reactant(cytosol, 1, "C00568"), reactant(cytosol, 1, "C01300")], [reactant(cytosol, 1, "C00921")]). % was (->)
reaction("253", retractable, "2.5.1.15", 3, [reactant(cytosol, 1, "C00568"), reactant(cytosol, 1, "C04807")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00921")]). % was (->)
reaction("254", retractable, "4.-.-.-", 3, [reactant(cytosol, 1, "C11355")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00568")]). % was (->)
reaction("255", retractable, "4.1.3.-", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C11355")]). % was (->)
reaction("256", retractable, "2.7.6.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01300")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04807")]). % was (->)
reaction("257", retractable, "4.1.2.25", 3, [reactant(cytosol, 1, "C04874")], [reactant(cytosol, 1, "C00266"), reactant(cytosol, 1, "C01300")]). % was (->)
reaction("258", retractable, "3.6.1.-", 3, [reactant(cytosol, 1, "C05925")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04874")]). % was (->)
reaction("259", retractable, "3.1.3.1", 3, [reactant(cytosol, 1, "C04895")], [reactant(cytosol, 1, "C04874"), reactant(cytosol, 3, "C00009")]). % was (->)
reaction("260", retractable, "3.6.1.-", 3, [reactant(cytosol, 1, "C04895")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C05925")]). % was (->)
reaction("261", retractable, "3.5.4.16", 3, [reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C04895")]). % was (->)
reaction("262a", retractable, "2.8.1.6", 3, [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01909")], [reactant(cytosol, 1, "C00120")]). % was <->
reaction("262b", retractable, "2.8.1.6", 3, [reactant(cytosol, 1, "C00120")], [reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C01909")]). % was <->
reaction("263a", retractable, "6.3.3.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01037")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01909")]). % was <->
reaction("263b", retractable, "6.3.3.3", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01909")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01037")]). % was <->
reaction("264a", retractable, "2.6.1.62", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01092")], [reactant(cytosol, 1, "C01037"), reactant(cytosol, 1, "C04425")]). % was <->
reaction("264b", retractable, "2.6.1.62", 3, [reactant(cytosol, 1, "C01037"), reactant(cytosol, 1, "C04425")], [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01092")]). % was <->
reaction("265a", retractable, "2.3.1.47", 3, [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01063")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01092")]). % was <->
reaction("265b", retractable, "2.3.1.47", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01092")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C01063")]). % was <->
reaction("266", retractable, none, 3, [reactant(cytosol, 3, "C00083")], [reactant(cytosol, 1, "C01063"), reactant(cytosol, 2, "C00010"), reactant(cytosol, 2, "C00011")]). % was (->)
reaction("267", retractable, "3.1.3.-", 3, [reactant(cytosol, 1, "C00647")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00534")]). % was (->)
reaction("268", retractable, "4.2.3.1", 3, [reactant(cytosol, 1, "C06055")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C06056")]). % was (->)
reaction("269a", retractable, "2.6.1.52", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C06054")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C06055")]). % was <->
reaction("269b", retractable, "2.6.1.52", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C06055")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C06054")]). % was <->
reaction("270", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00647")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00018"), reactant(cytosol, 1, "C00027")]). % was (->)
reaction("271a", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00250")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00534")]). % was <->
reaction("271b", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00534")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00250")]). % was <->
reaction("272a", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00314")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00250")]). % was <->
reaction("272b", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00250")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00314")]). % was <->
reaction("273a", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00627")], [reactant(cytosol, 1, "C00018"), reactant(cytosol, 1, "C00027")]). % was <->
reaction("273b", retractable, "1.4.3.5", 3, [reactant(cytosol, 1, "C00018"), reactant(cytosol, 1, "C00027")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00627")]). % was <->
reaction("274", retractable, "2.7.1.35", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00250")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00018")]). % was (->)
reaction("275", retractable, "2.7.1.35", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00534")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00647")]). % was (->)
reaction("276", retractable, "2.7.1.35", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00314")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00627")]). % was (->)
reaction("277", retractable, "2.7.7.2", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00061")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00016")]). % was (->)
reaction("278", retractable, "2.7.7.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00016")]). % was (->)
reaction("279", retractable, "2.7.1.26", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00255")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00061")]). % was (->)
reaction("280", retractable, "2.7.1.26", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00255")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00061")]). % was (->)
reaction("281", retractable, "3.1.3.2", 3, [reactant(cytosol, 1, "C00061")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00255")]). % was (->)
reaction("282", retractable, "2.5.1.9", 3, [reactant(cytosol, 1, "A6RP"), reactant(cytosol, 1, "DB4P")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04332")]). % was (->)
reaction("283", retractable, none, 3, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "DB4P")]). % was (->)
reaction("284", retractable, none, 3, [reactant(cytosol, 1, "C04454")], [reactant(cytosol, 1, "A6RP"), reactant(cytosol, 1, "C00009")]). % was (->)
reaction("285", retractable, "1.1.1.193", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C01268")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C04454")]). % was (->)
reaction("286", retractable, "3.5.4.26", 3, [reactant(cytosol, 1, "C01304")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C01268")]). % was (->)
reaction("287", retractable, "3.5.4.25", 3, [reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C01304")]). % was (->)
reaction("288", retractable, "3.1.3.-", 3, [reactant(cytosol, 1, "C01081")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00378")]). % was (->)
reaction("289a", retractable, "2.7.4.16", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")]). % was <->
reaction("289b", retractable, "2.7.4.16", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01081")]). % was <->
reaction("290", retractable, "2.5.1.3", 3, [reactant(cytosol, 1, "C04327"), reactant(cytosol, 1, "C04752")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01081")]). % was (->)
reaction("291", retractable, "2.7.1.50", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C04294")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04327")]). % was (->)
reaction("292", retractable, none, 3, [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "DTP")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C04294"), reactant(cytosol, 1, "HBA")]). % was (->)
reaction("292", retractable, none, 3, [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "DTP")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C04294"), reactant(cytosol, 1, "HBA")]). % was (->)
reaction("292", retractable, none, 3, [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "DTP")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C04294"), reactant(cytosol, 1, "HBA")]). % was (->)
reaction("292", retractable, none, 3, [reactant(cytosol, 1, "C00082"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "DTP")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C04294"), reactant(cytosol, 1, "HBA")]). % was (->)
reaction("293", retractable, none, 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "DTP")]). % was (->)
reaction("294", retractable, "2.7.4.7", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C04556")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04752")]). % was (->)
reaction("295", retractable, "2.7.1.49", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01279")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04556")]). % was (->)
reaction("295", retractable, "2.7.1.49", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01279")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04556")]). % was (->)
reaction("295", retractable, "2.7.1.49", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01279")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04556")]). % was (->)
reaction("296", retractable, none, 3, [reactant(cytosol, 1, "C03373")], [reactant(cytosol, 1, "C01279")]). % was (->)
reaction("297", retractable, "2.7.6.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00068")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03028")]). % was (->)
reaction("298", retractable, "2.7.6.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00378")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00068")]). % was (->)
reaction("299", retractable, none, 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C00165")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00422")]). % was (->)
reaction("301", retractable, "2.7.1.30", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00116")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00093")]). % was (->)
reaction("302", retractable, "1.1.1.8", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00111")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00093")]). % was (->)
reaction("302", retractable, "1.1.1.8", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00111")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00093")]). % was (->)
reaction("303", retractable, "2.7.1.29", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00184")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00111")]). % was (->)
reaction("303", retractable, "2.7.1.29", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00184")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00111")]). % was (->)
reaction("304", retractable, "3.5.1.41", 3, [reactant(cytosol, 1, "C00461")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00734")]). % was (->)
reaction("304", retractable, "3.5.1.41", 3, [reactant(cytosol, 1, "C00461")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00734")]). % was (->)
reaction("305", retractable, "3.1.3.21", 3, [reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00116")]). % was (->)
reaction("305", retractable, "3.1.3.21", 3, [reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00116")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("306", retractable, "2.4.1.131", 3, [reactant(cytosol, 1, "C05860"), reactant(cytosol, 2, "C00096")], [reactant(cytosol, 1, "2MANPD"), reactant(cytosol, 2, "C00035")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("307", retractable, "2.4.1.109", 3, [reactant(cytosol, 1, "C04252")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00464")]). % was (->)
reaction("308", retractable, "2.4.1.83", 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "C00110")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C04252")]). % was (->)
reaction("309", retractable, "2.7.1.108", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00381")], [reactant(cytosol, 1, "C00110"), reactant(cytosol, 1, "C00112")]). % was (->)
reaction("310", retractable, "3.2.1.58", 3, [reactant(cytosol, 1, "C00965")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("310", retractable, "3.2.1.58", 3, [reactant(cytosol, 1, "C00965")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("310", retractable, "3.2.1.58", 3, [reactant(cytosol, 1, "C00965")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("310", retractable, "3.2.1.58", 3, [reactant(cytosol, 1, "C00965")], [reactant(cytosol, 1, "C00267")]). % was (->)
reaction("311", retractable, "2.4.1.34", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00965")]). % was (->)
reaction("311", retractable, "2.4.1.34", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00965")]). % was (->)
reaction("311", retractable, "2.4.1.34", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00965")]). % was (->)
reaction("312", retractable, "2.3.2.2", 3, [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00051")], [reactant(cytosol, 1, "C01419"), reactant(cytosol, 1, "C05729")]). % was (->)
reaction("313", retractable, "1.8.1.7", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00127")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00051")]). % was (->)
reaction("314a", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")], [reactant(cytosol, 1, "C00127")]). % was <->
reaction("314b", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00127")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")]). % was <->
reaction("314a", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")], [reactant(cytosol, 1, "C00127")]). % was <->
reaction("314b", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00127")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")]). % was <->
reaction("314a", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")], [reactant(cytosol, 1, "C00127")]). % was <->
reaction("314b", retractable, "1.11.1.9", 3, [reactant(cytosol, 1, "C00127")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 2, "C00051")]). % was <->
reaction("315", retractable, "6.3.2.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00669")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00051")]). % was (->)
reaction("316", retractable, "6.3.2.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00097")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00669")]). % was (->)
reaction("317", retractable, "2.3.1.88", 3, [reactant(cytosol, 1, "C00012"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03011")]). % was (->)
reaction("317", retractable, "2.3.1.88", 3, [reactant(cytosol, 1, "C00012"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03011")]). % was (->)
reaction("318", retractable, "2.3.1.97", 3, [reactant(cytosol, 1, "C02038"), reactant(cytosol, 1, "C02593")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C03881")]). % was (->)
reaction("319", retractable, "3.5.5.1", 3, [reactant(cytosol, 1, "C05715")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction("320", retractable, "3.5.5.1", 3, [reactant(cytosol, 1, "C05714")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00041")]). % was (->)
reaction("321a", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00424")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00186")]). % was <->
reaction("321b", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00186")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00424")]). % was <->
reaction("322", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00555")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00334")]). % was (->)
reaction("323", retractable, "1.5.3.-", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00148")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C03912")]). % was (->)
reaction("324", retractable, "1.5.1.2", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C04281")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01157")]). % was (->)
reaction("325", retractable, "1.5.1.2", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C04281")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01157")]). % was (->)
reaction("326", retractable, "1.5.1.2", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C03912")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00148")]). % was (->)
reaction("327a", retractable, none, 3, [reactant(mitochondrion, 1, "C01165")], [reactant(mitochondrion, 1, "C03912")]). % was <->
reaction("327b", retractable, none, 3, [reactant(mitochondrion, 1, "C03912")], [reactant(mitochondrion, 1, "C01165")]). % was <->
reaction("328a", retractable, none, 3, [reactant(cytosol, 1, "C01165")], [reactant(cytosol, 1, "C03912")]). % was <->
reaction("328b", retractable, none, 3, [reactant(cytosol, 1, "C03912")], [reactant(cytosol, 1, "C01165")]). % was <->
reaction("329", retractable, "1.2.1.41", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C03734")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01165")]). % was (->)
reaction("330", retractable, "1.2.1.41", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C03734")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01165")]). % was (->)
reaction("331", retractable, "2.7.2.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03734")]). % was (->)
reaction("332", retractable, "1.5.3.11", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C02567")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00612"), reactant(cytosol, 1, "C02229")]). % was (->)
reaction("333", retractable, "2.6.1.29", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00750")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02567")]). % was (->)
reaction("334", retractable, "1.5.3.11", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C02714")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00555"), reactant(cytosol, 1, "C02229")]). % was (->)
reaction("335", retractable, "1.5.3.11", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00612")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C02229"), reactant(cytosol, 1, "C02714")]). % was (->)
reaction("336", retractable, "2.6.1.29", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00315")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00612")]). % was (->)
reaction("337", retractable, "3.5.1.4", 3, [reactant(cytosol, 1, "C02693")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00954")]). % was (->)
reaction("338", retractable, "3.5.1.4", 3, [reactant(cytosol, 1, "C02505")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C07086")]). % was (->)
reaction("339", retractable, "6.1.1.2", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00066"), reactant(mitochondrion, 1, "C00078")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C03512")]). % was (->)
reaction("340", retractable, "3.7.1.2", 3, [reactant(cytosol, 1, "C01061")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C00164")]). % was (->)
reaction("341", retractable, "5.2.1.2", 3, [reactant(cytosol, 1, "MACAC")], [reactant(cytosol, 1, "C01061")]). % was (->)
reaction("342", retractable, "1.13.11.5", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00544")], [reactant(cytosol, 1, "MACAC")]). % was (->)
reaction("343", retractable, "1.3.11.27", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00544")]). % was (->)
reaction("344", retractable, "1.5.1.-", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02220")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00322")]). % was (->)
reaction("345", retractable, "1.2.1.32", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C03824")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C02220")]). % was (->)
reaction("346", retractable, "4.1.1.45", 3, [reactant(cytosol, 1, "C04409")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03824")]). % was (->)
reaction("347", retractable, "1.13.11.6", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00632")], [reactant(cytosol, 1, "C04409")]). % was (->)
reaction("348", retractable, "3.7.1.3", 3, [reactant(cytosol, 1, "C02794")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00632")]). % was (->)
reaction("349", retractable, "1.14.13.9", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00328")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C02794")]). % was (->)
reaction("350", retractable, "3.7.1.3", 3, [reactant(cytosol, 1, "C00328")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction("351", retractable, "3.5.1.9", 3, [reactant(cytosol, 1, "C02700")], [reactant(cytosol, 1, "C00058"), reactant(cytosol, 1, "C00328")]). % was (->)
reaction("352", retractable, "1.13.11.11", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00078")], [reactant(cytosol, 1, "C02700")]). % was (->)
reaction("353", retractable, "1.2.1.3", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction("354", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00084")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00033")]). % was (->)
reaction("354", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00084")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00033")]). % was (->)
reaction("355", retractable, "1.2.1.3", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00084")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00033")]). % was (->)
reaction("356", retractable, "1.2.1.5", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction("356", retractable, "1.2.1.5", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction("357a", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was <->
reaction("357b", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")]). % was <->
reaction("357a", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was <->
reaction("357b", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")]). % was <->
reaction("358", retractable, "1.11.1.6", 3, [reactant(cytosol, 2, "C00027")], [reactant(cytosol, 1, "C00007")]). % was (->)
reaction("358", retractable, "1.11.1.6", 3, [reactant(cytosol, 2, "C00027")], [reactant(cytosol, 1, "C00007")]). % was (->)
reaction("359", retractable, "4.2.1.20", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C03506")], [reactant(cytosol, 1, "C00078"), reactant(cytosol, 1, "C00118")]). % was (->)
reaction("360", retractable, "4.1.1.48", 3, [reactant(cytosol, 1, "CPAD5P")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03506")]). % was (->)
reaction("361", retractable, "5.3.1.24", 3, [reactant(cytosol, 1, "C04302")], [reactant(cytosol, 1, "CPAD5P")]). % was (->)
reaction("362", retractable, "2.4.2.18", 3, [reactant(cytosol, 1, "C00108"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C04302")]). % was (->)
reaction("363", retractable, "4.1.3.27", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction("363", retractable, "4.1.3.27", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00108")]). % was (->)
reaction("364", retractable, "1.3.1.12", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01179")]). % was (->)
reaction("365", retractable, "2.6.1.-", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was (->)
reaction("365", retractable, "2.6.1.-", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01179")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00082")]). % was (->)
reaction("366", retractable, "1.3.1.13", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01179")]). % was (->)
reaction("367a", retractable, "2.6.1.-", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00166")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00079")]). % was <->
reaction("367b", retractable, "2.6.1.-", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00079")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00166")]). % was <->
reaction("368", retractable, "4.2.1.51", 3, [reactant(cytosol, 1, "C00254")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00166")]). % was (->)
reaction("369", retractable, "5.4.99.5", 3, [reactant(cytosol, 1, "C00251")], [reactant(cytosol, 1, "C00254")]). % was (->)
reaction("370", retractable, "4.2.3.5", 3, [reactant(cytosol, 1, "C01269")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00251")]). % was (->)
reaction("371", retractable, "2.5.1.19", 3, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C03175")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01269")]). % was (->)
reaction("372", retractable, "2.7.1.71", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00493")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03175")]). % was (->)
reaction("373", retractable, "1.1.1.25", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02637")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00493")]). % was (->)
reaction("374", retractable, "4.2.1.10", 3, [reactant(cytosol, 1, "C00944")], [reactant(cytosol, 1, "C02637")]). % was (->)
reaction("375", retractable, "4.2.3.4", 3, [reactant(cytosol, 1, "C04691")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00944")]). % was (->)
reaction("376", retractable, "2.5.1.54", 3, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C00279")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04691")]). % was (->)
reaction("376", retractable, "2.5.1.54", 3, [reactant(cytosol, 1, "C00074"), reactant(cytosol, 1, "C00279")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04691")]). % was (->)
reaction("377", retractable, "2.1.1.-", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00135")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C01152")]). % was (->)
reaction("378", retractable, "6.1.1.21", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00135"), reactant(cytosol, 1, "C01643")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02988")]). % was (->)
reaction("379", retractable, "2.4.2.-", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "PRLP")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04666"), reactant(cytosol, 1, "C04677")]). % was (->)
reaction("380", retractable, "1.1.1.23", 3, [reactant(cytosol, 1, "C00860"), reactant(cytosol, 2, "C00003")], [reactant(cytosol, 1, "C00135"), reactant(cytosol, 2, "C00004")]). % was (->)
reaction("381", retractable, "3.1.3.15", 3, [reactant(cytosol, 1, "C01100")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00860")]). % was (->)
reaction("382", retractable, "2.6.1.9", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01267")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C01100")]). % was (->)
reaction("383", retractable, "4.2.1.19", 3, [reactant(cytosol, 1, "C04666")], [reactant(cytosol, 1, "C01267")]). % was (->)
reaction("384", retractable, "5.3.1.16", 3, [reactant(cytosol, 1, "C04896")], [reactant(cytosol, 1, "PRLP")]). % was (->)
reaction("385", retractable, "3.5.4.19", 3, [reactant(cytosol, 1, "C03883")], [reactant(cytosol, 1, "C04896")]). % was (->)
reaction("386", retractable, "3.6.1.31", 3, [reactant(cytosol, 1, "C02739")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C03883")]). % was (->)
reaction("387", retractable, "2.4.2.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C02739")]). % was (->)
reaction("389", retractable, "6.1.1.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00062"), reactant(cytosol, 1, "C01636")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02163")]). % was (->)
reaction("389", retractable, "6.1.1.19", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00062"), reactant(cytosol, 1, "C01636")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C02163")]). % was (->)
reaction("390", retractable, "3.5.3.1", 3, [reactant(cytosol, 1, "C00062")], [reactant(cytosol, 1, "C00077"), reactant(cytosol, 1, "C00086")]). % was (->)
reaction("391", retractable, "3.5.1.4", 3, [reactant(cytosol, 1, "C03078")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C01035")]). % was (->)
reaction("391", retractable, "3.5.1.4", 3, [reactant(cytosol, 1, "C03078")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C01035")]). % was (->)
reaction("392", retractable, "2.5.1.22", 3, [reactant(cytosol, 1, "C00315"), reactant(cytosol, 1, "C01137")], [reactant(cytosol, 1, "C00170"), reactant(cytosol, 1, "C00750")]). % was (->)
reaction("393", retractable, "2.5.1.16", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00134")], [reactant(cytosol, 1, "C00170"), reactant(cytosol, 1, "C00315")]). % was (->)
reaction("394a", retractable, "4.1.1.50", 3, [reactant(cytosol, 1, "C00019")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01137")]). % was <->
reaction("394b", retractable, "4.1.1.50", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C01137")], [reactant(cytosol, 1, "C00019")]). % was <->
reaction("395", retractable, "4.1.1.17", 3, [reactant(cytosol, 1, "C00077")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00134")]). % was (->)
reaction("396a", retractable, "4.3.2.1", 3, [reactant(cytosol, 1, "C03406")], [reactant(cytosol, 1, "C00062"), reactant(cytosol, 1, "C00122")]). % was <->
reaction("396b", retractable, "4.3.2.1", 3, [reactant(cytosol, 1, "C00062"), reactant(cytosol, 1, "C00122")], [reactant(cytosol, 1, "C03406")]). % was <->
reaction("397a", retractable, "6.3.4.5", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00327")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03406")]). % was <->
reaction("397b", retractable, "6.3.4.5", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03406")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00327")]). % was <->
reaction("398", retractable, "2.6.1.13", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00077")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C01165")]). % was (->)
reaction("399", retractable, "2.1.3.3", 3, [reactant(cytosol, 1, "C00077"), reactant(cytosol, 1, "C00169")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00327")]). % was (->)
reaction("400", retractable, "6.3.5.5", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 2, "C00002")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00169"), reactant(cytosol, 2, "C00008")]). % was (->)
reaction("400", retractable, "6.3.5.5", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 2, "C00002")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00169"), reactant(cytosol, 2, "C00008")]). % was (->)
reaction("401", retractable, "2.3.1.35", 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00437")], [reactant(mitochondrion, 1, "C00077"), reactant(mitochondrion, 1, "C00624")]). % was (->)
reaction("402", retractable, "2.6.1.11", 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C01250")], [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00437")]). % was (->)
reaction("403", retractable, "1.2.1.38", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C04133")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C01250")]). % was (->)
reaction("404", retractable, "2.7.2.8", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00624")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C04133")]). % was (->)
reaction("405", retractable, "2.3.1.1", 3, [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "C00025")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00624")]). % was (->)
reaction("406", retractable, "6.1.1.6", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00047"), reactant(mitochondrion, 1, "C01646")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C01931")]). % was (->)
reaction("407", retractable, "6.1.1.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00047"), reactant(cytosol, 1, "C01646")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C01931")]). % was (->)
reaction("408a", retractable, "1.5.1.7", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00449")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00047")]). % was <->
reaction("408b", retractable, "1.5.1.7", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00047")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00449")]). % was <->
reaction("409a", retractable, "1.5.1.10", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04076")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00449")]). % was <->
reaction("409b", retractable, "1.5.1.10", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00449")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04076")]). % was <->
reaction("410", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04076")]). % was (->)
reaction("411", retractable, "1.2.1.31", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C04076")]). % was (->)
reaction("412a", retractable, "2.6.1.39", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00322")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00956")]). % was <->
reaction("412b", retractable, "2.6.1.39", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00956")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00322")]). % was <->
reaction("413a", retractable, none, 3, [reactant(mitochondrion, 1, "C05533")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00322")]). % was <->
reaction("413b", retractable, none, 3, [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00322")], [reactant(mitochondrion, 1, "C05533")]). % was <->
reaction("414a", retractable, "1.1.1.155", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C05662")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C05533")]). % was <->
reaction("414b", retractable, "1.1.1.155", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C05533")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C05662")]). % was <->
reaction("415a", retractable, "4.2.1.36", 3, [reactant(mitochondrion, 1, "C05662")], [reactant(mitochondrion, 1, "C04002")]). % was <->
reaction("415b", retractable, "4.2.1.36", 3, [reactant(mitochondrion, 1, "C04002")], [reactant(mitochondrion, 1, "C05662")]). % was <->
reaction("416a", retractable, "4.2.1.79", 3, [reactant(mitochondrion, 1, "C01251")], [reactant(mitochondrion, 1, "C04002")]). % was <->
reaction("416b", retractable, "4.2.1.79", 3, [reactant(mitochondrion, 1, "C04002")], [reactant(mitochondrion, 1, "C01251")]). % was <->
reaction("417", retractable, "1.1.1.85", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C02504")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C04236")]). % was (->)
reaction("418a", retractable, "4.2.1.33", 3, [reactant(cytosol, 1, "C02631")], [reactant(cytosol, 1, "C02504")]). % was <->
reaction("418b", retractable, "4.2.1.33", 3, [reactant(cytosol, 1, "C02504")], [reactant(cytosol, 1, "C02631")]). % was <->
reaction("419a", retractable, "4.2.1.33", 3, [reactant(cytosol, 1, "C04411")], [reactant(cytosol, 1, "C02504")]). % was <->
reaction("419b", retractable, "4.2.1.33", 3, [reactant(cytosol, 1, "C02504")], [reactant(cytosol, 1, "C04411")]). % was <->
reaction("420", retractable, "2.3.3.13", 3, [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "OIVAL")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C02504")]). % was (->)
reaction("421", retractable, "4.2.1.9", 3, [reactant(mitochondrion, 1, "C04272")], [reactant(mitochondrion, 1, "C00141")]). % was (->)
reaction("422", retractable, "4.2.1.9", 3, [reactant(mitochondrion, 1, "C06237")], [reactant(mitochondrion, 1, "OIVAL")]). % was (->)
reaction("423", retractable, "1.1.1.86", 3, [reactant(mitochondrion, 1, "ABUT"), reactant(mitochondrion, 1, "C00005")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C04272")]). % was (->)
reaction("424", retractable, "1.1.1.86", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00900")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C06237")]). % was (->)
reaction("425", retractable, "2.2.1.6", 3, [reactant(mitochondrion, 2, "C00022")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00900")]). % was (->)
reaction("426", retractable, "2.2.1.6", 3, [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 1, "C00109")], [reactant(mitochondrion, 1, "ABUT"), reactant(mitochondrion, 1, "C00011")]). % was (->)
reaction("427a", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04236")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00123")]). % was <->
reaction("427b", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00123")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04236")]). % was <->
reaction("428a", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "OIVAL")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00183")]). % was <->
reaction("428b", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00183")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "OIVAL")]). % was <->
reaction("429a", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00141")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00407")]). % was <->
reaction("429b", retractable, "2.6.1.42", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00407")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00141")]). % was <->
reaction("430a", retractable, "2.6.1.42", 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00141")], [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00407")]). % was <->
reaction("430b", retractable, "2.6.1.42", 3, [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00407")], [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00141")]). % was <->
reaction("431a", retractable, "2.6.1.42", 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C04236")], [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00123")]). % was <->
reaction("431b", retractable, "2.6.1.42", 3, [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00123")], [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C04236")]). % was <->
reaction("432a", retractable, "2.7.7.5", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00059")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00224")]). % was <->
reaction("432b", retractable, "2.7.7.5", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00224")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00059")]). % was <->
reaction("433", retractable, "1.8.4.8", 3, [reactant(cytosol, 1, "C00053"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00054"), reactant(cytosol, 1, "C00094"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction("434", retractable, "3.1.3.7", 3, [reactant(cytosol, 1, "C00054")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction("435", retractable, "2.5.1.47", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C00979")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00097")]). % was (->)
reaction("436", retractable, "2.3.1.30", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00979")]). % was (->)
reaction("437a", retractable, "1.8.1.2", 3, [reactant(cytosol, 1, "C00094"), reactant(cytosol, 3, "C00005")], [reactant(cytosol, 1, "C00283"), reactant(cytosol, 3, "C00006")]). % was <->
reaction("437b", retractable, "1.8.1.2", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 3, "C00006")], [reactant(cytosol, 1, "C00094"), reactant(cytosol, 3, "C00005")]). % was <->
reaction("437a", retractable, "1.8.7.1", 3, [reactant(cytosol, 1, "C00094"), reactant(cytosol, 3, "C00005")], [reactant(cytosol, 1, "C00283"), reactant(cytosol, 3, "C00006")]). % was <->
reaction("437b", retractable, "1.8.7.1", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 3, "C00006")], [reactant(cytosol, 1, "C00094"), reactant(cytosol, 3, "C00005")]). % was <->
reaction("438", retractable, "2.7.1.25", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00224")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00053")]). % was (->)
reaction("439", retractable, "2.7.7.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00059")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00224")]). % was (->)
reaction("440", retractable, "2.1.1.98", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C04441")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04692")]). % was (->)
reaction("441", retractable, "2.5.1.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00019")]). % was (->)
reaction("441", retractable, "2.5.1.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00073")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00019")]). % was (->)
reaction("442a", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C01118")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")]). % was <->
reaction("442b", retractable, "2.5.1.48", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00109")], [reactant(cytosol, 1, "C01118")]). % was <->
reaction("443", retractable, "2.5.1.49", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C01077")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05330")]). % was (->)
reaction("443", retractable, "2.5.1.47", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C01077")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05330")]). % was (->)
reaction("443", retractable, "2.5.1.47", 3, [reactant(cytosol, 1, "C00283"), reactant(cytosol, 1, "C01077")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C05330")]). % was (->)
reaction("444", retractable, "2.5.1.49", 3, [reactant(cytosol, 1, "C00409"), reactant(cytosol, 1, "C01077")], [reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00073")]). % was (->)
reaction("445a", retractable, "2.3.1.31", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00263")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01077")]). % was <->
reaction("445b", retractable, "2.3.1.31", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01077")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00263")]). % was <->
reaction("446", retractable, "4.4.1.1", 3, [reactant(cytosol, 1, "C02291")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00097"), reactant(cytosol, 1, "C00109")]). % was (->)
reaction("447", retractable, "2.1.1.13", 3, [reactant(cytosol, 1, "C00440"), reactant(cytosol, 1, "C05330")], [reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C00101")]). % was (->)
reaction("448", retractable, "2.1.1.14", 3, [reactant(cytosol, 1, "C04489"), reactant(cytosol, 1, "C05330")], [reactant(cytosol, 1, "C00073"), reactant(cytosol, 1, "C04144")]). % was (->)
reaction("449", retractable, "3.3.1.1", 3, [reactant(cytosol, 1, "C00021")], [reactant(cytosol, 1, "C00212"), reactant(cytosol, 1, "C05330")]). % was (->)
reaction("450", retractable, "4.4.1.8", 3, [reactant(cytosol, 1, "C02291")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C05330")]). % was (->)
reaction("451", retractable, "1.1.1.103", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00188")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00033"), reactant(cytosol, 1, "C00037")]). % was (->)
reaction("452", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")]). % was (->)
reaction("452", retractable, "4.3.1.17", 3, [reactant(cytosol, 1, "C00065")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00022")]). % was (->)
reaction("453", retractable, "4.3.1.19", 3, [reactant(mitochondrion, 1, "C00188")], [reactant(mitochondrion, 1, "C00014"), reactant(mitochondrion, 1, "C00109")]). % was (->)
reaction("454", retractable, "4.3.1.19", 3, [reactant(cytosol, 1, "C00188")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00109")]). % was (->)
reaction("455a", retractable, "1.4.4.2", 3, [reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00248")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C01242")]). % was <->
reaction("455b", retractable, "1.4.4.2", 3, [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C01242")], [reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00248")]). % was <->
reaction("456", retractable, "4.1.2.5", 3, [reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00188")]). % was (->)
reaction("457", retractable, "4.2.1.22", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C05330")], [reactant(cytosol, 1, "C02291")]). % was (->)
reaction("458", retractable, "4.2.3.1", 3, [reactant(cytosol, 1, "C01102")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00188")]). % was (->)
reaction("459", retractable, "2.7.1.39", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00263")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01102")]). % was (->)
reaction("460", retractable, "1.1.1.3", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00441")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00263")]). % was (->)
reaction("461", retractable, "1.1.1.3", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00441")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00263")]). % was (->)
reaction("462", retractable, "1.2.1.11", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C03082")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00441")]). % was (->)
reaction("463", retractable, "2.7.2.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03082")]). % was (->)
reaction("464", retractable, "2.1.2.10", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00143")]). % was (->)
reaction("466a", retractable, "2.6.1.44", 3, [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00048")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00037")]). % was <->
reaction("466b", retractable, "2.6.1.44", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00037")], [reactant(cytosol, 1, "C00041"), reactant(cytosol, 1, "C00048")]). % was <->
reaction("467a", retractable, "2.1.2.1", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00101")], [reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00143")]). % was <->
reaction("467b", retractable, "2.1.2.1", 3, [reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C00143")], [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00101")]). % was <->
reaction("468a", retractable, "2.1.2.1", 3, [reactant(mitochondrion, 1, "C00065"), reactant(mitochondrion, 1, "C00101")], [reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00143")]). % was <->
reaction("468b", retractable, "2.1.2.1", 3, [reactant(mitochondrion, 1, "C00037"), reactant(mitochondrion, 1, "C00143")], [reactant(mitochondrion, 1, "C00065"), reactant(mitochondrion, 1, "C00101")]). % was <->
reaction("469", retractable, "3.1.3.3", 3, [reactant(cytosol, 1, "C01005")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00065")]). % was (->)
reaction("470", retractable, "2.6.1.52", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C03232")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C01005")]). % was (->)
reaction("471", retractable, "1.1.1.95", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C03232")]). % was (->)
reaction("471", retractable, "1.1.1.95", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C03232")]). % was (->)
reaction("472", retractable, "3.5.1.1", 3, [reactant(cytosol, 1, "C00152")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00049")]). % was (->)
reaction("472", retractable, "3.5.1.1", 3, [reactant(cytosol, 1, "C00152")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00049")]). % was (->)
reaction("472", retractable, "3.5.1.1", 3, [reactant(cytosol, 1, "C00152")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00049")]). % was (->)
reaction("472", retractable, "3.5.1.1", 3, [reactant(cytosol, 1, "C00152")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00049")]). % was (->)
reaction("472", retractable, "3.5.1.1", 3, [reactant(cytosol, 1, "C00152")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00049")]). % was (->)
reaction("473", retractable, "6.1.1.23", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00066")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C03402")]). % was (->)
reaction("474", retractable, "6.1.1.22", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00049"), reactant(mitochondrion, 1, "C00066")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C03402")]). % was (->)
reaction("475", retractable, "2.1.1.10", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05330")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C00073")]). % was (->)
reaction("475", retractable, "2.1.1.10", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05330")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C00073")]). % was (->)
reaction("476", retractable, "6.3.5.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00152")]). % was (->)
reaction("476", retractable, "6.3.5.4", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00152")]). % was (->)
reaction("477a", retractable, "2.6.1.2", 3, [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 1, "C00025")], [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00041")]). % was <->
reaction("477b", retractable, "2.6.1.2", 3, [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00041")], [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 1, "C00025")]). % was <->
reaction("478a", retractable, "2.6.1.2", 3, [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00041")]). % was <->
reaction("478b", retractable, "2.6.1.2", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00041")], [reactant(cytosol, 1, "C00022"), reactant(cytosol, 1, "C00025")]). % was <->
reaction("479", retractable, "2.3.1.7", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00487")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C02571")]). % was (->)
reaction("480", retractable, "2.3.1.7", 3, [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C02571")], [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "C00487")]). % was (->)
reaction("481a", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00049")]). % was <->
reaction("481b", retractable, "2.6.1.1", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00049")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00036")]). % was <->
reaction("482a", retractable, "2.6.1.1", 3, [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00036")], [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00049")]). % was <->
reaction("482b", retractable, "2.6.1.1", 3, [reactant(mitochondrion, 1, "C00026"), reactant(mitochondrion, 1, "C00049")], [reactant(mitochondrion, 1, "C00025"), reactant(mitochondrion, 1, "C00036")]). % was <->
reaction("483a", retractable, "1.1.1.17", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00644")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05345")]). % was <->
reaction("483b", retractable, "1.1.1.17", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00644")]). % was <->
reaction("484", retractable, "2.7.1.17", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00310")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C06814")]). % was (->)
reaction("485", retractable, "1.1.1.117", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00216")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00652")]). % was (->)
reaction("486", retractable, "1.1.1.117", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00216")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00652")]). % was (->)
reaction("487", retractable, "3.5.99.6", 3, [reactant(cytosol, 1, "C00352")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction("488", retractable, "3.5.1.2", 3, [reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction("488", retractable, "3.5.1.2", 3, [reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction("489a", retractable, "5.4.2.3", 3, [reactant(cytosol, 1, "C00352")], [reactant(cytosol, 1, "C06156")]). % was <->
reaction("489b", retractable, "5.4.2.3", 3, [reactant(cytosol, 1, "C06156")], [reactant(cytosol, 1, "C00352")]). % was <->
reaction("490", retractable, "6.3.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00064")]). % was (->)
reaction("491", retractable, "1.4.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction("491", retractable, "1.4.1.4", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00025")]). % was (->)
reaction("492", retractable, "1.4.1.4", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00026")]). % was (->)
reaction("493", retractable, "1.4.1.14", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00064")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 2, "C00025")]). % was (->)
reaction("494", retractable, none, 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C03912")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00025")]). % was (->)
reaction("495", retractable, "1.5.1.12", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C01165")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00025")]). % was (->)
reaction("496", retractable, "2.4.1.16", 3, [reactant(cytosol, 1, "C00043")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00461")]). % was (->)
reaction("496", retractable, "2.4.1.16", 3, [reactant(cytosol, 1, "C00043")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00461")]). % was (->)
reaction("496", retractable, "2.4.1.16", 3, [reactant(cytosol, 1, "C00043")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00461")]). % was (->)
reaction("497a", retractable, "2.7.7.23", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C04256")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00043")]). % was <->
reaction("497b", retractable, "2.7.7.23", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00043")], [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C04256")]). % was <->
reaction("498a", retractable, "5.4.2.3", 3, [reactant(cytosol, 1, "C04256")], [reactant(cytosol, 1, "C00357")]). % was <->
reaction("498b", retractable, "5.4.2.3", 3, [reactant(cytosol, 1, "C00357")], [reactant(cytosol, 1, "C04256")]). % was <->
reaction("499a", retractable, "2.3.1.4", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00352")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00357")]). % was <->
reaction("499b", retractable, "2.3.1.4", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00357")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00352")]). % was <->
reaction("500", retractable, "2.6.1.16", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00352")]). % was (->)
reaction("501", retractable, "1.2.1.16", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00232")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00042")]). % was (->)
reaction("502", retractable, "2.6.1.19", 3, [reactant(cytosol, 1, "C00026"), reactant(cytosol, 1, "C00334")], [reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00232")]). % was (->)
reaction("503", retractable, "4.1.1.15", 3, [reactant(cytosol, 1, "C00025")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00334")]). % was (->)
reaction("504", retractable, "3.2.2.4", 3, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction("504", retractable, "3.2.2.4", 3, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction("504", retractable, "3.2.2.4", 3, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction("505", retractable, "3.6.1.-", 3, [reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00330"), reactant(cytosol, 3, "C00009")]). % was (->)
reaction("506", retractable, "3.6.1.-", 3, [reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00387"), reactant(cytosol, 3, "C00009")]). % was (->)
reaction("507", retractable, "1.17.4.2", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00460")]). % was (->)
reaction("508", retractable, "1.17.4.2", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00458")]). % was (->)
reaction("509", retractable, "1.17.4.2", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00286"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction("510", retractable, "1.17.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00131"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction("511", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C01346")]). % was (->)
reaction("512", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00705")]). % was (->)
reaction("513", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00343"), reactant(cytosol, 1, "C00361")]). % was (->)
reaction("514", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction("514", retractable, "1.17.4.1", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00342")], [reactant(cytosol, 1, "C00206"), reactant(cytosol, 1, "C00343")]). % was (->)
reaction("515", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00105")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00299")]). % was (->)
reaction("516", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00655")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01762")]). % was (->)
reaction("517", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00294")]). % was (->)
reaction("518", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")]). % was (->)
reaction("519", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")]). % was (->)
reaction("520", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00055")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00475")]). % was (->)
reaction("521", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00239")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00881")]). % was (->)
reaction("522", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00362")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00330")]). % was (->)
reaction("523", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00360")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00559")]). % was (->)
reaction("524", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00364")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00214")]). % was (->)
reaction("525", retractable, "3.1.3.5", 3, [reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")]). % was (->)
reaction("526", retractable, "3.5.4.13", 3, [reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00460")]). % was (->)
reaction("527", retractable, "3.2.2.10", 3, [reactant(cytosol, 1, "C00055")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C00380")]). % was (->)
reaction("528a", retractable, "2.1.4.-", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01346")]). % was <->
reaction("528b", retractable, "2.1.4.-", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01346")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00365")]). % was <->
reaction("529a", retractable, "2.1.4.-", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00105")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00015")]). % was <->
reaction("529b", retractable, "2.1.4.-", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00105")]). % was <->
reaction("529a", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00105")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00015")]). % was <->
reaction("529b", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00105")]). % was <->
reaction("530a", retractable, "2.4.2.3", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00299")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00620")]). % was <->
reaction("530b", retractable, "2.4.2.3", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00299")]). % was <->
reaction("531", retractable, "2.4.2.8", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00242")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00144")]). % was (->)
reaction("532", retractable, "2.4.2.8", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00262")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00130")]). % was (->)
reaction("533", retractable, "2.7.1.73", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00144")]). % was (->)
reaction("534", retractable, "2.7.1.73", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00294")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00130")]). % was (->)
reaction("535", retractable, "3.5.4.2", 3, [reactant(cytosol, 1, "C00147")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00262")]). % was (->)
reaction("536a", retractable, "2.7.4.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00360")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00206")]). % was <->
reaction("536b", retractable, "2.7.4.11", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00206")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00360")]). % was <->
reaction("537a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00104")], [reactant(cytosol, 1, "C00081"), reactant(cytosol, 1, "C00104")]). % was <->
reaction("537b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00081"), reactant(cytosol, 1, "C00104")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00104")]). % was <->
reaction("538a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00044")]). % was <->
reaction("538b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00035")]). % was <->
reaction("539a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00206")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00131")]). % was <->
reaction("539b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00131")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00206")]). % was <->
reaction("540a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00363")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00459")]). % was <->
reaction("540b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00459")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00363")]). % was <->
reaction("541a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00705")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00458")]). % was <->
reaction("541b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00458")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00705")]). % was <->
reaction("542a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01346")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00460")]). % was <->
reaction("542b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00460")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01346")]). % was <->
reaction("543a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00286")]). % was <->
reaction("543b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00286")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00361")]). % was <->
reaction("544a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00112")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00063")]). % was <->
reaction("544b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00063")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00112")]). % was <->
reaction("545a", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00015")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00075")]). % was <->
reaction("545b", retractable, "2.7.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00015")]). % was <->
reaction("546a", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C00081")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00104")]). % was <->
reaction("546b", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00104")], [reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C00081")]). % was <->
reaction("547a", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C00044")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00035")]). % was <->
reaction("547b", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00035")], [reactant(mitochondrion, 1, "C00020"), reactant(mitochondrion, 1, "C00044")]). % was <->
reaction("548a", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00020")], [reactant(mitochondrion, 2, "C00008")]). % was <->
reaction("548b", retractable, "2.7.4.3", 3, [reactant(mitochondrion, 2, "C00008")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00020")]). % was <->
reaction("549a", retractable, "2.7.4.3", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00081")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00104")]). % was <->
reaction("549b", retractable, "2.7.4.3", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00104")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00081")]). % was <->
reaction("550a", retractable, "2.7.4.3", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")]). % was <->
reaction("550b", retractable, "2.7.4.3", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00044")]). % was <->
reaction("551a", retractable, "2.7.4.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00020")], [reactant(cytosol, 2, "C00008")]). % was <->
reaction("551b", retractable, "2.7.4.3", 3, [reactant(cytosol, 2, "C00008")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00020")]). % was <->
reaction("552", retractable, "2.7.1.20", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00212")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction("553", retractable, "3.2.2.1", 3, [reactant(cytosol, 1, "C00212")], [reactant(cytosol, 1, "C00121"), reactant(cytosol, 1, "C00147")]). % was (->)
reaction("554", retractable, "3.2.2.1", 3, [reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00121"), reactant(cytosol, 1, "C00242")]). % was (->)
reaction("555", retractable, "2.4.2.22", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00385")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("556a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00385"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01762")]). % was <->
reaction("556b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01762")], [reactant(cytosol, 1, "C00385"), reactant(cytosol, 1, "C00620")]). % was <->
reaction("557a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")]). % was <->
reaction("557b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00387")], [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C00620")]). % was <->
reaction("558a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")]). % was <->
reaction("558b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00212")], [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C00620")]). % was <->
reaction("559a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00262"), reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00294")]). % was <->
reaction("559b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00294")], [reactant(cytosol, 1, "C00262"), reactant(cytosol, 1, "C00620")]). % was <->
reaction("560a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00330")], [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C03496")]). % was <->
reaction("560b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00242"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00330")]). % was <->
reaction("561a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00559")], [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C03496")]). % was <->
reaction("561b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00147"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00559")]). % was <->
reaction("562a", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05512")], [reactant(cytosol, 1, "C00262"), reactant(cytosol, 1, "C03496")]). % was <->
reaction("562b", retractable, "2.4.2.1", 3, [reactant(cytosol, 1, "C00262"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05512")]). % was <->
reaction("563", retractable, "3.5.4.4", 3, [reactant(cytosol, 1, "C00559")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C05512")]). % was (->)
reaction("564", retractable, "3.5.4.4", 3, [reactant(cytosol, 1, "C00212")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00294")]). % was (->)
reaction("565", retractable, "2.4.2.7", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00147")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction("565", retractable, "2.4.2.7", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00147")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020")]). % was (->)
reaction("566a", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C01168")]). % was <->
reaction("566b", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C01168")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("566a", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C01168")]). % was <->
reaction("566b", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C01168")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("566a", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C01168")]). % was <->
reaction("566b", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C01168")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("566a", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C01168")]). % was <->
reaction("566b", retractable, "4.2.1.70", 3, [reactant(cytosol, 1, "C01168")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("567", retractable, "6.3.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00063")]). % was (->)
reaction("567", retractable, "6.3.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00063")]). % was (->)
reaction("568", retractable, "6.3.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00063")]). % was (->)
reaction("568", retractable, "6.3.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00075")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00063")]). % was (->)
reaction("569a", retractable, "3.5.4.12", 3, [reactant(cytosol, 1, "C00239")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00365")]). % was <->
reaction("569b", retractable, "3.5.4.12", 3, [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00239")]). % was <->
reaction("570a", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00055")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00112")]). % was <->
reaction("570b", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00112")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00055")]). % was <->
reaction("571a", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00239")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00705")]). % was <->
reaction("571b", retractable, "2.7.4.14", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00705")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00239")]). % was <->
reaction("572", retractable, "2.1.1.45", 3, [reactant(cytosol, 1, "C00143"), reactant(cytosol, 1, "C00365")], [reactant(cytosol, 1, "C00364"), reactant(cytosol, 1, "C00415")]). % was (->)
reaction("573", retractable, "3.6.1.23", 3, [reactant(cytosol, 1, "C00460")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00365")]). % was (->)
reaction("574", retractable, "1.8.1.9", 3, [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00343")], [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00342")]). % was (->)
reaction("575", retractable, "1.8.1.9", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00343")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00342")]). % was (->)
reaction("576a", retractable, "2.7.4.9", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00364")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00363")]). % was <->
reaction("576b", retractable, "2.7.4.9", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00363")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00364")]). % was <->
reaction("577", retractable, "3.5.4.5", 3, [reactant(cytosol, 1, "C00881")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00526")]). % was (->)
reaction("578", retractable, "3.5.4.5", 3, [reactant(cytosol, 1, "C00475")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00299")]). % was (->)
reaction("579a", retractable, "2.4.2.4", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00214")], [reactant(cytosol, 1, "C00178"), reactant(cytosol, 1, "C03496")]). % was <->
reaction("579b", retractable, "2.4.2.4", 3, [reactant(cytosol, 1, "C00178"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00214")]). % was <->
reaction("580a", retractable, "2.4.2.4", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")], [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C03496")]). % was <->
reaction("580b", retractable, "2.4.2.4", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C03496")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00526")]). % was <->
reaction("581", retractable, "2.7.1.48", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00299")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction("582", retractable, "2.7.1.48", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00475")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00055")]). % was (->)
reaction("583", retractable, "2.7.1.48", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00299")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction("584", retractable, "2.7.1.21", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00214")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00364")]). % was (->)
reaction("585", retractable, "2.7.1.21", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00526")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00365")]). % was (->)
reaction("586", retractable, "3.5.4.1", 3, [reactant(cytosol, 1, "C00380")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00106")]). % was (->)
reaction("587", retractable, "2.4.2.9", 3, [reactant(cytosol, 1, "C00106"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction("588", retractable, "4.1.1.23", 3, [reactant(cytosol, 1, "C01103")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00105")]). % was (->)
reaction("589a", retractable, "2.4.2.10", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00295")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01103")]). % was <->
reaction("589b", retractable, "2.4.2.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01103")], [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00295")]). % was <->
reaction("589a", retractable, "2.4.2.10", 3, [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00295")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01103")]). % was <->
reaction("589b", retractable, "2.4.2.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C01103")], [reactant(cytosol, 1, "C00119"), reactant(cytosol, 1, "C00295")]). % was <->
reaction("591a", retractable, "1.3.3.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00337")], [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00295")]). % was <->
reaction("591b", retractable, "1.3.3.1", 3, [reactant(cytosol, 1, "C00027"), reactant(cytosol, 1, "C00295")], [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00337")]). % was <->
reaction("592a", retractable, "3.5.2.3", 3, [reactant(cytosol, 1, "C00438")], [reactant(cytosol, 1, "C00337")]). % was <->
reaction("592b", retractable, "3.5.2.3", 3, [reactant(cytosol, 1, "C00337")], [reactant(cytosol, 1, "C00438")]). % was <->
reaction("593", retractable, "2.1.3.2", 3, [reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00169")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00438")]). % was (->)
reaction("594", retractable, "2.7.7.53", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01261")]). % was (->)
reaction("595", retractable, "2.7.7.53", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00044")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01260")]). % was (->)
reaction("596", retractable, "2.7.7.53", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00008")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01260")]). % was (->)
reaction("597", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00941")], [reactant(cytosol, 1, "C00055")]). % was (->)
reaction("598", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00942")], [reactant(cytosol, 1, "C00144")]). % was (->)
reaction("599", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00943")], [reactant(cytosol, 1, "C00130")]). % was (->)
reaction("600", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00968")], [reactant(cytosol, 1, "C00360")]). % was (->)
reaction("601", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00575")], [reactant(cytosol, 1, "C00020")]). % was (->)
reaction("601", retractable, "3.1.4.17", 3, [reactant(cytosol, 1, "C00575")], [reactant(cytosol, 1, "C00020")]). % was (->)
reaction("602", retractable, "3.5.4.6", 3, [reactant(cytosol, 1, "C00020")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00130")]). % was (->)
reaction("603", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00655")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00144")]). % was (->)
reaction("603", retractable, "6.3.5.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00655")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C00144")]). % was (->)
reaction("604", retractable, "1.1.1.205", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("604", retractable, "1.1.1.205", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("604", retractable, "1.1.1.205", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("604", retractable, "1.1.1.205", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("604", retractable, "1.1.1.205", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00655")]). % was (->)
reaction("605a", retractable, "4.3.2.2", 3, [reactant(cytosol, 1, "C03794")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00122")]). % was <->
reaction("605b", retractable, "4.3.2.2", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00122")], [reactant(cytosol, 1, "C03794")]). % was <->
reaction("606", retractable, "6.3.4.4", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C03794")]). % was (->)
reaction("607a", retractable, "3.5.4.10", 3, [reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00130")]). % was <->
reaction("607b", retractable, "3.5.4.10", 3, [reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C04734")]). % was <->
reaction("607a", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00130")]). % was <->
reaction("607b", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C00130")], [reactant(cytosol, 1, "C04734")]). % was <->
reaction("608a", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")]). % was <->
reaction("608b", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")]). % was <->
reaction("608a", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")]). % was <->
reaction("608b", retractable, "2.1.2.3", 3, [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04734")], [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C04677")]). % was <->
reaction("609a", retractable, "4.3.2.2", 3, [reactant(cytosol, 1, "C04823")], [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C04677")]). % was <->
reaction("609b", retractable, "4.3.2.2", 3, [reactant(cytosol, 1, "C00122"), reactant(cytosol, 1, "C04677")], [reactant(cytosol, 1, "C04823")]). % was <->
reaction("610a", retractable, "6.3.2.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C04751")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04823")]). % was <->
reaction("610b", retractable, "6.3.2.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C04823")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00049"), reactant(cytosol, 1, "C04751")]). % was <->
reaction("611a", retractable, "4.1.1.21", 3, [reactant(cytosol, 1, "C04751")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03373")]). % was <->
reaction("611b", retractable, "4.1.1.21", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C03373")], [reactant(cytosol, 1, "C04751")]). % was <->
reaction("612", retractable, "6.3.3.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C04640")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03373")]). % was (->)
reaction("613", retractable, "6.3.5.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C04376")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C04640")]). % was (->)
reaction("614", retractable, "2.1.2.2", 3, [reactant(cytosol, 1, "C00234"), reactant(cytosol, 1, "C03838")], [reactant(cytosol, 1, "C00101"), reactant(cytosol, 1, "C04376")]). % was (->)
reaction("615a", retractable, "6.3.4.13", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C03090")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03838")]). % was <->
reaction("615b", retractable, "6.3.4.13", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C03838")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00037"), reactant(cytosol, 1, "C03090")]). % was <->
reaction("616", retractable, "2.4.2.14", 3, [reactant(cytosol, 1, "C00064"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00025"), reactant(cytosol, 1, "C03090")]). % was (->)
reaction("617a", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00131"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00206")]). % was <->
reaction("617b", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C00206")], [reactant(cytosol, 1, "C00131"), reactant(cytosol, 1, "C00144")]). % was <->
reaction("618a", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")]). % was <->
reaction("618b", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00361")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00362")]). % was <->
reaction("619a", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00144")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")]). % was <->
reaction("619b", retractable, "2.7.4.8", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00035")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00144")]). % was <->
reaction("620", retractable, "4.6.1.1", 3, [reactant(cytosol, 1, "C00002")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00575")]). % was (->)
reaction("621a", retractable, "3.5.3.19", 3, [reactant(cytosol, 1, "C00603")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00048"), reactant(cytosol, 2, "C00014")]). % was <->
reaction("621b", retractable, "3.5.3.19", 3, [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00048"), reactant(cytosol, 2, "C00014")], [reactant(cytosol, 1, "C00603")]). % was <->
reaction("622a", retractable, "3.5.3.4", 3, [reactant(cytosol, 1, "C00499")], [reactant(cytosol, 1, "C00086"), reactant(cytosol, 1, "C00603")]). % was <->
reaction("622b", retractable, "3.5.3.4", 3, [reactant(cytosol, 1, "C00086"), reactant(cytosol, 1, "C00603")], [reactant(cytosol, 1, "C00499")]). % was <->
reaction("623a", retractable, "3.5.2.5", 3, [reactant(cytosol, 1, "C01551")], [reactant(cytosol, 1, "C00499")]). % was <->
reaction("623b", retractable, "3.5.2.5", 3, [reactant(cytosol, 1, "C00499")], [reactant(cytosol, 1, "C01551")]). % was <->
reaction("624a", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction("624b", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("624a", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction("624b", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("624a", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction("624b", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("624a", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction("624b", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("624a", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")]). % was <->
reaction("624b", retractable, "2.7.6.1", 3, [reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00119")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00117")]). % was <->
reaction("625", retractable, "5.3.3.5", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05437")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C01694")]). % was (->)
reaction("626", retractable, none, 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "MZYMST"), reactant(cytosol, 3, "C00007"), reactant(cytosol, 4, "C00005")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C05437"), reactant(cytosol, 4, "C00006")]). % was (->)
reaction("627", retractable, none, 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C01724"), reactant(cytosol, 3, "C00007"), reactant(cytosol, 4, "C00005")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "MZYMST"), reactant(cytosol, 4, "C00006")]). % was (->)
reaction("628", retractable, "1.-.-.-", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "ERTEOL")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C01694")]). % was (->)
reaction("629", retractable, "1.14.14.-", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "ERTROL")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "ERTEOL")]). % was (->)
reaction("630", retractable, "1.-.-.-", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "EPST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "ERTROL")]). % was (->)
reaction("631", retractable, none, 3, [reactant(cytosol, 1, "C08817")], [reactant(cytosol, 1, "EPST")]). % was (->)
reaction("632", retractable, "2.1.1.41", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C05437")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C08817")]). % was (->)
reaction("633", retractable, none, 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "IIZYMST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C05437")]). % was (->)
reaction("634", retractable, "5.3.3.1", 3, [reactant(cytosol, 1, "IZYMST")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "IIZYMST")]). % was (->)
reaction("635", retractable, "1.-.-.-", 3, [reactant(cytosol, 1, "MZYMST"), reactant(cytosol, 3, "C00007")], [reactant(cytosol, 1, "IZYMST")]). % was (->)
reaction("636", retractable, none, 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "IIMZYMST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "MZYMST")]). % was (->)
reaction("637", retractable, "5.3.3.1", 3, [reactant(cytosol, 1, "IMZYMST")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "IIMZYMST")]). % was (->)
reaction("638", retractable, "1.-.-.-", 3, [reactant(cytosol, 1, "DMZYMST"), reactant(cytosol, 3, "C00007")], [reactant(cytosol, 1, "IMZYMST")]). % was (->)
reaction("639", retractable, "1.-.-.-", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "IGST")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "DMZYMST")]). % was (->)
reaction("640", retractable, "1.14.14.1", 3, [reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C01724"), reactant(cytosol, 1, "C03024")], [reactant(cytosol, 1, "C03161"), reactant(cytosol, 1, "IGST")]). % was (->)
reaction("641", retractable, "5.4.99.7", 3, [reactant(cytosol, 1, "C01054")], [reactant(cytosol, 1, "C01724")]). % was (->)
reaction("642", retractable, "1.14.99.7", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00751")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C01054")]). % was (->)
reaction("643", retractable, "2.5.1.21", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 2, "C00448")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00751")]). % was (->)
reaction("644", retractable, "2.5.1.10", 3, [reactant(cytosol, 1, "C00129"), reactant(cytosol, 1, "C00341")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00448")]). % was (->)
reaction("645", retractable, "2.5.1.1", 3, [reactant(cytosol, 1, "C00129"), reactant(cytosol, 1, "C00235")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00341")]). % was (->)
reaction("646a", retractable, "5.3.3.2", 3, [reactant(cytosol, 1, "C00129")], [reactant(cytosol, 1, "C00235")]). % was <->
reaction("646b", retractable, "5.3.3.2", 3, [reactant(cytosol, 1, "C00235")], [reactant(cytosol, 1, "C00129")]). % was <->
reaction("647", retractable, "4.1.1.33", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01143")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00129")]). % was (->)
reaction("648", retractable, "2.7.4.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01107")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01143")]). % was (->)
reaction("649", retractable, "2.7.1.36", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00418")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C01107")]). % was (->)
reaction("650", retractable, "2.7.1.36", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C00418")], [reactant(cytosol, 1, "C00035"), reactant(cytosol, 1, "C01107")]). % was (->)
reaction("651", retractable, "2.7.1.36", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00418")], [reactant(cytosol, 1, "C00112"), reactant(cytosol, 1, "C01107")]). % was (->)
reaction("652", retractable, "2.7.1.36", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00418")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01107")]). % was (->)
reaction("653a", retractable, "1.1.1.34", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00418"), reactant(cytosol, 2, "C00006")], [reactant(cytosol, 1, "C00356"), reactant(cytosol, 2, "C00005")]). % was <->
reaction("653b", retractable, "1.1.1.34", 3, [reactant(cytosol, 1, "C00356"), reactant(cytosol, 2, "C00005")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00418"), reactant(cytosol, 2, "C00006")]). % was <->
reaction("653a", retractable, "1.1.1.34", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00418"), reactant(cytosol, 2, "C00006")], [reactant(cytosol, 1, "C00356"), reactant(cytosol, 2, "C00005")]). % was <->
reaction("653b", retractable, "1.1.1.34", 3, [reactant(cytosol, 1, "C00356"), reactant(cytosol, 2, "C00005")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00418"), reactant(cytosol, 2, "C00006")]). % was <->
reaction("654a", retractable, "2.3.3.10", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00356")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00332")]). % was <->
reaction("654b", retractable, "2.3.3.10", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00332")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00356")]). % was <->
reaction("655", retractable, none, 3, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00346"), reactant(cytosol, 1, "C16A")]). % was (->)
reaction("656", retractable, none, 3, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00836")]). % was (->)
reaction("656", retractable, none, 3, [reactant(cytosol, 1, "C01120")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00836")]). % was (->)
reaction("657", retractable, none, 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "PSPH")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "PHSP")]). % was (->)
reaction("657", retractable, none, 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "PSPH")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "PHSP")]). % was (->)
reaction("658", retractable, none, 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00836")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01120")]). % was (->)
reaction("658", retractable, none, 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00836")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01120")]). % was (->)
reaction("659", retractable, "2.-.-.-", 3, [reactant(cytosol, 1, "C01194"), reactant(cytosol, 1, "MIPC")], [reactant(cytosol, 1, "MIP2C")]). % was (->)
reaction("660", retractable, none, 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "IPC")], [reactant(cytosol, 1, "MIPC")]). % was (->)
reaction("660", retractable, none, 3, [reactant(cytosol, 1, "C00096"), reactant(cytosol, 1, "IPC")], [reactant(cytosol, 1, "MIPC")]). % was (->)
reaction("661", retractable, none, 3, [reactant(cytosol, 1, "C01194"), reactant(cytosol, 1, "CER3")], [reactant(cytosol, 1, "IPC")]). % was (->)
reaction("662", retractable, none, 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "CER2")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "CER3")]). % was (->)
reaction("663", retractable, none, 3, [reactant(cytosol, 1, "C240COA"), reactant(cytosol, 1, "PSPH")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "CER2")]). % was (->)
reaction("664", retractable, none, 3, [reactant(cytosol, 1, "C260COA"), reactant(cytosol, 1, "PSPH")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "CER2")]). % was (->)
reaction("665", retractable, none, 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00007"), reactant(cytosol, 1, "C00836")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "PSPH")]). % was (->)
reaction("666", retractable, "1.1.1.102", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C02934")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00836")]). % was (->)
reaction("667", retractable, "2.3.1.50", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00154")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C02934")]). % was (->)
reaction("667", retractable, "2.3.1.50", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00154")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C02934")]). % was (->)
reaction("668", retractable, none, 3, [reactant(cytosol, 1, "DGPP")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00416")]). % was (->)
reaction("669", retractable, none, 3, [reactant(cytosol, 1, "C00416")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00165")]). % was (->)
reaction("670", retractable, "2.7.8.5", 3, [reactant(mitochondrion, 1, "C00269"), reactant(mitochondrion, 1, "C00344")], [reactant(mitochondrion, 1, "C00055"), reactant(mitochondrion, 1, "C05980")]). % was (->)
reaction("671", retractable, "3.1.3.27", 3, [reactant(mitochondrion, 1, "C03892")], [reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00344")]). % was (->)
reaction("672a", retractable, "2.7.8.8", 3, [reactant(mitochondrion, 1, "C00093"), reactant(mitochondrion, 1, "C00269")], [reactant(mitochondrion, 1, "C00055"), reactant(mitochondrion, 1, "C03892")]). % was <->
reaction("672b", retractable, "2.7.8.8", 3, [reactant(mitochondrion, 1, "C00055"), reactant(mitochondrion, 1, "C03892")], [reactant(mitochondrion, 1, "C00093"), reactant(mitochondrion, 1, "C00269")]). % was <->
reaction("673", retractable, "3.1.4.11", 3, [reactant(cytosol, 1, "C04637")], [reactant(cytosol, 1, "C00165"), reactant(cytosol, 1, "C01245")]). % was (->)
reaction("674", retractable, "2.7.1.68", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01277")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04637")]). % was (->)
reaction("674", retractable, "2.7.1.68", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01277")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04637")]). % was (->)
reaction("675", retractable, "2.7.1.67", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01277")]). % was (->)
reaction("675", retractable, "2.7.1.67", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01277")]). % was (->)
reaction("676", retractable, "2.7.1.137", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04549")]). % was (->)
reaction("676", retractable, "2.7.1.137", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04549")]). % was (->)
reaction("676", retractable, "2.7.1.137", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01194")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C04549")]). % was (->)
reaction("677", retractable, "2.7.8.11", 3, [reactant(cytosol, 1, "C00137"), reactant(cytosol, 1, "C00269")], [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C01194")]). % was (->)
reaction("678", retractable, "3.1.3.25", 3, [reactant(cytosol, 1, "C01177")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00137")]). % was (->)
reaction("679", retractable, "5.5.1.4", 3, [reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C01177")]). % was (->)
reaction("680a", retractable, "2.7.8.1", 3, [reactant(cytosol, 1, "C00165"), reactant(cytosol, 1, "C00570")], [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C00350")]). % was <->
reaction("680b", retractable, "2.7.8.1", 3, [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C00350")], [reactant(cytosol, 1, "C00165"), reactant(cytosol, 1, "C00570")]). % was <->
reaction("681", retractable, "2.7.7.14", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00346")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00570")]). % was (->)
reaction("682", retractable, "2.7.1.82", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00189")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00346")]). % was (->)
reaction("683", retractable, "2.7.8.2", 3, [reactant(cytosol, 1, "C00165"), reactant(cytosol, 1, "C00307")], [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C00157")]). % was (->)
reaction("684", retractable, "2.7.7.15", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00588")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00307")]). % was (->)
reaction("685", retractable, "2.7.1.32", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00114")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00588")]). % was (->)
reaction("686", retractable, "2.1.1.16", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C04308")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C00157")]). % was (->)
reaction("687", retractable, "2.1.1.16", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C01241")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C04308")]). % was (->)
reaction("688", retractable, "2.1.1.17", 3, [reactant(cytosol, 1, "C00019"), reactant(cytosol, 1, "C00350")], [reactant(cytosol, 1, "C00021"), reactant(cytosol, 1, "C01241")]). % was (->)
reaction("689", retractable, "4.1.1.65", 3, [reactant(mitochondrion, 1, "C02737")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00350")]). % was (->)
reaction("690", retractable, "4.1.1.65", 3, [reactant(cytosol, 1, "C02737")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00350")]). % was (->)
reaction("691a", retractable, "2.7.8.8", 3, [reactant(mitochondrion, 1, "C00065"), reactant(mitochondrion, 1, "C00269")], [reactant(mitochondrion, 1, "C00055"), reactant(mitochondrion, 1, "C02737")]). % was <->
reaction("691b", retractable, "2.7.8.8", 3, [reactant(mitochondrion, 1, "C00055"), reactant(mitochondrion, 1, "C02737")], [reactant(mitochondrion, 1, "C00065"), reactant(mitochondrion, 1, "C00269")]). % was <->
reaction("692a", retractable, "2.7.8.8", 3, [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00269")], [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C02737")]). % was <->
reaction("692b", retractable, "2.7.8.8", 3, [reactant(cytosol, 1, "C00055"), reactant(cytosol, 1, "C02737")], [reactant(cytosol, 1, "C00065"), reactant(cytosol, 1, "C00269")]). % was <->
reaction("693a", retractable, "2.7.7.41", 3, [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00416")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00269")]). % was <->
reaction("693b", retractable, "2.7.7.41", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00269")], [reactant(cytosol, 1, "C00063"), reactant(cytosol, 1, "C00416")]). % was <->
reaction("694a", retractable, "2.7.7.41", 3, [reactant(mitochondrion, 1, "C00063"), reactant(mitochondrion, 1, "C00416")], [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00269")]). % was <->
reaction("694b", retractable, "2.7.7.41", 3, [reactant(mitochondrion, 1, "C00013"), reactant(mitochondrion, 1, "C00269")], [reactant(mitochondrion, 1, "C00063"), reactant(mitochondrion, 1, "C00416")]). % was <->
reaction("695", retractable, "2.3.1.51", 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C03849")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00416")]). % was (->)
reaction("695", retractable, "2.3.1.51", 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C03849")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C00416")]). % was (->)
reaction("696", retractable, none, 3, [reactant(cytosol, 1, "AT3P2"), reactant(cytosol, 1, "C00005")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C03849")]). % was (->)
reaction("697", retractable, none, 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C00111")], [reactant(cytosol, 1, "AT3P2"), reactant(cytosol, 1, "C00229")]). % was (->)
reaction("697", retractable, none, 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C00111")], [reactant(cytosol, 1, "AT3P2"), reactant(cytosol, 1, "C00229")]). % was (->)
reaction("698", retractable, none, 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C03849")]). % was (->)
reaction("698", retractable, none, 3, [reactant(cytosol, 0.017, "C05755"), reactant(cytosol, 0.055, "C04088"), reactant(cytosol, 0.062, "C05223"), reactant(cytosol, 0.093, "C182ACP"), reactant(cytosol, 0.1, "C06253"), reactant(cytosol, 0.169, "C161ACP"), reactant(cytosol, 0.235, "C01203"), reactant(cytosol, 0.27, "C05764"), reactant(cytosol, 1, "C00093")], [reactant(cytosol, 1, "C00229"), reactant(cytosol, 1, "C03849")]). % was (->)
reaction("702a", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "23DAACP"), reactant(cytosol, 1, "C00004")]). % was <->
reaction("702b", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "23DAACP"), reactant(cytosol, 1, "C00004")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("703a", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C04633")], [reactant(cytosol, 1, "2HDACP")]). % was <->
reaction("703b", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "2HDACP")], [reactant(cytosol, 1, "C04633")]). % was <->
reaction("704", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("704", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C182ACP"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("705", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("705", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 15, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C01203"), reactant(cytosol, 15, "C00006"), reactant(cytosol, 8, "C00229"), reactant(cytosol, 8, "CO2")]). % was (->)
reaction("706", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("706", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 16, "C00005"), reactant(cytosol, 8, "C01209")], [reactant(cytosol, 1, "C04088"), reactant(cytosol, 16, "C00006"), reactant(cytosol, 8, "C00011"), reactant(cytosol, 8, "C00229")]). % was (->)
reaction("707", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("707", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 13, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C161ACP"), reactant(cytosol, 13, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("708", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 14, "C00005"), reactant(cytosol, 7, "C01209")], [reactant(cytosol, 1, "C05764"), reactant(cytosol, 14, "C00006"), reactant(cytosol, 7, "C00011"), reactant(cytosol, 7, "C00229")]). % was (->)
reaction("709", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("709", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 11, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C05761"), reactant(cytosol, 11, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("710", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 12, "C00005"), reactant(cytosol, 6, "C01209")], [reactant(cytosol, 1, "C06253"), reactant(cytosol, 12, "C00006"), reactant(cytosol, 6, "C00011"), reactant(cytosol, 6, "C00229")]). % was (->)
reaction("711", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("711", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 10, "C00005"), reactant(cytosol, 5, "C01209")], [reactant(cytosol, 1, "C05223"), reactant(cytosol, 10, "C00006"), reactant(cytosol, 5, "C00011"), reactant(cytosol, 5, "C00229")]). % was (->)
reaction("712", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "2.3.1.41", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "6.3.4.1", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "1.1.1.100", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("712", retractable, "4 2.3.1.85", 3, [reactant(cytosol, 1, "C00173"), reactant(cytosol, 4, "C01209"), reactant(cytosol, 8, "C00005")], [reactant(cytosol, 1, "C05755"), reactant(cytosol, 4, "C00011"), reactant(cytosol, 4, "C00229"), reactant(cytosol, 8, "C00006")]). % was (->)
reaction("713", retractable, "2.3.1.41", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 1, "C01209")], [reactant(mitochondrion, 1, "3OACP"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00229")]). % was (->)
reaction("714a", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("714a", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("714a", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("714a", retractable, "2.3.1.38", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "2.3.1.38", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("714a", retractable, "2.3.1.39", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "2.3.1.39", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("714a", retractable, "3.1.2.14", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")]). % was <->
reaction("714b", retractable, "3.1.2.14", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00173")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "1.3.1.9", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "4.2.1.61", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "2.3.1.86", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "2.3.1.39", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "2.3.1.39", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "2.3.1.38", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "2.3.1.38", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("715a", retractable, "3.1.2.14", 3, [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")]). % was <->
reaction("715b", retractable, "3.1.2.14", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01209")], [reactant(cytosol, 1, "C00083"), reactant(cytosol, 1, "C00229")]). % was <->
reaction("716a", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00083")]). % was <->
reaction("716b", retractable, "6.4.1.2", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00083")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <->
reaction("716a", retractable, "6.3.4.14", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00083")]). % was <->
reaction("716b", retractable, "6.3.4.14", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00083")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00024")]). % was <->
reaction("717", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("717", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C182ACP"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("718", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 15, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C01203"), reactant(mitochondrion, 15, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("719", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 16, "C00005"), reactant(mitochondrion, 8, "C01209")], [reactant(mitochondrion, 1, "C04088"), reactant(mitochondrion, 16, "C00006"), reactant(mitochondrion, 8, "C00011"), reactant(mitochondrion, 8, "C00229")]). % was (->)
reaction("720", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("720", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 13, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C161ACP"), reactant(mitochondrion, 13, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("721", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 14, "C00005"), reactant(mitochondrion, 7, "C01209")], [reactant(mitochondrion, 1, "C05764"), reactant(mitochondrion, 14, "C00006"), reactant(mitochondrion, 7, "C00011"), reactant(mitochondrion, 7, "C00229")]). % was (->)
reaction("722", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("722", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 11, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C05761"), reactant(mitochondrion, 11, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("723", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 12, "C00005"), reactant(mitochondrion, 6, "C01209")], [reactant(mitochondrion, 1, "C06253"), reactant(mitochondrion, 12, "C00006"), reactant(mitochondrion, 6, "C00011"), reactant(mitochondrion, 6, "C00229")]). % was (->)
reaction("724", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("724", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 10, "C00005"), reactant(mitochondrion, 5, "C01209")], [reactant(mitochondrion, 1, "C05223"), reactant(mitochondrion, 10, "C00006"), reactant(mitochondrion, 5, "C00011"), reactant(mitochondrion, 5, "C00229")]). % was (->)
reaction("725", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("725", retractable, -, 3, [reactant(mitochondrion, 1, "C00173"), reactant(mitochondrion, 4, "C01209"), reactant(mitochondrion, 8, "C00005")], [reactant(mitochondrion, 1, "C05755"), reactant(mitochondrion, 4, "C00011"), reactant(mitochondrion, 4, "C00229"), reactant(mitochondrion, 8, "C00006")]). % was (->)
reaction("726", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C01967")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("726", retractable, "1.6.5.3", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C01967")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00390")]). % was (->)
reaction("727a", retractable, "2.3.1.9", 3, [reactant(mitochondrion, 2, "C00024")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00332")]). % was <->
reaction("727b", retractable, "2.3.1.9", 3, [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00332")], [reactant(mitochondrion, 2, "C00024")]). % was <->
reaction("728a", retractable, "2.3.1.9", 3, [reactant(cytosol, 2, "C00024")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00332")]). % was <->
reaction("728b", retractable, "2.3.1.9", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00332")], [reactant(cytosol, 2, "C00024")]). % was <->
reaction("729", retractable, "2.3.1.16", 3, [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00264")], [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00040")]). % was (->)
reaction("730a", retractable, "1.1.1.-", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00640")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00264")]). % was <->
reaction("730b", retractable, "1.1.1.-", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00264")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00640")]). % was <->
reaction("731a", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")]). % was <->
reaction("731b", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")]). % was <->
reaction("731a", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")]). % was <->
reaction("731b", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")]). % was <->
reaction("731a", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")]). % was <->
reaction("731b", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")]). % was <->
reaction("731a", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")]). % was <->
reaction("731b", retractable, "6.2.1.3", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00040")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00347")]). % was <->
reaction("732", retractable, "3.5.5.1", 3, [reactant(cytosol, 1, "C02938")], [reactant(cytosol, 1, "C00014"), reactant(cytosol, 1, "C00954")]). % was (->)
reaction("733", retractable, "3.5.1.54", 3, [reactant(cytosol, 1, "C01010")], [reactant(cytosol, 2, "C00011"), reactant(cytosol, 2, "C00014")]). % was (->)
reaction("734a", retractable, "6.3.4.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00086")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01010")]). % was <->
reaction("734b", retractable, "6.3.4.6", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01010")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00086")]). % was <->
reaction("735", retractable, "1.2.1.2", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00058")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011")]). % was (->)
reaction("735", retractable, "1.2.1.2", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00058")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011")]). % was (->)
reaction("735", retractable, "1.2.1.2", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00058")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00011")]). % was (->)
reaction("736", retractable, "1.1.2.4", 3, [reactant(mitochondrion, 1, "C00256"), reactant(mitochondrion, 2, "C00125")], [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 2, "C00126")]). % was (->)
reaction("737", retractable, "1.1.2.3", 3, [reactant(mitochondrion, 1, "C00186"), reactant(mitochondrion, 2, "C00125")], [reactant(mitochondrion, 1, "C00022"), reactant(mitochondrion, 2, "C00126")]). % was (->)
reaction("738", retractable, "3.6.3.14", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 3, "C00080")]). % was (->)
reaction("739", retractable, "1.9.3.1", 3, [reactant(mitochondrion, 1, "C00007"), reactant(mitochondrion, 4, "C00126"), reactant(mitochondrion, 6, "C00080")], [reactant(mitochondrion, 4, "C00125")]). % was (->)
reaction("740", retractable, "1.10.2.2", 3, [reactant(mitochondrion, 1, "C00390"), reactant(mitochondrion, 1.5, "C00080"), reactant(mitochondrion, 2, "C00125")], [reactant(mitochondrion, 1, "C01967"), reactant(mitochondrion, 2, "C00126")]). % was (->)
reaction("741a", retractable, "1.3.5.1", 3, [reactant(mitochondrion, 1, "C01352"), reactant(mitochondrion, 1, "C01967")], [reactant(mitochondrion, 1, "C00016"), reactant(mitochondrion, 1, "C00390")]). % was <->
reaction("741b", retractable, "1.3.5.1", 3, [reactant(mitochondrion, 1, "C00016"), reactant(mitochondrion, 1, "C00390")], [reactant(mitochondrion, 1, "C01352"), reactant(mitochondrion, 1, "C01967")]). % was <->
reaction("745", retractable, "3.6.1.1", 3, [reactant(mitochondrion, 1, "C00013")], [reactant(mitochondrion, 2, "C00009")]). % was (->)
reaction("746", retractable, "3.6.1.1", 3, [reactant(cytosol, 1, "C00013")], [reactant(cytosol, 2, "C00009")]). % was (->)
reaction("747", retractable, "3.1.2.6", 3, [reactant(mitochondrion, 1, "C03451")], [reactant(mitochondrion, 1, "C00051"), reactant(mitochondrion, 1, "C00256")]). % was (->)
reaction("748", retractable, "3.1.2.6", 3, [reactant(cytosol, 1, "C03451")], [reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00256")]). % was (->)
reaction("749a", retractable, "4.4.1.5", 3, [reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00546")], [reactant(cytosol, 1, "C03451")]). % was <->
reaction("749b", retractable, "4.4.1.5", 3, [reactant(cytosol, 1, "C03451")], [reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00546")]). % was <->
reaction("750a", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")]). % was <->
reaction("750b", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")]). % was <->
reaction("750a", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")]). % was <->
reaction("750b", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")]). % was <->
reaction("750a", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")]). % was <->
reaction("750b", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")]). % was <->
reaction("750a", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")]). % was <->
reaction("750b", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")]). % was <->
reaction("750a", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")]). % was <->
reaction("750b", retractable, "1.1.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00084")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00469")]). % was <->
reaction("751a", retractable, "1.1.1.1", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00469")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00084")]). % was <->
reaction("751b", retractable, "1.1.1.1", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00084")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00469")]). % was <->
reaction("752", retractable, "2.3.3.14", 3, [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "C00026")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C01251")]). % was (->)
reaction("753", retractable, "2.3.3.14", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01251")]). % was (->)
reaction("753", retractable, "2.3.3.14", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00026")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C01251")]). % was (->)
reaction("754", retractable, "3.1.2.1", 3, [reactant(cytosol, 1, "C00024")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00033")]). % was (->)
reaction("755", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was (->)
reaction("755", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was (->)
reaction("755", retractable, "4.1.1.1", 3, [reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00084")]). % was (->)
reaction("756a", retractable, "3.1.2.12", 3, [reactant(cytosol, 1, "C01031")], [reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00058")]). % was <->
reaction("756b", retractable, "3.1.2.12", 3, [reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00058")], [reactant(cytosol, 1, "C01031")]). % was <->
reaction("757a", retractable, "1.2.1.1", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00067")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01031")]). % was <->
reaction("757b", retractable, "1.2.1.1", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C01031")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00051"), reactant(cytosol, 1, "C00067")]). % was <->
reaction("758", retractable, "6.2.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00033")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00024")]). % was (->)
reaction("758", retractable, "6.2.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00033")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00020"), reactant(cytosol, 1, "C00024")]). % was (->)
reaction("759", retractable, "2.4.1.11", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00182")]). % was (->)
reaction("759", retractable, "2.4.1.11", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00182")]). % was (->)
reaction("760", retractable, "2.4.1.18", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00182")], [reactant(cytosol, 1, "C00103")]). % was (->)
reaction("760", retractable, "2.4.1.1", 3, [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00182")], [reactant(cytosol, 1, "C00103")]). % was (->)
reaction("761", retractable, "3.2.1.28", 3, [reactant(cytosol, 1, "C01083")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("761", retractable, "3.2.1.28", 3, [reactant(cytosol, 1, "C01083")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("761", retractable, "3.2.1.28", 3, [reactant(cytosol, 1, "C01083")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("762", retractable, "3.1.3.12", 3, [reactant(cytosol, 1, "C00689")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C01083")]). % was (->)
reaction("763", retractable, "2.4.1.15", 3, [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00689")]). % was (->)
reaction("763", retractable, "2.4.1.15", 3, [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00689")]). % was (->)
reaction("763", retractable, "2.4.1.15", 3, [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00015"), reactant(cytosol, 1, "C00689")]). % was (->)
reaction("764a", retractable, "2.7.7.12", 3, [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C03384")], [reactant(cytosol, 1, "C00052"), reactant(cytosol, 1, "C00103")]). % was <->
reaction("764b", retractable, "2.7.7.12", 3, [reactant(cytosol, 1, "C00052"), reactant(cytosol, 1, "C00103")], [reactant(cytosol, 1, "C00029"), reactant(cytosol, 1, "C03384")]). % was <->
reaction("765", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C05397")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("766", retractable, "3.2.1.20", 3, [reactant(cytosol, 1, "C00208")], [reactant(cytosol, 2, "C00267")]). % was (->)
reaction("767a", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C05399")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00794")]). % was <->
reaction("767b", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00794")], [reactant(cytosol, 1, "C05399")]). % was <->
reaction("768a", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C05401")], [reactant(cytosol, 1, "C00116"), reactant(cytosol, 1, "C00124")]). % was <->
reaction("768b", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C00116"), reactant(cytosol, 1, "C00124")], [reactant(cytosol, 1, "C05401")]). % was <->
reaction("769a", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C05400")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00936")]). % was <->
reaction("769b", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00936")], [reactant(cytosol, 1, "C05400")]). % was <->
reaction("770a", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C01235")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00137")]). % was <->
reaction("770b", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00137")], [reactant(cytosol, 1, "C01235")]). % was <->
reaction("771", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C00492")], [reactant(cytosol, 1, "C00089"), reactant(cytosol, 1, "C00124")]). % was (->)
reaction("772", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C02472")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00267")]). % was (->)
reaction("773", retractable, "3.2.1.22", 3, [reactant(cytosol, 1, "C05402")], [reactant(cytosol, 1, "C00124"), reactant(cytosol, 1, "C00267")]). % was (->)
reaction("774a", retractable, "2.7.7.9", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00103")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00029")]). % was <->
reaction("774b", retractable, "2.7.7.9", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00103")]). % was <->
reaction("774a", retractable, "2.7.7.9", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00103")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00029")]). % was <->
reaction("774b", retractable, "2.7.7.9", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C00103")]). % was <->
reaction("775a", retractable, "5.1.3.2", 3, [reactant(cytosol, 1, "C00052")], [reactant(cytosol, 1, "C00029")]). % was <->
reaction("775b", retractable, "5.1.3.2", 3, [reactant(cytosol, 1, "C00029")], [reactant(cytosol, 1, "C00052")]). % was <->
reaction("776a", retractable, "2.7.7.10", 3, [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C03384")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00052")]). % was <->
reaction("776b", retractable, "2.7.7.10", 3, [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00052")], [reactant(cytosol, 1, "C00075"), reactant(cytosol, 1, "C03384")]). % was <->
reaction("777", retractable, "2.7.1.6", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00124")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03384")]). % was (->)
reaction("778", retractable, "1.1.1.14", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00794")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00095")]). % was (->)
reaction("779", retractable, "2.7.1.56", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01094")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C05378")]). % was (->)
reaction("780", retractable, "3.1.3.46", 3, [reactant(cytosol, 1, "C00665")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction("781", retractable, "2.7.1.105", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00665")]). % was (->)
reaction("781", retractable, "2.7.1.105", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00665")]). % was (->)
reaction("782", retractable, "2.7.7.13", 3, [reactant(cytosol, 1, "C00044"), reactant(cytosol, 1, "C03812")], [reactant(cytosol, 1, "C00013"), reactant(cytosol, 1, "C00096")]). % was (->)
reaction("783a", retractable, "5.4.2.8", 3, [reactant(cytosol, 1, "C00275")], [reactant(cytosol, 1, "C03812")]). % was <->
reaction("783b", retractable, "5.4.2.8", 3, [reactant(cytosol, 1, "C03812")], [reactant(cytosol, 1, "C00275")]). % was <->
reaction("784a", retractable, "5.3.1.8", 3, [reactant(cytosol, 1, "C00275")], [reactant(cytosol, 1, "C05345")]). % was <->
reaction("784b", retractable, "5.3.1.8", 3, [reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00275")]). % was <->
reaction("785a", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00103")], [reactant(cytosol, 1, "C00668")]). % was <->
reaction("785b", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00103")]). % was <->
reaction("785a", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00103")], [reactant(cytosol, 1, "C00668")]). % was <->
reaction("785b", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00103")]). % was <->
reaction("786a", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00117")]). % was <->
reaction("786b", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00620")]). % was <->
reaction("786a", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00620")], [reactant(cytosol, 1, "C00117")]). % was <->
reaction("786b", retractable, "5.4.2.2", 3, [reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00620")]). % was <->
reaction("787", retractable, "2.7.1.15", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01801")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00673")]). % was (->)
reaction("788", retractable, "2.7.1.15", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00121")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00117")]). % was (->)
reaction("789a", retractable, "2.2.1.2", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C05345")]). % was <->
reaction("789b", retractable, "2.2.1.2", 3, [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction("789a", retractable, "2.2.1.2", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C05345")]). % was <->
reaction("789b", retractable, "2.2.1.2", 3, [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction("790a", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C05345")]). % was <->
reaction("790b", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C06814")]). % was <->
reaction("790a", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C05345")]). % was <->
reaction("790b", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00279"), reactant(cytosol, 1, "C06814")]). % was <->
reaction("791a", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction("791b", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")]). % was <->
reaction("791a", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")]). % was <->
reaction("791b", retractable, "2.2.1.1", 3, [reactant(cytosol, 1, "C00118"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00117"), reactant(cytosol, 1, "C06814")]). % was <->
reaction("792a", retractable, "5.3.1.6", 3, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C00117")]). % was <->
reaction("792b", retractable, "5.3.1.6", 3, [reactant(cytosol, 1, "C00117")], [reactant(cytosol, 1, "C00199")]). % was <->
reaction("793a", retractable, "5.1.3.1", 3, [reactant(cytosol, 1, "C00199")], [reactant(cytosol, 1, "C06814")]). % was <->
reaction("793b", retractable, "5.1.3.1", 3, [reactant(cytosol, 1, "C06814")], [reactant(cytosol, 1, "C00199")]). % was <->
reaction("794", retractable, "1.1.1.44", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00345")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00199")]). % was (->)
reaction("794", retractable, "1.1.1.44", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00345")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00199")]). % was (->)
reaction("795", retractable, "3.1.1.31", 3, [reactant(cytosol, 1, "C01236")], [reactant(cytosol, 1, "C00345")]). % was (->)
reaction("795", retractable, "3.1.1.31", 3, [reactant(cytosol, 1, "C01236")], [reactant(cytosol, 1, "C00345")]). % was (->)
reaction("795", retractable, "3.1.1.31", 3, [reactant(cytosol, 1, "C01236")], [reactant(cytosol, 1, "C00345")]). % was (->)
reaction("795", retractable, "3.1.1.31", 3, [reactant(cytosol, 1, "C01236")], [reactant(cytosol, 1, "C00345")]). % was (->)
reaction("796a", retractable, "1.1.1.49", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C01236")]). % was <->
reaction("796b", retractable, "1.1.1.49", 3, [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C01236")], [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00668")]). % was <->
reaction("797", retractable, "1.1.1.38", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00711")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00022")]). % was (->)
reaction("798", retractable, "6.4.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00036")]). % was (->)
reaction("798", retractable, "6.4.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00022")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00036")]). % was (->)
reaction("799", retractable, "3.1.3.11", 3, [reactant(cytosol, 1, "C05378")], [reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction("800", retractable, "4.1.1.49", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00074")]). % was (->)
reaction("801", retractable, "2.3.3.9", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00048")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00711")]). % was (->)
reaction("801", retractable, "2.3.3.9", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00048")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00711")]). % was (->)
reaction("802", retractable, "4.1.3.1", 3, [reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00048")]). % was (->)
reaction("802", retractable, "4.1.3.1", 3, [reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00042"), reactant(cytosol, 1, "C00048")]). % was (->)
reaction("803a", retractable, "1.1.1.37", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")]). % was <->
reaction("803b", retractable, "1.1.1.37", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")]). % was <->
reaction("803a", retractable, "1.1.1.37", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")]). % was <->
reaction("803b", retractable, "1.1.1.37", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00711")]). % was <->
reaction("804a", retractable, "1.1.1.37", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00711")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00036")]). % was <->
reaction("804b", retractable, "1.1.1.37", 3, [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00036")], [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00711")]). % was <->
reaction("805a", retractable, "4.2.1.2", 3, [reactant(cytosol, 1, "C00122")], [reactant(cytosol, 1, "C00711")]). % was <->
reaction("805b", retractable, "4.2.1.2", 3, [reactant(cytosol, 1, "C00711")], [reactant(cytosol, 1, "C00122")]). % was <->
reaction("806a", retractable, "4.2.1.2", 3, [reactant(mitochondrion, 1, "C00122")], [reactant(mitochondrion, 1, "C00711")]). % was <->
reaction("806b", retractable, "4.2.1.2", 3, [reactant(mitochondrion, 1, "C00711")], [reactant(mitochondrion, 1, "C00122")]). % was <->
reaction("807", retractable, "1.3.99.1", 3, [reactant(mitochondrion, 1, "C00122"), reactant(mitochondrion, 1, "C01352")], [reactant(mitochondrion, 1, "C00016"), reactant(mitochondrion, 1, "C00042")]). % was (->)
reaction("809a", retractable, "1.3.5.1", 3, [reactant(mitochondrion, 1, "C00016"), reactant(mitochondrion, 1, "C00042")], [reactant(mitochondrion, 1, "C00122"), reactant(mitochondrion, 1, "C01352")]). % was <->
reaction("809b", retractable, "1.3.5.1", 3, [reactant(mitochondrion, 1, "C00122"), reactant(mitochondrion, 1, "C01352")], [reactant(mitochondrion, 1, "C00016"), reactant(mitochondrion, 1, "C00042")]). % was <->
reaction("810a", retractable, "6.2.1.4", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00490")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00531")]). % was <->
reaction("810b", retractable, "6.2.1.4", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00531")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00490")]). % was <->
reaction("810a", retractable, "6.2.1.5", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00490")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00531")]). % was <->
reaction("810b", retractable, "6.2.1.5", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00531")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00490")]). % was <->
reaction("811a", retractable, "6.2.1.4", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00042")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00091")]). % was <->
reaction("811b", retractable, "6.2.1.4", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00091")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00042")]). % was <->
reaction("811a", retractable, "6.2.1.5", 3, [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00042")], [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00091")]). % was <->
reaction("811b", retractable, "6.2.1.5", 3, [reactant(mitochondrion, 1, "C00008"), reactant(mitochondrion, 1, "C00009"), reactant(mitochondrion, 1, "C00091")], [reactant(mitochondrion, 1, "C00002"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00042")]). % was <->
reaction("812", retractable, "1.2.4.2", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00026")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00091")]). % was (->)
reaction("813", retractable, "1.1.1.42", 3, [reactant(cytosol, 1, "C05379")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026")]). % was (->)
reaction("813", retractable, "1.1.1.42", 3, [reactant(cytosol, 1, "C05379")], [reactant(cytosol, 1, "C00011"), reactant(cytosol, 1, "C00026")]). % was (->)
reaction("814", retractable, "1.1.1.42", 3, [reactant(mitochondrion, 1, "C05379")], [reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00026")]). % was (->)
reaction("815", retractable, "1.1.1.42", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05379")]). % was (->)
reaction("815", retractable, "1.1.1.42", 3, [reactant(cytosol, 1, "C00006"), reactant(cytosol, 1, "C00311")], [reactant(cytosol, 1, "C00005"), reactant(cytosol, 1, "C05379")]). % was (->)
reaction("816", retractable, "1.1.1.42", 3, [reactant(mitochondrion, 1, "C00006"), reactant(mitochondrion, 1, "C00311")], [reactant(mitochondrion, 1, "C00005"), reactant(mitochondrion, 1, "C05379")]). % was (->)
reaction("817", retractable, "1.1.1.41", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00311")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00026")]). % was (->)
reaction("818a", retractable, "4.2.1.3", 3, [reactant(mitochondrion, 1, "C00158")], [reactant(mitochondrion, 1, "C00311")]). % was <->
reaction("818b", retractable, "4.2.1.3", 3, [reactant(mitochondrion, 1, "C00311")], [reactant(mitochondrion, 1, "C00158")]). % was <->
reaction("818a", retractable, "4.2.1.3", 3, [reactant(mitochondrion, 1, "C00158")], [reactant(mitochondrion, 1, "C00311")]). % was <->
reaction("818b", retractable, "4.2.1.3", 3, [reactant(mitochondrion, 1, "C00311")], [reactant(mitochondrion, 1, "C00158")]). % was <->
reaction("819", retractable, "2.3.3.1", 3, [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "C00036")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00158")]). % was (->)
reaction("819", retractable, "2.3.3.1", 3, [reactant(mitochondrion, 1, "C00024"), reactant(mitochondrion, 1, "C00036")], [reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00158")]). % was (->)
reaction("820", retractable, "2.3.3.1", 3, [reactant(cytosol, 1, "C00024"), reactant(cytosol, 1, "C00036")], [reactant(cytosol, 1, "C00010"), reactant(cytosol, 1, "C00158")]). % was (->)
reaction("821", retractable, "1.2.4.1", 3, [reactant(mitochondrion, 1, "C00003"), reactant(mitochondrion, 1, "C00010"), reactant(mitochondrion, 1, "C00022")], [reactant(mitochondrion, 1, "C00004"), reactant(mitochondrion, 1, "C00011"), reactant(mitochondrion, 1, "C00024")]). % was (->)
reaction("822", retractable, "2.7.1.40", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00022")]). % was (->)
reaction("822", retractable, "2.7.1.40", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00022")]). % was (->)
reaction("823a", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction("823b", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("823a", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction("823b", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("823a", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction("823b", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("823a", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction("823b", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("823a", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00074")]). % was <->
reaction("823b", retractable, "4.2.1.11", 3, [reactant(cytosol, 1, "C00074")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("824a", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("824b", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00197")]). % was <->
reaction("824a", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("824b", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00197")]). % was <->
reaction("824a", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00631")]). % was <->
reaction("824b", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00631")], [reactant(cytosol, 1, "C00197")]). % was <->
reaction("825a", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C00236")], [reactant(cytosol, 1, "C01159")]). % was <->
reaction("825b", retractable, "5.4.2.1", 3, [reactant(cytosol, 1, "C01159")], [reactant(cytosol, 1, "C00236")]). % was <->
reaction("826a", retractable, "2.7.2.3", 3, [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00236")], [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00197")]). % was <->
reaction("826b", retractable, "2.7.2.3", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00197")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00236")]). % was <->
reaction("827a", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")]). % was <->
reaction("827b", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")]). % was <->
reaction("827a", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")]). % was <->
reaction("827b", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")]). % was <->
reaction("827a", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")]). % was <->
reaction("827b", retractable, "1.2.1.12", 3, [reactant(cytosol, 1, "C00004"), reactant(cytosol, 1, "C00236")], [reactant(cytosol, 1, "C00003"), reactant(cytosol, 1, "C00009"), reactant(cytosol, 1, "C00118")]). % was <->
reaction("828a", retractable, "5.3.1.1", 3, [reactant(cytosol, 1, "C00111")], [reactant(cytosol, 1, "C00118")]). % was <->
reaction("828b", retractable, "5.3.1.1", 3, [reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "C00111")]). % was <->
reaction("829a", retractable, "4.1.2.13", 3, [reactant(cytosol, 1, "C05378")], [reactant(cytosol, 1, "C00111"), reactant(cytosol, 1, "C00118")]). % was <->
reaction("829b", retractable, "4.1.2.13", 3, [reactant(cytosol, 1, "C00111"), reactant(cytosol, 1, "C00118")], [reactant(cytosol, 1, "C05378")]). % was <->
reaction("830", retractable, "2.7.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00281")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00447")]). % was (->)
reaction("831", retractable, "2.7.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C01097")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C03785")]). % was (->)
reaction("832", retractable, "2.7.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C05378")]). % was (->)
reaction("832", retractable, "2.7.1.11", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C05378")]). % was (->)
reaction("833a", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C01172")], [reactant(cytosol, 1, "C05345")]). % was <->
reaction("833b", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C01172")]). % was <->
reaction("834a", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C01172")]). % was <->
reaction("834b", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C01172")], [reactant(cytosol, 1, "C00668")]). % was <->
reaction("835a", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C00668")], [reactant(cytosol, 1, "C05345")]). % was <->
reaction("835b", retractable, "5.3.1.9", 3, [reactant(cytosol, 1, "C05345")], [reactant(cytosol, 1, "C00668")]). % was <->
reaction("836", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00095")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction("836", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00095")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C05345")]). % was (->)
reaction("837", retractable, "2.7.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00936")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00275")]). % was (->)
reaction("837", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00936")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00275")]). % was (->)
reaction("837", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00936")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00275")]). % was (->)
reaction("838", retractable, "2.7.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction("838", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction("838", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00267")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction("839", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00221")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction("839", retractable, "2.7.1.1", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00221")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C00668")]). % was (->)
reaction("840", retractable, "2.7.1.2", 3, [reactant(cytosol, 1, "C00002"), reactant(cytosol, 1, "C00221")], [reactant(cytosol, 1, "C00008"), reactant(cytosol, 1, "C01172")]). % was (->)

%=====================================================================
% enzyme(
%	1(integer): Unique enzyme-complex identifier,
%	2(modifiable|certian): Whether enzyme-complex is completely known or not
%	3(string): Label (usually EC number, if available)
%	4(list): known ORFs in the enzyme-complex
%	5(list): known reactions catalysed by the enzyme-complex
%) 
%
% n.b.  one enzyme may have several complexes associated
% n.b.  the complex lists could be used to generate a set of orfs
%	but, in fact, only knocked out orfs need be considered
%	(if we assume the knockouts are known in each experiment)
% n.b.	enzymes with no known complexes are (dynamically) assigned an *unknown*, which is never inhibited,
%	thus, either there is no information, or the known ones denote all posible complexes.

enzyme(1, certain, "1.-.-.-", ["YGL012W"], [628]).
enzyme(2, certain, "1.-.-.-", ["YGR060W"], [635,638]).
enzyme(3, certain, "1.-.-.-", ["YLR056W"], [630]).
enzyme(4, certain, "1.-.-.-", ["YNL280C"], [639]).
enzyme(5, certain, "1.1.1.-", ["YDR368W"], [none]).
enzyme(6, certain, "1.1.1.-", ["YKR009C"], [730]).
enzyme(7, certain, "1.1.1.1", ["YBR145W"], [750]).
enzyme(8, certain, "1.1.1.1", ["YDL168W"], [750]).
enzyme(9, certain, "1.1.1.1", ["YGL256W"], [750]).
enzyme(10, certain, "1.1.1.1", ["YMR083W"], [751]).
enzyme(11, certain, "1.1.1.1", ["YMR303C"], [750]).
enzyme(12, certain, "1.1.1.1", ["YOL086C"], [750]).
enzyme(13, certain, "1.1.1.100", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(14, certain, "1.1.1.100", ["YKL182W"], [704,705,706,707,708,709,710,711,712]).
enzyme(15, certain, "1.1.1.100", ["YNR016C"], [704,705,706,707,708,709,710,711,712]).
enzyme(16, certain, "1.1.1.100", ["YPL231W"], [1078,1079,1080,1081,1082,1083,1084,1085,704,705,706,707,708,709,710,711,712,none]).
enzyme(17, certain, "1.1.1.102", ["YBR265W"], [666]).
enzyme(18, certain, "1.1.1.103", ["U46_"], [451]).
enzyme(19, certain, "1.1.1.116", ["YBR149W"], [1039]).
enzyme(20, certain, "1.1.1.117", ["YBR149W"], [485,486]).
enzyme(21, certain, "1.1.1.14", ["YJR159W"], [778]).
enzyme(22, certain, "1.1.1.145", ["YGL001C"], [1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038]).
enzyme(23, certain, "1.1.1.155", ["YIL094C"], [414]).
enzyme(24, certain, "1.1.1.169", ["YHR063C"], [235]).
enzyme(25, certain, "1.1.1.17", ["U45_"], [483]).
enzyme(26, certain, "1.1.1.193", ["YBR153W"], [285]).
enzyme(27, certain, "1.1.1.205", ["YAR073W"], [604]).
enzyme(28, certain, "1.1.1.205", ["YAR075W"], [604]).
enzyme(29, certain, "1.1.1.205", ["YHR216W"], [604]).
enzyme(30, certain, "1.1.1.205", ["YLR432W"], [604]).
enzyme(31, certain, "1.1.1.205", ["YML056C"], [604]).
enzyme(32, certain, "1.1.1.23", ["YCL030C"], [380]).
enzyme(33, certain, "1.1.1.25", ["YDR127W"], [373]).
enzyme(34, certain, "1.1.1.3", ["YJR139C"], [460,461]).
enzyme(35, certain, "1.1.1.34", ["YLR450W"], [653]).
enzyme(36, certain, "1.1.1.34", ["YML075C"], [653]).
enzyme(37, certain, "1.1.1.37", ["YDL078C"], [803]).
enzyme(38, certain, "1.1.1.37", ["YKL085W"], [804]).
enzyme(39, certain, "1.1.1.37", ["YOL126C"], [803]).
enzyme(40, certain, "1.1.1.38", ["YKL029C"], [797]).
enzyme(41, certain, "1.1.1.41", ["YNL037C"], [817]).
enzyme(42, certain, "1.1.1.41", ["YOR136W"], [1086,none]).
enzyme(43, certain, "1.1.1.42", ["YDL066W"], [814,816]).
enzyme(44, certain, "1.1.1.42", ["YLR174W"], [813,815]).
enzyme(45, certain, "1.1.1.42", ["YNL009W"], [813,815]).
enzyme(46, certain, "1.1.1.44", ["YGR256W"], [794]).
enzyme(47, certain, "1.1.1.44", ["YHR183W"], [794]).
enzyme(48, certain, "1.1.1.49", ["YNL241C"], [796]).
enzyme(49, certain, "1.1.1.8", ["YDL022W"], [302]).
enzyme(50, certain, "1.1.1.8", ["YOL059W"], [302]).
enzyme(51, certain, "1.1.1.85", ["YCL018W"], [417]).
enzyme(52, certain, "1.1.1.86", ["YLR355C"], [234,423,424]).
enzyme(53, certain, "1.1.1.95", ["YER081W"], [471]).
enzyme(54, certain, "1.1.1.95", ["YIL074C"], [471]).
enzyme(55, certain, "1.1.2.3", ["YML054C"], [737]).
enzyme(56, certain, "1.1.2.4", ["YDL174C"], [736]).
enzyme(57, certain, "1.1.3.37", ["YML086C"], [1023]).
enzyme(58, certain, "1.1.99.5", ["YIL155C"], [300]).
enzyme(59, certain, "1.10.2.2", ["Q0105"], [1065,none]).
enzyme(60, certain, "1.10.2.2", ["YBL045C"], [1065,none]).
enzyme(61, certain, "1.10.2.2", ["YDR529C"], [1065,none]).
enzyme(62, certain, "1.10.2.2", ["YEL024W"], [740]).
enzyme(63, certain, "1.10.2.2", ["YFR033C"], [1065,none]).
enzyme(64, certain, "1.10.2.2", ["YGR183C"], [1065,none]).
enzyme(65, certain, "1.10.2.2", ["YHR001W-A"], [1065,none]).
enzyme(66, certain, "1.10.2.2", ["YJL166W"], [1065,none]).
enzyme(67, certain, "1.10.2.2", ["YOR065W"], [1065,none]).
enzyme(68, certain, "1.10.2.2", ["YPR191W"], [1065,none]).
enzyme(69, certain, "1.11.1.5", ["YKR066C"], [1007]).
enzyme(70, certain, "1.11.1.6", ["YDR256C"], [358]).
enzyme(71, certain, "1.11.1.6", ["YGR088W"], [358]).
enzyme(72, certain, "1.11.1.9", ["YBR244W"], [314]).
enzyme(73, certain, "1.11.1.9", ["YIR037W"], [314]).
enzyme(74, certain, "1.11.1.9", ["YKL026C"], [314]).
enzyme(75, certain, "1.13.11.11", ["YJR078W"], [352]).
enzyme(76, certain, "1.13.11.5", ["U58_"], [342]).
enzyme(77, certain, "1.13.11.6", ["YJR025C"], [347]).
enzyme(78, certain, "1.13.14.-", ["U107_"], [186]).
enzyme(79, certain, "1.14.13.-", ["U108_"], [184]).
enzyme(80, certain, "1.14.13.-", ["YGR255C"], [182]).
enzyme(81, certain, "1.14.13.9", ["YBL098W"], [349]).
enzyme(82, certain, "1.14.14.-", ["YMR015C"], [629]).
enzyme(83, certain, "1.14.14.1", ["YDR402C"], [1003,1004,1005,1006]).
enzyme(84, certain, "1.14.14.1", ["YHR007C"], [640]).
enzyme(85, certain, "1.14.19.1", ["YGL055W"], [1002]).
enzyme(86, certain, "1.14.99.7", ["YGR175C"], [642]).
enzyme(87, certain, "1.15.1.1", ["YHR008C"], [1001]).
enzyme(88, certain, "1.15.1.1", ["YJR104C"], [1001]).
enzyme(89, certain, "1.16.1.7", ["YLL051C"], [1000]).
enzyme(90, certain, "1.16.1.7", ["YOL152W"], [1000]).
enzyme(91, certain, "1.16.1.7", ["YOR381W"], [1000]).
enzyme(92, certain, "1.16.1.7", ["YOR384W"], [1000]).
enzyme(93, certain, "1.17.4.1", ["YER070W"], [511,512,513,514]).
enzyme(94, certain, "1.17.4.1", ["YGR180C"], [1060,1061,1062,1063,1064,none]).
enzyme(95, certain, "1.17.4.1", ["YIL066C"], [514]).
enzyme(96, certain, "1.17.4.1", ["YJL026W"], [1060,1061,1062,1063,1064,none]).
enzyme(97, certain, "1.17.4.2", ["U35_"], [510]).
enzyme(98, certain, "1.17.4.2", ["U36_"], [509]).
enzyme(99, certain, "1.17.4.2", ["U37_"], [508]).
enzyme(100, certain, "1.17.4.2", ["U38_"], [507]).
enzyme(101, certain, "1.2.1.1", ["YDL168W"], [757]).
enzyme(102, certain, "1.2.1.11", ["YDR158W"], [462]).
enzyme(103, certain, "1.2.1.12", ["YGR192C"], [827]).
enzyme(104, certain, "1.2.1.12", ["YJL052W"], [827]).
enzyme(105, certain, "1.2.1.12", ["YJR009C"], [827]).
enzyme(106, certain, "1.2.1.16", ["YBR006W"], [501]).
enzyme(107, certain, "1.2.1.2", ["YOR388C"], [735]).
enzyme(108, certain, "1.2.1.2", ["YPL275W"], [735]).
enzyme(109, certain, "1.2.1.2", ["YPL276W"], [735]).
enzyme(110, certain, "1.2.1.3", ["U68_"], [322]).
enzyme(111, certain, "1.2.1.3", ["YER073W"], [321,354]).
enzyme(112, certain, "1.2.1.3", ["YOR374W"], [354,355]).
enzyme(113, certain, "1.2.1.3", ["YPL061W"], [353]).
enzyme(114, certain, "1.2.1.31", ["YBR115C"], [410,411]).
enzyme(115, certain, "1.2.1.31", ["YGL154C"], [1073,1074,1075,1076,1077,none]).
enzyme(116, certain, "1.2.1.32", ["U55_"], [345]).
enzyme(117, certain, "1.2.1.38", ["YER069W"], [403]).
enzyme(118, certain, "1.2.1.41", ["YOR323C"], [329,330]).
enzyme(119, certain, "1.2.1.5", ["YMR169C"], [356]).
enzyme(120, certain, "1.2.1.5", ["YMR170C"], [356]).
enzyme(121, certain, "1.2.2.1", ["U2_"], [744]).
enzyme(122, certain, "1.2.4.1", ["YBR221C"], [1068,1069,1070,1071,1072,none]).
enzyme(123, certain, "1.2.4.1", ["YER178W"], [821]).
enzyme(124, certain, "1.2.4.2", ["YIL125W"], [812]).
enzyme(125, certain, "1.3.1.12", ["U52_"], [364]).
enzyme(126, certain, "1.3.1.13", ["YBR166C"], [366]).
enzyme(127, certain, "1.3.1.70", ["YNL280C"], [1021,1022]).
enzyme(128, certain, "1.3.1.71", ["YGL012W"], [1020]).
enzyme(129, certain, "1.3.1.9", ["YKL182W"], [702,714,715]).
enzyme(130, certain, "1.3.11.27", ["U57_"], [343]).
enzyme(131, certain, "1.3.3.1", ["YKL216W"], [590,591]).
enzyme(132, certain, "1.3.3.3", ["YDR044W"], [195]).
enzyme(133, certain, "1.3.3.4", ["YER014W"], [194]).
enzyme(134, certain, "1.3.3.6", ["YGL205W"], [699,700,701]).
enzyme(135, certain, "1.3.3.6", ["YIL160C"], [699,700,701]).
enzyme(136, certain, "1.3.3.6", ["YKR009C"], [699,700,701]).
enzyme(137, certain, "1.3.5.1", ["YDR178W"], [1067,none]).
enzyme(138, certain, "1.3.5.1", ["YJL045W"], [1067,none]).
enzyme(139, certain, "1.3.5.1", ["YKL141W"], [741,809]).
enzyme(140, certain, "1.3.5.1", ["YKL148C"], [1067,none]).
enzyme(141, certain, "1.3.5.1", ["YLL041C"], [1067,none]).
enzyme(142, certain, "1.3.5.1", ["YLR164W"], [1067,none]).
enzyme(143, certain, "1.3.5.1", ["YMR118C"], [1067,none]).
enzyme(144, certain, "1.3.99.1", ["YEL047C"], [808]).
enzyme(145, certain, "1.3.99.1", ["YJR051W"], [807]).
enzyme(146, certain, "1.4.1.13", ["YDL171C"], [1018]).
enzyme(147, certain, "1.4.1.14", ["YDL171C"], [493]).
enzyme(148, certain, "1.4.1.2", ["YDL215C"], [1019]).
enzyme(149, certain, "1.4.1.4", ["YAL062W"], [491]).
enzyme(150, certain, "1.4.1.4", ["YDL215C"], [492]).
enzyme(151, certain, "1.4.1.4", ["YOR375C"], [491]).
enzyme(152, certain, "1.4.3.-", ["U99_"], [221]).
enzyme(153, certain, "1.4.3.16", ["U100_"], [220]).
enzyme(154, certain, "1.4.3.5", ["YBR035C"], [270,271,272,273]).
enzyme(155, certain, "1.4.4.2", ["YMR189W"], [455]).
enzyme(156, certain, "1.5.1.-", ["U56_"], [344]).
enzyme(157, certain, "1.5.1.10", ["YNR050C"], [409]).
enzyme(158, certain, "1.5.1.12", ["YHR037W"], [495]).
enzyme(159, certain, "1.5.1.15", ["YKR080W"], [238]).
enzyme(160, certain, "1.5.1.2", ["YER023W"], [324,325,326]).
enzyme(161, certain, "1.5.1.20", ["YGL125W"], [245]).
enzyme(162, certain, "1.5.1.20", ["YPL023C"], [245]).
enzyme(163, certain, "1.5.1.3", ["YOR236W"], [249,250]).
enzyme(164, certain, "1.5.1.5", ["YBR084W"], [244]).
enzyme(165, certain, "1.5.1.5", ["YGR204W"], [243]).
enzyme(166, certain, "1.5.1.7", ["YIR034C"], [408]).
enzyme(167, certain, "1.5.3.-", ["YLR142W"], [323]).
enzyme(168, certain, "1.5.3.11", ["U62_"], [335]).
enzyme(169, certain, "1.5.3.11", ["U63_"], [334]).
enzyme(170, certain, "1.5.3.11", ["U65_"], [332]).
enzyme(171, certain, "1.5.5.1", ["YOR356W"], [1017]).
enzyme(172, certain, "1.5.99.6", ["YHR068W"], [388]).
enzyme(173, certain, "1.6.2.2", ["YIL043C"], [1016]).
enzyme(174, certain, "1.6.2.2", ["YKL150W"], [1016]).
enzyme(175, certain, "1.6.2.4", ["YHR042W"], [742]).
enzyme(176, certain, "1.6.5.3", ["YDL085W"], [743]).
enzyme(177, certain, "1.6.5.3", ["YER061C"], [717,718,719,720,721,722,723,724,725]).
enzyme(178, certain, "1.6.5.3", ["YKL055C"], [717,718,719,720,721,722,723,724,725]).
enzyme(179, certain, "1.6.5.3", ["YKL192C"], [717,718,719,720,721,722,723,724,725,726]).
enzyme(180, certain, "1.6.5.3", ["YML120C"], [726]).
enzyme(181, certain, "1.6.5.3", ["YMR145C"], [743]).
enzyme(182, certain, "1.6.5.3", ["YOR221C"], [717,718,719,720,721,722,723,724,725]).
enzyme(183, certain, "1.6.5.5", ["YBR046C"], [1015]).
enzyme(184, certain, "1.6.99.1", ["YHR179W"], [1014]).
enzyme(185, certain, "1.6.99.1", ["YPL171C"], [1014]).
enzyme(186, certain, "1.6.99.3", ["YDL085W"], [1013]).
enzyme(187, certain, "1.6.99.3", ["YKL192C"], [1013]).
enzyme(188, certain, "1.6.99.3", ["YML120C"], [1013]).
enzyme(189, certain, "1.6.99.3", ["YMR145C"], [1013]).
enzyme(190, certain, "1.6.99.7", ["YGR234W"], [1011,1012]).
enzyme(191, certain, "1.8.1.2", ["YFR030W"], [437]).
enzyme(192, certain, "1.8.1.4", ["YFL018C"], [1009,1010,1070,1071]).
enzyme(193, certain, "1.8.1.4", ["YPL017C"], [1009,1010,1070,1071]).
enzyme(194, certain, "1.8.1.7", ["YPL091W"], [313]).
enzyme(195, certain, "1.8.1.9", ["YDR353W"], [575]).
enzyme(196, certain, "1.8.1.9", ["YHR106W"], [574]).
enzyme(197, certain, "1.8.4.6", ["YER042W"], [1008]).
enzyme(198, certain, "1.8.4.8", ["YPR167C"], [433]).
enzyme(199, certain, "1.8.7.1", ["YJR137C"], [437]).
enzyme(200, certain, "1.9.3.1", ["Q0045"], [739]).
enzyme(201, certain, "1.9.3.1", ["Q0250"], [1066,none]).
enzyme(202, certain, "1.9.3.1", ["Q0275"], [1066,none]).
enzyme(203, certain, "1.9.3.1", ["YDL067C"], [1066,none]).
enzyme(204, certain, "1.9.3.1", ["YGL187C"], [1066,none]).
enzyme(205, certain, "1.9.3.1", ["YGL191W"], [1066,none]).
enzyme(206, certain, "1.9.3.1", ["YHR051W"], [1066,none]).
enzyme(207, certain, "1.9.3.1", ["YIL111W"], [1066,none]).
enzyme(208, certain, "1.9.3.1", ["YLR038C"], [1066,none]).
enzyme(209, certain, "1.9.3.1", ["YLR395C"], [1066,none]).
enzyme(210, certain, "1.9.3.1", ["YMR256C"], [1066,none]).
enzyme(211, certain, "1.9.3.1", ["YNL052W"], [1066,none]).
enzyme(212, certain, "2.-.-.-", ["YDR072C"], [659]).
enzyme(213, certain, "2.1.1.-", ["YBR034C"], [377]).
enzyme(214, certain, "2.1.1.-", ["YCL054W"], [none]).
enzyme(215, certain, "2.1.1.-", ["YML110C"], [183,none]).
enzyme(216, certain, "2.1.1.-", ["YOR201C"], [none]).
enzyme(217, certain, "2.1.1.-", ["YPL266W"], [185,none]).
enzyme(218, certain, "2.1.1.10", ["YLL062C"], [475]).
enzyme(219, certain, "2.1.1.10", ["YPL273W"], [475]).
enzyme(220, certain, "2.1.1.100", ["YDR410C"], [996]).
enzyme(221, certain, "2.1.1.107", ["YKR069W"], [190]).
enzyme(222, certain, "2.1.1.114", ["YOL096C"], [995]).
enzyme(223, certain, "2.1.1.13", ["U47_"], [447]).
enzyme(224, certain, "2.1.1.14", ["YER091C"], [448]).
enzyme(225, certain, "2.1.1.16", ["YJR073C"], [686,687]).
enzyme(226, certain, "2.1.1.17", ["YGR157W"], [688]).
enzyme(227, certain, "2.1.1.32", ["YDR120C"], [999]).
enzyme(228, certain, "2.1.1.41", ["YML008C"], [632]).
enzyme(229, certain, "2.1.1.45", ["YOR074C"], [572]).
enzyme(230, certain, "2.1.1.61", ["YDL033C"], [998]).
enzyme(231, certain, "2.1.1.63", ["YDL200C"], [997]).
enzyme(232, certain, "2.1.1.64", ["YOL096C"], [181]).
enzyme(233, certain, "2.1.1.98", ["YLR172C"], [440]).
enzyme(234, certain, "2.1.2.1", ["YBR263W"], [468]).
enzyme(235, certain, "2.1.2.1", ["YLR058C"], [467]).
enzyme(236, certain, "2.1.2.10", ["YDR019C"], [464,465]).
enzyme(237, certain, "2.1.2.11", ["YBR176W"], [236]).
enzyme(238, certain, "2.1.2.2", ["YDR408C"], [614]).
enzyme(239, certain, "2.1.2.3", ["YLR028C"], [608]).
enzyme(240, certain, "2.1.2.3", ["YMR120C"], [607,608]).
enzyme(241, certain, "2.1.2.9", ["YBL013W"], [237]).
enzyme(242, certain, "2.1.3.2", ["YJL130C"], [593]).
enzyme(243, certain, "2.1.3.3", ["YJL088W"], [399]).
enzyme(244, certain, "2.1.4.-", ["YKL024C"], [528,529]).
enzyme(245, certain, "2.2.1.1", ["YBR117C"], [790,791]).
enzyme(246, certain, "2.2.1.1", ["YPR074C"], [790,791]).
enzyme(247, certain, "2.2.1.2", ["YGR043C"], [789]).
enzyme(248, certain, "2.2.1.2", ["YLR354C"], [789]).
enzyme(249, certain, "2.2.1.6", ["YCL009C"], [1055,1056,1057,1058,1059,1072,none]).
enzyme(250, certain, "2.2.1.6", ["YMR108W"], [425,426]).
enzyme(251, certain, "2.3.1.1", ["YMR062C"], [405]).
enzyme(252, certain, "2.3.1.12", ["YNL071W"], [1054,1070,1071,none]).
enzyme(253, certain, "2.3.1.158", ["YNR008W"], [976]).
enzyme(254, certain, "2.3.1.16", ["YIL160C"], [729]).
enzyme(255, certain, "2.3.1.18", ["YGL205W"], [699,700,701]).
enzyme(256, certain, "2.3.1.18", ["YIL160C"], [699,700,701]).
enzyme(257, certain, "2.3.1.18", ["YKR009C"], [699,700,701]).
enzyme(258, certain, "2.3.1.26", ["YCR048W"], [994]).
enzyme(259, certain, "2.3.1.26", ["YNR019W"], [994]).
enzyme(260, certain, "2.3.1.30", ["U48_"], [436]).
enzyme(261, certain, "2.3.1.31", ["YNL277W"], [445]).
enzyme(262, certain, "2.3.1.35", ["YMR062C"], [401]).
enzyme(263, certain, "2.3.1.37", ["YDR232W"], [200]).
enzyme(264, certain, "2.3.1.38", ["YKL182W"], [714,715]).
enzyme(265, certain, "2.3.1.39", ["YKL182W"], [714,715]).
enzyme(266, certain, "2.3.1.4", ["YFL017C"], [499]).
enzyme(267, certain, "2.3.1.41", ["YER061C"], [713]).
enzyme(268, certain, "2.3.1.41", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(269, certain, "2.3.1.41", ["YKL182W"], [704,705,706,707,708,709,710,711,712]).
enzyme(270, certain, "2.3.1.41", ["YNR016C"], [704,705,706,707,708,709,710,711,712]).
enzyme(271, certain, "2.3.1.41", ["YPL231W"], [1045,1046,1047,1048,1049,1050,1051,1052,1053,704,705,706,707,708,709,710,711,712,none]).
enzyme(272, certain, "2.3.1.47", ["U86_"], [265]).
enzyme(273, certain, "2.3.1.48", ["YPL001W"], [993]).
enzyme(274, certain, "2.3.1.50", ["YDR062W"], [667]).
enzyme(275, certain, "2.3.1.50", ["YMR296C"], [667]).
enzyme(276, certain, "2.3.1.51", ["U8_"], [695]).
enzyme(277, certain, "2.3.1.51", ["YDL052C"], [695]).
enzyme(278, certain, "2.3.1.61", ["YDR148C"], [1043,1044,none]).
enzyme(279, certain, "2.3.1.7", ["YAR035W"], [480]).
enzyme(280, certain, "2.3.1.7", ["YML042W"], [479]).
enzyme(281, certain, "2.3.1.84", ["YGR177C"], [992]).
enzyme(282, certain, "2.3.1.84", ["YOR377W"], [992]).
enzyme(283, certain, "2.3.1.85", ["YPL231W"], [none]).
enzyme(284, certain, "2.3.1.86", ["YKL182W"], [714,715]).
enzyme(285, certain, "2.3.1.86", ["YPL231W"], [1045,1046,1047,1048,1049,1050,1051,1053,1078,1079,1080,1081,1082,1083,1084,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991]).
enzyme(286, certain, "2.3.1.88", ["YDL040C"], [317]).
enzyme(287, certain, "2.3.1.88", ["YGR147C"], [317]).
enzyme(288, certain, "2.3.1.9", ["YPL028W"], [727,728]).
enzyme(289, certain, "2.3.1.97", ["YLR195C"], [318]).
enzyme(290, certain, "2.3.2.2", ["YLR299W"], [312]).
enzyme(291, certain, "2.3.2.8", ["YGL017W"], [975]).
enzyme(292, certain, "2.3.3.1", ["YCR005C"], [820]).
enzyme(293, certain, "2.3.3.1", ["YNR001C"], [819]).
enzyme(294, certain, "2.3.3.1", ["YPR001W"], [819]).
enzyme(295, certain, "2.3.3.10", ["YML126C"], [654]).
enzyme(296, certain, "2.3.3.13", ["YNL104C"], [420]).
enzyme(297, certain, "2.3.3.14", ["YDL131W"], [753]).
enzyme(298, certain, "2.3.3.14", ["YDL182W"], [752,753]).
enzyme(299, certain, "2.3.3.9", ["YIR031C"], [801]).
enzyme(300, certain, "2.3.3.9", ["YNL117W"], [801]).
enzyme(301, certain, "2.4.1.1", ["YPR160W"], [760]).
enzyme(302, certain, "2.4.1.109", ["YAL023C"], [307]).
enzyme(303, certain, "2.4.1.109", ["YDL093W"], [307]).
enzyme(304, certain, "2.4.1.109", ["YDL095W"], [307]).
enzyme(305, certain, "2.4.1.109", ["YDR307W"], [974]).
enzyme(306, certain, "2.4.1.109", ["YGR199W"], [307]).
enzyme(307, certain, "2.4.1.109", ["YJR143C"], [307]).
enzyme(308, certain, "2.4.1.109", ["YOR321W"], [307]).
enzyme(309, certain, "2.4.1.11", ["YFR015C"], [759]).
enzyme(310, certain, "2.4.1.11", ["YLR258W"], [759]).
enzyme(311, certain, "2.4.1.117", ["YPL227C"], [973]).
enzyme(312, certain, "2.4.1.119", ["YCL043C"], [971,972]).
enzyme(313, certain, "2.4.1.119", ["YDL232W"], [971,972]).
enzyme(314, certain, "2.4.1.119", ["YEL002C"], [971,972]).
enzyme(315, certain, "2.4.1.119", ["YJL002C"], [971,972]).
enzyme(316, certain, "2.4.1.119", ["YML019W"], [971,972]).
enzyme(317, certain, "2.4.1.119", ["YMR149W"], [971,972]).
enzyme(318, certain, "2.4.1.119", ["YOR085W"], [971,972]).
enzyme(319, certain, "2.4.1.119", ["YOR103C"], [971,972]).
enzyme(320, certain, "2.4.1.131", ["YBR199W"], [306]).
enzyme(321, certain, "2.4.1.131", ["YBR205W"], [306]).
enzyme(322, certain, "2.4.1.131", ["YDR483W"], [306]).
enzyme(323, certain, "2.4.1.131", ["YIL085C"], [969,970]).
enzyme(324, certain, "2.4.1.131", ["YJL139C"], [306]).
enzyme(325, certain, "2.4.1.131", ["YKR061W"], [306]).
enzyme(326, certain, "2.4.1.131", ["YNL029C"], [969,970]).
enzyme(327, certain, "2.4.1.131", ["YOR099W"], [306]).
enzyme(328, certain, "2.4.1.131", ["YPL053C"], [306]).
enzyme(329, certain, "2.4.1.15", ["YBR126C"], [763]).
enzyme(330, certain, "2.4.1.15", ["YML100W"], [763]).
enzyme(331, certain, "2.4.1.15", ["YMR261C"], [763]).
enzyme(332, certain, "2.4.1.16", ["YBR023C"], [496]).
enzyme(333, certain, "2.4.1.16", ["YBR038W"], [496]).
enzyme(334, certain, "2.4.1.16", ["YNL192W"], [496]).
enzyme(335, certain, "2.4.1.18", ["YEL011W"], [760]).
enzyme(336, certain, "2.4.1.34", ["YGR032W"], [311]).
enzyme(337, certain, "2.4.1.34", ["YLR342W"], [311]).
enzyme(338, certain, "2.4.1.34", ["YMR306W"], [311]).
enzyme(339, certain, "2.4.1.83", ["YPR183W"], [308]).
enzyme(340, certain, "2.4.2.-", ["YBR248C"], [379]).
enzyme(341, certain, "2.4.2.1", ["U103_"], [213]).
enzyme(342, certain, "2.4.2.1", ["U104_"], [212]).
enzyme(343, certain, "2.4.2.1", ["YLR209C"], [204,205,556,557,558,559,560,561,562]).
enzyme(344, certain, "2.4.2.10", ["YML106W"], [589]).
enzyme(345, certain, "2.4.2.10", ["YMR271C"], [589]).
enzyme(346, certain, "2.4.2.11", ["YOR209C"], [202,222]).
enzyme(347, certain, "2.4.2.14", ["YMR300C"], [616]).
enzyme(348, certain, "2.4.2.17", ["YER055C"], [387]).
enzyme(349, certain, "2.4.2.18", ["YDR354W"], [362]).
enzyme(350, certain, "2.4.2.19", ["YFR047C"], [211,219]).
enzyme(351, certain, "2.4.2.22", ["YJR133W"], [555]).
enzyme(352, certain, "2.4.2.3", ["U22_"], [530]).
enzyme(353, certain, "2.4.2.4", ["YLR209C"], [579,580]).
enzyme(354, certain, "2.4.2.7", ["YDR441C"], [565]).
enzyme(355, certain, "2.4.2.7", ["YML022W"], [565]).
enzyme(356, certain, "2.4.2.8", ["YDR399W"], [531,532]).
enzyme(357, certain, "2.4.2.9", ["YHR128W"], [587]).
enzyme(358, certain, "2.5.1.-", ["YBR002C"], [188]).
enzyme(359, certain, "2.5.1.-", ["YBR003W"], [188]).
enzyme(360, certain, "2.5.1.-", ["YDL090C"], [188]).
enzyme(361, certain, "2.5.1.-", ["YGL155W"], [none]).
enzyme(362, certain, "2.5.1.-", ["YJL031C"], [none]).
enzyme(363, certain, "2.5.1.-", ["YKL019W"], [none]).
enzyme(364, certain, "2.5.1.-", ["YMR101C"], [188]).
enzyme(365, certain, "2.5.1.-", ["YNR041C"], [188]).
enzyme(366, certain, "2.5.1.-", ["YPL172C"], [188]).
enzyme(367, certain, "2.5.1.-", ["YPR176C"], [188]).
enzyme(368, certain, "2.5.1.1", ["YJL167W"], [645]).
enzyme(369, certain, "2.5.1.10", ["YJL167W"], [644]).
enzyme(370, certain, "2.5.1.15", ["YNL256W"], [252,253]).
enzyme(371, certain, "2.5.1.16", ["YPR069C"], [393]).
enzyme(372, certain, "2.5.1.19", ["YDR127W"], [371]).
enzyme(373, certain, "2.5.1.21", ["YHR190W"], [643]).
enzyme(374, certain, "2.5.1.22", ["YLR146C"], [392]).
enzyme(375, certain, "2.5.1.3", ["YPL214C"], [290]).
enzyme(376, certain, "2.5.1.46", ["YHR068W"], [967]).
enzyme(377, certain, "2.5.1.47", ["YGR012W"], [435]).
enzyme(378, certain, "2.5.1.47", ["YLR303W"], [443]).
enzyme(379, certain, "2.5.1.48", ["YJR130C"], [959,960,961,962,963,964,965,966]).
enzyme(380, certain, "2.5.1.48", ["YML082W"], [442]).
enzyme(381, certain, "2.5.1.49", ["YLR303W"], [443,444]).
enzyme(382, certain, "2.5.1.54", ["YBR249C"], [376]).
enzyme(383, certain, "2.5.1.54", ["YDR035W"], [376]).
enzyme(384, certain, "2.5.1.6", ["YDR502C"], [441]).
enzyme(385, certain, "2.5.1.6", ["YLR180W"], [441]).
enzyme(386, certain, "2.5.1.8", ["YOR274W"], [968]).
enzyme(387, certain, "2.5.1.9", ["YBR256C"], [282]).
enzyme(388, certain, "2.5.1.9", ["YOL143C"], [1041,1042,none]).
enzyme(389, certain, "2.6.1.-", ["YGL202W"], [365]).
enzyme(390, certain, "2.6.1.-", ["YHR137W"], [365,367]).
enzyme(391, certain, "2.6.1.1", ["YKL106W"], [357,482]).
enzyme(392, certain, "2.6.1.1", ["YLR027C"], [357,481]).
enzyme(393, certain, "2.6.1.11", ["YOL140W"], [402]).
enzyme(394, certain, "2.6.1.13", ["YLR438W"], [398]).
enzyme(395, certain, "2.6.1.16", ["YKL104C"], [500]).
enzyme(396, certain, "2.6.1.19", ["YGR019W"], [502]).
enzyme(397, certain, "2.6.1.2", ["YDR111C"], [478]).
enzyme(398, certain, "2.6.1.2", ["YLR089C"], [477]).
enzyme(399, certain, "2.6.1.29", ["U61_"], [336]).
enzyme(400, certain, "2.6.1.29", ["U64_"], [333]).
enzyme(401, certain, "2.6.1.39", ["U51_"], [412]).
enzyme(402, certain, "2.6.1.42", ["YHR208W"], [430,431]).
enzyme(403, certain, "2.6.1.42", ["YJR148W"], [427,428,429]).
enzyme(404, certain, "2.6.1.44", ["YFL030W"], [466]).
enzyme(405, certain, "2.6.1.52", ["YOR184W"], [269,470]).
enzyme(406, certain, "2.6.1.62", ["YNR058W"], [264]).
enzyme(407, certain, "2.6.1.9", ["YIL116W"], [382]).
enzyme(408, certain, "2.7.1.1", ["YFR053C"], [836,837,838,839]).
enzyme(409, certain, "2.7.1.1", ["YGL253W"], [836,837,838,839]).
enzyme(410, certain, "2.7.1.105", ["YIL107C"], [781]).
enzyme(411, certain, "2.7.1.105", ["YOL136C"], [781]).
enzyme(412, certain, "2.7.1.108", ["YMR013C"], [309]).
enzyme(413, certain, "2.7.1.11", ["YGR240C"], [830,831,832]).
enzyme(414, certain, "2.7.1.11", ["YMR205C"], [832]).
enzyme(415, certain, "2.7.1.12", ["YDR248C"], [957]).
enzyme(416, certain, "2.7.1.123", ["YFR014C"], [955]).
enzyme(417, certain, "2.7.1.123", ["YOL016C"], [955]).
enzyme(418, certain, "2.7.1.137", ["YJR066W"], [676]).
enzyme(419, certain, "2.7.1.137", ["YKL203C"], [676]).
enzyme(420, certain, "2.7.1.137", ["YLR240W"], [676]).
enzyme(421, certain, "2.7.1.15", ["YCR036W"], [787,788]).
enzyme(422, certain, "2.7.1.17", ["YGR194C"], [484]).
enzyme(423, certain, "2.7.1.2", ["YCL040W"], [837,838,840]).
enzyme(424, certain, "2.7.1.20", ["YJR105W"], [552]).
enzyme(425, certain, "2.7.1.21", ["U15_"], [585]).
enzyme(426, certain, "2.7.1.21", ["U16_"], [584]).
enzyme(427, certain, "2.7.1.23", ["YEL041W"], [207,216]).
enzyme(428, certain, "2.7.1.23", ["YJR049C"], [207,216]).
enzyme(429, certain, "2.7.1.23", ["YPL188W"], [207,216]).
enzyme(430, certain, "2.7.1.24", ["U96_"], [226,227]).
enzyme(431, certain, "2.7.1.25", ["YKL001C"], [438]).
enzyme(432, certain, "2.7.1.26", ["YDR236C"], [279,280]).
enzyme(433, certain, "2.7.1.29", ["YFL053W"], [303]).
enzyme(434, certain, "2.7.1.29", ["YML070W"], [303]).
enzyme(435, certain, "2.7.1.30", ["YHL032C"], [301]).
enzyme(436, certain, "2.7.1.32", ["YLR133W"], [685]).
enzyme(437, certain, "2.7.1.33", ["YDR531W"], [232]).
enzyme(438, certain, "2.7.1.35", ["U81_"], [276]).
enzyme(439, certain, "2.7.1.35", ["U82_"], [275]).
enzyme(440, certain, "2.7.1.35", ["U83_"], [274]).
enzyme(441, certain, "2.7.1.36", ["YMR208W"], [649,650,651,652]).
enzyme(442, certain, "2.7.1.37", ["YGL019W"], [956]).
enzyme(443, certain, "2.7.1.37", ["YHR102W"], [956]).
enzyme(444, certain, "2.7.1.37", ["YHR205W"], [956]).
enzyme(445, certain, "2.7.1.37", ["YIL035C"], [956]).
enzyme(446, certain, "2.7.1.37", ["YJL164C"], [956]).
enzyme(447, certain, "2.7.1.37", ["YKL166C"], [956]).
enzyme(448, certain, "2.7.1.37", ["YOR061W"], [956]).
enzyme(449, certain, "2.7.1.37", ["YPL203W"], [956]).
enzyme(450, certain, "2.7.1.39", ["YHR025W"], [459]).
enzyme(451, certain, "2.7.1.40", ["YAL038W"], [822]).
enzyme(452, certain, "2.7.1.40", ["YOR347C"], [822]).
enzyme(453, certain, "2.7.1.48", ["YNR012W"], [581,582,583]).
enzyme(454, certain, "2.7.1.49", ["YOL055C"], [295]).
enzyme(455, certain, "2.7.1.49", ["YPL258C"], [295]).
enzyme(456, certain, "2.7.1.49", ["YPR121W"], [295]).
enzyme(457, certain, "2.7.1.50", ["YPL214C"], [291]).
enzyme(458, certain, "2.7.1.56", ["U1_"], [779]).
enzyme(459, certain, "2.7.1.6", ["YBR020W"], [777]).
enzyme(460, certain, "2.7.1.6", ["YDR009W"], [958]).
enzyme(461, certain, "2.7.1.67", ["YLR305C"], [675]).
enzyme(462, certain, "2.7.1.67", ["YNL267W"], [675]).
enzyme(463, certain, "2.7.1.68", ["YDR208W"], [674]).
enzyme(464, certain, "2.7.1.68", ["YFR019W"], [674]).
enzyme(465, certain, "2.7.1.71", ["YDR127W"], [372]).
enzyme(466, certain, "2.7.1.73", ["U20_"], [534]).
enzyme(467, certain, "2.7.1.73", ["U21_"], [533]).
enzyme(468, certain, "2.7.1.82", ["YDR147W"], [682]).
enzyme(469, certain, "2.7.2.11", ["YDR300C"], [331]).
enzyme(470, certain, "2.7.2.3", ["YCR012W"], [826]).
enzyme(471, certain, "2.7.2.4", ["YER052C"], [463]).
enzyme(472, certain, "2.7.2.8", ["YER069W"], [404]).
enzyme(473, certain, "2.7.4.11", ["U19_"], [536]).
enzyme(474, certain, "2.7.4.14", ["U17_"], [571]).
enzyme(475, certain, "2.7.4.14", ["U18_"], [570]).
enzyme(476, certain, "2.7.4.14", ["YKL024C"], [529]).
enzyme(477, certain, "2.7.4.16", ["U76_"], [289]).
enzyme(478, certain, "2.7.4.2", ["YMR220W"], [648]).
enzyme(479, certain, "2.7.4.3", ["YDR226W"], [549,550,551]).
enzyme(480, certain, "2.7.4.3", ["YER170W"], [546,547,548]).
enzyme(481, certain, "2.7.4.6", ["YKL067W"], [537,538,539,540,541,542,543,544,545]).
enzyme(482, certain, "2.7.4.7", ["YOL055C"], [294]).
enzyme(483, certain, "2.7.4.8", ["YDR454C"], [617,618,619]).
enzyme(484, certain, "2.7.4.9", ["YJR057W"], [576]).
enzyme(485, certain, "2.7.6.1", ["YBL068W"], [624]).
enzyme(486, certain, "2.7.6.1", ["YER099C"], [624]).
enzyme(487, certain, "2.7.6.1", ["YHL011C"], [624]).
enzyme(488, certain, "2.7.6.1", ["YKL181W"], [624]).
enzyme(489, certain, "2.7.6.1", ["YOL061W"], [624]).
enzyme(490, certain, "2.7.6.2", ["YOR143C"], [297,298]).
enzyme(491, certain, "2.7.6.3", ["YNL256W"], [256]).
enzyme(492, certain, "2.7.7.1", ["YLR328W"], [953,954]).
enzyme(493, certain, "2.7.7.10", ["YBR018C"], [776]).
enzyme(494, certain, "2.7.7.12", ["YBR018C"], [764]).
enzyme(495, certain, "2.7.7.13", ["YDL055C"], [782]).
enzyme(496, certain, "2.7.7.14", ["YGR007W"], [681]).
enzyme(497, certain, "2.7.7.15", ["YGR202C"], [684]).
enzyme(498, certain, "2.7.7.18", ["YLR328W"], [209,210,218]).
enzyme(499, certain, "2.7.7.19", ["YKR002W"], [952]).
enzyme(500, certain, "2.7.7.2", ["U80_"], [277]).
enzyme(501, certain, "2.7.7.2", ["YDL045C"], [278]).
enzyme(502, certain, "2.7.7.23", ["YDL103C"], [497]).
enzyme(503, certain, "2.7.7.3", ["U94_"], [228,229]).
enzyme(504, certain, "2.7.7.4", ["YJR010W"], [439]).
enzyme(505, certain, "2.7.7.41", ["YBR029C"], [693,694]).
enzyme(506, certain, "2.7.7.5", ["YCL050C"], [432]).
enzyme(507, certain, "2.7.7.50", ["YGL130W"], [942]).
enzyme(508, certain, "2.7.7.53", ["YCL050C"], [594,595]).
enzyme(509, certain, "2.7.7.53", ["YDR530C"], [596]).
enzyme(510, certain, "2.7.7.6", ["YBR154C"], [948,949,950,951,952]).
enzyme(511, certain, "2.7.7.6", ["YDL140C"], [948,949,950,951,952]).
enzyme(512, certain, "2.7.7.6", ["YDL150W"], [948,949,950,951,952]).
enzyme(513, certain, "2.7.7.6", ["YDR045C"], [948,949,950,951,952]).
enzyme(514, certain, "2.7.7.6", ["YDR156W"], [948,949,950,951,952]).
enzyme(515, certain, "2.7.7.6", ["YDR404C"], [948,949,950,951,952]).
enzyme(516, certain, "2.7.7.6", ["YFL036W"], [948,949,950,951,952]).
enzyme(517, certain, "2.7.7.6", ["YGL070C"], [948,949,950,951,952]).
enzyme(518, certain, "2.7.7.6", ["YHR143W-A"], [948,949,950,951,952]).
enzyme(519, certain, "2.7.7.6", ["YIL021W"], [948,949,950,951,952]).
enzyme(520, certain, "2.7.7.6", ["YJL140W"], [948,949,950,951,952]).
enzyme(521, certain, "2.7.7.6", ["YJL148W"], [948,949,950,951,952]).
enzyme(522, certain, "2.7.7.6", ["YJR063W"], [948,949,950,951,952]).
enzyme(523, certain, "2.7.7.6", ["YKL144C"], [948,949,950,951,952]).
enzyme(524, certain, "2.7.7.6", ["YNL113W"], [948,949,950,951,952]).
enzyme(525, certain, "2.7.7.6", ["YNL151C"], [948,949,950,951,952]).
enzyme(526, certain, "2.7.7.6", ["YNL248C"], [948,949,950,951,952]).
enzyme(527, certain, "2.7.7.6", ["YNR003C"], [948,949,950,951,952]).
enzyme(528, certain, "2.7.7.6", ["YOL005C"], [948,949,950,951,952]).
enzyme(529, certain, "2.7.7.6", ["YOR116C"], [948,949,950,951,952]).
enzyme(530, certain, "2.7.7.6", ["YOR151C"], [948,949,950,951,952]).
enzyme(531, certain, "2.7.7.6", ["YOR207C"], [948,949,950,951,952]).
enzyme(532, certain, "2.7.7.6", ["YOR210W"], [948,949,950,951,952]).
enzyme(533, certain, "2.7.7.6", ["YOR224C"], [948,949,950,951,952]).
enzyme(534, certain, "2.7.7.6", ["YOR340C"], [948,949,950,951,952]).
enzyme(535, certain, "2.7.7.6", ["YOR341W"], [948,949,950,951,952]).
enzyme(536, certain, "2.7.7.6", ["YPR010C"], [948,949,950,951,952]).
enzyme(537, certain, "2.7.7.6", ["YPR110C"], [948,949,950,951,952]).
enzyme(538, certain, "2.7.7.6", ["YPR187W"], [948,949,950,951,952]).
enzyme(539, certain, "2.7.7.6", ["YPR190C"], [948,949,950,951,952]).
enzyme(540, certain, "2.7.7.7", ["YBL035C"], [943,944,945,946,947]).
enzyme(541, certain, "2.7.7.7", ["YBR278W"], [943,944,945,946,947]).
enzyme(542, certain, "2.7.7.7", ["YCR014C"], [943,944,945,946,947]).
enzyme(543, certain, "2.7.7.7", ["YDL102W"], [943,944,945,946,947]).
enzyme(544, certain, "2.7.7.7", ["YDR121W"], [943,944,945,946,947]).
enzyme(545, certain, "2.7.7.7", ["YDR419W"], [943,944,945,946,947]).
enzyme(546, certain, "2.7.7.7", ["YEL055C"], [943,944,945,946,947]).
enzyme(547, certain, "2.7.7.7", ["YIL139C"], [943,944,945,946,947]).
enzyme(548, certain, "2.7.7.7", ["YJL090C"], [943,944,945,946,947]).
enzyme(549, certain, "2.7.7.7", ["YJR006W"], [943,944,945,946,947]).
enzyme(550, certain, "2.7.7.7", ["YJR043C"], [943,944,945,946,947]).
enzyme(551, certain, "2.7.7.7", ["YNL102W"], [943,944,945,946,947]).
enzyme(552, certain, "2.7.7.7", ["YNL262W"], [943,944,945,946,947]).
enzyme(553, certain, "2.7.7.7", ["YNL299W"], [943,944,945,946,947]).
enzyme(554, certain, "2.7.7.7", ["YOL115W"], [943,944,945,946,947]).
enzyme(555, certain, "2.7.7.7", ["YOR330C"], [943,944,945,946,947]).
enzyme(556, certain, "2.7.7.7", ["YPL167C"], [943,944,945,946,947]).
enzyme(557, certain, "2.7.7.7", ["YPR175W"], [943,944,945,946,947]).
enzyme(558, certain, "2.7.7.9", ["YHL012W"], [774]).
enzyme(559, certain, "2.7.7.9", ["YKL035W"], [774]).
enzyme(560, certain, "2.7.8.1", ["YHR123W"], [680]).
enzyme(561, certain, "2.7.8.11", ["YPR113W"], [677]).
enzyme(562, certain, "2.7.8.15", ["YBR243C"], [941]).
enzyme(563, certain, "2.7.8.2", ["YNL130C"], [683]).
enzyme(564, certain, "2.7.8.5", ["YDL142C"], [670]).
enzyme(565, certain, "2.7.8.7", ["YPL148C"], [224]).
enzyme(566, certain, "2.7.8.8", ["YCL004W"], [672]).
enzyme(567, certain, "2.7.8.8", ["YER026C"], [691,692]).
enzyme(568, certain, "2.8.1.1", ["YOR251C"], [940]).
enzyme(569, certain, "2.8.1.6", ["YGR286C"], [262]).
enzyme(570, certain, "3.1.1.1", ["YJL068C"], [939]).
enzyme(571, certain, "3.1.1.29", ["YHR189W"], [928]).
enzyme(572, certain, "3.1.1.3", ["YDR058C"], [934,935,936,937,938]).
enzyme(573, certain, "3.1.1.31", ["YCR073W-A"], [795]).
enzyme(574, certain, "3.1.1.31", ["YGR248W"], [795]).
enzyme(575, certain, "3.1.1.31", ["YHR163W"], [795]).
enzyme(576, certain, "3.1.1.31", ["YNR034W"], [795]).
enzyme(577, certain, "3.1.1.45", ["YDL086W"], [925,926,927]).
enzyme(578, certain, "3.1.1.5", ["YMR006C"], [929,930,931,932,933]).
enzyme(579, certain, "3.1.1.5", ["YMR008C"], [929,930,931,932,933]).
enzyme(580, certain, "3.1.1.5", ["YOL011W"], [929,930,931,932,933]).
enzyme(581, certain, "3.1.2.-", ["U101_"], [215]).
enzyme(582, certain, "3.1.2.-", ["U105_"], [206]).
enzyme(583, certain, "3.1.2.1", ["YBL015W"], [754]).
enzyme(584, certain, "3.1.2.12", ["YJL068C"], [756]).
enzyme(585, certain, "3.1.2.14", ["YKL182W"], [714,715]).
enzyme(586, certain, "3.1.2.15", ["YBL067C"], [923]).
enzyme(587, certain, "3.1.2.15", ["YBR058C"], [923]).
enzyme(588, certain, "3.1.2.15", ["YDL122W"], [923]).
enzyme(589, certain, "3.1.2.15", ["YDR069C"], [923]).
enzyme(590, certain, "3.1.2.15", ["YER098W"], [923]).
enzyme(591, certain, "3.1.2.15", ["YER144C"], [923]).
enzyme(592, certain, "3.1.2.15", ["YER151C"], [923]).
enzyme(593, certain, "3.1.2.15", ["YFR010W"], [923]).
enzyme(594, certain, "3.1.2.15", ["YIL156W"], [923]).
enzyme(595, certain, "3.1.2.15", ["YJL197W"], [923]).
enzyme(596, certain, "3.1.2.15", ["YKR098C"], [923]).
enzyme(597, certain, "3.1.2.15", ["YMR223W"], [923]).
enzyme(598, certain, "3.1.2.15", ["YMR304W"], [923]).
enzyme(599, certain, "3.1.2.15", ["YNL186W"], [923]).
enzyme(600, certain, "3.1.2.15", ["YOR124C"], [923]).
enzyme(601, certain, "3.1.2.15", ["YPL072W"], [923]).
enzyme(602, certain, "3.1.2.2", ["YJR019C"], [924]).
enzyme(603, certain, "3.1.2.6", ["YDR272W"], [748]).
enzyme(604, certain, "3.1.2.6", ["YOR040W"], [747]).
enzyme(605, certain, "3.1.3.-", ["U77_"], [288]).
enzyme(606, certain, "3.1.3.-", ["U84_"], [267]).
enzyme(607, certain, "3.1.3.1", ["YDR481C"], [259]).
enzyme(608, certain, "3.1.3.11", ["YLR377C"], [799]).
enzyme(609, certain, "3.1.3.12", ["YDR074W"], [762]).
enzyme(610, certain, "3.1.3.15", ["YFR025C"], [381]).
enzyme(611, certain, "3.1.3.16", ["YBL056W"], [919]).
enzyme(612, certain, "3.1.3.16", ["YBR125C"], [919]).
enzyme(613, certain, "3.1.3.16", ["YDL006W"], [919]).
enzyme(614, certain, "3.1.3.16", ["YDL047W"], [919]).
enzyme(615, certain, "3.1.3.16", ["YDL134C"], [919]).
enzyme(616, certain, "3.1.3.16", ["YDL188C"], [919]).
enzyme(617, certain, "3.1.3.16", ["YDR075W"], [919]).
enzyme(618, certain, "3.1.3.16", ["YDR436W"], [919]).
enzyme(619, certain, "3.1.3.16", ["YER089C"], [919]).
enzyme(620, certain, "3.1.3.16", ["YER133W"], [919]).
enzyme(621, certain, "3.1.3.16", ["YGR123C"], [919]).
enzyme(622, certain, "3.1.3.16", ["YLR433C"], [919]).
enzyme(623, certain, "3.1.3.16", ["YML016C"], [919]).
enzyme(624, certain, "3.1.3.16", ["YML057W"], [919]).
enzyme(625, certain, "3.1.3.16", ["YNR032W"], [919]).
enzyme(626, certain, "3.1.3.16", ["YPL179W"], [919]).
enzyme(627, certain, "3.1.3.2", ["YAR071W"], [281]).
enzyme(628, certain, "3.1.3.2", ["YBR092C"], [920,921,922]).
enzyme(629, certain, "3.1.3.2", ["YBR093C"], [920,921,922]).
enzyme(630, certain, "3.1.3.2", ["YDL024C"], [920,921,922]).
enzyme(631, certain, "3.1.3.2", ["YHR215W"], [920,921,922]).
enzyme(632, certain, "3.1.3.2", ["YPR073C"], [920,921,922]).
enzyme(633, certain, "3.1.3.21", ["YER062C"], [305]).
enzyme(634, certain, "3.1.3.21", ["YIL053W"], [305]).
enzyme(635, certain, "3.1.3.25", ["YHR046C"], [678]).
enzyme(636, certain, "3.1.3.27", ["U9_"], [671]).
enzyme(637, certain, "3.1.3.3", ["YGR208W"], [469]).
enzyme(638, certain, "3.1.3.33", ["YMR180C"], [918]).
enzyme(639, certain, "3.1.3.33", ["YPL228W"], [918]).
enzyme(640, certain, "3.1.3.41", ["YDL236W"], [920]).
enzyme(641, certain, "3.1.3.46", ["YJL155C"], [780]).
enzyme(642, certain, "3.1.3.48", ["YBR276C"], [917]).
enzyme(643, certain, "3.1.3.48", ["YDL230W"], [917]).
enzyme(644, certain, "3.1.3.48", ["YER075C"], [917]).
enzyme(645, certain, "3.1.3.48", ["YFR028C"], [917]).
enzyme(646, certain, "3.1.3.48", ["YIL113W"], [917]).
enzyme(647, certain, "3.1.3.48", ["YIR026C"], [917]).
enzyme(648, certain, "3.1.3.48", ["YMR036C"], [917]).
enzyme(649, certain, "3.1.3.48", ["YNL053W"], [917]).
enzyme(650, certain, "3.1.3.48", ["YOR208W"], [917]).
enzyme(651, certain, "3.1.3.48", ["YPR073C"], [917]).
enzyme(652, certain, "3.1.3.5", ["U24_"], [525]).
enzyme(653, certain, "3.1.3.5", ["U25_"], [524]).
enzyme(654, certain, "3.1.3.5", ["U26_"], [523]).
enzyme(655, certain, "3.1.3.5", ["U27_"], [522]).
enzyme(656, certain, "3.1.3.5", ["U28_"], [521]).
enzyme(657, certain, "3.1.3.5", ["U29_"], [520]).
enzyme(658, certain, "3.1.3.5", ["U30_"], [519]).
enzyme(659, certain, "3.1.3.5", ["U31_"], [518]).
enzyme(660, certain, "3.1.3.5", ["U32_"], [517]).
enzyme(661, certain, "3.1.3.5", ["U33_"], [516]).
enzyme(662, certain, "3.1.3.5", ["U34_"], [515]).
enzyme(663, certain, "3.1.3.68", ["YHR043C"], [915,916]).
enzyme(664, certain, "3.1.3.68", ["YHR044C"], [915,916]).
enzyme(665, certain, "3.1.3.7", ["YOL064C"], [434]).
enzyme(666, certain, "3.1.4.11", ["YPL268W"], [673]).
enzyme(667, certain, "3.1.4.17", ["YGL248W"], [601]).
enzyme(668, certain, "3.1.4.17", ["YOR360C"], [597,598,599,600,601]).
enzyme(669, certain, "3.1.4.4", ["YKR031C"], [913,914]).
enzyme(670, certain, "3.1.4.46", ["YPL206C"], [910,911,912]).
enzyme(671, certain, "3.2.1.106", ["YGL027C"], [904]).
enzyme(672, certain, "3.2.1.113", ["YJR131W"], [903]).
enzyme(673, certain, "3.2.1.14", ["YLR286C"], [907,908]).
enzyme(674, certain, "3.2.1.15", ["YJR153W"], [905,906]).
enzyme(675, certain, "3.2.1.20", ["YBR299W"], [766]).
enzyme(676, certain, "3.2.1.20", ["YGR287C"], [766]).
enzyme(677, certain, "3.2.1.20", ["YGR292W"], [766]).
enzyme(678, certain, "3.2.1.20", ["YIL172C"], [766]).
enzyme(679, certain, "3.2.1.20", ["YJL216C"], [766]).
enzyme(680, certain, "3.2.1.20", ["YJL221C"], [765,766]).
enzyme(681, certain, "3.2.1.22", ["YBR184W"], [767,768,769,770,771,772,773]).
enzyme(682, certain, "3.2.1.26", ["YIL162W"], [114]).
enzyme(683, certain, "3.2.1.28", ["YBR001C"], [761]).
enzyme(684, certain, "3.2.1.28", ["YDR001C"], [761]).
enzyme(685, certain, "3.2.1.28", ["YPR026W"], [761]).
enzyme(686, certain, "3.2.1.3", ["YDL037C"], [909]).
enzyme(687, certain, "3.2.1.3", ["YIL099W"], [909]).
enzyme(688, certain, "3.2.1.3", ["YIR019C"], [909]).
enzyme(689, certain, "3.2.1.58", ["YDR261C"], [310]).
enzyme(690, certain, "3.2.1.58", ["YGR282C"], [310]).
enzyme(691, certain, "3.2.1.58", ["YLR300W"], [310]).
enzyme(692, certain, "3.2.1.58", ["YOR190W"], [310]).
enzyme(693, certain, "3.2.2.1", ["YDR400W"], [553,554]).
enzyme(694, certain, "3.2.2.10", ["U23_"], [527]).
enzyme(695, certain, "3.2.2.4", ["YBR284W"], [504]).
enzyme(696, certain, "3.2.2.4", ["YJL070C"], [504]).
enzyme(697, certain, "3.2.2.4", ["YML035C"], [504]).
enzyme(698, certain, "3.2.2.5", ["U102_"], [214]).
enzyme(699, certain, "3.2.2.5", ["U106_"], [201]).
enzyme(700, certain, "3.3.1.1", ["YER043C"], [449]).
enzyme(701, certain, "3.3.2.6", ["YNL045W"], [902]).
enzyme(702, certain, "3.5.1.1", ["YDR321W"], [472]).
enzyme(703, certain, "3.5.1.1", ["YLR155C"], [472]).
enzyme(704, certain, "3.5.1.1", ["YLR157C"], [472]).
enzyme(705, certain, "3.5.1.1", ["YLR158C"], [472]).
enzyme(706, certain, "3.5.1.1", ["YLR160C"], [472]).
enzyme(707, certain, "3.5.1.19", ["YGL037C"], [203,223]).
enzyme(708, certain, "3.5.1.2", ["U42_"], [488]).
enzyme(709, certain, "3.5.1.2", ["U43_"], [488]).
enzyme(710, certain, "3.5.1.4", ["YDR242W"], [337,338,391]).
enzyme(711, certain, "3.5.1.4", ["YMR293C"], [391]).
enzyme(712, certain, "3.5.1.41", ["YLR307W"], [304]).
enzyme(713, certain, "3.5.1.41", ["YLR308W"], [304]).
enzyme(714, certain, "3.5.1.54", ["YBR208C"], [733]).
enzyme(715, certain, "3.5.1.89", ["YMR281W"], [900,901]).
enzyme(716, certain, "3.5.1.9", ["U53_"], [351]).
enzyme(717, certain, "3.5.2.3", ["YLR420W"], [592]).
enzyme(718, certain, "3.5.2.5", ["YIR027C"], [623]).
enzyme(719, certain, "3.5.3.1", ["YPL111W"], [390]).
enzyme(720, certain, "3.5.3.19", ["YIR032C"], [621]).
enzyme(721, certain, "3.5.3.4", ["YIR029W"], [622]).
enzyme(722, certain, "3.5.4.1", ["YPR062W"], [586]).
enzyme(723, certain, "3.5.4.10", ["YLR028C"], [607]).
enzyme(724, certain, "3.5.4.10", ["YMR120C"], [898]).
enzyme(725, certain, "3.5.4.12", ["YHR144C"], [569]).
enzyme(726, certain, "3.5.4.13", ["YHR144C"], [526]).
enzyme(727, certain, "3.5.4.16", ["YGR267C"], [261]).
enzyme(728, certain, "3.5.4.19", ["YCL030C"], [385]).
enzyme(729, certain, "3.5.4.2", ["YNL141W"], [535]).
enzyme(730, certain, "3.5.4.25", ["YBL033C"], [287]).
enzyme(731, certain, "3.5.4.26", ["YBR153W"], [286]).
enzyme(732, certain, "3.5.4.3", ["YDL238C"], [899]).
enzyme(733, certain, "3.5.4.4", ["YNL141W"], [563,564]).
enzyme(734, certain, "3.5.4.5", ["YLR245C"], [577,578]).
enzyme(735, certain, "3.5.4.6", ["YML035C"], [602]).
enzyme(736, certain, "3.5.4.9", ["YBR084W"], [240]).
enzyme(737, certain, "3.5.4.9", ["YGR204W"], [239]).
enzyme(738, certain, "3.5.5.1", ["YJL126W"], [319,320,732]).
enzyme(739, certain, "3.5.99.6", ["U44_"], [487]).
enzyme(740, certain, "3.6.1.-", ["U39_"], [506]).
enzyme(741, certain, "3.6.1.-", ["U40_"], [505]).
enzyme(742, certain, "3.6.1.-", ["U87_"], [260]).
enzyme(743, certain, "3.6.1.-", ["YDL100C"], [258]).
enzyme(744, certain, "3.6.1.1", ["YBR011C"], [746]).
enzyme(745, certain, "3.6.1.1", ["YMR267W"], [745]).
enzyme(746, certain, "3.6.1.11", ["YHR201C"], [883,884]).
enzyme(747, certain, "3.6.1.13", ["YBR111C"], [882]).
enzyme(748, certain, "3.6.1.23", ["YBR252W"], [573]).
enzyme(749, certain, "3.6.1.31", ["YCL030C"], [386]).
enzyme(750, certain, "3.6.1.42", ["YEL042W"], [892]).
enzyme(751, certain, "3.6.1.48", ["YBR118W"], [891]).
enzyme(752, certain, "3.6.1.48", ["YDR385W"], [891]).
enzyme(753, certain, "3.6.1.48", ["YJL102W"], [891]).
enzyme(754, certain, "3.6.1.48", ["YKL173W"], [891]).
enzyme(755, certain, "3.6.1.48", ["YKR084C"], [891]).
enzyme(756, certain, "3.6.1.48", ["YLR069C"], [891]).
enzyme(757, certain, "3.6.1.48", ["YOR133W"], [891]).
enzyme(758, certain, "3.6.1.48", ["YOR187W"], [891]).
enzyme(759, certain, "3.6.1.48", ["YPR080W"], [891]).
enzyme(760, certain, "3.6.1.5", ["YER005W"], [885,886,887,888,889,890,891,892,893,894,895,896,897]).
enzyme(761, certain, "3.6.1.50", ["YLL001W"], [891]).
enzyme(762, certain, "3.6.3.1", ["YAL026C"], [896]).
enzyme(763, certain, "3.6.3.1", ["YDR093W"], [896]).
enzyme(764, certain, "3.6.3.1", ["YER166W"], [896]).
enzyme(765, certain, "3.6.3.1", ["YIL048W"], [896]).
enzyme(766, certain, "3.6.3.14", ["Q0080"], [none]).
enzyme(767, certain, "3.6.3.14", ["Q0085"], [none]).
enzyme(768, certain, "3.6.3.14", ["Q0130"], [none]).
enzyme(769, certain, "3.6.3.14", ["YBL099W"], [738]).
enzyme(770, certain, "3.6.3.14", ["YBR039W"], [none]).
enzyme(771, certain, "3.6.3.14", ["YBR127C"], [none]).
enzyme(772, certain, "3.6.3.14", ["YDL004W"], [none]).
enzyme(773, certain, "3.6.3.14", ["YDR298C"], [none]).
enzyme(774, certain, "3.6.3.14", ["YDR377W"], [none]).
enzyme(775, certain, "3.6.3.14", ["YJR121W"], [none]).
enzyme(776, certain, "3.6.3.14", ["YKL016C"], [none]).
enzyme(777, certain, "3.6.3.14", ["YLR295C"], [none]).
enzyme(778, certain, "3.6.3.14", ["YOL077W-A"], [none]).
enzyme(779, certain, "3.6.3.14", ["YPL078C"], [none]).
enzyme(780, certain, "3.6.3.14", ["YPL271W"], [none]).
enzyme(781, certain, "3.6.3.14", ["YPR020W"], [none]).
enzyme(782, certain, "3.7.1.2", ["U60_"], [340]).
enzyme(783, certain, "3.7.1.3", ["YLR231C"], [348,350]).
enzyme(784, certain, "4 2.3.1.85", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(785, certain, "4 2.3.1.85", ["YKL182W"], [704,705,706,707,708,709,710,711,712]).
enzyme(786, certain, "4 2.3.1.85", ["YNR016C"], [704,705,706,707,708,709,710,711,712]).
enzyme(787, certain, "4 2.3.1.85", ["YPL231W"], [704,705,706,707,708,709,710,711,712]).
enzyme(788, certain, "4.-.-.-", ["U88_"], [254]).
enzyme(789, certain, "4.1.1.-", ["YDR538W"], [187]).
enzyme(790, certain, "4.1.1.1", ["YDL080C"], [879,880,881]).
enzyme(791, certain, "4.1.1.1", ["YDR380W"], [879,880,881]).
enzyme(792, certain, "4.1.1.1", ["YGR087C"], [755]).
enzyme(793, certain, "4.1.1.1", ["YLR044C"], [755]).
enzyme(794, certain, "4.1.1.1", ["YLR134W"], [755]).
enzyme(795, certain, "4.1.1.11", ["U98_"], [225]).
enzyme(796, certain, "4.1.1.15", ["YMR250W"], [503]).
enzyme(797, certain, "4.1.1.17", ["YKL184W"], [395]).
enzyme(798, certain, "4.1.1.21", ["YOR128C"], [611]).
enzyme(799, certain, "4.1.1.23", ["YEL021W"], [588]).
enzyme(800, certain, "4.1.1.33", ["YNR043W"], [647]).
enzyme(801, certain, "4.1.1.36", ["U93_"], [230]).
enzyme(802, certain, "4.1.1.37", ["YDR047W"], [196]).
enzyme(803, certain, "4.1.1.45", ["U54_"], [346]).
enzyme(804, certain, "4.1.1.48", ["YKL211C"], [360]).
enzyme(805, certain, "4.1.1.49", ["YKR097W"], [800]).
enzyme(806, certain, "4.1.1.50", ["YOL052C"], [394]).
enzyme(807, certain, "4.1.1.65", ["YGR170W"], [690]).
enzyme(808, certain, "4.1.1.65", ["YNL169C"], [689]).
enzyme(809, certain, "4.1.2.13", ["YKL060C"], [829]).
enzyme(810, certain, "4.1.2.25", ["YNL256W"], [257]).
enzyme(811, certain, "4.1.2.27", ["YDR294C"], [878]).
enzyme(812, certain, "4.1.2.5", ["YEL046C"], [456]).
enzyme(813, certain, "4.1.3.-", ["YNR033W"], [255]).
enzyme(814, certain, "4.1.3.1", ["YER065C"], [802]).
enzyme(815, certain, "4.1.3.1", ["YPR006C"], [802]).
enzyme(816, certain, "4.1.3.27", ["YER090W"], [189,363]).
enzyme(817, certain, "4.1.3.27", ["YKL211C"], [189,363]).
enzyme(818, certain, "4.1.99.3", ["YOR386W"], [877]).
enzyme(819, certain, "4.2.1.10", ["YDR127W"], [374]).
enzyme(820, certain, "4.2.1.11", ["YGR254W"], [823]).
enzyme(821, certain, "4.2.1.11", ["YHR174W"], [823]).
enzyme(822, certain, "4.2.1.11", ["YMR323W"], [823]).
enzyme(823, certain, "4.2.1.11", ["YOR393W"], [823]).
enzyme(824, certain, "4.2.1.11", ["YPL281C"], [823]).
enzyme(825, certain, "4.2.1.19", ["YOR202W"], [383]).
enzyme(826, certain, "4.2.1.2", ["YPL262W"], [805,806]).
enzyme(827, certain, "4.2.1.20", ["YGL026C"], [359]).
enzyme(828, certain, "4.2.1.22", ["YGR155W"], [457]).
enzyme(829, certain, "4.2.1.24", ["YGL040C"], [199]).
enzyme(830, certain, "4.2.1.3", ["YJL200C"], [818]).
enzyme(831, certain, "4.2.1.3", ["YLR304C"], [818]).
enzyme(832, certain, "4.2.1.33", ["YGL009C"], [418,419]).
enzyme(833, certain, "4.2.1.36", ["YDR234W"], [415]).
enzyme(834, certain, "4.2.1.51", ["YNL316C"], [368]).
enzyme(835, certain, "4.2.1.61", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(836, certain, "4.2.1.61", ["YKL182W"], [703,704,705,706,707,708,709,710,711,712,714,715]).
enzyme(837, certain, "4.2.1.61", ["YNR016C"], [704,705,706,707,708,709,710,711,712]).
enzyme(838, certain, "4.2.1.61", ["YPL231W"], [704,705,706,707,708,709,710,711,712]).
enzyme(839, certain, "4.2.1.70", ["YFL001W"], [566]).
enzyme(840, certain, "4.2.1.70", ["YGL063W"], [566]).
enzyme(841, certain, "4.2.1.70", ["YNL292W"], [566]).
enzyme(842, certain, "4.2.1.70", ["YPL212C"], [566]).
enzyme(843, certain, "4.2.1.75", ["YOR278W"], [197]).
enzyme(844, certain, "4.2.1.79", ["U49_"], [416]).
enzyme(845, certain, "4.2.1.79", ["YPR002W"], [876]).
enzyme(846, certain, "4.2.1.9", ["YJR016C"], [421,422]).
enzyme(847, certain, "4.2.3.1", ["YCR053W"], [268,458]).
enzyme(848, certain, "4.2.3.4", ["YDR127W"], [375]).
enzyme(849, certain, "4.2.3.5", ["YGL148W"], [370]).
enzyme(850, certain, "4.3.1.17", ["YCL064C"], [452]).
enzyme(851, certain, "4.3.1.17", ["YIL167W"], [452]).
enzyme(852, certain, "4.3.1.17", ["YIL168W"], [874,875]).
enzyme(853, certain, "4.3.1.19", ["YCL064C"], [454]).
enzyme(854, certain, "4.3.1.19", ["YER086W"], [453]).
enzyme(855, certain, "4.3.1.8", ["YDL205C"], [198]).
enzyme(856, certain, "4.3.2.1", ["YHR018C"], [396]).
enzyme(857, certain, "4.3.2.2", ["YLR359W"], [605,609]).
enzyme(858, certain, "4.4.1.1", ["YAL012W"], [446]).
enzyme(859, certain, "4.4.1.17", ["YAL039C"], [872,873]).
enzyme(860, certain, "4.4.1.5", ["YML004C"], [749]).
enzyme(861, certain, "4.4.1.8", ["YFR055W"], [450]).
enzyme(862, certain, "4.6.1.1", ["YJL005W"], [620]).
enzyme(863, certain, "4.99.1.1", ["YOR176W"], [193]).
enzyme(864, certain, "5.1.3.1", ["YJL121C"], [793]).
enzyme(865, certain, "5.1.3.2", ["YBR019C"], [775]).
enzyme(866, certain, "5.1.3.3", ["YBR019C"], [871]).
enzyme(867, certain, "5.2.1.2", ["U59_"], [341]).
enzyme(868, certain, "5.2.1.8", ["YCR069W"], [870]).
enzyme(869, certain, "5.2.1.8", ["YDR155C"], [870]).
enzyme(870, certain, "5.2.1.8", ["YDR304C"], [870]).
enzyme(871, certain, "5.2.1.8", ["YDR519W"], [870]).
enzyme(872, certain, "5.2.1.8", ["YHR057C"], [870]).
enzyme(873, certain, "5.2.1.8", ["YJR017C"], [870]).
enzyme(874, certain, "5.2.1.8", ["YJR032W"], [870]).
enzyme(875, certain, "5.2.1.8", ["YLR216C"], [870]).
enzyme(876, certain, "5.2.1.8", ["YLR449W"], [870]).
enzyme(877, certain, "5.2.1.8", ["YML074C"], [870]).
enzyme(878, certain, "5.2.1.8", ["YML078W"], [870]).
enzyme(879, certain, "5.2.1.8", ["YNL135C"], [870]).
enzyme(880, certain, "5.2.1.8", ["YNR028W"], [870]).
enzyme(881, certain, "5.3.1.1", ["YDR050C"], [828]).
enzyme(882, certain, "5.3.1.16", ["YIL020C"], [384]).
enzyme(883, certain, "5.3.1.24", ["YDR007W"], [361]).
enzyme(884, certain, "5.3.1.6", ["YOR095C"], [792]).
enzyme(885, certain, "5.3.1.8", ["YER003C"], [784]).
enzyme(886, certain, "5.3.1.9", ["YBR196C"], [833,834,835]).
enzyme(887, certain, "5.3.3.1", ["YGL001C"], [634,637]).
enzyme(888, certain, "5.3.3.2", ["YPL117C"], [646]).
enzyme(889, certain, "5.3.3.5", ["U14_"], [625]).
enzyme(890, certain, "5.4.2.1", ["YDL021W"], [824]).
enzyme(891, certain, "5.4.2.1", ["YKL152C"], [824,825]).
enzyme(892, certain, "5.4.2.1", ["YOL056W"], [824]).
enzyme(893, certain, "5.4.2.2", ["YKL127W"], [785,786]).
enzyme(894, certain, "5.4.2.2", ["YMR105C"], [785,786]).
enzyme(895, certain, "5.4.2.3", ["YEL058W"], [489,498]).
enzyme(896, certain, "5.4.2.8", ["YFL045C"], [783]).
enzyme(897, certain, "5.4.2.8", ["YMR278W"], [869]).
enzyme(898, certain, "5.4.99.5", ["YPR060C"], [369]).
enzyme(899, certain, "5.4.99.7", ["YHR072W"], [641]).
enzyme(900, certain, "5.5.1.4", ["YJL153C"], [679]).
enzyme(901, certain, "6.1.1.1", ["YGR185C"], [868]).
enzyme(902, certain, "6.1.1.1", ["YPL097W"], [868]).
enzyme(903, certain, "6.1.1.10", ["YGR171C"], [860,861]).
enzyme(904, certain, "6.1.1.10", ["YGR264C"], [860,861]).
enzyme(905, certain, "6.1.1.11", ["YDR023W"], [859]).
enzyme(906, certain, "6.1.1.11", ["YHR011W"], [859]).
enzyme(907, certain, "6.1.1.12", ["YLL018C"], [857,858]).
enzyme(908, certain, "6.1.1.12", ["YPL104W"], [857,858]).
enzyme(909, certain, "6.1.1.14", ["YBR121C"], [856]).
enzyme(910, certain, "6.1.1.14", ["YPR081C"], [856]).
enzyme(911, certain, "6.1.1.15", ["YER087W"], [855]).
enzyme(912, certain, "6.1.1.15", ["YHR020W"], [855]).
enzyme(913, certain, "6.1.1.16", ["YNL247W"], [854]).
enzyme(914, certain, "6.1.1.17", ["YGL245W"], [192]).
enzyme(915, certain, "6.1.1.17", ["YOL033W"], [191]).
enzyme(916, certain, "6.1.1.18", ["YOR168W"], [853]).
enzyme(917, certain, "6.1.1.19", ["YDR341C"], [389]).
enzyme(918, certain, "6.1.1.19", ["YHR091C"], [389]).
enzyme(919, certain, "6.1.1.2", ["YDR268W"], [339]).
enzyme(920, certain, "6.1.1.2", ["YOL097C"], [867]).
enzyme(921, certain, "6.1.1.20", ["YFL022C"], [852]).
enzyme(922, certain, "6.1.1.20", ["YLR060W"], [852]).
enzyme(923, certain, "6.1.1.20", ["YPR047W"], [852]).
enzyme(924, certain, "6.1.1.21", ["YPR033C"], [378]).
enzyme(925, certain, "6.1.1.22", ["YCR024C"], [474]).
enzyme(926, certain, "6.1.1.22", ["YHR019C"], [851]).
enzyme(927, certain, "6.1.1.23", ["YHR019C"], [473]).
enzyme(928, certain, "6.1.1.3", ["YIL078W"], [866]).
enzyme(929, certain, "6.1.1.3", ["YKL194C"], [866]).
enzyme(930, certain, "6.1.1.4", ["YLR382C"], [865]).
enzyme(931, certain, "6.1.1.4", ["YPL160W"], [865]).
enzyme(932, certain, "6.1.1.5", ["YBL076C"], [864]).
enzyme(933, certain, "6.1.1.5", ["YPL040C"], [864]).
enzyme(934, certain, "6.1.1.6", ["YDR037W"], [407]).
enzyme(935, certain, "6.1.1.6", ["YNL073W"], [406]).
enzyme(936, certain, "6.1.1.7", ["YOR335C"], [863]).
enzyme(937, certain, "6.1.1.9", ["YGR094W"], [862]).
enzyme(938, certain, "6.2.1.1", ["YAL054C"], [758]).
enzyme(939, certain, "6.2.1.1", ["YLR153C"], [758]).
enzyme(940, certain, "6.2.1.3", ["YER015W"], [731]).
enzyme(941, certain, "6.2.1.3", ["YIL009W"], [731]).
enzyme(942, certain, "6.2.1.3", ["YMR246W"], [731]).
enzyme(943, certain, "6.2.1.3", ["YOR317W"], [731]).
enzyme(944, certain, "6.2.1.4", ["YGR244C"], [811]).
enzyme(945, certain, "6.2.1.4", ["YOR142W"], [810]).
enzyme(946, certain, "6.2.1.5", ["YGR244C"], [811]).
enzyme(947, certain, "6.2.1.5", ["YOR142W"], [810]).
enzyme(948, certain, "6.3.1.2", ["YPR035W"], [490]).
enzyme(949, certain, "6.3.2.1", ["YIL145C"], [233]).
enzyme(950, certain, "6.3.2.12", ["U89_"], [251]).
enzyme(951, certain, "6.3.2.17", ["YKL132C"], [246]).
enzyme(952, certain, "6.3.2.17", ["YMR113W"], [246]).
enzyme(953, certain, "6.3.2.17", ["YOR241W"], [246]).
enzyme(954, certain, "6.3.2.19", ["YBR082C"], [850]).
enzyme(955, certain, "6.3.2.19", ["YDL064W"], [850]).
enzyme(956, certain, "6.3.2.19", ["YDR054C"], [850]).
enzyme(957, certain, "6.3.2.19", ["YDR059C"], [850]).
enzyme(958, certain, "6.3.2.19", ["YDR092W"], [850]).
enzyme(959, certain, "6.3.2.19", ["YDR177W"], [850]).
enzyme(960, certain, "6.3.2.19", ["YEL012W"], [850]).
enzyme(961, certain, "6.3.2.19", ["YER100W"], [850]).
enzyme(962, certain, "6.3.2.19", ["YGL058W"], [850]).
enzyme(963, certain, "6.3.2.19", ["YGR133W"], [850]).
enzyme(964, certain, "6.3.2.19", ["YKL210W"], [850]).
enzyme(965, certain, "6.3.2.19", ["YLR306W"], [850]).
enzyme(966, certain, "6.3.2.19", ["YMR022W"], [850]).
enzyme(967, certain, "6.3.2.19", ["YOR339C"], [850]).
enzyme(968, certain, "6.3.2.2", ["YJL101C"], [316]).
enzyme(969, certain, "6.3.2.3", ["YOL049W"], [315]).
enzyme(970, certain, "6.3.2.5", ["U92_"], [231]).
enzyme(971, certain, "6.3.2.6", ["YAR015W"], [610]).
enzyme(972, certain, "6.3.3.1", ["YGL234W"], [612]).
enzyme(973, certain, "6.3.3.2", ["U90_"], [248]).
enzyme(974, certain, "6.3.3.2", ["U91_"], [247]).
enzyme(975, certain, "6.3.3.2", ["YER183C"], [849]).
enzyme(976, certain, "6.3.3.3", ["YNR057C"], [263]).
enzyme(977, certain, "6.3.4.1", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(978, certain, "6.3.4.1", ["YKL182W"], [704,705,706,707,708,709,710,711,712]).
enzyme(979, certain, "6.3.4.1", ["YMR217W"], [603]).
enzyme(980, certain, "6.3.4.1", ["YNR016C"], [704,705,706,707,708,709,710,711,712]).
enzyme(981, certain, "6.3.4.1", ["YPL231W"], [704,705,706,707,708,709,710,711,712]).
enzyme(982, certain, "6.3.4.10", ["YDL141W"], [846,847]).
enzyme(983, certain, "6.3.4.11", ["YDL141W"], [845]).
enzyme(984, certain, "6.3.4.13", ["YGL234W"], [615]).
enzyme(985, certain, "6.3.4.14", ["YNR016C"], [716]).
enzyme(986, certain, "6.3.4.15", ["YDL141W"], [844]).
enzyme(987, certain, "6.3.4.2", ["YBL039C"], [567,568]).
enzyme(988, certain, "6.3.4.2", ["YJR103W"], [567,568]).
enzyme(989, certain, "6.3.4.3", ["YBR084W"], [242]).
enzyme(990, certain, "6.3.4.3", ["YGR204W"], [241]).
enzyme(991, certain, "6.3.4.4", ["YNL220W"], [606]).
enzyme(992, certain, "6.3.4.5", ["YOL058W"], [397]).
enzyme(993, certain, "6.3.4.6", ["YBR208C"], [734]).
enzyme(994, certain, "6.3.4.9", ["YDL141W"], [848]).
enzyme(995, certain, "6.3.5.1", ["YHR074W"], [208,217]).
enzyme(996, certain, "6.3.5.2", ["YMR217W"], [603]).
enzyme(997, certain, "6.3.5.3", ["YGR061C"], [613]).
enzyme(998, certain, "6.3.5.4", ["YGR124W"], [476]).
enzyme(999, certain, "6.3.5.4", ["YPR145W"], [476]).
enzyme(1000, certain, "6.3.5.5", ["YJL130C"], [400]).
enzyme(1001, certain, "6.3.5.5", ["YJR109C"], [400]).
enzyme(1002, certain, "6.3.5.5", ["YOR303W"], [1040,none]).
enzyme(1003, certain, "6.4.1.1", ["YBR218C"], [798]).
enzyme(1004, certain, "6.4.1.1", ["YGL062W"], [798]).
enzyme(1005, certain, "6.4.1.2", ["YGR037C"], [704,705,706,707,708,709,710,711,712]).
enzyme(1006, certain, "6.4.1.2", ["YKL182W"], [704,705,706,707,708,709,710,711,712]).
enzyme(1007, certain, "6.4.1.2", ["YNR016C"], [704,705,706,707,708,709,710,711,712,716]).
enzyme(1008, certain, "6.4.1.2", ["YPL231W"], [704,705,706,707,708,709,710,711,712]).
enzyme(1009, certain, "6.5.1.1", ["YDL164C"], [843]).
enzyme(1010, certain, "6.5.1.1", ["YOR005C"], [843]).
enzyme(1011, certain, "6.5.1.3", ["YJL087C"], [842]).
enzyme(1012, certain, "6.5.1.4", ["YOL010W"], [841]).
enzyme(1013, certain, -, ["YER061C"], [717,718,719,720,721,722,723,724,725,none]).
enzyme(1014, certain, -, ["YKL055C"], [717,718,719,720,721,722,723,724,725,none]).
enzyme(1015, certain, -, ["YKL192C"], [717,718,719,720,721,722,723,724,725]).
enzyme(1016, certain, -, ["YOR221C"], [717,718,719,720,721,722,723,724,725,none]).
enzyme(1017, certain, none, ["U109_"], [180]).
enzyme(1018, certain, none, ["U10_"], [664]).
enzyme(1019, certain, none, ["U110_"], [179]).
enzyme(1020, certain, none, ["U111_"], [178]).
enzyme(1021, certain, none, ["U112_"], [177]).
enzyme(1022, certain, none, ["U113_"], [176]).
enzyme(1023, certain, none, ["U114_"], [175]).
enzyme(1024, certain, none, ["U115_"], [174]).
enzyme(1025, certain, none, ["U116_"], [173]).
enzyme(1026, certain, none, ["U117_"], [172]).
enzyme(1027, certain, none, ["U118_"], [171]).
enzyme(1028, certain, none, ["U119_"], [170]).
enzyme(1029, certain, none, ["U11_"], [663]).
enzyme(1030, certain, none, ["U120_"], [169]).
enzyme(1031, certain, none, ["U121_"], [168]).
enzyme(1032, certain, none, ["U122_"], [167]).
enzyme(1033, certain, none, ["U123_"], [166]).
enzyme(1034, certain, none, ["U124_"], [165]).
enzyme(1035, certain, none, ["U125_"], [164]).
enzyme(1036, certain, none, ["U126_"], [163]).
enzyme(1037, certain, none, ["U127_"], [162]).
enzyme(1038, certain, none, ["U128_"], [161]).
enzyme(1039, certain, none, ["U129_"], [160]).
enzyme(1040, certain, none, ["U12_"], [627]).
enzyme(1041, certain, none, ["U130_"], [153]).
enzyme(1042, certain, none, ["U131_"], [148]).
enzyme(1043, certain, none, ["U132_"], [147]).
enzyme(1044, certain, none, ["U133_"], [146]).
enzyme(1045, certain, none, ["U134_"], [145]).
enzyme(1046, certain, none, ["U135_"], [144]).
enzyme(1047, certain, none, ["U136_"], [141]).
enzyme(1048, certain, none, ["U137_"], [140]).
enzyme(1049, certain, none, ["U138_"], [138]).
enzyme(1050, certain, none, ["U139_"], [137]).
enzyme(1051, certain, none, ["U13_"], [626]).
enzyme(1052, certain, none, ["U140_"], [136]).
enzyme(1053, certain, none, ["U141_"], [135]).
enzyme(1054, certain, none, ["U142_"], [134]).
enzyme(1055, certain, none, ["U143_"], [133]).
enzyme(1056, certain, none, ["U144_"], [132]).
enzyme(1057, certain, none, ["U145_"], [131]).
enzyme(1058, certain, none, ["U146_"], [130]).
enzyme(1059, certain, none, ["U147_"], [129]).
enzyme(1060, certain, none, ["U148_"], [128]).
enzyme(1061, certain, none, ["U149_"], [127]).
enzyme(1062, certain, none, ["U150_"], [126]).
enzyme(1063, certain, none, ["U151_"], [123]).
enzyme(1064, certain, none, ["U152_"], [122]).
enzyme(1065, certain, none, ["U153_"], [115]).
enzyme(1066, certain, none, ["U154_"], [113]).
enzyme(1067, certain, none, ["U155_"], [111]).
enzyme(1068, certain, none, ["U156_"], [110]).
enzyme(1069, certain, none, ["U157_"], [109]).
enzyme(1070, certain, none, ["U158_"], [108]).
enzyme(1071, certain, none, ["U159_"], [107]).
enzyme(1072, certain, none, ["U160_"], [106]).
enzyme(1073, certain, none, ["U161_"], [105]).
enzyme(1074, certain, none, ["U162_"], [104]).
enzyme(1075, certain, none, ["U163_"], [101]).
enzyme(1076, certain, none, ["U164_"], [100]).
enzyme(1077, certain, none, ["U165_"], [99]).
enzyme(1078, certain, none, ["U166_"], [98]).
enzyme(1079, certain, none, ["U167_"], [97]).
enzyme(1080, certain, none, ["U168_"], [96]).
enzyme(1081, certain, none, ["U170_"], [95]).
enzyme(1082, certain, none, ["U171_"], [67]).
enzyme(1083, certain, none, ["U172_"], [66]).
enzyme(1084, certain, none, ["U173_"], [61]).
enzyme(1085, certain, none, ["U174_"], [56]).
enzyme(1086, certain, none, ["U175_"], [55]).
enzyme(1087, certain, none, ["U176_"], [53]).
enzyme(1088, certain, none, ["U177_"], [52]).
enzyme(1089, certain, none, ["U178_"], [57]).
enzyme(1090, certain, none, ["U179_"], [51]).
enzyme(1091, certain, none, ["U180_"], [50]).
enzyme(1092, certain, none, ["U181_"], [49]).
enzyme(1093, certain, none, ["U182_"], [48]).
enzyme(1094, certain, none, ["U183_"], [47]).
enzyme(1095, certain, none, ["U184_"], [46]).
enzyme(1096, certain, none, ["U185_"], [56]).
enzyme(1097, certain, none, ["U186_"], [53]).
enzyme(1098, certain, none, ["U187_"], [51]).
enzyme(1099, certain, none, ["U188_"], [48]).
enzyme(1100, certain, none, ["U189_"], [47]).
enzyme(1101, certain, none, ["U190_"], [46]).
enzyme(1102, certain, none, ["U191_"], [56]).
enzyme(1103, certain, none, ["U192_"], [55]).
enzyme(1104, certain, none, ["U193_"], [53]).
enzyme(1105, certain, none, ["U194_"], [52]).
enzyme(1106, certain, none, ["U195_"], [51]).
enzyme(1107, certain, none, ["U196_"], [50]).
enzyme(1108, certain, none, ["U197_"], [49]).
enzyme(1109, certain, none, ["U198_"], [48]).
enzyme(1110, certain, none, ["U199_"], [47]).
enzyme(1111, certain, none, ["U200_"], [46]).
enzyme(1112, certain, none, ["U201_"], [45]).
enzyme(1113, certain, none, ["U202_"], [44]).
enzyme(1114, certain, none, ["U203_"], [42]).
enzyme(1115, certain, none, ["U204_"], [41]).
enzyme(1116, certain, none, ["U205_"], [40]).
enzyme(1117, certain, none, ["U206_"], [33]).
enzyme(1118, certain, none, ["U207_"], [32]).
enzyme(1119, certain, none, ["U208_"], [31]).
enzyme(1120, certain, none, ["U209_"], [30]).
enzyme(1121, certain, none, ["U210_"], [29]).
enzyme(1122, certain, none, ["U211_"], [28]).
enzyme(1123, certain, none, ["U212_"], [27]).
enzyme(1124, certain, none, ["U213_"], [26]).
enzyme(1125, certain, none, ["U214_"], [23]).
enzyme(1126, certain, none, ["U215_"], [21]).
enzyme(1127, certain, none, ["U216_"], [20]).
enzyme(1128, certain, none, ["U217_"], [16]).
enzyme(1129, certain, none, ["U218_"], [15]).
enzyme(1130, certain, none, ["U219_"], [14]).
enzyme(1131, certain, none, ["U220_"], [13]).
enzyme(1132, certain, none, ["U221_"], [12]).
enzyme(1133, certain, none, ["U222_"], [10]).
enzyme(1134, certain, none, ["U223_"], [9]).
enzyme(1135, certain, none, ["U224_"], [8]).
enzyme(1136, certain, none, ["U225_"], [7]).
enzyme(1137, certain, none, ["U226_"], [6]).
enzyme(1138, certain, none, ["U227_"], [5]).
enzyme(1139, certain, none, ["U228_"], [4]).
enzyme(1140, certain, none, ["U229_"], [1]).
enzyme(1141, certain, none, ["U3_"], [698]).
enzyme(1142, certain, none, ["U41_"], [494]).
enzyme(1143, certain, none, ["U4_"], [698]).
enzyme(1144, certain, none, ["U50_"], [413]).
enzyme(1145, certain, none, ["U5_"], [697]).
enzyme(1146, certain, none, ["U66_"], [328]).
enzyme(1147, certain, none, ["U67_"], [327]).
enzyme(1148, certain, none, ["U69_"], [299]).
enzyme(1149, certain, none, ["U6_"], [697]).
enzyme(1150, certain, none, ["U70_"], [296]).
enzyme(1151, certain, none, ["U71_"], [293]).
enzyme(1152, certain, none, ["U72_"], [292]).
enzyme(1153, certain, none, ["U73_"], [292]).
enzyme(1154, certain, none, ["U74_"], [292]).
enzyme(1155, certain, none, ["U75_"], [292]).
enzyme(1156, certain, none, ["U78_"], [284]).
enzyme(1157, certain, none, ["U79_"], [283]).
enzyme(1158, certain, none, ["U7_"], [696]).
enzyme(1159, certain, none, ["U85_"], [266]).
enzyme(1160, certain, none, ["YBL030C"], [159]).
enzyme(1161, certain, none, ["YBL042C"], [54]).
enzyme(1162, certain, none, ["YBR021W"], [62]).
enzyme(1163, certain, none, ["YBR036C"], [660]).
enzyme(1164, certain, none, ["YBR068C"], [79,80,81,83,84,85,86,90]).
enzyme(1165, certain, none, ["YBR069C"], [77,79,80,81,85,86,87,90]).
enzyme(1166, certain, none, ["YBR085W"], [159]).
enzyme(1167, certain, none, ["YBR132C"], [72]).
enzyme(1168, certain, none, ["YBR291C"], [149,150,151]).
enzyme(1169, certain, none, ["YBR294W"], [35]).
enzyme(1170, certain, none, ["YBR298C"], [112]).
enzyme(1171, certain, none, ["YCL025C"], [119,77,78,79,80,83,84,85,86,87,88,92,94]).
enzyme(1172, certain, none, ["YCR024C-A"], [22]).
enzyme(1173, certain, none, ["YCR028C"], [24]).
enzyme(1174, certain, none, ["YCR032W"], [43]).
enzyme(1175, certain, none, ["YDL210W"], [69,73]).
enzyme(1176, certain, none, ["YDL245C"], [117,118,121]).
enzyme(1177, certain, none, ["YDR046C"], [79,80,81,83,84,85,86,90]).
enzyme(1178, certain, none, ["YDR284C"], [669]).
enzyme(1179, certain, none, ["YDR294C"], [655]).
enzyme(1180, certain, none, ["YDR297W"], [665]).
enzyme(1181, certain, none, ["YDR342C"], [117,118,121]).
enzyme(1182, certain, none, ["YDR343C"], [117,118,121]).
enzyme(1183, certain, none, ["YDR345C"], [117,118,121]).
enzyme(1184, certain, none, ["YDR497C"], [116]).
enzyme(1185, certain, none, ["YDR503C"], [668]).
enzyme(1186, certain, none, ["YDR508C"], [77,78,84,85,88,90,92]).
enzyme(1187, certain, none, ["YDR536W"], [119,120,121]).
enzyme(1188, certain, none, ["YEL017C-A"], [22]).
enzyme(1189, certain, none, ["YEL063C"], [68,93]).
enzyme(1190, certain, none, ["YEL069C"], [117,118,121]).
enzyme(1191, certain, none, ["YER053C"], [157]).
enzyme(1192, certain, none, ["YER056C"], [58,59,60]).
enzyme(1193, certain, none, ["YER060W"], [58,59,60]).
enzyme(1194, certain, none, ["YER060W-A"], [58,59,60]).
enzyme(1195, certain, none, ["YFL011W"], [117,118,120,121]).
enzyme(1196, certain, none, ["YFL055W"], [119,78,91]).
enzyme(1197, certain, none, ["YGL008C"], [22]).
enzyme(1198, certain, none, ["YGL077C"], [71]).
enzyme(1199, certain, none, ["YGL186C"], [58,59,60]).
enzyme(1200, certain, none, ["YGR055W"], [84]).
enzyme(1201, certain, none, ["YGR065C"], [11]).
enzyme(1202, certain, none, ["YGR121C"], [37]).
enzyme(1203, certain, none, ["YGR125W"], [35]).
enzyme(1204, certain, none, ["YGR191W"], [87]).
enzyme(1205, certain, none, ["YHL016C"], [38]).
enzyme(1206, certain, none, ["YHL036W"], [84]).
enzyme(1207, certain, none, ["YHR092C"], [117,118,121]).
enzyme(1208, certain, none, ["YHR094C"], [117,118,121]).
enzyme(1209, certain, none, ["YHR096C"], [117,118,121]).
enzyme(1210, certain, none, ["YIL134W"], [139]).
enzyme(1211, certain, none, ["YIR028W"], [18]).
enzyme(1212, certain, none, ["YJL129C"], [36]).
enzyme(1213, certain, none, ["YJL134W"], [656]).
enzyme(1214, certain, none, ["YJL214W"], [117,118,121]).
enzyme(1215, certain, none, ["YJL219W"], [117,118,120,121]).
enzyme(1216, certain, none, ["YJR077C"], [158]).
enzyme(1217, certain, none, ["YJR095W"], [125]).
enzyme(1218, certain, none, ["YJR152W"], [17]).
enzyme(1219, certain, none, ["YJR158W"], [117,118,121]).
enzyme(1220, certain, none, ["YKL004W"], [661]).
enzyme(1221, certain, none, ["YKL120W"], [152]).
enzyme(1222, certain, none, ["YKL217W"], [102,39]).
enzyme(1223, certain, none, ["YKR039W"], [119,68,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94]).
enzyme(1224, certain, none, ["YKR053C"], [656]).
enzyme(1225, certain, none, ["YKR093W"], [63,64,65]).
enzyme(1226, certain, none, ["YLL043W"], [103]).
enzyme(1227, certain, none, ["YLL061W"], [75]).
enzyme(1228, certain, none, ["YLR081W"], [120,121]).
enzyme(1229, certain, none, ["YLR092W"], [35]).
enzyme(1230, certain, none, ["YLR100C"], [633,636]).
enzyme(1231, certain, none, ["YLR138W"], [25]).
enzyme(1232, certain, none, ["YLR237W"], [19]).
enzyme(1233, certain, none, ["YLR260W"], [657,658]).
enzyme(1234, certain, none, ["YLR348C"], [154,155,156]).
enzyme(1235, certain, none, ["YML123C"], [34]).
enzyme(1236, certain, none, ["YMR011W"], [117,118,121]).
enzyme(1237, certain, none, ["YMR056C"], [159]).
enzyme(1238, certain, none, ["YMR202W"], [631]).
enzyme(1239, certain, none, ["YMR272C"], [662]).
enzyme(1240, certain, none, ["YNL142W"], [37]).
enzyme(1241, certain, none, ["YNL268W"], [76]).
enzyme(1242, certain, none, ["YNL270C"], [93]).
enzyme(1243, certain, none, ["YNL318C"], [120]).
enzyme(1244, certain, none, ["YNR056C"], [70]).
enzyme(1245, certain, none, ["YNR072W"], [117,118,121]).
enzyme(1246, certain, none, ["YOL020W"], [80,81,83,89,90,94]).
enzyme(1247, certain, none, ["YOL103W"], [116]).
enzyme(1248, certain, none, ["YOL156W"], [117,118,120,121]).
enzyme(1249, certain, none, ["YOR011W"], [2,3]).
enzyme(1250, certain, none, ["YOR071C"], [19]).
enzyme(1251, certain, none, ["YOR100C"], [142]).
enzyme(1252, certain, none, ["YOR130C"], [143]).
enzyme(1253, certain, none, ["YOR171C"], [657,658]).
enzyme(1254, certain, none, ["YOR192C"], [19]).
enzyme(1255, certain, none, ["YOR222W"], [124]).
enzyme(1256, certain, none, ["YOR348C"], [73,82,89,94]).
enzyme(1257, certain, none, ["YPL036W"], [22]).
enzyme(1258, certain, none, ["YPL057C"], [660]).
enzyme(1259, certain, none, ["YPL134C"], [124]).
enzyme(1260, certain, none, ["YPL265W"], [119,78,88,89,91,92,94]).
enzyme(1261, certain, none, ["YPL274W"], [74]).
enzyme(1262, certain, none, ["YPR138C"], [37]).

metabolite("23DAACP").
metabolite("2HDACP").
metabolite("2MANPD").
metabolite("2N6H").
metabolite("2NPMB").
metabolite("2NPMMB").
metabolite("2NPMP").
metabolite("2NPPP").
metabolite("3OACP").
metabolite("A6RP").
metabolite("ABUT").
metabolite("AMG").
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
metabolite("C00023").
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
metabolite("C00164").
metabolite("C00165").
metabolite("C00166").
metabolite("C00169").
metabolite("C00170").
metabolite("C00173").
metabolite("C00178").
metabolite("C00181").
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
metabolite("C00354").
metabolite("C00356").
metabolite("C00357").
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
metabolite("C00424").
metabolite("C00430").
metabolite("C00437").
metabolite("C00438").
metabolite("C00440").
metabolite("C00441").
metabolite("C00442").
metabolite("C00445").
metabolite("C00446").
metabolite("C00447").
metabolite("C00448").
metabolite("C00449").
metabolite("C00455").
metabolite("C00458").
metabolite("C00459").
metabolite("C00460").
metabolite("C00461").
metabolite("C00464").
metabolite("C00469").
metabolite("C00470").
metabolite("C00472").
metabolite("C00475").
metabolite("C00487").
metabolite("C00490").
metabolite("C00492").
metabolite("C00493").
metabolite("C00496").
metabolite("C00499").
metabolite("C00510").
metabolite("C00517").
metabolite("C00522").
metabolite("C00524").
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
metabolite("C00621").
metabolite("C00624").
metabolite("C00627").
metabolite("C00631").
metabolite("C00632").
metabolite("C00636").
metabolite("C00640").
metabolite("C00641").
metabolite("C00644").
metabolite("C00647").
metabolite("C00652").
metabolite("C00655").
metabolite("C00665").
metabolite("C00668").
metabolite("C00669").
metabolite("C00670").
metabolite("C00673").
metabolite("C00677").
metabolite("C00685").
metabolite("C00689").
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
metabolite("C00931").
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
metabolite("C01024").
metabolite("C01031").
metabolite("C01034").
metabolite("C01035").
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
metabolite("C01152").
metabolite("C01153").
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
metabolite("C01228").
metabolite("C01233").
metabolite("C01235").
metabolite("C01236").
metabolite("C01241").
metabolite("C01242").
metabolite("C01245").
metabolite("C01246").
metabolite("C01250").
metabolite("C01251").
metabolite("C01260").
metabolite("C01261").
metabolite("C01267").
metabolite("C01268").
metabolite("C01269").
metabolite("C01271").
metabolite("C01277").
metabolite("C01279").
metabolite("C01288").
metabolite("C01300").
metabolite("C01304").
metabolite("C01326").
metabolite("C01328").
metabolite("C01330").
metabolite("C01335").
metabolite("C01346").
metabolite("C01352").
metabolite("C01371").
metabolite("C01419").
metabolite("C01429").
metabolite("C01438").
metabolite("C01452").
metabolite("C01530").
metabolite("C01551").
metabolite("C01598").
metabolite("C01635").
metabolite("C01636").
metabolite("C01637").
metabolite("C01638").
metabolite("C01639").
metabolite("C01640").
metabolite("C01642").
metabolite("C01643").
metabolite("C01644").
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
metabolite("C01755").
metabolite("C01762").
metabolite("C01801").
metabolite("C01811").
metabolite("C01883").
metabolite("C01885").
metabolite("C01909").
metabolite("C01931").
metabolite("C01953").
metabolite("C01967").
metabolite("C01997").
metabolite("C02038").
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
metabolite("C02248").
metabolite("C02282").
metabolite("C02291").
metabolite("C02391").
metabolite("C02407").
metabolite("C02412").
metabolite("C02416").
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
metabolite("C02571").
metabolite("C02593").
metabolite("C02631").
metabolite("C02637").
metabolite("C02656").
metabolite("C02667").
metabolite("C02693").
metabolite("C02700").
metabolite("C02702").
metabolite("C02714").
metabolite("C02737").
metabolite("C02739").
metabolite("C02743").
metabolite("C02794").
metabolite("C02839").
metabolite("C02843").
metabolite("C02863").
metabolite("C02934").
metabolite("C02938").
metabolite("C02972").
metabolite("C02984").
metabolite("C02987").
metabolite("C02988").
metabolite("C02992").
metabolite("C03011").
metabolite("C03021").
metabolite("C03023").
metabolite("C03024").
metabolite("C03028").
metabolite("C03078").
metabolite("C03082").
metabolite("C03090").
metabolite("C03103").
metabolite("C03120").
metabolite("C03125").
metabolite("C03127").
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
metabolite("C03541").
metabolite("C03633").
metabolite("C03635").
metabolite("C03638").
metabolite("C03722").
metabolite("C03723").
metabolite("C03734").
metabolite("C03785").
metabolite("C03794").
metabolite("C03798").
metabolite("C03800").
metabolite("C03812").
metabolite("C03824").
metabolite("C03836").
metabolite("C03838").
metabolite("C03849").
metabolite("C03862").
metabolite("C03880").
metabolite("C03881").
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
metabolite("C04213").
metabolite("C04225").
metabolite("C04230").
metabolite("C04232").
metabolite("C04233").
metabolite("C04236").
metabolite("C04246").
metabolite("C04248").
metabolite("C04250").
metabolite("C04252").
metabolite("C04253").
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
metabolite("C04411").
metabolite("C04425").
metabolite("C04431").
metabolite("C04432").
metabolite("C04441").
metabolite("C04454").
metabolite("C04489").
metabolite("C04494").
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
metabolite("C04637").
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
metabolite("C04732").
metabolite("C04733").
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
metabolite("C05309").
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
metabolite("C05487").
metabolite("C05488").
metabolite("C05489").
metabolite("C05512").
metabolite("C05533").
metabolite("C05535").
metabolite("C05560").
metabolite("C05643").
metabolite("C05662").
metabolite("C05688").
metabolite("C05699").
metabolite("C05700").
metabolite("C05701").
metabolite("C05702").
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
metabolite("C05860").
metabolite("C05862").
metabolite("C05863").
metabolite("C05864").
metabolite("C05872").
metabolite("C05873").
metabolite("C05874").
metabolite("C05876").
metabolite("C05881").
metabolite("C05921").
metabolite("C05925").
metabolite("C05980").
metabolite("C06006").
metabolite("C06010").
metabolite("C06015").
metabolite("C06054").
metabolite("C06055").
metabolite("C06056").
metabolite("C06113").
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
metabolite("C08249").
metabolite("C08817").
metabolite("C11355").
metabolite("C11455").
metabolite("C11475").
metabolite("C11482").
metabolite("C11572").
metabolite("C161").
metabolite("C161ACP").
metabolite("C16A").
metabolite("C181").
metabolite("C182ACP").
metabolite("C240COA").
metabolite("C260COA").
metabolite("CER2").
metabolite("CER3").
metabolite("CO2").
metabolite("CPAD5P").
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
metabolite("OPP").
metabolite("PHSP").
metabolite("PRLP").
metabolite("PSPH").
% I had to add it to match Experiment 18 in data.pl
metabolite("C00463").

orf("Q0045").
orf("Q0080").
orf("Q0085").
orf("Q0105").
orf("Q0130").
orf("Q0250").
orf("Q0275").
orf("U100_").
orf("U101_").
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
orf("U112_").
orf("U113_").
orf("U114_").
orf("U115_").
orf("U116_").
orf("U117_").
orf("U118_").
orf("U119_").
orf("U11_").
orf("U120_").
orf("U121_").
orf("U122_").
orf("U123_").
orf("U124_").
orf("U125_").
orf("U126_").
orf("U127_").
orf("U128_").
orf("U129_").
orf("U12_").
orf("U130_").
orf("U131_").
orf("U132_").
orf("U133_").
orf("U134_").
orf("U135_").
orf("U136_").
orf("U137_").
orf("U138_").
orf("U139_").
orf("U13_").
orf("U140_").
orf("U141_").
orf("U142_").
orf("U143_").
orf("U144_").
orf("U145_").
orf("U146_").
orf("U147_").
orf("U148_").
orf("U149_").
orf("U14_").
orf("U150_").
orf("U151_").
orf("U152_").
orf("U153_").
orf("U154_").
orf("U155_").
orf("U156_").
orf("U157_").
orf("U158_").
orf("U159_").
orf("U15_").
orf("U160_").
orf("U161_").
orf("U162_").
orf("U163_").
orf("U164_").
orf("U165_").
orf("U166_").
orf("U167_").
orf("U168_").
orf("U16_").
orf("U170_").
orf("U171_").
orf("U172_").
orf("U173_").
orf("U174_").
orf("U175_").
orf("U176_").
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
orf("U186_").
orf("U187_").
orf("U188_").
orf("U189_").
orf("U18_").
orf("U190_").
orf("U191_").
orf("U192_").
orf("U193_").
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
orf("U202_").
orf("U203_").
orf("U204_").
orf("U205_").
orf("U206_").
orf("U207_").
orf("U208_").
orf("U209_").
orf("U20_").
orf("U210_").
orf("U211_").
orf("U212_").
orf("U213_").
orf("U214_").
orf("U215_").
orf("U216_").
orf("U217_").
orf("U218_").
orf("U219_").
orf("U21_").
orf("U220_").
orf("U221_").
orf("U222_").
orf("U223_").
orf("U224_").
orf("U225_").
orf("U226_").
orf("U227_").
orf("U228_").
orf("U229_").
orf("U22_").
orf("U23_").
orf("U24_").
orf("U25_").
orf("U26_").
orf("U27_").
orf("U28_").
orf("U29_").
orf("U2_").
orf("U30_").
orf("U31_").
orf("U32_").
orf("U33_").
orf("U34_").
orf("U35_").
orf("U36_").
orf("U37_").
orf("U38_").
orf("U39_").
orf("U3_").
orf("U40_").
orf("U41_").
orf("U42_").
orf("U43_").
orf("U44_").
orf("U45_").
orf("U46_").
orf("U47_").
orf("U48_").
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
orf("U58_").
orf("U59_").
orf("U5_").
orf("U60_").
orf("U61_").
orf("U62_").
orf("U63_").
orf("U64_").
orf("U65_").
orf("U66_").
orf("U67_").
orf("U68_").
orf("U69_").
orf("U6_").
orf("U70_").
orf("U71_").
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
orf("YAL039C").
orf("YAL054C").
orf("YAL062W").
orf("YAR015W").
orf("YAR035W").
orf("YAR071W").
orf("YAR073W").
orf("YAR075W").
orf("YBL013W").
orf("YBL015W").
orf("YBL030C").
orf("YBL033C").
orf("YBL035C").
orf("YBL039C").
orf("YBL042C").
orf("YBL045C").
orf("YBL056W").
orf("YBL067C").
orf("YBL068W").
orf("YBL076C").
orf("YBL098W").
orf("YBL099W").
orf("YBR001C").
orf("YBR002C").
orf("YBR003W").
orf("YBR006W").
orf("YBR011C").
orf("YBR018C").
orf("YBR019C").
orf("YBR020W").
orf("YBR021W").
orf("YBR023C").
orf("YBR029C").
orf("YBR034C").
orf("YBR035C").
orf("YBR036C").
orf("YBR038W").
orf("YBR039W").
orf("YBR046C").
orf("YBR058C").
orf("YBR068C").
orf("YBR069C").
orf("YBR082C").
orf("YBR084W").
orf("YBR085W").
orf("YBR092C").
orf("YBR093C").
orf("YBR111C").
orf("YBR115C").
orf("YBR117C").
orf("YBR118W").
orf("YBR121C").
orf("YBR125C").
orf("YBR126C").
orf("YBR127C").
orf("YBR132C").
orf("YBR145W").
orf("YBR149W").
orf("YBR153W").
orf("YBR154C").
orf("YBR166C").
orf("YBR176W").
orf("YBR184W").
orf("YBR196C").
orf("YBR199W").
orf("YBR205W").
orf("YBR208C").
orf("YBR218C").
orf("YBR221C").
orf("YBR243C").
orf("YBR244W").
orf("YBR248C").
orf("YBR249C").
orf("YBR252W").
orf("YBR256C").
orf("YBR263W").
orf("YBR265W").
orf("YBR276C").
orf("YBR278W").
orf("YBR284W").
orf("YBR291C").
orf("YBR294W").
orf("YBR298C").
orf("YBR299W").
orf("YCL004W").
orf("YCL009C").
orf("YCL018W").
orf("YCL025C").
orf("YCL030C").
orf("YCL040W").
orf("YCL043C").
orf("YCL050C").
orf("YCL054W").
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
orf("YCR069W").
orf("YCR073W-A").
orf("YDL004W").
orf("YDL006W").
orf("YDL021W").
orf("YDL022W").
orf("YDL024C").
orf("YDL033C").
orf("YDL037C").
orf("YDL040C").
orf("YDL045C").
orf("YDL047W").
orf("YDL052C").
orf("YDL055C").
orf("YDL064W").
orf("YDL066W").
orf("YDL067C").
orf("YDL078C").
orf("YDL080C").
orf("YDL085W").
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
orf("YDL171C").
orf("YDL174C").
orf("YDL182W").
orf("YDL188C").
orf("YDL200C").
orf("YDL205C").
orf("YDL210W").
orf("YDL215C").
orf("YDL230W").
orf("YDL232W").
orf("YDL236W").
orf("YDL238C").
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
orf("YDR047W").
orf("YDR050C").
orf("YDR054C").
orf("YDR058C").
orf("YDR059C").
orf("YDR062W").
orf("YDR069C").
orf("YDR072C").
orf("YDR074W").
orf("YDR075W").
orf("YDR092W").
orf("YDR093W").
orf("YDR111C").
orf("YDR120C").
orf("YDR121W").
orf("YDR127W").
orf("YDR147W").
orf("YDR148C").
orf("YDR155C").
orf("YDR156W").
orf("YDR158W").
orf("YDR177W").
orf("YDR178W").
orf("YDR208W").
orf("YDR226W").
orf("YDR232W").
orf("YDR234W").
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
orf("YDR298C").
orf("YDR300C").
orf("YDR304C").
orf("YDR307W").
orf("YDR321W").
orf("YDR341C").
orf("YDR342C").
orf("YDR343C").
orf("YDR345C").
orf("YDR353W").
orf("YDR354W").
orf("YDR368W").
orf("YDR377W").
orf("YDR380W").
orf("YDR385W").
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
orf("YDR481C").
orf("YDR483W").
orf("YDR497C").
orf("YDR502C").
orf("YDR503C").
orf("YDR508C").
orf("YDR519W").
orf("YDR529C").
orf("YDR530C").
orf("YDR531W").
orf("YDR536W").
orf("YDR538W").
orf("YEL002C").
orf("YEL011W").
orf("YEL012W").
orf("YEL017C-A").
orf("YEL021W").
orf("YEL024W").
orf("YEL041W").
orf("YEL042W").
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
orf("YER100W").
orf("YER133W").
orf("YER144C").
orf("YER151C").
orf("YER166W").
orf("YER170W").
orf("YER178W").
orf("YER183C").
orf("YFL001W").
orf("YFL011W").
orf("YFL017C").
orf("YFL018C").
orf("YFL022C").
orf("YFL030W").
orf("YFL036W").
orf("YFL045C").
orf("YFL053W").
orf("YFL055W").
orf("YFR010W").
orf("YFR014C").
orf("YFR015C").
orf("YFR019W").
orf("YFR025C").
orf("YFR028C").
orf("YFR030W").
orf("YFR033C").
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
orf("YGL040C").
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
orf("YGL155W").
orf("YGL186C").
orf("YGL187C").
orf("YGL191W").
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
orf("YGR065C").
orf("YGR087C").
orf("YGR088W").
orf("YGR094W").
orf("YGR121C").
orf("YGR123C").
orf("YGR124W").
orf("YGR125W").
orf("YGR133W").
orf("YGR147C").
orf("YGR155W").
orf("YGR157W").
orf("YGR170W").
orf("YGR171C").
orf("YGR175C").
orf("YGR177C").
orf("YGR180C").
orf("YGR183C").
orf("YGR185C").
orf("YGR191W").
orf("YGR192C").
orf("YGR194C").
orf("YGR199W").
orf("YGR202C").
orf("YGR204W").
orf("YGR208W").
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
orf("YHL016C").
orf("YHL032C").
orf("YHL036W").
orf("YHR001W-A").
orf("YHR007C").
orf("YHR008C").
orf("YHR011W").
orf("YHR018C").
orf("YHR019C").
orf("YHR020W").
orf("YHR025W").
orf("YHR037W").
orf("YHR042W").
orf("YHR043C").
orf("YHR044C").
orf("YHR046C").
orf("YHR051W").
orf("YHR057C").
orf("YHR063C").
orf("YHR068W").
orf("YHR072W").
orf("YHR074W").
orf("YHR091C").
orf("YHR092C").
orf("YHR094C").
orf("YHR096C").
orf("YHR102W").
orf("YHR106W").
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
orf("YIL156W").
orf("YIL160C").
orf("YIL162W").
orf("YIL167W").
orf("YIL168W").
orf("YIL172C").
orf("YIR019C").
orf("YIR026C").
orf("YIR027C").
orf("YIR028W").
orf("YIR029W").
orf("YIR031C").
orf("YIR032C").
orf("YIR034C").
orf("YIR037W").
orf("YJL002C").
orf("YJL005W").
orf("YJL026W").
orf("YJL031C").
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
orf("YJL139C").
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
orf("YJL216C").
orf("YJL219W").
orf("YJL221C").
orf("YJR006W").
orf("YJR009C").
orf("YJR010W").
orf("YJR016C").
orf("YJR017C").
orf("YJR019C").
orf("YJR025C").
orf("YJR032W").
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
orf("YJR105W").
orf("YJR109C").
orf("YJR121W").
orf("YJR130C").
orf("YJR131W").
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
orf("YKL016C").
orf("YKL019W").
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
orf("YKL120W").
orf("YKL127W").
orf("YKL132C").
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
orf("YKR002W").
orf("YKR009C").
orf("YKR031C").
orf("YKR039W").
orf("YKR053C").
orf("YKR061W").
orf("YKR066C").
orf("YKR069W").
orf("YKR080W").
orf("YKR084C").
orf("YKR093W").
orf("YKR097W").
orf("YKR098C").
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
orf("YLR092W").
orf("YLR100C").
orf("YLR133W").
orf("YLR134W").
orf("YLR138W").
orf("YLR142W").
orf("YLR146C").
orf("YLR153C").
orf("YLR155C").
orf("YLR157C").
orf("YLR158C").
orf("YLR160C").
orf("YLR164W").
orf("YLR172C").
orf("YLR174W").
orf("YLR180W").
orf("YLR195C").
orf("YLR209C").
orf("YLR216C").
orf("YLR231C").
orf("YLR237W").
orf("YLR240W").
orf("YLR245C").
orf("YLR258W").
orf("YLR260W").
orf("YLR286C").
orf("YLR295C").
orf("YLR299W").
orf("YLR300W").
orf("YLR303W").
orf("YLR304C").
orf("YLR305C").
orf("YLR306W").
orf("YLR307W").
orf("YLR308W").
orf("YLR328W").
orf("YLR342W").
orf("YLR348C").
orf("YLR354C").
orf("YLR355C").
orf("YLR359W").
orf("YLR377C").
orf("YLR382C").
orf("YLR395C").
orf("YLR420W").
orf("YLR432W").
orf("YLR433C").
orf("YLR438W").
orf("YLR449W").
orf("YLR450W").
orf("YML004C").
orf("YML008C").
orf("YML016C").
orf("YML019W").
orf("YML022W").
orf("YML035C").
orf("YML042W").
orf("YML054C").
orf("YML056C").
orf("YML057W").
orf("YML070W").
orf("YML074C").
orf("YML075C").
orf("YML078W").
orf("YML082W").
orf("YML086C").
orf("YML100W").
orf("YML106W").
orf("YML110C").
orf("YML120C").
orf("YML123C").
orf("YML126C").
orf("YMR006C").
orf("YMR008C").
orf("YMR011W").
orf("YMR013C").
orf("YMR015C").
orf("YMR022W").
orf("YMR036C").
orf("YMR056C").
orf("YMR062C").
orf("YMR083W").
orf("YMR101C").
orf("YMR105C").
orf("YMR108W").
orf("YMR113W").
orf("YMR118C").
orf("YMR120C").
orf("YMR145C").
orf("YMR149W").
orf("YMR169C").
orf("YMR170C").
orf("YMR180C").
orf("YMR189W").
orf("YMR202W").
orf("YMR205C").
orf("YMR208W").
orf("YMR217W").
orf("YMR220W").
orf("YMR223W").
orf("YMR246W").
orf("YMR250W").
orf("YMR256C").
orf("YMR261C").
orf("YMR267W").
orf("YMR271C").
orf("YMR272C").
orf("YMR278W").
orf("YMR281W").
orf("YMR293C").
orf("YMR296C").
orf("YMR300C").
orf("YMR303C").
orf("YMR304W").
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
orf("YNL117W").
orf("YNL130C").
orf("YNL135C").
orf("YNL141W").
orf("YNL142W").
orf("YNL151C").
orf("YNL169C").
orf("YNL186W").
orf("YNL192W").
orf("YNL220W").
orf("YNL241C").
orf("YNL247W").
orf("YNL248C").
orf("YNL256W").
orf("YNL262W").
orf("YNL267W").
orf("YNL268W").
orf("YNL270C").
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
orf("YNR019W").
orf("YNR028W").
orf("YNR032W").
orf("YNR033W").
orf("YNR034W").
orf("YNR041C").
orf("YNR043W").
orf("YNR050C").
orf("YNR056C").
orf("YNR057C").
orf("YNR058W").
orf("YNR072W").
orf("YOL005C").
orf("YOL010W").
orf("YOL011W").
orf("YOL016C").
orf("YOL020W").
orf("YOL033W").
orf("YOL049W").
orf("YOL052C").
orf("YOL055C").
orf("YOL056W").
orf("YOL058W").
orf("YOL059W").
orf("YOL061W").
orf("YOL064C").
orf("YOL077W-A").
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
orf("YOR005C").
orf("YOR011W").
orf("YOR040W").
orf("YOR061W").
orf("YOR065W").
orf("YOR071C").
orf("YOR074C").
orf("YOR085W").
orf("YOR095C").
orf("YOR099W").
orf("YOR100C").
orf("YOR103C").
orf("YOR116C").
orf("YOR124C").
orf("YOR128C").
orf("YOR130C").
orf("YOR133W").
orf("YOR136W").
orf("YOR142W").
orf("YOR143C").
orf("YOR151C").
orf("YOR168W").
orf("YOR171C").
orf("YOR176W").
orf("YOR184W").
orf("YOR187W").
orf("YOR190W").
orf("YOR192C").
orf("YOR201C").
orf("YOR202W").
orf("YOR207C").
orf("YOR208W").
orf("YOR209C").
orf("YOR210W").
orf("YOR221C").
orf("YOR222W").
orf("YOR224C").
orf("YOR236W").
orf("YOR241W").
orf("YOR251C").
orf("YOR274W").
orf("YOR278W").
orf("YOR303W").
orf("YOR317W").
orf("YOR321W").
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
orf("YOR377W").
orf("YOR381W").
orf("YOR384W").
orf("YOR386W").
orf("YOR388C").
orf("YOR393W").
orf("YPL001W").
orf("YPL017C").
orf("YPL023C").
orf("YPL028W").
orf("YPL036W").
orf("YPL040C").
orf("YPL053C").
orf("YPL057C").
orf("YPL061W").
orf("YPL072W").
orf("YPL078C").
orf("YPL091W").
orf("YPL097W").
orf("YPL104W").
orf("YPL111W").
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
orf("YPL268W").
orf("YPL271W").
orf("YPL273W").
orf("YPL274W").
orf("YPL275W").
orf("YPL276W").
orf("YPL281C").
orf("YPR001W").
orf("YPR002W").
orf("YPR006C").
orf("YPR010C").
orf("YPR020W").
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
orf("YPR145W").
orf("YPR160W").
orf("YPR167C").
orf("YPR175W").
orf("YPR176C").
orf("YPR183W").
orf("YPR187W").
orf("YPR190C").
orf("YPR191W").

compartment(cytosol).
compartment(external).
compartment(mitochondrion).

