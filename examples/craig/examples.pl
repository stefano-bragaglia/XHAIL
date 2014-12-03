program("2dfir").
program("blowfish").
program("bs").
program("bsort100").
program("cnt").
program("compress").
program("cover").
program("crc").
program("crc32").
program("dijkstra").
program("dtoa").
program("duff").
program("fac").
program("fdct").
program("float_matmult").
program("gdb-advance").
program("gdb-anon").
program("gdb-constvars").
program("insertsort").
program("int_matmult").
program("janne_complex").
program("jfdctint").
program("lcdnum").
program("levenshtein").
program("minver").
program("nbody").
program("nettle-arcfour").
program("nettle-cast128").
program("nettle-des").
program("nettle-md5").
program("nsichneu").
program("prime").
program("qsort").
program("qurt").
program("recursion").
program("rijndael").
program("select").
program("sha").
program("sqrt").
program("st").
program("statemate").
program("stringsearch1").
program("strstr").
program("ud").
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
#example goodFlag("blowfish","-fguess-branch-probability").
#example goodFlag("blowfish","-fomit-frame-pointer").
#example goodFlag("bs","-fcse-follow-jumps").
#example goodFlag("bs","-fguess-branch-probability").
#example goodFlag("bs","-fif-conversion2").
#example goodFlag("bs","-finline-small-functions").
#example goodFlag("bs","-freorder-blocks").
#example goodFlag("cnt","-fcprop-registers").
#example goodFlag("cnt","-finline-functions").
#example goodFlag("cnt","-finline-small-functions").
#example goodFlag("cnt","-freorder-blocks").
#example goodFlag("cnt","-ftree-builtin-call-dce").
#example goodFlag("cnt","-ftree-dce").
#example goodFlag("cnt","-ftree-switch-conversion").
#example goodFlag("dtoa","-finline-functions").
#example goodFlag("dtoa","-finline-small-functions").
#example goodFlag("dtoa","-ftree-ch").
#example goodFlag("duff","-finline-functions").
#example goodFlag("duff","-finline-small-functions").
#example goodFlag("duff","-fsched-pressure").
#example goodFlag("fac","-fguess-branch-probability").
#example goodFlag("fac","-finline-small-functions").
#example goodFlag("fac","-foptimize-sibling-calls").
#example goodFlag("fac","-fregmove").
#example goodFlag("fac","-freorder-blocks").
#example goodFlag("fac","-ftree-ch").
#example goodFlag("fac","-ftree-dce").
#example goodFlag("fdct","-finline-small-functions").
#example goodFlag("fdct","-fipa-cp-clone").
#example goodFlag("float_matmult","-finline-small-functions").
#example goodFlag("gdb-advance","-finline-small-functions").
#example goodFlag("gdb-advance","-fomit-frame-pointer").
#example goodFlag("gdb-anon","-finline-small-functions").
#example goodFlag("gdb-constvars","-fgcse").
#example goodFlag("gdb-constvars","-finline-functions").
#example goodFlag("gdb-constvars","-finline-small-functions").
#example goodFlag("gdb-constvars","-fschedule-insns").
#example goodFlag("gdb-constvars","-ftree-loop-distribute-patterns").
#example goodFlag("insertsort","-finline-functions").
#example goodFlag("insertsort","-finline-small-functions").
#example goodFlag("insertsort","-fschedule-insns").
#example goodFlag("int_matmult","-finline-functions").
#example goodFlag("int_matmult","-finline-small-functions").
#example goodFlag("int_matmult","-fipa-cp-clone").
#example goodFlag("int_matmult","-fthread-jumps").
#example goodFlag("janne_complex","-fguess-branch-probability").
#example goodFlag("janne_complex","-fif-conversion2").
#example goodFlag("janne_complex","-finline-functions").
#example goodFlag("janne_complex","-finline-small-functions").
#example goodFlag("janne_complex","-fomit-frame-pointer").
#example goodFlag("lcdnum","-fgcse-after-reload").
#example goodFlag("lcdnum","-fguess-branch-probability").
#example goodFlag("lcdnum","-finline-small-functions").
#example goodFlag("lcdnum","-freorder-blocks").
#example goodFlag("lcdnum","-ftree-ccp").
#example goodFlag("lcdnum","-ftree-switch-conversion").
#example goodFlag("levenshtein","-fgcse").
#example goodFlag("levenshtein","-fguess-branch-probability").
#example goodFlag("levenshtein","-finline-functions-called-once").
#example goodFlag("levenshtein","-fsched-pressure").
#example goodFlag("levenshtein","-ftree-ch").
#example goodFlag("levenshtein","-ftree-sink").
#example goodFlag("levenshtein","-ftree-ter").
#example goodFlag("minver","-fipa-cp").
#example goodFlag("minver","-fipa-cp-clone").
#example goodFlag("nbody","-finline-functions").
#example goodFlag("nbody","-finline-small-functions").
#example goodFlag("nbody","-ftree-builtin-call-dce").
#example goodFlag("nbody","-ftree-dce").
#example goodFlag("nettle-arcfour","-finline-functions").
#example goodFlag("nettle-arcfour","-finline-small-functions").
#example goodFlag("nettle-cast128","-finline-functions").
#example goodFlag("nettle-cast128","-finline-small-functions").
#example goodFlag("nettle-cast128","-fschedule-insns").
#example goodFlag("nettle-des","-fschedule-insns").
#example goodFlag("qurt","-fguess-branch-probability").
#example goodFlag("qurt","-finline-functions").
#example goodFlag("qurt","-finline-small-functions").
#example goodFlag("select","-fomit-frame-pointer").
#example goodFlag("select","-ftree-ch").
#example goodFlag("select","-ftree-pre").
#example goodFlag("sha","-fguess-branch-probability").
#example goodFlag("sha","-fpredictive-commoning").
#example goodFlag("statemate","-fguess-branch-probability").
#example goodFlag("statemate","-finline-functions").
#example goodFlag("statemate","-finline-small-functions").
#example goodFlag("statemate","-fomit-frame-pointer").
#example goodFlag("statemate","-fschedule-insns2").
#example goodFlag("stringsearch1","-fstrict-aliasing").
#example goodFlag("ud","-falign-functions").
#example goodFlag("ud","-fipa-cp").
#example goodFlag("ud","-fipa-cp-clone").
#example goodFlag("ud","-freorder-functions").
#example goodFlag("ud","-ftree-copy-prop").
#example goodFlag("ud","-ftree-fre").
#example goodFlag("ud","-ftree-vrp").
#example not goodFlag("bsort100","-freorder-blocks").
#example not goodFlag("cnt","-fhoist-adjacent-loads").
#example not goodFlag("cnt","-fif-conversion2").
#example not goodFlag("cnt","-freorder-functions").
#example not goodFlag("cnt","-fschedule-insns").
#example not goodFlag("cnt","-ftree-copy-prop").
#example not goodFlag("cnt","-ftree-vectorize").
#example not goodFlag("cnt","-ftree-vrp").
#example not goodFlag("dtoa","-fguess-branch-probability").
#example not goodFlag("duff","-fguess-branch-probability").
#example not goodFlag("fac","-fdefer-pop").
#example not goodFlag("fdct","-fschedule-insns").
#example not goodFlag("gdb-constvars","-fguess-branch-probability").
#example not goodFlag("gdb-constvars","-fomit-frame-pointer").
#example not goodFlag("int_matmult","-foptimize-sibling-calls").
#example not goodFlag("janne_complex","-ftree-ch").
#example not goodFlag("jfdctint","-fschedule-insns").
#example not goodFlag("levenshtein","-fcombine-stack-adjustments").
#example not goodFlag("levenshtein","-fif-conversion2").
#example not goodFlag("levenshtein","-fipa-reference").
#example not goodFlag("levenshtein","-ftree-dominator-opts").
#example not goodFlag("levenshtein","-ftree-tail-merge").
#example not goodFlag("nettle-cast128","-fsection-anchors").
#example not goodFlag("rijndael","-fschedule-insns").
#example not goodFlag("rijndael","-fsection-anchors").
#example not goodFlag("select","-fguess-branch-probability").
#example not goodFlag("sha","-fgcse").
#example not goodFlag("statemate","-fmerge-constants").
#example not goodFlag("statemate","-ftree-sra").
#example not goodFlag("ud","-ftree-dominator-opts").
