function model = Smith_syms()

t = sym('t');
model.param = 'log10';



%%
% STATES
syms InR Ins_InR Ins_InR_P Ins_2_InR_P cytoplasm_InR cytoplasm_Ins_2_InR_P cytoplasm_Ins_InR_P PTP1B IRS1_TyrP_PI3K PI345P3 PIP2 Akt Akt_P2 PKC PKC_P AS160 AS160_P cytoplasm_GLUT4 cellsurface_GLUT4 PTEN PP2A PTP1B_ox PTEN_ox ROS GSH GSSG cytoplasm_SOD2 NOX_inact NOX NOX_deact IRS1 IRS1_TyrP IRS1_PolySerP IRS1_TyrP_PolySerP PI3K JNK_P IKK_P JNK IKK DUSP DUSP_ox degr_Foxo1 cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 nucleus_RNA_InR cytoplasm_RNA_InR nucleus_RNA_SOD2 cytoplasm_RNA_SOD2 E2F1 SGK CDK2 AMPK CBPP300 SIRT1 E3 USP7 SCF Proteasome
model.sym.x = [InR,Ins_InR,Ins_InR_P,Ins_2_InR_P,cytoplasm_InR,cytoplasm_Ins_2_InR_P,cytoplasm_Ins_InR_P,PTP1B,IRS1_TyrP_PI3K,PI345P3,PIP2,Akt,Akt_P2,PKC,PKC_P,AS160,AS160_P,cytoplasm_GLUT4,cellsurface_GLUT4,PTEN,PP2A,PTP1B_ox,PTEN_ox,ROS,GSH,GSSG,cytoplasm_SOD2,NOX_inact,NOX,NOX_deact,IRS1,IRS1_TyrP,IRS1_PolySerP,IRS1_TyrP_PolySerP,PI3K,JNK_P,IKK_P,JNK,IKK,DUSP,DUSP_ox,degr_Foxo1,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,nucleus_RNA_InR,cytoplasm_RNA_InR,nucleus_RNA_SOD2,cytoplasm_RNA_SOD2,E2F1,SGK,CDK2,AMPK,CBPP300,SIRT1,E3,USP7,SCF,Proteasome];


