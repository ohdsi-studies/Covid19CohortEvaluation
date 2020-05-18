CREATE TABLE #Codesets (
  codeset_id int NOT NULL,
  concept_id bigint NOT NULL
)
;

INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 0 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (37311061)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (37311061)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 1 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (37310282)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (37310282)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 2 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (756055)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (756055)
  and c.invalid_reason is null

) I
LEFT JOIN
(
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (37310282,37310281)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (37310282,37310281)
  and c.invalid_reason is null

) E ON I.concept_id = E.concept_id
WHERE E.concept_id is null
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 3 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (710158,710155,710156,710159,710160,45756093,42501115)

) I
LEFT JOIN
(
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (45542411,586414,45600471,586415,710157)

) E ON I.concept_id = E.concept_id
WHERE E.concept_id is null
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 4 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (262,9201)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (262,9201)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 5 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (4336751,4017743,46272953,46273963,35623146,44806160,35623147,44810213,4269789,2003368,4228489,4022474,4223565,2109424,2109330,2109329,2109583,2109584,2109582,2107480,2106886,2106885,2109423,2109580,2109328,2109327,2109326,2109581,2001375,4335479,2101017,4021107,4197300,4337612,4339619,4187247,2107481,4138959,2107478,4019926,4067459,4285877,4216096,2721109,37204160,4022805,2109321,2109322,4099299,4101838,44809584,2001372,2106884,2106883,2106882,2106871,4337309,4067458,4139049,2003626,44511390,44511721,44510215,44509427,44510902,2003166,2109411,4079549,4032309,2109586,2109589,4180416,4068886,4068633,4337611,4208341,4328359,4322471,4337138,4137127,36717743,4076862,4266668,4068884,2109425,4178637,2721087,4265621,44810212,4068388,2001374,4068885,4343000,4020370)

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 6 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (4059465,42538117)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4059465,42538117)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 7 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (40321239,26942,45763750,4322024)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (40321239,26942,45763750,4322024)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 8 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (4094683)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4094683)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 9 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (2001341,45889563,4172438)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (2001341,45889563,4172438)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 10 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (4060079)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4060079)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 11 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (440417)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (440417)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 12 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (2001516,4323629,4234169,4050568,4232630,4066273,4018579,42537532,42539671,42537533,42537534,44511088,44511085,44511087,44511086,44510999,4336751,4017743,4173562,4219321,2107263,4130259,40493448,4148779,4168141,2100873,2100872,4197660,4183430,4241448,4337188,4336614,4020089,4144859,4338463,44511038,4313563,44790415,40756865,40756882,4338320,4099765,4069414,4338443,4339825,4339826,4336608,4339824,4337190,4215401,4207060,4284104,4229433,4146972,4228305,4228304,4063237,42537528,42537529,42537530,42537531,2001509,4148030,4008625,4106548,4031996,4234990,4336609,4329246,4019932,2107411,2107408,2107410,4021904,4115329,4337441,44511407,4144854,4020371,46232633,4336764,4339965,4140162,4266393,2313809,2107337,2107338,2107339,2313808,4151906,4336893,4140440,4213746,4289451,4012932,4336740,4337200,4049988,4336615,4336739,4337288,4322960,4283389,4339738,44511082,44511079,4228489,2107480,4170281,4203418,4168993,4169960,4173641,4202320,4339737,4338613,4337290,4082195,4338445,4339844,4339715,4338449,4338318,4336744,4336910,4339973,40492984,4339714,4339732,4339853,4338734,4070907,4261523,4210337,4337068,4166457,4205524,4168533,4169962,4166458,4204012,4203420,4145525,4337065,4101669,2101017,42537524,42537525,42537526,42537527,4335811,4050562,4331514,4231998,4328972,4160720,4141411,4165046,4184589,4337307,4306781,4282905,4260207,4194930,4218283,2107099,2107098,43021509,4147746,4057420,2615741,4029340,4339967,4174690,4195096,4337289,4017882,44511466,4010256,4271860,4306306,4043696,2001435,4171677,4020382,4337198,4287403,4120152,4336743,2107311,4144734,4332245,4147709,40483557,4148834,4336621,2107251,4337317,4017862,40487051,4018427,4020376,4018430,4323638,4018433,40488481,40492512,4054814,4281072,4336591,2107287,4323071,2107288,2107289,4219986,4197033,4151156,4150386,4336612,2107262,4203779,2107290,2107291,2107302,4337184,4338455,4336473,4337180,4199899,4338300,40481831,4104012,4213864,4336235,42873034,42872943,42873035,42873036,4049397,4019140,4048531,2107306,4338303,4338304,4339742,4020217,4051805,4338614,4338298,4338612,4340090,4338730,4049984,4051806,4339962,4336769,4051930,4338293,4339975,4336903,4338618,4338619,4336770,4049083,4051801,4324899,4178794,4184832,4031850,4081578,4336464,4337056,4000733,4336467,4336465,4339629,4337737,4336466,4233421,4305509,4309432,4011931,4253805,2107242,2107243,2107244,2107231,2107223,2107224,2107226,2107227,2107228,2107222,2107217,2107218,2107219,2107220,2107221,2107216,4002034,4078978,4000892,4106556,2107250,4129277,4336761,4324058,4017746,4267710,4196823,4294387,4051936,40487563,4171338,4259143,40487048,4184741,4286184,46232647,4130265,2001466,2110592,2110597,4019949,4020383,4017869,4139201,4018437,4020506,4297619,4050570,4049086,4336605,4338460,4338444,4339843,4338314,4339834,4339731,4338465,4336476,4337194,4336599,4339850,4027036,4097539,4163688,4100474,4020657,4049986,4126347,4207328,4049983,4298693,2107282,4257823,4166455,4204011,4166299,4166459,4169959,4203421,4339954,4339841,4012931,4012188,4151168,40483542,4272484,4202066,4339838,4338317,2107479,4276350,2107476,4089017,44806684,4140107,4018692,44511110,4304688,4213854,4290612,4189169,4048438,4020660,44806690,2001522,2107092,2107071,40756772,40756774,4084619,4083543,4196951,4302303,4176276,4338302,4018832,4283823,4337436,4279918,4031993,4173303,4302914,4208555,4275580,4181639,4084831,40480091,4314428,4337271,2106950,4338610,4337437,4337438,4339976,4336905,4339735,4339840,4336472,4339832,4339729,4337298,4060043,42872601,4248715,4315396,4263069,4336765,4339961,4336766,4338182,4336894,4323970,4336475,4194481,4336603,4338458,4337189,4337208,4339713,4339830,4339730,4339849,4337064,4338448,4337181,4336741,4020090,4050566,2001549,2001548,40756784,2001551,4025183,4021083,44810112,4050567,4337057,4338693,4323714,4338301,4339710,4337179,4336619,4303797,4330920,46271741,44809475,44806668,44809812,44804881,4225412,4351734,4071047,4101919,4173574,4310662,4044369,4166298,4000889,4119246,4002405,4217445,2001518,4119245,4187247,2107481,4002032,4000891,4145119,4115332,4172224,4173644,4145258,4142379,4138959,2107478,4019926,44809588,4251177,4018560,4017873,4020080,4017875,4337301,4149490,4241077,4271330,43528049,42742455,4013355,4165384,4290755,44511111,4207804,4298105,4174703,4327798,2001553,4196508,4028030,4215643,44511112,4213311,4277101,4261323,4213597,4025817,4225473,4082427,4049105,4146138,4325541,4020323,4115325,4118044,4020093,4175022,4328103,4216356,4238755,4083292,4081158,2001992,2107023,4221982,2108631,4000732,2313939,2313940,4330521,35622031,4049978,4122006,4339827,4173656,4169964,4051934,4082196,37208174,4336887,44789859,44791100,4338621,4338729,4336908,4336907,4338294,4336909,4180889,4339979,4336617,4338310,4336597,4339842,4284264,4286274,4206485,4337059,4208401,4051933,44789776,4056163,4171690,4051935,4181800,44783274,4018561,4337291,4160418,4020516,4017876,4336745,4051169,4168831,2721131,2721132,2721134,2721135,2721133,4337061,4337748,4337060,4339717,4070559,4297236,2720628,2001504,4323291,2107246,4170285,4050560,4305852,4018711,2001450,2001449,2001447,2001452,2001451,2001454,2001453,2001456,2001455,2001448,4020520,4339966,4125858,4094190,4128428,4336738,4020086,2001520,42873032,42873033,44809601,4018712,4019944,44511459,4180587,4094240,4229320,4251776,4293017,4238716,4148131,4129793,4336904,44809600,4017881,4337058,4020226,4204208,4337197,4020087,4144299,4139030,4339963,4336906,4337319,4336895,4146121,4338296,4336897,4339969,4018572,4339852,4337743,4338306,4217722,4338441,4338452,4337205,4336620,4299532,4029756,4275564,4302611,4249161,4148056,4339739,4339846,4336592,4338450,4336600,4338467,4336471,4338312,4339630,44806593,4030876,4336610,4208803,4339950,4338299,4339972,4300628,4337069,4336596,4339726,4337297,4340091,4101252,4338456,4337440,4336891,4338305,2001463,2001457,4018747,2107050,4150819,2107065,2107064,2107063,2107068,2107067,2107066,4337309,2001479,2001480,2001517,2001519,2001524,2001496,2001489,2001497,2001527,2001525,2001554,44511089,44511402,44511026,44511468,44511107,44511502,44511494,44511143,44511055,44511020,44511151,44511034,44512278,44511083,44511114,44511155,44511127,44511167,44511464,44511042,44511521,44511243,44511071,44510968,44511513,44511408,44511099,44511139,44511182,44511476,44511390,44511272,44510982,44510975,44510997,44510990,44511095,44511508,44511063,44511121,44511427,44511434,44511443,44511419,44511485,44511013,44511077,44511223,44511051,44511133,44511275,44511457,2001521,2107194,4049092,4176749,4049082,2001550,4319282,4033806,4338440,4049090,4298483,4339974,4292586,4147580,4147581,4147714,4151164,4151165,4150541,4148829,4147715,2617584,4299383,4086760,4187102,2313805,2313806,2313807,4337739,4337738,4336469,44808472,4337740,40756812,44805463,37206820,43531515,4080289,40480923,4264286,4337741,2313916,2313915,42742474,43527999,43527998,44816449,4178169,45769228,4020231,40487945,4177366,40483085,44790409,4322906,35607959,4020092,44511138,44784573,44511471,44789913,44790436,44511268,44511270,44511269,44511271,45770795,4020653,4181025,45769211,4303988,43531516,4180615,44806571,4179979,4006788,4264285,4265293,4225903,43527995,43527994,2313811,2313810,43527997,43527996,43533353,43533248,43527909,43527908,2313804,2313803,2313795,4018703,45769224,4020091,4017884,44793474,44790480,4178623,43533187,43528002,37017357,43533242,43533354,43528004,43528003,43533186,43533223,43528001,43528000,4229994,4020525,40482273,2001523,4285725,4122312,4339828,40486744,37111313,4141013,4142380,4144856,4140106,4105437,4336616,4337747,4336595,4291001,4339734,4338611,4336890,4336768,4095106,4205522,4202318,4202319,4203900,4104640,44805913,40487946,42872790,40486525,2001464,4020213,4337206,44511094,4145884,4338311,44511091,44511093,4339724,44511092,44511001,4276660,4339829,4339835,4337195,4233957,4049980,4166585,4173645,40487490,4049987,4081403,45771338,4304923,4077745,44511400,44511401,4018440,4339971,4338596,4336763,44790092,44790090,4228672,4101854,4339949,4337308,2107044,4050575,4020526,4340092,2107027,2107515,2107513,2107512,2107230,2107271,4337203,4018564,4338732,44790296,4092984,2107213,2107200,2107199,2107198,2107201,4336602,40481085,4178740,4230846,4141806,2001467,2001474,4000619,2107283,4031920,4146733,4039864,4069636,4174394,4242094,4206633,4337444,44783044,4338615,4337443,4337202,42872715,2107096,2107095,4271314,4050113,2107286,2107265,2107268,2107264,2107336,4339964,4166368,4029165,2107196,2107197,37017419,4138163,4338454,4339711,4017753,4339727,4141533,4049981,4049982,4051803,4051802,4049979,45766375,4146002,2107266,2107267,4142865,4200703,4337260,4195744,4147298,4046698,4312084,4175640,4215602,4265504,4183608,4312194,4201223,4218533,4031347,4336607,4337293,4337066,4338451,4337185,4338592,2107284,2107285,4138895,2107138,4297235,4201063,4097700,4208527,4308650,2107195,4187380,4200561,4178577,4146227,4186747,4325108,4205155,4143481,40483333,40481068,40482815,40480102,40481099,40480172,2107247,2107475,2107474,4217721,4293621,2107461,4286812,4299720,4336611,4203901,4143674,4338453,4144312,4339631,4339721,4275110,2107270,4261388,4254234,4307508,40481446,40485434,2107360,2107359,2107375,2107377,2107376,2107378,2107361,2107373,2107372,2107374,4146142,4253070,4293619,4290413,4246397,4233406,4339847,4339848,4137391,4336762,4326252,4232476,4265767,2001473,2001471,4051041,4239234,4231513,2107309,4323509,4095407,40480947,40492993,4121484,4339741,4337294,4336593,4339836,4336601,4336746,4203153,4173712,4339184,4098191,4205290,4337300,2107132,2107121,2107134,2107137,2107135,2107136,2107159,2107192,2107176,2107025,4338442,4263226,4337207,4050565,4135588,4339712,4329271,4339831,4339970,4336898,4338297,4340093,4139427,4339728,4338464,2107139,4214480,4013356,4020074,42537348,4020216,4018761,4018759,4018584,4018760,42539500,45766861,4019936,4018431,4020378,42872801,4243185,4313140,4018691,42537346,4020519,4018569,4020084,4018570,4329251,4017880,4181749,42872823,4337318,4336899,4339968,4338292,4336901,4066169,2107193,4105436,4302815,4339740,4337292,4339718,4337199,4338319,4338468,4118043,35610629,40482202,44511075,44511074,37397338,4337204,4337749,4339719,4339839,4337063,4339725,4018762,4018693,4233420,4166456,4203419,4168532,4173643,4173642,4205525,4194367,4215487,4135478,4210022,2001501,2001500,4337442,40479221,40481058,40481890,40482781,40484152,2107248,4151163,4336889,4339978,4337320,4336896,4151035,4148840,4150391,4151034,4151166,4338457,35609791,4172223,4141012,44809833,44808106,4208483,40491027,4085746,4139930,2313797,2313798,4328241,2001488,40483708,40756792,40756793,36676805,37110861,43527901,43527900,43527897,43527894,43527893,43527895,43527919,43527896,44816389,36684977,4018697,4049091,4154621,4338731,40756789,40484106,4338446,4336613,4338620,4338183,4339980,4336606,4339716,4337196,44789848,4336902,4259431,4232394,2106964,2106965,4034857,2101722,2101720,4077424,4137127,4105593,4296790,4338316,4338315,2107177,4339733,4071058,4337302,4337295,44806005,4324068,4236270,4338309,2107516,2107173,4020076,4339851,2107153,2107154,2107178,2107179,2107181,2107180,4010257,4184315,2107117,2107118,2107119,2107155,2107157,2107156,2107175,2107174,4206483,4212123,4338616,4230267,45765641,4336911,4222516,4274161,2107140,4020077,4020510,4020515,44511000,4020513,4338466,4020370)

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 13 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (46257441,37206602,4338595,2859609,2841648,2841647,2872800,46257586,2788034,1531632,1531631,1531630,2787820,4052536,44515635,40379806,46257585,46257511,46257510,46257682,46257543,46257398,46257438,46257466,46257680,46257399,46257468,46257440,46257684,46257467,2002247,2893763,2805869,2800857,2813707,2872796,2880730,2813706,2813708,2813709,2818370,2899635,2880858,2853950,2899636,2867784,1532675,1535225,2800858,2813710,2872797,2805870,2853952,2859607,2841646,2834016,2853953,2872798,2867785,2880859,2893765,2826305,2826306,2859605,2893764,2899637,2872799,2826307,2841644,2867786,2800859,2853951,2834015,2841645,2893766,2859606,2886050,2859608,1532287,1533108,1536191,1533884,1532622,1532271,2826308,2800860,2841649,2787810,2788029,2788043,44811012,46257400,46257469,37206601,37206603)

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 15 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (262,9201)
UNION  select c.concept_id
  from @vocabulary_database_schema.CONCEPT c
  join @vocabulary_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (262,9201)
  and c.invalid_reason is null

) I
) C;


