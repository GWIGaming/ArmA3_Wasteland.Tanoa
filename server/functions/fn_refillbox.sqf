// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) ((START) + floor random ((END) - (START) + 1))
#define RANDOM_ODDS(ODDS) ([0,1] select (random 1 < (ODDS))) // between 0.0 and 1.0

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box setVariable [call vChecksum, true];

_box allowDamage false; // No more fucking busted crates
_box setVariable ["allowDamage", false, true];
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["Laserdesignator"], RANDOM_BETWEEN(0,1)],
			["wep", ["launch_RPG32_F", "launch_NLAW_F", "launch_RPG7_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(1,3)],
			["wep", ["launch_I_Titan_short_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(2,3)],
			["wep", ["launch_I_Titan_F"], RANDOM_BETWEEN(0,2), RANDOM_BETWEEN(1,3)],
			["mag", ["APERSTripMine_Wire_Mag", "APERSBoundingMine_Range_Mag", "APERSMine_Range_Mag", "ClaymoreDirectionalMine_Remote_Mag"], RANDOM_BETWEEN(2,5)],
			["mag", ["SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(2,5)],
			["mag", "HandGrenade", RANDOM_BETWEEN(5,10)],
			["itm", [["V_PlateCarrier1_rgr", "V_PlateCarrier1_blk", "V_PlateCarrierIA1_dgtl"], // Lite
			         ["V_PlateCarrier2_rgr", "V_PlateCarrier2_blk", "V_PlateCarrierIA2_dgtl"], // Rig
			         ["V_PlateCarrierSpec_rgr", "V_PlateCarrierSpec_blk", "V_PlateCarrierSpec_mtp"], // Special
			         ["V_PlateCarrierGL_rgr", "V_PlateCarrierGL_blk", "V_PlateCarrierGL_mtp", "V_PlateCarrierIAGL_dgtl", "V_PlateCarrierIAGL_oli"]] /* GL */, RANDOM_BETWEEN(1,4)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Laserdesignator"], RANDOM_BETWEEN(0,1)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(1,3)],
			["itm", ["optic_Aco", "optic_MRCO", "optic_Hamr", "optic_Arco"], RANDOM_BETWEEN(2,4)],
			["itm", ["muzzle_snds_M", "muzzle_snds_H", "muzzle_snds_H_MG", "muzzle_snds_B", "muzzle_snds_acp", ["muzzle_snds_338_black", "muzzle_snds_338_green", "muzzle_snds_338_sand"], ["muzzle_snds_93mmg", "muzzle_snds_93mmg_tan"]], RANDOM_BETWEEN(1,5)],
			["wep", [["MMG_02_sand_F", "MMG_02_camo_F", "MMG_02_black_F"], ["MMG_01_tan_F", "MMG_01_hex_F"]], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(2,4)],
			["wep", ["LMG_03_F", "LMG_Zafir_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["wep", ["srifle_DMR_03_MRCO_F", "srifle_DMR_05_DMS_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(4,8)],
			["wep", ["hgun_Pistol_heavy_01_MRD_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,8)]
		];
	};
	case "mission_Main_A3snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", "Laserdesignator", RANDOM_BETWEEN(0,1)],
			["wep", ["srifle_GM6_LRPS_F", "srifle_GM6_camo_LRPS_F"], RANDOM_BETWEEN(1,4), RANDOM_BETWEEN(5,10)],
			["wep", [["srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F"], // MAR-10
			         ["srifle_DMR_03_F", "srifle_DMR_03_multicam_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_woodland_F"], // Mk-I
			         ["srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_f"], // Cyrus
			         ["srifle_DMR_06_camo_F", "srifle_DMR_06_olive_F"]] /* Mk14 */, RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(5,10)],
			["wep", ["srifle_EBR_F", "srifle_DMR_01_F"], RANDOM_BETWEEN(0,3), RANDOM_BETWEEN(5,10)],
			["itm", ["optic_SOS", "optic_DMS", "optic_LRPS"], RANDOM_BETWEEN(2,4)],
			["itm", ["optic_AMS", "optic_AMS_khk", "optic_AMS_snd", "optic_KHS_blk", "optic_KHS_hex", "optic_KHS_tan"], RANDOM_BETWEEN(1,3)],
			["itm", ["optic_tws", "optic_tws_mg", "optic_Nightstalker"], RANDOM_ODDS(0.5)], // o shit waddup!!
			["itm", "optic_NVS", RANDOM_BETWEEN(0,2)],
			["mag", "5Rnd_127x108_APDS_Mag", RANDOM_BETWEEN(5,10)],
			["itm", ["bipod_01_F_blk", "bipod_01_F_mtp", "bipod_01_F_snd", "bipod_02_F_blk", "bipod_02_F_hex", "bipod_02_F_tan", "bipod_03_F_blk", "bipod_03_F_oli"], RANDOM_BETWEEN(1,4)],
			["itm", ["muzzle_snds_B", ["muzzle_snds_338_black", "muzzle_snds_338_green", "muzzle_snds_338_sand"], ["muzzle_snds_93mmg", "muzzle_snds_93mmg_tan"]], RANDOM_BETWEEN(1,4)]
		];
	};
	// Boxes for APOC Airdrop Assistance. Mission boxes go above this line. 
	case "airdrop_Rifles":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_DMR_03_F", "arifle_AK12_GL_F", "arifle_ARX_blk_F", "srifle_DMR_07_blk_F", "arifle_MX_GL_Black_F"], 2,4],
			["itm", ["V_PlateCarrierIAGL_dgtl", "V_TacVest_camo", "V_PlateCarrierGL_rgr"], RANDOM_BETWEEN(1,4)],
			["itm", ["B_Carryall_oli", "B_Kitbag_rgr"], RANDOM_BETWEEN(2,5)],
			["itm", ["muzzle_snds_65_TI_blk_F", "muzzle_snds_M"], 3],
			["itm", ["bipod_01_F_blk", "bipod_02_F_hex"], 3],
			["itm", ["optic_Hamr", "optic_DMS"], 3]
		];
	};
	case "airdrop_LMGs":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["MMG_02_black_F", "MMG_01_hex_F"], RANDOM_BETWEEN(0,2),4],
			["wep", ["LMG_03_F", "arifle_CTARS_blk_F"], 2,4],
			["itm", ["V_PlateCarrierIAGL_dgtl", "V_TacVest_camo", "V_PlateCarrierGL_rgr"], RANDOM_BETWEEN(1,4)],
			["itm", ["B_Carryall_oli", "B_Kitbag_rgr"], RANDOM_BETWEEN(2,5)],
			["itm", ["muzzle_snds_338_black", "muzzle_snds_93mmg", "muzzle_snds_58_blk_F", "muzzle_snds_M"], RANDOM_BETWEEN(1,3)],
			["itm", ["bipod_01_F_blk", "bipod_02_F_hex"], 2],
			["itm", ["optic_DMS", "optic_AMS"], 2]
		];
	};	
	case "airdrop_Gear":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["itm", ["H_HelmetB_TI_tna_F", "H_RacingHelmet_2_F", "H_CrewHelmetHeli_B", "H_HelmetB_Enh_tna_F"], 4],
			["itm", ["V_PlateCarrierGL_tna_F", "V_PlateCarrier2_tna_F", "V_TacVestIR_blk", "V_PlateCarrierSpec_tna_F"], RANDOM_BETWEEN(3,8)],
			["itm", ["B_Carryall_oli", "B_Kitbag_rgr", "B_Bergen_tna_F"], RANDOM_BETWEEN(3,5)],
			["itm", ["U_I_FullGhillie_lsh", "U_BG_Guerilla1_1", "U_I_pilotCoveralls"], RANDOM_BETWEEN(3,5)],
			["itm", ["ItemGPS", "G_Balaclava_TI_G_blk_F"], 4]
		];
	};
	case "airdrop_Launchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["launch_I_Titan_short_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(2,3)],
			["wep", ["launch_I_Titan_F"], RANDOM_BETWEEN(0,2), RANDOM_BETWEEN(2,4)],
			["wep", ["launch_NLAW_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,3)],
			["wep", ["launch_RPG32_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(1,3)],			
			["itm", ["V_PlateCarrierIAGL_dgtl", "V_TacVest_camo", "V_PlateCarrierGL_rgr"], RANDOM_BETWEEN(1,8)],
			["itm", ["B_Carryall_oli", "B_Kitbag_rgr"], RANDOM_BETWEEN(2,5)]
		];
	};
	case "airdrop_Snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_GM6_ghex_LRPS_F", "srifle_LRR_tna_LRPS_F", "srifle_GM6_LRPS_F", "srifle_LRR_LRPS_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(6,8)],
			["wep", ["srifle_DMR_05_blk_F", "srifle_DMR_02_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(6,8)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["bac", ["B_Carryall_oli", "B_Kitbag_rgr"], RANDOM_BETWEEN(2,5)],			
			["itm", ["optic_DMS", "optic_AMS", "optic_KHS_blk"], RANDOM_BETWEEN(5,8)],
			["itm", "Nightstalker", RANDOM_BETWEEN(0,1)]
		];
	};		
};

[_box, _boxItems] call processItems;