%%
% PARAMETERS
syms k1 kminus1 k2 kminus2 k3 kminus3 k4 kminus4 k4prime kminus4prime k6 cellsurf_vol cyto_vol vextracellular vcellsurface vcytoplasm navo k9_basal k9 kminus9_basal kminus9 k11 kminus11 k12 kminus12 kr16a kminusr16a k13_basal k13 kminus13 k14 kminus14 sc_pip pip3_basal k30f k30r k31f k31r k34f k34r1 k34r2 k34r3 k35f k35r k36f ros_perm membrane_area k38r k38f sc_ros k7 kminus7a kminus7b k8 kminus8 IRp molec_per_fm k2psp kcat82 Km82 k_irs1_basal_syn k_irs1_basal_degr k_irs1_polyserp_degr kcat51 kcat52 Km51 Km52 k42f k42r k43f k43r alpha_ox k32f k32r by_jnk_phos_factor by_ikk_phos_factor ksynth_R100 ktr_R101 ktr_R102 ktr_R103 ktr_R104 ktr_R105 ktr_R106 ktr_R107 ktr_R108 ktr_R109 ktr_R110 ktr_R111 ktr_R112 ktr_R113 ktr_R114 ktr_R115 ktr_R116 ktr_R117 ktr_R118 ktr_R119 ktr_R120 ktr_R121 ktr_R122 ktr_R123 ktr_R124 ktr_R125 ktr_R126 ktr_R127 ktr_R128 ktr_R129 ktr_R130 ktr_R131 ktr_R132 ktr_R133 ktr_R134 ktr_R135 ktr_R136 ktr_R137 ktr_R138 ktr_R139 ktr_R140 ktr_R141 ktr_R142 ktr_R143 ktr_R144 ktr_R145 ktr_R146 ktr_R147 ktr_R148 ktr_R149 ktr_R150 ktr_R151 ktr_R152 ktr_R153 ktr_R154 ktr_R155 ktr_R156 ktr_R157 ktr_R158 ktr_R159 ktr_R160 ktr_R161 ktr_R162 ktr_R163 ktr_R164 kkin_R165 kkin_R166 kkin_R167 kkin_R168 kkin_R169 kkin_R170 kkin_R171 kkin_R172 kkin_R173 kkin_R174 kkin_R175 kkin_R176 kkin_R177 kkin_R178 kkin_R179 kkin_R180 kkin_R181 kkin_R182 kkin_R183 kkin_R184 kkin_R185 kkin_R186 kkin_R187 kkin_R188 kkin_R189 kkin_R190 kkin_R191 kkin_R192 kkin_R193 kkin_R194 kkin_R195 kkin_R196 kkin_R197 kkin_R198 kkin_R199 kkin_R200 kkin_R201 kkin_R202 kkin_R203 kkin_R204 kkin_R205 kkin_R206 kkin_R207 kkin_R208 kkin_R209 kkin_R210 kkin_R211 kkin_R212 kdephos_R213 kdephos_R214 kdephos_R215 kdephos_R216 kdephos_R217 kdephos_R218 kdephos_R219 kdephos_R220 kdephos_R221 kdephos_R222 kdephos_R223 kdephos_R224 kdephos_R225 kdephos_R226 kdephos_R227 kdephos_R228 kdephos_R229 kdephos_R230 kdephos_R231 kdephos_R232 kdephos_R233 kdephos_R234 kdephos_R235 kdephos_R236 kkin_R237 kkin_R238 kkin_R239 kkin_R240 kkin_R241 kkin_R242 kkin_R243 kkin_R244 kkin_R245 kkin_R246 kkin_R247 kkin_R248 kdephos_R249 kdephos_R250 kdephos_R251 kdephos_R252 kdephos_R253 kdephos_R254 kdephos_R255 kdephos_R256 kdephos_R257 kdephos_R258 kdephos_R259 kdephos_R260 kkin_R261 kkin_R262 kkin_R263 kkin_R264 kkin_R265 kkin_R266 kkin_R267 kkin_R268 kkin_R269 kkin_R270 kkin_R271 kkin_R272 kdephos_R273 kdephos_R274 kdephos_R275 kdephos_R276 kdephos_R277 kdephos_R278 kdephos_R279 kdephos_R280 kdephos_R281 kdephos_R282 kdephos_R283 kdephos_R284 kkin_R285 kkin_R286 kkin_R287 kkin_R288 kkin_R289 kkin_R290 kdephos_R291 kdephos_R292 kdephos_R293 kdephos_R294 kdephos_R295 kdephos_R296 kkin_R297 kkin_R298 kkin_R299 kkin_R300 kkin_R301 kkin_R302 kdephos_R303 kdephos_R304 kdephos_R305 kdephos_R306 kdephos_R307 kdephos_R308 kkin_R309 kkin_R310 kkin_R311 kkin_R312 kkin_R313 kkin_R314 kdephos_R315 kdephos_R316 kdephos_R317 kdephos_R318 kdephos_R319 kdephos_R320 kkin_R321 kkin_R322 kkin_R323 kkin_R324 kkin_R325 kkin_R326 kdephos_R327 kdephos_R328 kdephos_R329 kdephos_R330 kdephos_R331 kdephos_R332 kub_R333 kub_R334 kub_R335 kub_R336 kub_R337 kub_R338 kub_R339 kub_R340 kub_R341 kub_R342 kub_R343 kub_R344 kub_R345 kub_R346 kub_R347 kub_R348 kub_R349 kub_R350 kub_R351 kub_R352 kub_R353 kub_R354 kub_R355 kub_R356 kdeg_R357 kdeg_R358 kdeg_R359 kdeg_R360 kdeg_R361 kdeg_R362 kdeg_R363 kdeg_R364 ktranscr_R365 ktranscr_R366 ktranscr_R367 ktranscr_R368 ktranscr_R369 ktranscr_R370 ktranscr_R371 ktranscr_R372 ktranscr_R373 ktranscr_R374 ktranscr_R375 ktranscr_R376 ktranscr_R377 ktranscr_R378 ktranscr_R379 ktranscr_R380 ktranscr_R381 ktranscr_R382 ktranscr_R383 ktranscr_R384 ktranscr_R385 ktranscr_R386 ktranscr_R387 ktranscr_R388 ktranscr_R389 ktranscr_R390 ktranscr_R391 ktranscr_R392 ktranscr_R393 ktranscr_R394 ktranscr_R395 ktranscr_R396 v_R397 kexp_R398 kmdeg_R399 ktransl_R400 kpdeg_R401 v_R402 kexp_R403 kmdeg_R404 ktransl_R405 kpdeg_R406
model.sym.p = [k1,kminus1,k2,kminus2,k3,kminus3,k4,kminus4,k4prime,kminus4prime,k6,cellsurf_vol,cyto_vol,vextracellular,vcellsurface,vcytoplasm,navo,k9_basal,k9,kminus9_basal,kminus9,k11,kminus11,k12,kminus12,kr16a,kminusr16a,k13_basal,k13,kminus13,k14,kminus14,sc_pip,pip3_basal,k30f,k30r,k31f,k31r,k34f,k34r1,k34r2,k34r3,k35f,k35r,k36f,ros_perm,membrane_area,k38r,k38f,sc_ros,k7,kminus7a,kminus7b,k8,kminus8,IRp,molec_per_fm,k2psp,kcat82,Km82,k_irs1_basal_syn,k_irs1_basal_degr,k_irs1_polyserp_degr,kcat51,kcat52,Km51,Km52,k42f,k42r,k43f,k43r,alpha_ox,k32f,k32r,by_jnk_phos_factor,by_ikk_phos_factor,ksynth_R100,ktr_R101,ktr_R102,ktr_R103,ktr_R104,ktr_R105,ktr_R106,ktr_R107,ktr_R108,ktr_R109,ktr_R110,ktr_R111,ktr_R112,ktr_R113,ktr_R114,ktr_R115,ktr_R116,ktr_R117,ktr_R118,ktr_R119,ktr_R120,ktr_R121,ktr_R122,ktr_R123,ktr_R124,ktr_R125,ktr_R126,ktr_R127,ktr_R128,ktr_R129,ktr_R130,ktr_R131,ktr_R132,ktr_R133,ktr_R134,ktr_R135,ktr_R136,ktr_R137,ktr_R138,ktr_R139,ktr_R140,ktr_R141,ktr_R142,ktr_R143,ktr_R144,ktr_R145,ktr_R146,ktr_R147,ktr_R148,ktr_R149,ktr_R150,ktr_R151,ktr_R152,ktr_R153,ktr_R154,ktr_R155,ktr_R156,ktr_R157,ktr_R158,ktr_R159,ktr_R160,ktr_R161,ktr_R162,ktr_R163,ktr_R164,kkin_R165,kkin_R166,kkin_R167,kkin_R168,kkin_R169,kkin_R170,kkin_R171,kkin_R172,kkin_R173,kkin_R174,kkin_R175,kkin_R176,kkin_R177,kkin_R178,kkin_R179,kkin_R180,kkin_R181,kkin_R182,kkin_R183,kkin_R184,kkin_R185,kkin_R186,kkin_R187,kkin_R188,kkin_R189,kkin_R190,kkin_R191,kkin_R192,kkin_R193,kkin_R194,kkin_R195,kkin_R196,kkin_R197,kkin_R198,kkin_R199,kkin_R200,kkin_R201,kkin_R202,kkin_R203,kkin_R204,kkin_R205,kkin_R206,kkin_R207,kkin_R208,kkin_R209,kkin_R210,kkin_R211,kkin_R212,kdephos_R213,kdephos_R214,kdephos_R215,kdephos_R216,kdephos_R217,kdephos_R218,kdephos_R219,kdephos_R220,kdephos_R221,kdephos_R222,kdephos_R223,kdephos_R224,kdephos_R225,kdephos_R226,kdephos_R227,kdephos_R228,kdephos_R229,kdephos_R230,kdephos_R231,kdephos_R232,kdephos_R233,kdephos_R234,kdephos_R235,kdephos_R236,kkin_R237,kkin_R238,kkin_R239,kkin_R240,kkin_R241,kkin_R242,kkin_R243,kkin_R244,kkin_R245,kkin_R246,kkin_R247,kkin_R248,kdephos_R249,kdephos_R250,kdephos_R251,kdephos_R252,kdephos_R253,kdephos_R254,kdephos_R255,kdephos_R256,kdephos_R257,kdephos_R258,kdephos_R259,kdephos_R260,kkin_R261,kkin_R262,kkin_R263,kkin_R264,kkin_R265,kkin_R266,kkin_R267,kkin_R268,kkin_R269,kkin_R270,kkin_R271,kkin_R272,kdephos_R273,kdephos_R274,kdephos_R275,kdephos_R276,kdephos_R277,kdephos_R278,kdephos_R279,kdephos_R280,kdephos_R281,kdephos_R282,kdephos_R283,kdephos_R284,kkin_R285,kkin_R286,kkin_R287,kkin_R288,kkin_R289,kkin_R290,kdephos_R291,kdephos_R292,kdephos_R293,kdephos_R294,kdephos_R295,kdephos_R296,kkin_R297,kkin_R298,kkin_R299,kkin_R300,kkin_R301,kkin_R302,kdephos_R303,kdephos_R304,kdephos_R305,kdephos_R306,kdephos_R307,kdephos_R308,kkin_R309,kkin_R310,kkin_R311,kkin_R312,kkin_R313,kkin_R314,kdephos_R315,kdephos_R316,kdephos_R317,kdephos_R318,kdephos_R319,kdephos_R320,kkin_R321,kkin_R322,kkin_R323,kkin_R324,kkin_R325,kkin_R326,kdephos_R327,kdephos_R328,kdephos_R329,kdephos_R330,kdephos_R331,kdephos_R332,kub_R333,kub_R334,kub_R335,kub_R336,kub_R337,kub_R338,kub_R339,kub_R340,kub_R341,kub_R342,kub_R343,kub_R344,kub_R345,kub_R346,kub_R347,kub_R348,kub_R349,kub_R350,kub_R351,kub_R352,kub_R353,kub_R354,kub_R355,kub_R356,kdeg_R357,kdeg_R358,kdeg_R359,kdeg_R360,kdeg_R361,kdeg_R362,kdeg_R363,kdeg_R364,ktranscr_R365,ktranscr_R366,ktranscr_R367,ktranscr_R368,ktranscr_R369,ktranscr_R370,ktranscr_R371,ktranscr_R372,ktranscr_R373,ktranscr_R374,ktranscr_R375,ktranscr_R376,ktranscr_R377,ktranscr_R378,ktranscr_R379,ktranscr_R380,ktranscr_R381,ktranscr_R382,ktranscr_R383,ktranscr_R384,ktranscr_R385,ktranscr_R386,ktranscr_R387,ktranscr_R388,ktranscr_R389,ktranscr_R390,ktranscr_R391,ktranscr_R392,ktranscr_R393,ktranscr_R394,ktranscr_R395,ktranscr_R396,v_R397,kexp_R398,kmdeg_R399,ktransl_R400,kpdeg_R401,v_R402,kexp_R403,kmdeg_R404,ktransl_R405,kpdeg_R406];


%%
% CONDITIONS
syms nul Ins InR_tot InR_bound InR_active PI345P3_mol PIP2_mol extracellular_ROS PTP1B_plus_PTP1B_ox PTEN_plus_PTEN_ox NOX_total Mt IRS_total JNK_plus_JNK_P IKK_plus_IKK_P DUSP_plus_DUSP_ox null_sym Foxo1_Pa0_tot Foxo1_Pa1_tot Foxo1_Pd0_tot Foxo1_Pd1_tot Foxo1_Pe0_tot Foxo1_Pe1_tot Foxo1_pUb0_tot Foxo1_pUb1_tot cytoplasm_Foxo1_tot nucleus_Foxo1_tot dnabound_Foxo1_tot Foxo1_all
model.sym.k = [nul,Ins,InR_tot,InR_bound,InR_active,PI345P3_mol,PIP2_mol,extracellular_ROS,PTP1B_plus_PTP1B_ox,PTEN_plus_PTEN_ox,NOX_total,Mt,IRS_total,JNK_plus_JNK_P,IKK_plus_IKK_P,DUSP_plus_DUSP_ox,null_sym,Foxo1_Pa0_tot,Foxo1_Pa1_tot,Foxo1_Pd0_tot,Foxo1_Pd1_tot,Foxo1_Pe0_tot,Foxo1_Pe1_tot,Foxo1_pUb0_tot,Foxo1_pUb1_tot,cytoplasm_Foxo1_tot,nucleus_Foxo1_tot,dnabound_Foxo1_tot,Foxo1_all];