with primary_events (event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id) as
(
-- Begin Primary Events
select P.ordinal as event_id, P.person_id, P.start_date, P.end_date, op_start_date, op_end_date, cast(P.visit_occurrence_id as bigint) as visit_occurrence_id
FROM
(
  select E.person_id, E.start_date, E.end_date,
         row_number() OVER (PARTITION BY E.person_id ORDER BY E.sort_date ASC) ordinal,
         OP.observation_period_start_date as op_start_date, OP.observation_period_end_date as op_end_date, cast(E.visit_occurrence_id as bigint) as visit_occurrence_id
  FROM 
  (
  -- Begin Procedure Occurrence Criteria
select C.person_id, C.procedure_occurrence_id as event_id, C.procedure_date as start_date, DATEADD(d,1,C.procedure_date) as END_DATE,
       C.procedure_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.procedure_date as sort_date
from 
(
  select po.* 
  FROM @cdm_database_schema.PROCEDURE_OCCURRENCE po
JOIN #Codesets codesets on ((po.procedure_concept_id = codesets.concept_id and codesets.codeset_id = 13))
) C

WHERE C.procedure_date > DATEFROMPARTS(2019, 12, 31)
-- End Procedure Occurrence Criteria

  ) E
	JOIN @cdm_database_schema.observation_period OP on E.person_id = OP.person_id and E.start_date >=  OP.observation_period_start_date and E.start_date <= op.observation_period_end_date
  WHERE DATEADD(day,30,OP.OBSERVATION_PERIOD_START_DATE) <= E.START_DATE AND DATEADD(day,0,E.START_DATE) <= OP.OBSERVATION_PERIOD_END_DATE
) P
WHERE P.ordinal = 1
-- End Primary Events

)
SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id
INTO #qualified_events
FROM 
(
  select pe.event_id, pe.person_id, pe.start_date, pe.end_date, pe.op_start_date, pe.op_end_date, row_number() over (partition by pe.person_id order by pe.start_date ASC) as ordinal, cast(pe.visit_occurrence_id as bigint) as visit_occurrence_id
  FROM primary_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM primary_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM primary_events P
INNER JOIN
(
  -- Begin Visit Occurrence Criteria
select C.person_id, C.visit_occurrence_id as event_id, C.visit_start_date as start_date, C.visit_end_date as end_date,
       C.visit_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.visit_start_date as sort_date
from 
(
  select vo.* 
  FROM @cdm_database_schema.VISIT_OCCURRENCE vo
JOIN #Codesets codesets on ((vo.visit_concept_id = codesets.concept_id and codesets.codeset_id = 15))
) C


-- End Visit Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= DATEADD(day,0,P.START_DATE) AND A.END_DATE >= DATEADD(day,0,P.START_DATE) AND A.END_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id and AC.event_id = pe.event_id

) QE

;

--- Inclusion Rule Inserts

select 0 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_0
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Demographic Criteria
SELECT 0 as index_id, e.person_id, e.event_id
FROM #qualified_events E
JOIN @cdm_database_schema.PERSON P ON P.PERSON_ID = E.PERSON_ID
WHERE YEAR(E.start_date) - P.year_of_birth >= 18
GROUP BY e.person_id, e.event_id
-- End Demographic Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 1 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_1
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Observation Period Criteria
select C.person_id, C.observation_period_id as event_id, C.observation_period_start_date as start_date, C.observation_period_end_date as end_date,
       C.period_type_concept_id as TARGET_CONCEPT_ID, CAST(NULL as bigint) as visit_occurrence_id,
       C.observation_period_start_date as sort_date

from 
(
        select op.*, row_number() over (PARTITION BY op.person_id ORDER BY op.observation_period_start_date) as ordinal
        FROM @cdm_database_schema.OBSERVATION_PERIOD op
) C


-- End Observation Period Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= DATEADD(day,-30,P.START_DATE) AND A.END_DATE >= DATEADD(day,0,P.END_DATE) AND A.END_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 2 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_2
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 0))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

