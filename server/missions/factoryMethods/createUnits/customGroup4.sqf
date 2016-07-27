//	@file Version: 1.0
//	@file Name: Viper Group
//	@file Author: Coolbreeze
//	@file Created: 06/22/2016 20:57
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man_5", "_man6", "_man7", "_man8", "_man9"];

_group = _this select 0;
_pos = _this select 1;

// Viper Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_leader addUniform "U_O_V_Soldier_Viper_F";
_leader addVest "V_HarnessO_ghex_F";
_leader addBackpack "B_ViperHarness_ghex_F";
_leader addHeadgear "H_HelmetLeaderO_ghex_F";
_leader addGoggles "G_Balaclava_TI_G_blk_F";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addWeapon "arifle_ARX_ghex_F";
_leader addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_leader addPrimaryWeaponItem "acc_pointer_IR";
_leader addPrimaryWeaponItem "optic_Arco_ghex_F";
_leader addMagazine "10Rnd_50BW_Mag_F";
_leader addMagazine "10Rnd_50BW_Mag_F";
_leader addMagazine "10Rnd_50BW_Mag_F";
_leader addMagazine "10Rnd_50BW_Mag_F";
_leader addMagazine "10Rnd_50BW_Mag_F";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader addMagazine "30Rnd_65x39_caseless_green";
_leader call setMissionSkill;
_leader addRating 1e11;
_leader addEventHandler ["Killed", server_playerDied];


// Viper Rifleman
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addHeadgear "H_HelmetLeaderO_ghex_F";
_man2 addGoggles "G_Balaclava_TI_G_blk_F";
_man2 addUniform "U_O_V_Soldier_Viper_F";
_man2 addVest "V_HarnessO_ghex_F";
_man2 addBackpack "B_ViperHarness_ghex_F";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "30Rnd_65x39_caseless_green";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addMagazine "10Rnd_50BW_Mag_F";
_man2 addWeapon "arifle_ARX_ghex_F";
_man2 addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_man2 addPrimaryWeaponItem "acc_pointer_IR";
_man2 addPrimaryWeaponItem "optic_Holosight_blk_F";
_man2 addWeapon "launch_O_Titan_short_ghex_F";
_man2 addItemToBackpack "Titan_AT";
_man2 addItemToBackpack "Titan_AT";
_man2 call setMissionSkill;
_man2 addRating 1e11;
_man2 addEventHandler ["Killed", server_playerDied];


// Viper Marksman
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_O_V_Soldier_Viper_F";
_man3 addVest "V_HarnessO_ghex_F";
_man3 addBackpack "B_ViperHarness_ghex_F";
_man3 addHeadgear "H_HelmetLeaderO_ghex_F";
_man3 addGoggles "G_Balaclava_TI_G_blk_F";
_man3 addItemToVest "FirstAidKit";
_man3 addItemToBackpack "Medikit";
_man3 addWeapon "srifle_DMR_07_ghex_F";
_man3 addPrimaryWeaponItem "muzzle_snds_H";
_man3 addPrimaryWeaponItem "optic_DMS_ghex_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man3 call setMissionSkill;
_man3 addRating 1e11;
_man3 addEventHandler ["Killed", server_playerDied];


// Viper Sniper
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man4 addUniform  "U_O_T_FullGhillie_tna_F";
_man4 addVest "V_HarnessO_ghex_F";
_man4 addBackpack "B_ViperHarness_ghex_F";
_man4 addItemToVest "FirstAidKit";
_man4 addHeadgear "H_HelmetLeaderO_ghex_F";
_man4 addGoggles "G_Balaclava_TI_G_blk_F";
_man4 addWeapon "srifle_DMR_05_hex_F";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man4 addPrimaryWeaponItem "muzzle_snds_93mmg";
_man4 addPrimaryWeaponItem "acc_pointer_IR";
_man4 addPrimaryWeaponItem "optic_KHS_hex";
_man4 addPrimaryWeaponItem "bipod_02_F_blk";
_man4 call setMissionSkill;
_man4 addRating 1e11;
_man4 addEventHandler ["Killed", server_playerDied];


