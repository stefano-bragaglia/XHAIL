program("select").
program("nettle-md5").
program("bs").
program("qsort").
program("prime").
program("fac").
program("sqrt").
program("strstr").
program("janne_complex").
program("st").
program("blowfish").
program("float_matmult").
program("lcdnum").
program("gdb-constvars").
program("nettle-des").
program("sha").
program("gdb-advance").
program("statemate").
program("stringsearch1").
program("bsort100").
program("nbody").
program("minver").
program("cover").
program("rijndael").
program("jfdctint").
program("cnt").
program("levenshtein").
program("dtoa").
program("fdct").
program("insertsort").
program("nettle-cast128").
program("compress").
program("qurt").
program("int_matmult").
program("recursion").
program("dijkstra").
program("duff").
program("nsichneu").
program("crc32").
program("nettle-arcfour").
program("ud").
program("2dfir").
program("crc").
program("gdb-anon").
flag("-falign-jumps").
flag("-falign-labels").
flag("-falign-loops").
flag("-fcaller-saves").
flag("-fcombine-stack-adjustments").
flag("-fcompare-elim").
flag("-fcprop-registers").
flag("-fcrossjumping").
flag("-fcse-follow-jumps").
flag("-fdefer-pop").
flag("-fdevirtualize").
flag("-fexpensive-optimizations").
flag("-fforward-propagate").
flag("-fgcse").
flag("-fgcse-after-reload").
flag("-fguess-branch-probability").
flag("-fhoist-adjacent-loads").
flag("-fif-conversion").
flag("-fif-conversion2").
flag("-finline-functions").
flag("-finline-functions-called-once").
flag("-finline-small-functions").
flag("-fipa-cp").
flag("-fipa-cp-clone").
flag("-fipa-profile").
flag("-fipa-pure-const").
flag("-fipa-reference").
flag("-fipa-sra").
flag("-fmerge-constants").
flag("-fomit-frame-pointer").
flag("-foptimize-register-move").
flag("-foptimize-sibling-calls").
flag("-foptimize-strlen").
flag("-fpeephole2").
flag("-fpredictive-commoning").
flag("-fregmove").
flag("-freorder-blocks").
flag("-freorder-functions").
flag("-frerun-cse-after-loop").
flag("-fsched-pressure").
flag("-fschedule-insns").
flag("-fschedule-insns2").
flag("-fsection-anchors").
flag("-fshrink-wrap").
flag("-fsplit-wide-types").
flag("-fstrict-aliasing").
flag("-fthread-jumps").
flag("-ftree-bit-ccp").
flag("-ftree-builtin-call-dce").
flag("-ftree-ccp").
flag("-ftree-ch").
flag("-ftree-copy-prop").
flag("-ftree-copyrename").
flag("-ftree-dce").
flag("-ftree-dominator-opts").
flag("-ftree-dse").
flag("-ftree-fre").
flag("-ftree-loop-distribute-patterns").
flag("-ftree-partial-pre").
flag("-ftree-pre").
flag("-ftree-sink").
flag("-ftree-slsr").
flag("-ftree-sra").
flag("-ftree-switch-conversion").
flag("-ftree-tail-merge").
flag("-ftree-ter").
flag("-ftree-vectorize").
flag("-ftree-vrp").
flag("-funswitch-loops").
flag("-fvect-cost-model").
#example not goodFlag("select","-fguess-branch-probability").
#example goodFlag("select","-fomit-frame-pointer").
#example goodFlag("select","-ftree-ch").
#example goodFlag("select","-ftree-pre").
#example goodFlag("bs","-fcse-follow-jumps").
#example goodFlag("bs","-fguess-branch-probability").
#example goodFlag("bs","-fif-conversion2").
#example goodFlag("bs","-finline-small-functions").
#example goodFlag("bs","-freorder-blocks").
#example not goodFlag("fac","-fdefer-pop").
#example goodFlag("fac","-fguess-branch-probability").
#example goodFlag("fac","-finline-small-functions").
#example goodFlag("fac","-foptimize-sibling-calls").
#example goodFlag("fac","-fregmove").
#example goodFlag("fac","-freorder-blocks").
#example goodFlag("fac","-ftree-ch").
#example goodFlag("fac","-ftree-dce").
#example goodFlag("janne_complex","-fguess-branch-probability").
#example goodFlag("janne_complex","-fif-conversion2").
#example goodFlag("janne_complex","-finline-functions").
#example goodFlag("janne_complex","-finline-small-functions").
#example goodFlag("janne_complex","-fomit-frame-pointer").
#example not goodFlag("janne_complex","-ftree-ch").
#example goodFlag("blowfish","-fguess-branch-probability").
#example goodFlag("blowfish","-fomit-frame-pointer").
#example goodFlag("float_matmult","-finline-small-functions").
#example goodFlag("lcdnum","-fgcse-after-reload").
#example goodFlag("lcdnum","-fguess-branch-probability").
#example goodFlag("lcdnum","-finline-small-functions").
#example goodFlag("lcdnum","-freorder-blocks").
#example goodFlag("lcdnum","-ftree-ccp").
#example goodFlag("lcdnum","-ftree-switch-conversion").
#example goodFlag("gdb-constvars","-fgcse").
#example not goodFlag("gdb-constvars","-fguess-branch-probability").
#example goodFlag("gdb-constvars","-finline-functions").
#example goodFlag("gdb-constvars","-finline-small-functions").
#example not goodFlag("gdb-constvars","-fomit-frame-pointer").
#example goodFlag("gdb-constvars","-fschedule-insns").
#example goodFlag("gdb-constvars","-ftree-loop-distribute-patterns").
#example goodFlag("nettle-des","-fschedule-insns").
#example not goodFlag("sha","-fgcse").
#example goodFlag("sha","-fguess-branch-probability").
#example goodFlag("sha","-fpredictive-commoning").
#example goodFlag("gdb-advance","-finline-small-functions").
#example goodFlag("gdb-advance","-fomit-frame-pointer").
#example goodFlag("statemate","-fguess-branch-probability").
#example goodFlag("statemate","-finline-functions").
#example goodFlag("statemate","-finline-small-functions").
#example not goodFlag("statemate","-fmerge-constants").
#example goodFlag("statemate","-fomit-frame-pointer").
#example goodFlag("statemate","-fschedule-insns2").
#example not goodFlag("statemate","-ftree-sra").
#example goodFlag("stringsearch1","-fstrict-aliasing").
#example not goodFlag("bsort100","-freorder-blocks").
#example goodFlag("nbody","-finline-functions").
#example goodFlag("nbody","-finline-small-functions").
#example goodFlag("nbody","-ftree-builtin-call-dce").
#example goodFlag("nbody","-ftree-dce").
#example goodFlag("minver","-fipa-cp").
#example goodFlag("minver","-fipa-cp-clone").
#example not goodFlag("rijndael","-fschedule-insns").
#example not goodFlag("rijndael","-fsection-anchors").
#example not goodFlag("jfdctint","-fschedule-insns").
#example goodFlag("cnt","-fcprop-registers").
#example not goodFlag("cnt","-fhoist-adjacent-loads").
#example not goodFlag("cnt","-fif-conversion2").
#example goodFlag("cnt","-finline-functions").
#example goodFlag("cnt","-finline-small-functions").
#example goodFlag("cnt","-freorder-blocks").
#example not goodFlag("cnt","-freorder-functions").
#example not goodFlag("cnt","-fschedule-insns").
#example goodFlag("cnt","-ftree-builtin-call-dce").
#example not goodFlag("cnt","-ftree-copy-prop").
#example goodFlag("cnt","-ftree-dce").
#example goodFlag("cnt","-ftree-switch-conversion").
#example not goodFlag("cnt","-ftree-vectorize").
#example not goodFlag("cnt","-ftree-vrp").
#example not goodFlag("levenshtein","-fcombine-stack-adjustments").
#example goodFlag("levenshtein","-fgcse").
#example goodFlag("levenshtein","-fguess-branch-probability").
#example not goodFlag("levenshtein","-fif-conversion2").
#example goodFlag("levenshtein","-finline-functions-called-once").
#example not goodFlag("levenshtein","-fipa-reference").
#example goodFlag("levenshtein","-fsched-pressure").
#example goodFlag("levenshtein","-ftree-ch").
#example not goodFlag("levenshtein","-ftree-dominator-opts").
#example goodFlag("levenshtein","-ftree-sink").
#example not goodFlag("levenshtein","-ftree-tail-merge").
#example goodFlag("levenshtein","-ftree-ter").
#example not goodFlag("dtoa","-fguess-branch-probability").
#example goodFlag("dtoa","-finline-functions").
#example goodFlag("dtoa","-finline-small-functions").
#example goodFlag("dtoa","-ftree-ch").
#example goodFlag("fdct","-finline-small-functions").
#example goodFlag("fdct","-fipa-cp-clone").
#example not goodFlag("fdct","-fschedule-insns").
#example goodFlag("insertsort","-finline-functions").
#example goodFlag("insertsort","-finline-small-functions").
#example goodFlag("insertsort","-fschedule-insns").
#example goodFlag("nettle-cast128","-finline-functions").
#example goodFlag("nettle-cast128","-finline-small-functions").
#example goodFlag("nettle-cast128","-fschedule-insns").
#example not goodFlag("nettle-cast128","-fsection-anchors").
#example goodFlag("qurt","-fguess-branch-probability").
#example goodFlag("qurt","-finline-functions").
#example goodFlag("qurt","-finline-small-functions").
#example goodFlag("int_matmult","-finline-functions").
#example goodFlag("int_matmult","-finline-small-functions").
#example goodFlag("int_matmult","-fipa-cp-clone").
#example not goodFlag("int_matmult","-foptimize-sibling-calls").
#example goodFlag("int_matmult","-fthread-jumps").
#example not goodFlag("duff","-fguess-branch-probability").
#example goodFlag("duff","-finline-functions").
#example goodFlag("duff","-finline-small-functions").
#example goodFlag("duff","-fsched-pressure").
#example goodFlag("nettle-arcfour","-finline-functions").
#example goodFlag("nettle-arcfour","-finline-small-functions").
#example goodFlag("ud","-falign-functions").
#example goodFlag("ud","-fipa-cp").
#example goodFlag("ud","-fipa-cp-clone").
#example goodFlag("ud","-freorder-functions").
#example goodFlag("ud","-ftree-copy-prop").
#example not goodFlag("ud","-ftree-dominator-opts").
#example goodFlag("ud","-ftree-fre").
#example goodFlag("ud","-ftree-vrp").
#example goodFlag("gdb-anon","-finline-small-functions").