UNION ALL
-- Begin Correlated Criteria
SELECT 1 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_source_concept_id = codesets.concept_id and codesets.codeset_id = 3))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

UNION ALL
-- Begin Correlated Criteria
SELECT 2 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Measurement Criteria
select C.person_id, C.measurement_id as event_id, C.measurement_date as start_date, DATEADD(d,1,C.measurement_date) as END_DATE,
       C.measurement_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.measurement_date as sort_date
from 
(
  select m.* 
  FROM @cdm_database_schema.MEASUREMENT m
JOIN #Codesets codesets on ((m.measurement_concept_id = codesets.concept_id and codesets.codeset_id = 1))
) C


-- End Measurement Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

UNION ALL
-- Begin Correlated Criteria
SELECT 3 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Measurement Criteria
select C.person_id, C.measurement_id as event_id, C.measurement_date as start_date, DATEADD(d,1,C.measurement_date) as END_DATE,
       C.measurement_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.measurement_date as sort_date
from 
(
  select m.* 
  FROM @cdm_database_schema.MEASUREMENT m
JOIN #Codesets codesets on ((m.measurement_concept_id = codesets.concept_id and codesets.codeset_id = 2))
) C

WHERE C.value_as_concept_id in (4126681,45877985,9191,4181412,45879438,45884084)
-- End Measurement Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