%%
% DYNAMICS

model.sym.xdot = [function_2(Ins_InR, 1, kminus1) - function_7(InR, 1, k4) + function_8(1, cytoplasm_InR, kminus4) - function_1(InR, Ins/10000000000000, 1, 1/10000000000000, k1) + function_6(Ins_InR_P, PTP1B, 1, 1, kminus3), ...
function_1(InR, Ins/10000000000000, 1, 1/10000000000000, k1) - function_2(Ins_InR, 1, kminus1) - function_3(Ins_InR, 1, k3), ...
function_3(Ins_InR, 1, k3) - function_11(Ins_InR_P, 1, k4prime) + function_5(Ins_2_InR_P, 1, kminus2) + function_12(1, cytoplasm_Ins_InR_P, kminus4prime) - function_4(Ins/10000000000000, Ins_InR_P, 1, 1/10000000000000, k2) - function_6(Ins_InR_P, PTP1B, 1, 1, kminus3), ...
function_10(1, cytoplasm_Ins_2_InR_P, kminus4prime) - function_5(Ins_2_InR_P, 1, kminus2) - function_9(Ins_2_InR_P, 1, k4prime) + function_4(Ins/10000000000000, Ins_InR_P, 1, 1/10000000000000, k2), ...
function_7(InR, 1, k4) - function_8(1, cytoplasm_InR, kminus4) - function_362(1, cytoplasm_InR, kpdeg_R401) + function_361(1, cytoplasm_RNA_InR, ktransl_R400) + function_14(PTP1B, 1, cytoplasm_Ins_InR_P, k6) + function_13(PTP1B, 1, cytoplasm_Ins_2_InR_P, k6), ...
function_9(Ins_2_InR_P, 1, k4prime) - function_10(1, cytoplasm_Ins_2_InR_P, kminus4prime) - function_13(PTP1B, 1, cytoplasm_Ins_2_InR_P, k6), ...
function_11(Ins_InR_P, 1, k4prime) - function_12(1, cytoplasm_Ins_InR_P, kminus4prime) - function_14(PTP1B, 1, cytoplasm_Ins_InR_P, k6), ...
function_26(GSH, PTP1B_ox, 1, k30r) - function_25(PTP1B, ROS, 1, k30f), ...
function_46(IRS1_TyrP, PI3K, cyto_vol, 1, k8) - function_47(IRS1_TyrP_PI3K, cyto_vol, 1, kminus8), ...
function_15(IRS1_TyrP_PI3K, PIP2, 1, k9, k9_basal) - function_16(PI345P3, PTEN, 1, kminus9, kminus9_basal), ...
function_16(PI345P3, PTEN, 1, kminus9, kminus9_basal) - function_15(IRS1_TyrP_PI3K, PIP2, 1, k9, k9_basal), ...
function_18(Akt_P2, PP2A, 1, kminus11) - function_17(Akt, PI345P3, 1, k11, pip3_basal), ...
function_17(Akt, PI345P3, 1, k11, pip3_basal) - function_18(Akt_P2, PP2A, 1, kminus11), ...
function_22(PKC_P, PP2A, 1, kminus12) - function_21(PI345P3, PKC, 1, k12, pip3_basal), ...
function_21(PI345P3, PKC, 1, k12, pip3_basal) - function_22(PKC_P, PP2A, 1, kminus12), ...
function_20(AS160_P, PP2A, 1, kminusr16a) - function_19(AS160, Akt_P2, 1, kr16a), ...
function_19(AS160, Akt_P2, 1, kr16a) - function_20(AS160_P, PP2A, 1, kminusr16a), ...
function_24(1, cellsurface_GLUT4, kminus13) - function_23(AS160_P, 1, cytoplasm_GLUT4, k13, k13_basal), ...
function_23(AS160_P, 1, cytoplasm_GLUT4, k13, k13_basal) - function_24(1, cellsurface_GLUT4, kminus13), ...
function_28(GSH, PTEN_ox, 1, k31r) - function_27(PTEN, ROS, 1, k31f), ...
0, ...
function_25(PTP1B, ROS, 1, k30f) - function_26(GSH, PTP1B_ox, 1, k30r), ...
function_27(PTEN, ROS, 1, k31f) - function_28(GSH, PTEN_ox, 1, k31r), ...
function_36(1/10000000000000, extracellular_ROS/10000000000000, membrane_area*ros_perm) + function_35(Mt, 1, k36f) + function_33(NOX, 1, k35f) - function_37(ROS, 1, 1/10000000000000, membrane_area*ros_perm) - function_34(ROS, 1, cytoplasm_SOD2, k35r), ...
function_39(GSSG, 1, k38r) - function_38(GSH, ROS, 1, k38f), ...
function_38(GSH, ROS, 1, k38f) - function_39(GSSG, 1, k38r), ...
function_365(1, cytoplasm_RNA_SOD2, ktransl_R405) - function_366(1, cytoplasm_SOD2, kpdeg_R406), ...
function_31(NOX, 1, k34r2) + function_32(NOX_deact, 1, k34r3) - function_29(Ins/10000000000000, NOX_inact, 1, 1/10000000000000, k34f), ...
function_29(Ins/10000000000000, NOX_inact, 1, 1/10000000000000, k34f) - function_31(NOX, 1, k34r2) - function_30(NOX, 1, k34r1), ...
function_30(NOX, 1, k34r1) - function_32(NOX_deact, 1, k34r3), ...
function_48(1, k_irs1_basal_syn) - function_49(IRS1, 1, k_irs1_basal_degr) - function_53(IKK_P, IRS1, Km51, 1, kcat51) - function_54(IRS1, JNK_P, Km52, 1, kcat52) - function_42(IRS1, PKC_P, cyto_vol, 1, k2psp) + function_43(IRS1_PolySerP, PP2A, cyto_vol, 1, kminus7b) + function_41(IRS1_TyrP, PTP1B, cyto_vol, 1, kminus7a) - function_40(IRS1, IRp, Ins_2_InR_P, Ins_InR_P, 1, cyto_vol, 1, k7), ...
function_47(IRS1_TyrP_PI3K, cyto_vol, 1, kminus8) - function_50(IRS1_TyrP, 1, k_irs1_basal_degr) - function_46(IRS1_TyrP, PI3K, cyto_vol, 1, k8) - function_44(IRS1_TyrP, PKC_P, cyto_vol, 1, k2psp) + function_45(IRS1_TyrP_PolySerP, PP2A, cyto_vol, 1, kminus7b) - function_41(IRS1_TyrP, PTP1B, cyto_vol, 1, kminus7a) + function_40(IRS1, IRp, Ins_2_InR_P, Ins_InR_P, 1, cyto_vol, 1, k7), ...
function_53(IKK_P, IRS1, Km51, 1, kcat51) - function_51(IRS1_PolySerP, 1, k_irs1_polyserp_degr) + function_54(IRS1, JNK_P, Km52, 1, kcat52) + function_42(IRS1, PKC_P, cyto_vol, 1, k2psp) - function_43(IRS1_PolySerP, PP2A, cyto_vol, 1, kminus7b), ...
function_44(IRS1_TyrP, PKC_P, cyto_vol, 1, k2psp) - function_52(IRS1_TyrP_PolySerP, 1, k_irs1_polyserp_degr) - function_45(IRS1_TyrP_PolySerP, PP2A, cyto_vol, 1, kminus7b), ...
function_47(IRS1_TyrP_PI3K, cyto_vol, 1, kminus8) - function_46(IRS1_TyrP, PI3K, cyto_vol, 1, k8), ...
function_55(JNK, ROS, alpha_ox, 1, k42f) - function_56(DUSP, JNK_P, 1, k42r), ...
function_57(IKK, ROS, 1, k43f) - function_58(DUSP, IKK_P, 1, k43r), ...
function_56(DUSP, JNK_P, 1, k42r) - function_55(JNK, ROS, alpha_ox, 1, k42f), ...
function_58(DUSP, IKK_P, 1, k43r) - function_57(IKK, ROS, 1, k43f), ...
function_60(DUSP_ox, GSH, 1, k32r) - function_59(DUSP, ROS, 1, k32f), ...
function_59(DUSP, ROS, 1, k32f) - function_60(DUSP_ox, GSH, 1, k32r), ...
function_318(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kdeg_R357) + function_319(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdeg_R358) + function_320(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdeg_R359) + function_321(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdeg_R360) + function_322(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdeg_R361) + function_323(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdeg_R362) + function_324(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdeg_R363) + function_325(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdeg_R364), ...
function_61(E2F1, 1, ksynth_R100) - function_62(1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_R101) + function_63(ktr_R102, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_126(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R165) + function_252(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_R291) + function_210(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_R249) + function_174(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_R213) - function_150(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R189) - function_294(SCF, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_R333) - function_198(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R237) - function_246(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R285), ...
function_62(1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_R101) + function_65(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_R104) - function_63(ktr_R102, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_64(ktr_R103, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_127(Akt_P2, 1, kkin_R166, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) + function_253(PP2A, 1, kdephos_R292, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) + function_211(PP2A, 1, kdephos_R250, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) + function_175(PP2A, 1, kdephos_R214, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_151(SGK, 1, kkin_R190, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_295(SCF, 1, kub_R334, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_199(IKK_P, by_ikk_phos_factor, 1, kkin_R238, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_247(JNK_P, by_jnk_phos_factor, 1, kkin_R286, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), ...
function_64(ktr_R103, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_65(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_R104) - function_128(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R167) + function_254(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_R293) + function_212(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_R251) + function_176(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_R215) - function_152(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R191) - function_296(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_R335) - function_200(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R239) - function_248(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R287), ...
function_67(ktr_R106, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_66(1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_R105) - function_129(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R168) + function_255(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_R294) + function_213(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_R252) + function_177(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_R216) - function_318(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kdeg_R357) - function_153(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R192) + function_294(SCF, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_R333) - function_201(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R240) - function_249(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R288), ...
function_66(1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_R105) + function_69(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_R108) - function_67(ktr_R106, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_68(ktr_R107, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_130(Akt_P2, 1, kkin_R169, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) + function_256(PP2A, 1, kdephos_R295, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_214(PP2A, 1, kdephos_R253, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) + function_178(PP2A, 1, kdephos_R217, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_154(SGK, 1, kkin_R193, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) + function_295(SCF, 1, kub_R334, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_202(IKK_P, by_ikk_phos_factor, 1, kkin_R241, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_250(JNK_P, by_jnk_phos_factor, 1, kkin_R289, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), ...
function_68(ktr_R107, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_69(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_R108) - function_131(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R170) + function_257(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_R296) + function_215(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_R254) + function_179(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_R218) - function_155(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R194) + function_296(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_R335) - function_203(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R242) - function_251(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R290), ...
function_71(ktr_R110, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_70(1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_R109) - function_132(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R171) - function_252(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_R291) + function_216(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R255) + function_180(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R219) - function_156(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R195) - function_297(SCF, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_R336) - function_204(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R243) + function_246(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R285), ...
function_70(1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_R109) + function_73(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_R112) - function_71(ktr_R110, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_72(ktr_R111, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_133(Akt_P2, 1, kkin_R172, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_253(PP2A, 1, kdephos_R292, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) + function_217(PP2A, 1, kdephos_R256, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) + function_181(PP2A, 1, kdephos_R220, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_157(SGK, 1, kkin_R196, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_298(SCF, 1, kub_R337, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_205(IKK_P, by_ikk_phos_factor, 1, kkin_R244, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) + function_247(JNK_P, by_jnk_phos_factor, 1, kkin_R286, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), ...
function_72(ktr_R111, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_73(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_R112) - function_134(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R173) - function_254(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_R293) + function_218(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R257) + function_182(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R221) - function_158(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R197) - function_299(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_R338) - function_206(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R245) + function_248(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R287), ...
function_75(ktr_R114, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_74(1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_R113) - function_135(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R174) - function_255(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_R294) + function_219(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R258) + function_183(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R222) - function_319(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdeg_R358) - function_159(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R198) + function_297(SCF, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_R336) - function_207(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R246) + function_249(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R288), ...
function_74(1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_R113) + function_77(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_R116) - function_75(ktr_R114, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_76(ktr_R115, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_136(Akt_P2, 1, kkin_R175, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_256(PP2A, 1, kdephos_R295, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_220(PP2A, 1, kdephos_R259, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) + function_184(PP2A, 1, kdephos_R223, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) - function_160(SGK, 1, kkin_R199, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_298(SCF, 1, kub_R337, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_208(IKK_P, by_ikk_phos_factor, 1, kkin_R247, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_250(JNK_P, by_jnk_phos_factor, 1, kkin_R289, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), ...
function_76(ktr_R115, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_77(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_R116) - function_137(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R176) - function_257(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_R296) + function_221(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R260) + function_185(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R224) - function_161(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R200) + function_299(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_R338) - function_209(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R248) + function_251(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R290), ...
function_79(ktr_R118, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_78(1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_R117) - function_138(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R177) - function_210(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_R249) + function_264(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R303) + function_186(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R225) - function_162(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R201) - function_300(SCF, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_R339) + function_198(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R237) - function_258(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R297), ...
function_78(1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_R117) + function_81(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_R120) - function_79(ktr_R118, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_80(ktr_R119, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_139(Akt_P2, 1, kkin_R178, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_211(PP2A, 1, kdephos_R250, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) + function_265(PP2A, 1, kdephos_R304, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) + function_187(PP2A, 1, kdephos_R226, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) - function_163(SGK, 1, kkin_R202, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_301(SCF, 1, kub_R340, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) + function_199(IKK_P, by_ikk_phos_factor, 1, kkin_R238, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_259(JNK_P, by_jnk_phos_factor, 1, kkin_R298, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), ...
function_80(ktr_R119, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_81(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_R120) - function_140(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R179) - function_212(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_R251) + function_266(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R305) + function_188(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R227) - function_164(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R203) - function_302(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_R341) + function_200(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R239) - function_260(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R299), ...
function_83(ktr_R122, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_82(1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_R121) - function_141(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R180) - function_213(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_R252) + function_267(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R306) + function_189(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R228) - function_320(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdeg_R359) - function_165(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R204) + function_300(SCF, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_R339) + function_201(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R240) - function_261(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R300), ...
function_82(1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_R121) + function_85(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_R124) - function_83(ktr_R122, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_84(ktr_R123, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_142(Akt_P2, 1, kkin_R181, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_214(PP2A, 1, kdephos_R253, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) + function_268(PP2A, 1, kdephos_R307, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) + function_190(PP2A, 1, kdephos_R229, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) - function_166(SGK, 1, kkin_R205, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) + function_301(SCF, 1, kub_R340, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) + function_202(IKK_P, by_ikk_phos_factor, 1, kkin_R241, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_262(JNK_P, by_jnk_phos_factor, 1, kkin_R301, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), ...
function_84(ktr_R123, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_85(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_R124) - function_143(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R182) - function_215(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_R254) + function_269(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R308) + function_191(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R230) - function_167(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R206) + function_302(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_R341) + function_203(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R242) - function_263(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R302), ...
function_87(ktr_R126, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_86(1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_R125) - function_144(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R183) - function_216(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R255) - function_264(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R303) + function_192(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R231) - function_168(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R207) - function_303(SCF, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_R342) + function_204(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R243) + function_258(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R297), ...
function_86(1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_R125) + function_89(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_R128) - function_87(ktr_R126, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_88(ktr_R127, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_145(Akt_P2, 1, kkin_R184, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_217(PP2A, 1, kdephos_R256, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_265(PP2A, 1, kdephos_R304, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) + function_193(PP2A, 1, kdephos_R232, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_169(SGK, 1, kkin_R208, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_304(SCF, 1, kub_R343, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) + function_205(IKK_P, by_ikk_phos_factor, 1, kkin_R244, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) + function_259(JNK_P, by_jnk_phos_factor, 1, kkin_R298, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), ...
function_88(ktr_R127, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_89(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_R128) - function_146(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R185) - function_218(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R257) - function_266(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_R305) + function_194(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R233) - function_170(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R209) - function_305(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_R344) + function_206(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R245) + function_260(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R299), ...
function_91(ktr_R130, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_90(1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_R129) - function_147(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R186) - function_219(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R258) - function_267(PP2A, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R306) + function_195(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R234) - function_321(Proteasome, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdeg_R360) - function_171(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R210) + function_303(SCF, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_R342) + function_207(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R246) + function_261(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R300), ...
function_90(1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_R129) + function_93(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_R132) - function_91(ktr_R130, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_92(ktr_R131, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_148(Akt_P2, 1, kkin_R187, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_220(PP2A, 1, kdephos_R259, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_268(PP2A, 1, kdephos_R307, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) + function_196(PP2A, 1, kdephos_R235, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_172(SGK, 1, kkin_R211, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) + function_304(SCF, 1, kub_R343, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) + function_208(IKK_P, by_ikk_phos_factor, 1, kkin_R247, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_262(JNK_P, by_jnk_phos_factor, 1, kkin_R301, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), ...
function_92(ktr_R131, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_93(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_R132) - function_149(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R188) - function_221(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R260) - function_269(PP2A, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_R308) + function_197(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R236) - function_173(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R212) + function_305(SCF, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_R344) + function_209(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R248) + function_263(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R302), ...
function_95(ktr_R134, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_94(1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_R133) + function_126(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R165) - function_174(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_R213) + function_276(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R315) + function_234(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R273) + function_150(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R189) - function_306(SCF, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_R345) - function_222(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R261) - function_270(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R309), ...
function_94(1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_R133) + function_97(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_R136) - function_95(ktr_R134, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_96(ktr_R135, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) + function_127(Akt_P2, 1, kkin_R166, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_175(PP2A, 1, kdephos_R214, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) + function_277(PP2A, 1, kdephos_R316, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) + function_235(PP2A, 1, kdephos_R274, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) + function_151(SGK, 1, kkin_R190, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) - function_307(SCF, 1, kub_R346, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_223(IKK_P, by_ikk_phos_factor, 1, kkin_R262, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_271(JNK_P, by_jnk_phos_factor, 1, kkin_R310, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), ...
function_96(ktr_R135, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_97(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_R136) + function_128(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R167) - function_176(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_R215) + function_278(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R317) + function_236(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R275) + function_152(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_R191) - function_308(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_R347) - function_224(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R263) - function_272(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R311), ...
function_99(ktr_R138, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_98(1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_R137) + function_129(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R168) - function_177(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_R216) + function_279(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R318) + function_237(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R276) - function_322(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdeg_R361) + function_153(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R192) + function_306(SCF, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_R345) - function_225(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R264) - function_273(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R312), ...
function_98(1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_R137) + function_101(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_R140) - function_99(ktr_R138, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_100(ktr_R139, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) + function_130(Akt_P2, 1, kkin_R169, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) - function_178(PP2A, 1, kdephos_R217, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) + function_280(PP2A, 1, kdephos_R319, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) + function_238(PP2A, 1, kdephos_R277, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) + function_154(SGK, 1, kkin_R193, 1, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) + function_307(SCF, 1, kub_R346, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_226(IKK_P, by_ikk_phos_factor, 1, kkin_R265, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_274(JNK_P, by_jnk_phos_factor, 1, kkin_R313, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), ...
function_100(ktr_R139, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_101(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_R140) + function_131(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R170) - function_179(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_R218) + function_281(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R320) + function_239(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R278) + function_155(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_R194) + function_308(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_R347) - function_227(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R266) - function_275(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R314), ...
function_103(ktr_R142, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_102(1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_R141) + function_132(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R171) - function_180(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R219) - function_276(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R315) + function_240(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R279) + function_156(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R195) - function_309(SCF, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_R348) - function_228(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_R267) + function_270(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R309), ...
function_102(1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_R141) + function_105(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_R144) - function_103(ktr_R142, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_104(ktr_R143, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) + function_133(Akt_P2, 1, kkin_R172, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_181(PP2A, 1, kdephos_R220, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_277(PP2A, 1, kdephos_R316, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) + function_241(PP2A, 1, kdephos_R280, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_157(SGK, 1, kkin_R196, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) - function_310(SCF, 1, kub_R349, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_229(IKK_P, by_ikk_phos_factor, 1, kkin_R268, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) + function_271(JNK_P, by_jnk_phos_factor, 1, kkin_R310, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), ...
function_104(ktr_R143, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_105(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_R144) + function_134(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R173) - function_182(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R221) - function_278(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_R317) + function_242(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R281) + function_158(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_R197) - function_311(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_R350) - function_230(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_R269) + function_272(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R311), ...
function_107(ktr_R146, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) - function_106(1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_R145) + function_135(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R174) - function_183(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R222) - function_279(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R318) + function_243(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R282) - function_323(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdeg_R362) + function_159(SGK, 1, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R198) + function_309(SCF, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_R348) - function_231(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_R270) + function_273(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R312), ...
function_106(1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_R145) + function_109(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_R148) - function_107(ktr_R146, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) - function_108(ktr_R147, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) + function_136(Akt_P2, 1, kkin_R175, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) - function_184(PP2A, 1, kdephos_R223, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) - function_280(PP2A, 1, kdephos_R319, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) + function_244(PP2A, 1, kdephos_R283, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) + function_160(SGK, 1, kkin_R199, 1, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) + function_310(SCF, 1, kub_R349, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) - function_232(IKK_P, by_ikk_phos_factor, 1, kkin_R271, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) + function_274(JNK_P, by_jnk_phos_factor, 1, kkin_R313, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), ...
function_108(ktr_R147, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) - function_109(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_R148) + function_137(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R176) - function_185(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R224) - function_281(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_R320) + function_245(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R284) + function_161(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_R200) + function_311(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_R350) - function_233(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_R272) + function_275(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R314), ...
function_111(ktr_R150, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) - function_110(1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_R149) + function_138(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R177) - function_186(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R225) - function_234(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R273) + function_288(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R327) + function_162(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R201) - function_312(SCF, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_R351) + function_222(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R261) - function_282(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_R321), ...
function_110(1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_R149) + function_113(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_R152) - function_111(ktr_R150, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) - function_112(ktr_R151, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) + function_139(Akt_P2, 1, kkin_R178, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_187(PP2A, 1, kdephos_R226, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) - function_235(PP2A, 1, kdephos_R274, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) + function_289(PP2A, 1, kdephos_R328, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_163(SGK, 1, kkin_R202, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) - function_313(SCF, 1, kub_R352, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) + function_223(IKK_P, by_ikk_phos_factor, 1, kkin_R262, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) - function_283(JNK_P, by_jnk_phos_factor, 1, kkin_R322, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), ...
function_112(ktr_R151, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) - function_113(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_R152) + function_140(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R179) - function_188(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R227) - function_236(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_R275) + function_290(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R329) + function_164(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_R203) - function_314(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_R353) + function_224(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_R263) - function_284(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_R323), ...
function_115(ktr_R154, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) - function_114(1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_R153) + function_141(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R180) - function_189(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R228) - function_237(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R276) + function_291(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R330) - function_324(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdeg_R363) + function_165(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R204) + function_312(SCF, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_R351) + function_225(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R264) - function_285(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_R324), ...
function_114(1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_R153) + function_117(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_R156) - function_115(ktr_R154, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) - function_116(ktr_R155, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) + function_142(Akt_P2, 1, kkin_R181, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) - function_190(PP2A, 1, kdephos_R229, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) - function_238(PP2A, 1, kdephos_R277, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) + function_292(PP2A, 1, kdephos_R331, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) + function_166(SGK, 1, kkin_R205, 1, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) + function_313(SCF, 1, kub_R352, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) + function_226(IKK_P, by_ikk_phos_factor, 1, kkin_R265, 1, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) - function_286(JNK_P, by_jnk_phos_factor, 1, kkin_R325, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), ...
function_116(ktr_R155, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) - function_117(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_R156) + function_143(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R182) - function_191(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R230) - function_239(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_R278) + function_293(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R332) + function_167(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_R206) + function_314(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_R353) + function_227(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_R266) - function_287(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_R326), ...
function_119(ktr_R158, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_118(1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_R157) + function_144(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R183) - function_192(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R231) - function_240(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R279) - function_288(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R327) + function_168(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R207) - function_315(SCF, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_R354) + function_228(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_R267) + function_282(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_R321), ...
function_118(1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_R157) + function_121(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_R160) - function_119(ktr_R158, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_120(ktr_R159, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_145(Akt_P2, 1, kkin_R184, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_193(PP2A, 1, kdephos_R232, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_241(PP2A, 1, kdephos_R280, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_289(PP2A, 1, kdephos_R328, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_169(SGK, 1, kkin_R208, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) - function_316(SCF, 1, kub_R355, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_229(IKK_P, by_ikk_phos_factor, 1, kkin_R268, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) + function_283(JNK_P, by_jnk_phos_factor, 1, kkin_R322, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), ...
function_120(ktr_R159, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) - function_121(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_R160) + function_146(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R185) - function_194(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R233) - function_242(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R281) - function_290(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_R329) + function_170(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_R209) - function_317(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_R356) + function_230(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_R269) + function_284(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_R323), ...
function_123(ktr_R162, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_122(1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_R161) + function_147(Akt_P2, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R186) - function_195(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R234) - function_243(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R282) - function_291(PP2A, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R330) - function_325(Proteasome, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdeg_R364) + function_171(SGK, 1, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R210) + function_315(SCF, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_R354) + function_231(IKK_P, by_ikk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_R270) + function_285(JNK_P, by_jnk_phos_factor, 1, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_R324), ...
function_122(1, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_R161) + function_125(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_R164) - function_123(ktr_R162, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_124(ktr_R163, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) + function_148(Akt_P2, 1, kkin_R187, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) - function_196(PP2A, 1, kdephos_R235, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_244(PP2A, 1, kdephos_R283, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_292(PP2A, 1, kdephos_R331, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) + function_172(SGK, 1, kkin_R211, 1, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) + function_316(SCF, 1, kub_R355, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) + function_232(IKK_P, by_ikk_phos_factor, 1, kkin_R271, 1, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) + function_286(JNK_P, by_jnk_phos_factor, 1, kkin_R325, 1, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), ...
function_124(ktr_R163, 1, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) - function_125(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_R164) + function_149(Akt_P2, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R188) - function_197(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R236) - function_245(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R284) - function_293(PP2A, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_R332) + function_173(SGK, 1, 1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_R212) + function_317(SCF, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_R356) + function_233(IKK_P, by_ikk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_R272) + function_287(JNK_P, by_jnk_phos_factor, 1, 1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_R326), ...
function_358(v_R397) + function_326(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktranscr_R365) + function_328(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktranscr_R367) + function_330(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktranscr_R369) + function_332(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktranscr_R371) + function_334(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktranscr_R373) + function_336(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktranscr_R375) + function_338(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktranscr_R377) + function_340(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktranscr_R379) + function_342(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktranscr_R381) + function_344(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktranscr_R383) + function_346(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktranscr_R385) + function_348(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktranscr_R387) + function_350(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktranscr_R389) + function_352(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktranscr_R391) + function_354(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktranscr_R393) + function_356(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktranscr_R395) - function_359(kexp_R398, 1, nucleus_RNA_InR), ...
function_359(kexp_R398, 1, nucleus_RNA_InR) - function_360(1, cytoplasm_RNA_InR, kmdeg_R399), ...
function_358(v_R402) + function_327(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktranscr_R366) + function_329(1, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktranscr_R368) + function_331(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktranscr_R370) + function_333(1, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktranscr_R372) + function_335(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktranscr_R374) + function_337(1, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktranscr_R376) + function_339(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktranscr_R378) + function_341(1, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktranscr_R380) + function_343(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktranscr_R382) + function_345(1, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktranscr_R384) + function_347(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktranscr_R386) + function_349(1, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktranscr_R388) + function_351(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktranscr_R390) + function_353(1, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktranscr_R392) + function_355(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktranscr_R394) + function_357(1, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktranscr_R396) - function_363(kexp_R403, 1, nucleus_RNA_SOD2), ...
function_363(kexp_R403, 1, nucleus_RNA_SOD2) - function_364(1, cytoplasm_RNA_SOD2, kmdeg_R404), ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0];

%%
% INITIALIZATION

model.sym.x0 = [90000, ...
0, ...
0, ...
0, ...
10000, ...
0, ...
0, ...
100000, ...
0, ...
1000, ...
200000, ...
100000, ...
0, ...
100000, ...
0, ...
20000, ...
0, ...
96000, ...
4000, ...
100000, ...
500000, ...
0, ...
0, ...
0, ...
100, ...
0, ...
41700, ...
100, ...
0, ...
0, ...
100000, ...
0, ...
0, ...
0, ...
10000, ...
0, ...
0, ...
16000, ...
2000, ...
100000, ...
0, ...
0, ...
1000, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
0, ...
300, ...
0, ...
0, ...
0, ...
10, ...
1000, ...
0, ...
1000, ...
1000, ...
1000];

%%
% OBSERVABLES


model.sym.y = [...
    log10(IRS1_TyrP_PI3K), ...
    log10(cytoplasm_GLUT4), ...
    log10(cytoplasm_Ins_2_InR_P+cytoplasm_Ins_InR_P), ...
    log10(IRS1_TyrP) ,...
    log10(PTP1B) ...
];


end

function r = pow(x,y)

    r = x^y;

end

function r = power(x,y)

    r = x^y;

end

function r = function_358(v)

    r = v;

end

function r = function_359(kexp,nucleus,nucleus_RNA_InR)

    r = nucleus_RNA_InR*nucleus*kexp;

end

function r = function_360(cytoplasm,cytoplasm_RNA_InR,kmdeg)

    r = cytoplasm_RNA_InR*cytoplasm*kmdeg/cytoplasm;

end

function r = function_361(cytoplasm,cytoplasm_RNA_InR,ktransl)

    r = cytoplasm_RNA_InR*cytoplasm*ktransl/cytoplasm;

end

function r = function_362(cytoplasm,cytoplasm_InR,kpdeg)

    r = cytoplasm_InR*cytoplasm*kpdeg/cytoplasm;

end

function r = function_363(kexp,nucleus,nucleus_RNA_SOD2)

    r = nucleus_RNA_SOD2*nucleus*kexp;

end

function r = function_364(cytoplasm,cytoplasm_RNA_SOD2,kmdeg)

    r = cytoplasm_RNA_SOD2*cytoplasm*kmdeg/cytoplasm;

end

function r = function_365(cytoplasm,cytoplasm_RNA_SOD2,ktransl)

    r = cytoplasm_RNA_SOD2*cytoplasm*ktransl/cytoplasm;

end

function r = function_366(cytoplasm,cytoplasm_SOD2,kpdeg)

    r = cytoplasm_SOD2*cytoplasm*kpdeg/cytoplasm;

end

function r = function_22(PKC_P,PP2A,cytoplasm,kminus12)

    r = kminus12*PP2A*cytoplasm*PKC_P*cytoplasm/cytoplasm;

end

function r = function_23(AS160_P,cytoplasm,cytoplasm_GLUT4,k13,k13_basal)

    r = (k13_basal+k13*AS160_P*cytoplasm)*cytoplasm_GLUT4*cytoplasm;

end

function r = function_24(cellsurface,cellsurface_GLUT4,kminus13)

    r = kminus13*cellsurface_GLUT4*cellsurface;

end

function r = function_25(PTP1B,ROS,cytoplasm,k30f)

    r = k30f*PTP1B*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_26(GSH,PTP1B_ox,cytoplasm,k30r)

    r = k30r*PTP1B_ox*cytoplasm*GSH*cytoplasm/cytoplasm;

end

function r = function_27(PTEN,ROS,cytoplasm,k31f)

    r = k31f*PTEN*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_28(GSH,PTEN_ox,cytoplasm,k31r)

    r = k31r*PTEN_ox*cytoplasm*GSH*cytoplasm/cytoplasm;

end

function r = function_29(Ins,NOX_inact,cytoplasm,extracellular,k34f)

    r = k34f*NOX_inact*cytoplasm*Ins*extracellular;

end

function r = function_30(NOX,cytoplasm,k34r1)

    r = k34r1*NOX*cytoplasm*NOX*cytoplasm/cytoplasm;

end

function r = function_31(NOX,cytoplasm,k34r2)

    r = k34r2*NOX*cytoplasm/cytoplasm;

end

function r = function_32(NOX_deact,cytoplasm,k34r3)

    r = k34r3*NOX_deact*cytoplasm*NOX_deact*cytoplasm/cytoplasm;

end

function r = function_33(NOX,cytoplasm,k35f)

    r = k35f*NOX*cytoplasm/cytoplasm;

end

function r = function_34(ROS,cytoplasm,cytoplasm_SOD2,k35r)

    r = k35r*ROS*cytoplasm*cytoplasm_SOD2*cytoplasm/cytoplasm;

end

function r = function_35(Mt,cytoplasm,k36f)

    r = k36f*Mt*cytoplasm/cytoplasm;

end

function r = function_36(extracellular,extracellular_ROS,k_ros_perm)

    r = k_ros_perm*extracellular_ROS*extracellular;

end

function r = function_37(ROS,cytoplasm,extracellular,k_ros_perm)

    r = k_ros_perm*(extracellular/cytoplasm)*ROS*cytoplasm;

end

function r = function_38(GSH,ROS,cytoplasm,k38f)

    r = k38f*GSH*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_39(GSSG,cytoplasm,k38r)

    r = k38r*GSSG*cytoplasm/cytoplasm;

end

function r = function_40(IRS1,IRp,Ins_2_InR_P,Ins_InR_P,cellsurface,cyto_vol,cytoplasm,k7)

    r = cyto_vol*(k7*IRS1*cytoplasm*(Ins_2_InR_P*cellsurface+Ins_InR_P*cellsurface)/IRp)/cytoplasm;

end

function r = function_41(IRS1_TyrP,PTP1B,cyto_vol,cytoplasm,kminus7a)

    r = cyto_vol*kminus7a*PTP1B*cytoplasm*IRS1_TyrP*cytoplasm/cytoplasm;

end

function r = function_42(IRS1,PKC_P,cyto_vol,cytoplasm,k2psp)

    r = cyto_vol*k2psp*IRS1*cytoplasm*PKC_P*cytoplasm/cytoplasm;

end

function r = function_43(IRS1_PolySerP,PP2A,cyto_vol,cytoplasm,kminus7b)

    r = cyto_vol*kminus7b*PP2A*cytoplasm*IRS1_PolySerP*cytoplasm/cytoplasm;

end

function r = function_44(IRS1_TyrP,PKC_P,cyto_vol,cytoplasm,k2psp)

    r = cyto_vol*k2psp*IRS1_TyrP*cytoplasm*PKC_P*cytoplasm/cytoplasm;

end

function r = function_45(IRS1_TyrP_PolySerP,PP2A,cyto_vol,cytoplasm,kminus7b)

    r = cyto_vol*kminus7b*PP2A*cytoplasm*IRS1_TyrP_PolySerP*cytoplasm/cytoplasm;

end

function r = function_46(IRS1_TyrP,PI3K,cyto_vol,cytoplasm,k8)

    r = cyto_vol*k8*IRS1_TyrP*cytoplasm*PI3K*cytoplasm/cytoplasm;

end

function r = function_47(IRS1_TyrP_PI3K,cyto_vol,cytoplasm,kminus8)

    r = cyto_vol*kminus8*IRS1_TyrP_PI3K*cytoplasm/cytoplasm;

end

function r = function_48(cytoplasm,k_irs1_basal_syn)

    r = k_irs1_basal_syn/cytoplasm;

end

function r = function_49(IRS1,cytoplasm,k_irs1_basal_degr)

    r = IRS1*cytoplasm*k_irs1_basal_degr/cytoplasm;

end

function r = function_50(IRS1_TyrP,cytoplasm,k_irs1_basal_degr)

    r = IRS1_TyrP*cytoplasm*k_irs1_basal_degr/cytoplasm;

end

function r = function_51(IRS1_PolySerP,cytoplasm,k_irs1_polyserp_degr)

    r = IRS1_PolySerP*cytoplasm*k_irs1_polyserp_degr/cytoplasm;

end

function r = function_52(IRS1_TyrP_PolySerP,cytoplasm,k_irs1_polyserp_degr)

    r = IRS1_TyrP_PolySerP*cytoplasm*k_irs1_polyserp_degr/cytoplasm;

end

function r = function_53(IKK_P,IRS1,Km51,cytoplasm,kcat51)

    r = kcat51*IRS1*cytoplasm*IKK_P*cytoplasm/(Km51+IRS1*cytoplasm)/cytoplasm;

end

function r = function_54(IRS1,JNK_P,Km52,cytoplasm,kcat52)

    r = kcat52*IRS1*cytoplasm*JNK_P*cytoplasm/(Km52+IRS1*cytoplasm)/cytoplasm;

end

function r = function_55(JNK,ROS,alpha_ox,cytoplasm,k42f)

    r = k42f*alpha_ox*JNK*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_56(DUSP,JNK_P,cytoplasm,k42r)

    r = k42r*JNK_P*cytoplasm*DUSP*cytoplasm/cytoplasm;

end

function r = function_57(IKK,ROS,cytoplasm,k43f)

    r = k43f*IKK*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_58(DUSP,IKK_P,cytoplasm,k43r)

    r = k43r*IKK_P*cytoplasm*DUSP*cytoplasm/cytoplasm;

end

function r = function_59(DUSP,ROS,cytoplasm,k32f)

    r = k32f*DUSP*cytoplasm*ROS*cytoplasm/cytoplasm;

end

function r = function_60(DUSP_ox,GSH,cytoplasm,k32r)

    r = k32r*DUSP_ox*cytoplasm*GSH*cytoplasm/cytoplasm;

end

function r = function_61(E2F1,cytoplasm,ksynth)

    r = E2F1*cytoplasm*ksynth/cytoplasm;

end

function r = function_62(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*ktr;

end

function r = function_63(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*ktr;

end

function r = function_64(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*ktr;

end

function r = function_65(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktr;

end

function r = function_66(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*ktr;

end

function r = function_67(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*ktr;

end

function r = function_68(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*ktr;

end

function r = function_69(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktr;

end

function r = function_70(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*ktr;

end

function r = function_71(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*ktr;

end

function r = function_72(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*ktr;

end

function r = function_73(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktr;

end

function r = function_74(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*ktr;

end

function r = function_75(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*ktr;

end

function r = function_76(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*ktr;

end

function r = function_77(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktr;

end

function r = function_78(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*ktr;

end

function r = function_79(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*ktr;

end

function r = function_80(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*ktr;

end

function r = function_81(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktr;

end

function r = function_82(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*ktr;

end

function r = function_83(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*ktr;

end

function r = function_84(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*ktr;

end

function r = function_85(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktr;

end

function r = function_86(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*ktr;

end

function r = function_87(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*ktr;

end

function r = function_88(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*ktr;

end

function r = function_89(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktr;

end

function r = function_90(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*ktr;

end

function r = function_91(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*ktr;

end

function r = function_92(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*ktr;

end

function r = function_93(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktr;

end

function r = function_94(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*ktr;

end

function r = function_95(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*ktr;

end

function r = function_96(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*ktr;

end

function r = function_97(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktr;

end

function r = function_98(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*ktr;

end

function r = function_99(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*ktr;

end

function r = function_100(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*ktr;

end

function r = function_101(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktr;

end

function r = function_102(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*ktr;

end

function r = function_103(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*ktr;

end

function r = function_104(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*ktr;

end

function r = function_105(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktr;

end

function r = function_106(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*ktr;

end

function r = function_107(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*ktr;

end

function r = function_108(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*ktr;

end

function r = function_109(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktr;

end

function r = function_110(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*ktr;

end

function r = function_111(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*ktr;

end

function r = function_112(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*ktr;

end

function r = function_113(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktr;

end

function r = function_114(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*ktr;

end

function r = function_115(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*ktr;

end

function r = function_116(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*ktr;

end

function r = function_117(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktr;

end

function r = function_118(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*ktr;

end

function r = function_119(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*ktr;

end

function r = function_120(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*ktr;

end

function r = function_121(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktr;

end

function r = function_122(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,ktr)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*ktr;

end

function r = function_123(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*ktr;

end

function r = function_124(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*ktr;

end

function r = function_125(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktr;

end

function r = function_126(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_127(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_128(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_129(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_130(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_131(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_132(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_133(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_134(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_135(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_136(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_137(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_138(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_139(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_140(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_141(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_142(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_143(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_144(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_145(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_146(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_147(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm;

end

function r = function_148(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus;

end

function r = function_149(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound;

end

function r = function_150(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_151(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_152(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_153(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_154(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_155(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_156(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_157(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_158(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_159(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_160(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_161(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_162(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_163(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_164(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_165(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_21(PI345P3,PKC,cytoplasm,k12,pip3_basal)

    r = k12*PKC*cytoplasm*am_piecewise(PI345P3*cytoplasm-pip3_basal,am_gt(PI345P3*cytoplasm,pip3_basal),0)/cytoplasm;

end

function r = function_166(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_167(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_168(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_169(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_170(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_171(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm;

end

function r = function_172(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus;

end

function r = function_173(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound;

end

function r = function_174(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_175(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_176(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_177(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_178(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_179(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_180(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_181(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_182(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_183(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_184(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_185(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_186(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_187(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_188(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_189(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_190(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_191(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_192(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_193(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_194(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_195(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_196(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_197(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_198(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_199(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_200(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_201(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_202(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_203(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_204(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_205(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_206(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_207(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_208(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_209(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_210(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_211(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_212(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_213(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_214(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_215(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_216(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_217(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_218(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_219(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_220(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_221(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_222(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_223(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_224(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_225(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_226(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_227(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_228(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_229(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_230(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_231(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm;

end

function r = function_232(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus;

end

function r = function_233(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound;

end

function r = function_234(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_235(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_236(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_237(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_238(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_239(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_240(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_241(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_242(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_243(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_244(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_245(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_246(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_247(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_248(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_249(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_250(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_251(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_252(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_253(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_254(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_255(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_256(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_257(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_258(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_259(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_260(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_261(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_262(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_263(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_264(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_265(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_266(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_267(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_268(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_269(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_270(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_271(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_272(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_273(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_274(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_275(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_276(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_277(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_278(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_279(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_280(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_281(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_282(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_283(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_284(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kkin)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_285(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kkin)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm;

end

function r = function_286(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus;

end

function r = function_287(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kkin)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound;

end

function r = function_288(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_289(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_290(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_291(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm;

end

function r = function_292(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus;

end

function r = function_293(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound;

end

function r = function_294(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kub)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_295(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_296(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kub)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_297(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kub)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_298(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_299(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kub)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_300(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kub)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_301(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_302(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kub)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_303(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kub)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_304(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_305(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kub)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_306(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kub)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_307(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_308(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kub)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_309(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kub)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_310(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_311(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kub)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_312(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kub)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_313(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_314(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kub)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_315(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kub)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm;

end

function r = function_316(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)

    r = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus;

end

function r = function_317(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kub)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound;

end

function r = function_318(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_319(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_320(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_321(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_322(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_323(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_324(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_325(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdeg)

    r = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm;

end

function r = function_326(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_327(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_328(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_329(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_330(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_331(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_332(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_333(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_334(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_335(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_336(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_337(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_338(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_339(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_340(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_341(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_342(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_343(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_344(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_345(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_346(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_347(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_348(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_349(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_350(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_351(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktranscr;

end

function r = function_352(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_353(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktranscr;

end

function r = function_354(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_355(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktranscr;

end

function r = function_356(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_357(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktranscr)

    r = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktranscr;

end

function r = function_1(InR,Ins,cellsurface,extracellular,k1)

    r = k1*Ins*extracellular*InR*cellsurface;

end

function r = function_2(Ins_InR,cellsurface,kminus1)

    r = kminus1*Ins_InR*cellsurface;

end

function r = function_3(Ins_InR,cellsurface,k3)

    r = k3*Ins_InR*cellsurface/cellsurface;

end

function r = function_4(Ins,Ins_InR_P,cellsurface,extracellular,k2)

    r = k2*Ins*extracellular*Ins_InR_P*cellsurface;

end

function r = function_5(Ins_2_InR_P,cellsurface,kminus2)

    r = kminus2*Ins_2_InR_P*cellsurface;

end

function r = function_6(Ins_InR_P,PTP1B,cellsurface,cytoplasm,kminus3)

    r = kminus3*PTP1B*cytoplasm*Ins_InR_P*cellsurface/cellsurface;

end

function r = function_7(InR,cellsurface,k4)

    r = k4*InR*cellsurface;

end

function r = function_8(cytoplasm,cytoplasm_InR,kminus4)

    r = kminus4*cytoplasm_InR*cytoplasm;

end

function r = function_9(Ins_2_InR_P,cellsurface,k4prime)

    r = k4prime*Ins_2_InR_P*cellsurface;

end

function r = function_10(cytoplasm,cytoplasm_Ins_2_InR_P,kminus4prime)

    r = kminus4prime*cytoplasm_Ins_2_InR_P*cytoplasm;

end

function r = function_11(Ins_InR_P,cellsurface,k4prime)

    r = k4prime*Ins_InR_P*cellsurface;

end

function r = function_12(cytoplasm,cytoplasm_Ins_InR_P,kminus4prime)

    r = kminus4prime*cytoplasm_Ins_InR_P*cytoplasm;

end

function r = function_13(PTP1B,cytoplasm,cytoplasm_Ins_2_InR_P,k6)

    r = k6*PTP1B*cytoplasm*cytoplasm_Ins_2_InR_P*cytoplasm/cytoplasm;

end

function r = function_14(PTP1B,cytoplasm,cytoplasm_Ins_InR_P,k6)

    r = k6*PTP1B*cytoplasm*cytoplasm_Ins_InR_P*cytoplasm/cytoplasm;

end

function r = function_15(IRS1_TyrP_PI3K,PIP2,cytoplasm,k9,k9_basal)

    r = (k9_basal+k9*IRS1_TyrP_PI3K*cytoplasm)*PIP2*cytoplasm/cytoplasm;

end

function r = function_16(PI345P3,PTEN,cytoplasm,kminus9,kminus9_basal)

    r = (kminus9_basal+kminus9*PTEN*cytoplasm)*PI345P3*cytoplasm/cytoplasm;

end

function r = function_17(Akt,PI345P3,cytoplasm,k11,pip3_basal)

    r = k11*Akt*cytoplasm*am_piecewise(PI345P3*cytoplasm-pip3_basal,am_gt(PI345P3*cytoplasm,pip3_basal),0)/cytoplasm;

end

function r = function_18(Akt_P2,PP2A,cytoplasm,kminus11)

    r = kminus11*PP2A*cytoplasm*Akt_P2*cytoplasm/cytoplasm;

end

function r = function_19(AS160,Akt_P2,cytoplasm,kr16a)

    r = kr16a*Akt_P2*cytoplasm*AS160*cytoplasm/cytoplasm;

end

function r = function_20(AS160_P,PP2A,cytoplasm,kminusr16a)

    r = kminusr16a*PP2A*cytoplasm*AS160_P*cytoplasm/cytoplasm;

end

