//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 0; //Expressed in sec

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				 Price,		"Drop Type"]
["Hatchback Sport",		"C_Hatchback_01_sport_F", 	 2500, 		"vehicle"],  // It's the fastest car in the game
["Quadbike (Civilian)", "C_Quadbike_01_F", 			 5000, 		"vehicle"],
["MB 4WD [DLC]", 		"C_Offroad_02_unarmed_F",	 10000, 	"vehicle"],
["Prowler [DLC]", 		"B_T_LSV_01_unarmed_F", 	 15000, 	"vehicle"],
["Strider HMG", 		"I_MRAP_03_hmg_F", 			 25000, 	"vehicle"],
["Qilin Minigun [DLC]", "O_T_LSV_02_armed_F", 		 35000, 	"vehicle"],
["AFV-4 Gorgon", 		"I_APC_Wheeled_03_cannon_F", 60000, 	"vehicle"],
["M2A1 Slammer", 		"B_MBT_01_cannon_F", 		100000, 	"vehicle"],
["MH-9 Hummingbird", 	"B_Heli_Light_01_F", 		 30000, 	"vehicle"],
["UH-80 Ghost Hawk", 	"B_Heli_Transport_01_F", 	 80000, 	"vehicle"],
["V-44 X Blackfish", 	"B_T_VTOL_01_infantry_F", 	 50000, 	"vehicle"]
];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price, "drop type"]
["Launchers", 			"airdrop_Launchers", 			45000,  "supply"],
//["Assault Rifle", 	"mission_USLaunchers", 			35000,  "supply"],
["Sniper Rifles", 		"airdrop_Snipers", 				45000,  "supply"],
["Rifles", 				"airdrop_Rifles", 				35000,  "supply"],
["LMGs", 				"airdrop_LMGs", 				35000,  "supply"],
["Gear",				"airdrop_Gear",					25000, 	"supply"]


//"Menu Text",			"Crate Type", 			"Cost", "drop type"
//["Food",				"Land_Sacks_goods_F",	10000, 	"picnic"],
//["Water",				"Land_BarrelWater_F",	10000, 	"picnic"]
];