UNION ALL
-- Begin Correlated Criteria
SELECT 4 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Observation Criteria
select C.person_id, C.observation_id as event_id, C.observation_date as start_date, DATEADD(d,1,C.observation_date) as END_DATE,
       C.observation_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.observation_date as sort_date
from 
(
  select o.* 
  FROM @cdm_database_schema.OBSERVATION o
JOIN #Codesets codesets on ((o.observation_concept_id = codesets.concept_id and codesets.codeset_id = 2))
) C

WHERE C.value_as_concept_id in (4126681,45877985,9191,45884084,4181412,45879438)
-- End Observation Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

UNION ALL
-- Begin Correlated Criteria
SELECT 5 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Observation Criteria
select C.person_id, C.observation_id as event_id, C.observation_date as start_date, DATEADD(d,1,C.observation_date) as END_DATE,
       C.observation_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.observation_date as sort_date
from 
(
  select o.* 
  FROM @cdm_database_schema.OBSERVATION o
JOIN #Codesets codesets on ((o.observation_source_concept_id = codesets.concept_id and codesets.codeset_id = 3))
) C


-- End Observation Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-21,P.START_DATE) AND A.START_DATE <= P.OP_END_DATE AND A.END_DATE >= P.OP_START_DATE AND A.END_DATE <= DATEADD(day,0,P.END_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 3 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_3
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Procedure Occurrence Criteria
select C.person_id, C.procedure_occurrence_id as event_id, C.procedure_date as start_date, DATEADD(d,1,C.procedure_date) as END_DATE,
       C.procedure_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.procedure_date as sort_date
from 
(
  select po.* 
  FROM @cdm_database_schema.PROCEDURE_OCCURRENCE po
JOIN #Codesets codesets on ((po.procedure_concept_id = codesets.concept_id and codesets.codeset_id = 5))
) C


-- End Procedure Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 4 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_4
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 6))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 5 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_5
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 7))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 6 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_6
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 8))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 7 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_7
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Procedure Occurrence Criteria
select C.person_id, C.procedure_occurrence_id as event_id, C.procedure_date as start_date, DATEADD(d,1,C.procedure_date) as END_DATE,
       C.procedure_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.procedure_date as sort_date