// Soldier5
_man5 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man5 addUniform "U_O_V_Soldier_Viper_F";
_man5 addVest "V_HarnessO_ghex_F";
_man5 addBackpack "B_ViperHarness_ghex_F";
_man5 addHeadgear "H_HelmetLeaderO_ghex_F";
_man5 addGoggles "G_Balaclava_TI_G_blk_F";
_man5 addItemToVest "FirstAidKit";
_man5 addItemToBackpack "Medikit";
_man5 addWeapon "srifle_DMR_07_ghex_F";
_man5 addPrimaryWeaponItem "muzzle_snds_H";
_man5 addPrimaryWeaponItem "optic_DMS_ghex_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 addMagazine "20Rnd_650x39_Cased_Mag_F";
_man5 call setMissionSkill;
_man5 addRating 1e11;
_man5 addEventHandler ["Killed", server_playerDied];


// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man6 addHeadgear "H_HelmetLeaderO_ghex_F";
_man6 addGoggles "G_Balaclava_TI_G_blk_F";
_man6 addUniform "U_O_V_Soldier_Viper_F";
_man6 addVest "V_HarnessO_ghex_F";
_man6 addItemToUniform "FirstAidKit";
_man6 addItemToVest "FirstAidKit";
_man6 addBackpack "B_ViperHarness_ghex_F";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "30Rnd_65x39_caseless_green";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addMagazine "10Rnd_50BW_Mag_F";
_man6 addWeapon "arifle_ARX_ghex_F";
_man6 addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_man6 addPrimaryWeaponItem "acc_pointer_IR";
_man6 addPrimaryWeaponItem "optic_Holosight_blk_F";
_man6 call setMissionSkill;
_man6 addRating 1e11;
_man6 addEventHandler ["Killed", server_playerDied];

// Soldier7
_man7 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man7;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man7 addHeadgear "H_HelmetLeaderO_ghex_F";
_man7 addGoggles "G_Balaclava_TI_G_blk_F";
_man7 addUniform "U_O_V_Soldier_Viper_F";
_man7 addVest "V_HarnessO_ghex_F";
_man7 addItemToUniform "FirstAidKit";
_man7 addItemToVest "FirstAidKit";
_man7 addBackpack "B_ViperHarness_ghex_F";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "30Rnd_65x39_caseless_green";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addMagazine "10Rnd_50BW_Mag_F";
_man7 addWeapon "arifle_ARX_ghex_F";
_man7 addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_man7 addPrimaryWeaponItem "acc_pointer_IR";
_man7 addPrimaryWeaponItem "optic_Holosight_blk_F";
_man7 call setMissionSkill;
_man7 addRating 1e11;
_man7 addEventHandler ["Killed", server_playerDied];

// Soldier6
_man8 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man8;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man8 addHeadgear "H_HelmetLeaderO_ghex_F";
_man8 addGoggles "G_Balaclava_TI_G_blk_F";
_man8 addUniform "U_O_V_Soldier_Viper_F";
_man8 addVest "V_HarnessO_ghex_F";
_man8 addItemToUniform "FirstAidKit";
_man8 addItemToVest "FirstAidKit";
_man8 addBackpack "B_ViperHarness_ghex_F";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "30Rnd_65x39_caseless_green";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addMagazine "10Rnd_50BW_Mag_F";
_man8 addWeapon "arifle_ARX_ghex_F";
_man8 addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_man8 addPrimaryWeaponItem "acc_pointer_IR";
_man8 addPrimaryWeaponItem "optic_Holosight_blk_F";
_man8 call setMissionSkill;
_man8 addRating 1e11;
_man8 addEventHandler ["Killed", server_playerDied];

// Soldier6
_man9 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man9;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man9 addHeadgear "H_HelmetLeaderO_ghex_F";
_man9 addGoggles "G_Balaclava_TI_G_blk_F";
_man9 addUniform "U_O_V_Soldier_Viper_F";
_man9 addVest "V_HarnessO_ghex_F";
_man9 addItemToUniform "FirstAidKit";
_man9 addItemToVest "FirstAidKit";
_man9 addBackpack "B_ViperHarness_ghex_F";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "30Rnd_65x39_caseless_green";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addMagazine "10Rnd_50BW_Mag_F";
_man9 addWeapon "arifle_ARX_ghex_F";
_man9 addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
_man9 addPrimaryWeaponItem "acc_pointer_IR";
_man9 addPrimaryWeaponItem "optic_Holosight_blk_F";
_man9 call setMissionSkill;
_man9 addRating 1e11;
_man9 addEventHandler ["Killed", server_playerDied];


_leader = leader _group;
[_group, _pos] call defendArea;