from 
(
  select po.* 
  FROM @cdm_database_schema.PROCEDURE_OCCURRENCE po
JOIN #Codesets codesets on ((po.procedure_concept_id = codesets.concept_id and codesets.codeset_id = 9))
) C


-- End Procedure Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 8 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_8
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 10))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 1
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 9 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_9
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date,
       C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.condition_start_date as sort_date
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 11))
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,-1,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

select 10 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_10
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Procedure Occurrence Criteria
select C.person_id, C.procedure_occurrence_id as event_id, C.procedure_date as start_date, DATEADD(d,1,C.procedure_date) as END_DATE,
       C.procedure_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id,
       C.procedure_date as sort_date
from 
(
  select po.* 
  FROM @cdm_database_schema.PROCEDURE_OCCURRENCE po
JOIN #Codesets codesets on ((po.procedure_concept_id = codesets.concept_id and codesets.codeset_id = 12))
) C


-- End Procedure Occurrence Criteria

) A on A.person_id = P.person_id  AND A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) AND A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) = 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

SELECT inclusion_rule_id, person_id, event_id
INTO #inclusion_events
FROM (select inclusion_rule_id, person_id, event_id from #Inclusion_0
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_1
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_2
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_3
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_4
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_5
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_6
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_7
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_8
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_9
UNION ALL
select inclusion_rule_id, person_id, event_id from #Inclusion_10) I;
TRUNCATE TABLE #Inclusion_0;
DROP TABLE #Inclusion_0;

TRUNCATE TABLE #Inclusion_1;
DROP TABLE #Inclusion_1;

TRUNCATE TABLE #Inclusion_2;
DROP TABLE #Inclusion_2;

TRUNCATE TABLE #Inclusion_3;
DROP TABLE #Inclusion_3;

TRUNCATE TABLE #Inclusion_4;
DROP TABLE #Inclusion_4;

TRUNCATE TABLE #Inclusion_5;
DROP TABLE #Inclusion_5;

TRUNCATE TABLE #Inclusion_6;
DROP TABLE #Inclusion_6;

TRUNCATE TABLE #Inclusion_7;
DROP TABLE #Inclusion_7;

TRUNCATE TABLE #Inclusion_8;
DROP TABLE #Inclusion_8;

TRUNCATE TABLE #Inclusion_9;
DROP TABLE #Inclusion_9;

TRUNCATE TABLE #Inclusion_10;
DROP TABLE #Inclusion_10;


with cteIncludedEvents(event_id, person_id, start_date, end_date, op_start_date, op_end_date, ordinal) as
(
  SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, row_number() over (partition by person_id order by start_date ASC) as ordinal
  from
  (
    select Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date, SUM(coalesce(POWER(cast(2 as bigint), I.inclusion_rule_id), 0)) as inclusion_rule_mask
    from #qualified_events Q
    LEFT JOIN #inclusion_events I on I.person_id = Q.person_id and I.event_id = Q.event_id
    GROUP BY Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date
  ) MG -- matching groups

  -- the matching group with all bits set ( POWER(2,# of inclusion rules) - 1 = inclusion_rule_mask
  WHERE (MG.inclusion_rule_mask = POWER(cast(2 as bigint),11)-1)

)
select event_id, person_id, start_date, end_date, op_start_date, op_end_date
into #included_events
FROM cteIncludedEvents Results
WHERE Results.ordinal = 1
;

-- date offset strategy

select event_id, person_id, 
  case when DATEADD(day,0,end_date) > start_date then DATEADD(day,0,end_date) else start_date end as end_date
INTO #strategy_ends
from #included_events;


-- generate cohort periods into #final_cohort
with cohort_ends (event_id, person_id, end_date) as
(
	-- cohort exit dates
  -- End Date Strategy
SELECT event_id, person_id, end_date from #strategy_ends

),
first_ends (person_id, start_date, end_date) as
(
	select F.person_id, F.start_date, F.end_date
	FROM (
	  select I.event_id, I.person_id, I.start_date, E.end_date, row_number() over (partition by I.person_id, I.event_id order by E.end_date) as ordinal 
	  from #included_events I
	  join cohort_ends E on I.event_id = E.event_id and I.person_id = E.person_id and E.end_date >= I.start_date
	) F
	WHERE F.ordinal = 1
)
select person_id, start_date, end_date
INTO #cohort_rows
from first_ends;

with cteEndDates (person_id, end_date) AS -- the magic
(	
	SELECT
		person_id
		, DATEADD(day,-1 * 0, event_date)  as end_date
	FROM
	(
		SELECT
			person_id
			, event_date
			, event_type
			, MAX(start_ordinal) OVER (PARTITION BY person_id ORDER BY event_date, event_type ROWS UNBOUNDED PRECEDING) AS start_ordinal 
			, ROW_NUMBER() OVER (PARTITION BY person_id ORDER BY event_date, event_type) AS overall_ord
		FROM
		(
			SELECT
				person_id
				, start_date AS event_date
				, -1 AS event_type
				, ROW_NUMBER() OVER (PARTITION BY person_id ORDER BY start_date) AS start_ordinal
			FROM #cohort_rows
		
			UNION ALL
		

			SELECT
				person_id
				, DATEADD(day,0,end_date) as end_date
				, 1 AS event_type
				, NULL
			FROM #cohort_rows
		) RAWDATA
	) e
	WHERE (2 * e.start_ordinal) - e.overall_ord = 0
),
cteEnds (person_id, start_date, end_date) AS
(
	SELECT
		 c.person_id
		, c.start_date
		, MIN(e.end_date) AS end_date
	FROM #cohort_rows c
	JOIN cteEndDates e ON c.person_id = e.person_id AND e.end_date >= c.start_date
	GROUP BY c.person_id, c.start_date
)
select person_id, min(start_date) as start_date, end_date
into #final_cohort
from cteEnds
group by person_id, end_date
;

DELETE FROM @target_database_schema.@target_cohort_table where cohort_definition_id = @target_cohort_id;
INSERT INTO @target_database_schema.@target_cohort_table (cohort_definition_id, subject_id, cohort_start_date, cohort_end_date)
select @target_cohort_id as cohort_definition_id, person_id, start_date, end_date 
FROM #final_cohort CO
;


-- Find the event that is the 'best match' per person.  
-- the 'best match' is defined as the event that satisfies the most inclusion rules.
-- ties are solved by choosing the event that matches the earliest inclusion rule, and then earliest.

select q.person_id, q.event_id
into #best_events
from #qualified_events Q
join (
	SELECT R.person_id, R.event_id, ROW_NUMBER() OVER (PARTITION BY R.person_id ORDER BY R.rule_count DESC,R.min_rule_id ASC, R.start_date ASC) AS rank_value
	FROM (
		SELECT Q.person_id, Q.event_id, COALESCE(COUNT(DISTINCT I.inclusion_rule_id), 0) AS rule_count, COALESCE(MIN(I.inclusion_rule_id), 0) AS min_rule_id, Q.start_date
		FROM #qualified_events Q
		LEFT JOIN #inclusion_events I ON q.person_id = i.person_id AND q.event_id = i.event_id
		GROUP BY Q.person_id, Q.event_id, Q.start_date
	) R
) ranked on Q.person_id = ranked.person_id and Q.event_id = ranked.event_id
WHERE ranked.rank_value = 1
;

-- modes of generation: (the same tables store the results for the different modes, identified by the mode_id column)
-- 0: all events
-- 1: best event


-- BEGIN: Inclusion Impact Analysis - event
-- calculte matching group counts
delete from @results_database_schema.cohort_inclusion_result where cohort_definition_id = @target_cohort_id and mode_id = 0;
insert into @results_database_schema.cohort_inclusion_result (cohort_definition_id, inclusion_rule_mask, person_count, mode_id)
select @target_cohort_id as cohort_definition_id, inclusion_rule_mask, count_big(*) as person_count, 0 as mode_id
from
(
  select Q.person_id, Q.event_id, CAST(SUM(coalesce(POWER(cast(2 as bigint), I.inclusion_rule_id), 0)) AS bigint) as inclusion_rule_mask
  from #qualified_events Q
  LEFT JOIN #inclusion_events I on q.person_id = i.person_id and q.event_id = i.event_id
  GROUP BY Q.person_id, Q.event_id
) MG -- matching groups
group by inclusion_rule_mask
;

-- calculate gain counts 
delete from @results_database_schema.cohort_inclusion_stats where cohort_definition_id = @target_cohort_id and mode_id = 0;
insert into @results_database_schema.cohort_inclusion_stats (cohort_definition_id, rule_sequence, person_count, gain_count, person_total, mode_id)
select ir.cohort_definition_id, ir.rule_sequence, coalesce(T.person_count, 0) as person_count, coalesce(SR.person_count, 0) gain_count, EventTotal.total, 0 as mode_id
from @results_database_schema.cohort_inclusion ir
left join
(
  select i.inclusion_rule_id, count_big(i.event_id) as person_count
  from #qualified_events Q
  JOIN #inclusion_events i on Q.person_id = I.person_id and Q.event_id = i.event_id
  group by i.inclusion_rule_id
) T on ir.rule_sequence = T.inclusion_rule_id
CROSS JOIN (select count(*) as total_rules from @results_database_schema.cohort_inclusion where cohort_definition_id = @target_cohort_id) RuleTotal
CROSS JOIN (select count_big(event_id) as total from #qualified_events) EventTotal
LEFT JOIN @results_database_schema.cohort_inclusion_result SR on SR.mode_id = 0 AND SR.cohort_definition_id = @target_cohort_id AND (POWER(cast(2 as bigint),RuleTotal.total_rules) - POWER(cast(2 as bigint),ir.rule_sequence) - 1) = SR.inclusion_rule_mask -- POWER(2,rule count) - POWER(2,rule sequence) - 1 is the mask for 'all except this rule'
WHERE ir.cohort_definition_id = @target_cohort_id
;

-- calculate totals
delete from @results_database_schema.cohort_summary_stats where cohort_definition_id = @target_cohort_id and mode_id = 0;
insert into @results_database_schema.cohort_summary_stats (cohort_definition_id, base_count, final_count, mode_id)
select @target_cohort_id as cohort_definition_id, PC.total as person_count, coalesce(FC.total, 0) as final_count, 0 as mode_id
FROM
(select count_big(event_id) as total from #qualified_events) PC,
(select sum(sr.person_count) as total
  from @results_database_schema.cohort_inclusion_result sr
  CROSS JOIN (select count(*) as total_rules from @results_database_schema.cohort_inclusion where cohort_definition_id = @target_cohort_id) RuleTotal
  where sr.mode_id = 0 and sr.cohort_definition_id = @target_cohort_id and sr.inclusion_rule_mask = POWER(cast(2 as bigint),RuleTotal.total_rules)-1
) FC
;

-- END: Inclusion Impact Analysis - event

-- BEGIN: Inclusion Impact Analysis - person
-- calculte matching group counts
delete from @results_database_schema.cohort_inclusion_result where cohort_definition_id = @target_cohort_id and mode_id = 1;
insert into @results_database_schema.cohort_inclusion_result (cohort_definition_id, inclusion_rule_mask, person_count, mode_id)
select @target_cohort_id as cohort_definition_id, inclusion_rule_mask, count_big(*) as person_count, 1 as mode_id
from
(
  select Q.person_id, Q.event_id, CAST(SUM(coalesce(POWER(cast(2 as bigint), I.inclusion_rule_id), 0)) AS bigint) as inclusion_rule_mask
  from #best_events Q
  LEFT JOIN #inclusion_events I on q.person_id = i.person_id and q.event_id = i.event_id
  GROUP BY Q.person_id, Q.event_id
) MG -- matching groups
group by inclusion_rule_mask
;

-- calculate gain counts 
delete from @results_database_schema.cohort_inclusion_stats where cohort_definition_id = @target_cohort_id and mode_id = 1;
insert into @results_database_schema.cohort_inclusion_stats (cohort_definition_id, rule_sequence, person_count, gain_count, person_total, mode_id)
select ir.cohort_definition_id, ir.rule_sequence, coalesce(T.person_count, 0) as person_count, coalesce(SR.person_count, 0) gain_count, EventTotal.total, 1 as mode_id
from @results_database_schema.cohort_inclusion ir
left join
(
  select i.inclusion_rule_id, count_big(i.event_id) as person_count
  from #best_events Q
  JOIN #inclusion_events i on Q.person_id = I.person_id and Q.event_id = i.event_id
  group by i.inclusion_rule_id
) T on ir.rule_sequence = T.inclusion_rule_id
CROSS JOIN (select count(*) as total_rules from @results_database_schema.cohort_inclusion where cohort_definition_id = @target_cohort_id) RuleTotal
CROSS JOIN (select count_big(event_id) as total from #best_events) EventTotal
LEFT JOIN @results_database_schema.cohort_inclusion_result SR on SR.mode_id = 1 AND SR.cohort_definition_id = @target_cohort_id AND (POWER(cast(2 as bigint),RuleTotal.total_rules) - POWER(cast(2 as bigint),ir.rule_sequence) - 1) = SR.inclusion_rule_mask -- POWER(2,rule count) - POWER(2,rule sequence) - 1 is the mask for 'all except this rule'
WHERE ir.cohort_definition_id = @target_cohort_id
;

-- calculate totals
delete from @results_database_schema.cohort_summary_stats where cohort_definition_id = @target_cohort_id and mode_id = 1;
insert into @results_database_schema.cohort_summary_stats (cohort_definition_id, base_count, final_count, mode_id)
select @target_cohort_id as cohort_definition_id, PC.total as person_count, coalesce(FC.total, 0) as final_count, 1 as mode_id
FROM
(select count_big(event_id) as total from #best_events) PC,
(select sum(sr.person_count) as total
  from @results_database_schema.cohort_inclusion_result sr
  CROSS JOIN (select count(*) as total_rules from @results_database_schema.cohort_inclusion where cohort_definition_id = @target_cohort_id) RuleTotal
  where sr.mode_id = 1 and sr.cohort_definition_id = @target_cohort_id and sr.inclusion_rule_mask = POWER(cast(2 as bigint),RuleTotal.total_rules)-1
) FC
;

-- END: Inclusion Impact Analysis - person

-- BEGIN: Censored Stats

-- END: Censored Stats

TRUNCATE TABLE #best_events;
DROP TABLE #best_events;



TRUNCATE TABLE #strategy_ends;
DROP TABLE #strategy_ends;


TRUNCATE TABLE #cohort_rows;
DROP TABLE #cohort_rows;

TRUNCATE TABLE #final_cohort;
DROP TABLE #final_cohort;

TRUNCATE TABLE #inclusion_events;
DROP TABLE #inclusion_events;

TRUNCATE TABLE #qualified_events;
DROP TABLE #qualified_events;

TRUNCATE TABLE #included_events;
DROP TABLE #included_events;

TRUNCATE TABLE #Codesets;
DROP TABLE #Codesets;
