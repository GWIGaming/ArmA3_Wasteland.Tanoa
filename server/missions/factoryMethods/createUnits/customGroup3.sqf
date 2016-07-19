//	@file Version: 1.0
//	@file Name: Syndikat Group
//	@file Author: Masin
//	@file Created: 06/22/2016 20:57
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man_5", "_man6", "_man7", "_man8", "_man9", "_man10"];

_group = _this select 0;
_pos = _this select 1;

// Syndikat Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_leader addUniform "U_I_C_Soldier_Camo_F";
_leader addVest "V_PlateCarrier2_rgr_noflag_F";
_leader addItemToVest "FirstAidKit";
_leader addBackpack "B_FieldPack_oli";
_leader addMagazine "30Rnd_762x39_Mag_F";
_leader addWeapon "arifle_AK12_F";
_leader addPrimaryWeaponItem "muzzle_snds_B";
_leader addPrimaryWeaponItem "acc_flashlight";
_leader addPrimaryWeaponItem "optic_DMS";
_leader addPrimaryWeaponItem "bipod_03_F_blk";
_leader addMagazine "30Rnd_762x39_Mag_F";
_leader addMagazine "30Rnd_762x39_Mag_F";
_leader addMagazine "RPG7_F";
_leader addWeapon "launch_RPG7_F";
_leader addMagazine "RPG7_F";
_leader call setMissionSkill;
_leader addRating 1e11;
_leader addEventHandler ["Killed", server_playerDied];


// Syndikat Rifleman
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addHeadgear "H_StrawHat";
_man2 addGoggles "G_Bandanna_aviator";
_man2 addUniform "U_I_C_Soldier_Para_4_F";
_man2 addVest "V_BandollierB_ghex_F";
_man2 addItemToVest "FirstAidKit";
_man2 addBackpack "B_Kitbag_rgr";
_man2 addMagazine "30Rnd_762x39_Mag_F";
_man2 addWeapon "arifle_AKM_F";
_man2 addMagazine "30Rnd_762x39_Mag_F";
_man2 addMagazine "30Rnd_762x39_Mag_F";
_man2 addMagazine "RPG7_F";
_man2 addWeapon "launch_RPG7_F";
_man2 addMagazine "RPG7_F";
_man2 addMagazine "RPG7_F";
_man2 call setMissionSkill;
_man2 addRating 1e11;
_man2 addEventHandler ["Killed", server_playerDied];


// Syndikat SMG
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_I_C_Soldier_Para_5_F";
_man3 addVest "V_BandollierB_ghex_F";
_man3 addItemToVest "FirstAidKit";
_man3 addMagazine "30Rnd_545x39_Mag_F";
_man3 addWeapon "arifle_AKS_F";
_man3 addMagazine "30Rnd_545x39_Mag_F";
_man3 addMagazine "30Rnd_545x39_Mag_F";
_man3 call setMissionSkill;
_man3 addRating 1e11;
_man3 addEventHandler ["Killed", server_playerDied];


// Syndikat Grenadier
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man4 addUniform "U_I_C_Soldier_Para_2_F";
_man4 addVest "V_BandollierB_ghex_F";
_man4 addBackpack "B_Carryall_oli";
_man4 addItemToVest "FirstAidKit";
_man4 addMagazine "1Rnd_HE_Grenade_shell";
_man4 addMagazine "30Rnd_762x39_Mag_F";
_man4 addWeapon "arifle_AK12_GL_F";
_man4 addMagazine "30Rnd_762x39_Mag_F";
_man4 addMagazine "1Rnd_HE_Grenade_shell";
_man4 addMagazine "1Rnd_HE_Grenade_shell";
_man4 addMagazine "1Rnd_HE_Grenade_shell";
_man4 addMagazine "1Rnd_HE_Grenade_shell";
_man4 addMagazine "RPG7_F";
_man4 addWeapon "launch_RPG7_F";
_man4 addMagazine "RPG7_F";
_man4 addMagazine "RPG7_F";
_man4 call setMissionSkill;
_man4 addRating 1e11;
_man4 addEventHandler ["Killed", server_playerDied];

// Syndikat LMG
_man5 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man5 addUniform "U_I_C_Soldier_Para_1_F";
_man5 addVest "V_PlateCarrierSpec_tna_F";
_man5 addHeadgear "H_HelmetB_tna_F";
_man5 addGoggles "G_Balaclava_TI_G_blk_F";
_man5 addBackpack "B_Bergen_tna_F";
_man5 addItemToVest "FirstAidKit";
_man5 addMagazine "200Rnd_556x45_Box_F";
_man5 addWeapon "LMG_03_F";
_man5 addMagazine "RPG7_F";
_man5 addWeapon "launch_RPG7_F";
_man5 addMagazine "200Rnd_556x45_Box_F";
_man5 addMagazine "200Rnd_556x45_Box_F";
_man5 addMagazine "RPG7_F";
_man5 addMagazine "RPG7_F";
_man5 addMagazine "RPG7_F";
_man5 addMagazine "RPG7_F";
_man5 call setMissionSkill;
_man5 addRating 1e11;
_man5 addEventHandler ["Killed", server_playerDied];


// Syndikat Rifleman
_man6 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man6 addHeadgear "H_StrawHat";
_man6 addGoggles "G_Bandanna_aviator";
_man6 addUniform "U_I_C_Soldier_Para_4_F";
_man6 addVest "V_BandollierB_ghex_F";
_man6 addItemToVest "FirstAidKit";
_man6 addBackpack "B_Kitbag_rgr";
_man6 addMagazine "30Rnd_762x39_Mag_F";
_man6 addWeapon "arifle_AKM_F";
_man6 addMagazine "30Rnd_762x39_Mag_F";
_man6 addMagazine "30Rnd_762x39_Mag_F";
_man6 addMagazine "RPG7_F";
_man6 addWeapon "launch_RPG7_F";
_man6 addMagazine "RPG7_F";
_man6 addMagazine "RPG7_F";
_man6 call setMissionSkill;
_man6 addRating 1e11;
_man6 addEventHandler ["Killed", server_playerDied];

// Syndikat Rifleman
_man7 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man7;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man7 addHeadgear "H_StrawHat";
_man7 addGoggles "G_Bandanna_aviator";
_man7 addUniform "U_I_C_Soldier_Para_4_F";
_man7 addVest "V_BandollierB_ghex_F";
_man7 addItemToVest "FirstAidKit";
_man7 addBackpack "B_Kitbag_rgr";
_man7 addMagazine "30Rnd_762x39_Mag_F";
_man7 addWeapon "arifle_AKM_F";
_man7 addMagazine "30Rnd_762x39_Mag_F";
_man7 addMagazine "30Rnd_762x39_Mag_F";
_man7 addMagazine "RPG7_F";
_man7 addWeapon "launch_RPG7_F";
_man7 addMagazine "RPG7_F";
_man7 addMagazine "RPG7_F";
_man7 call setMissionSkill;
_man7 addRating 1e11;
_man7 addEventHandler ["Killed", server_playerDied];

// Syndikat Grenadier
_man8 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man8;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man8 addUniform "U_I_C_Soldier_Para_2_F";
_man8 addVest "V_BandollierB_ghex_F";
_man8 addBackpack "B_Carryall_oli";
_man8 addItemToVest "FirstAidKit";
_man8 addMagazine "1Rnd_HE_Grenade_shell";
_man8 addMagazine "30Rnd_762x39_Mag_F";
_man8 addWeapon "arifle_AK12_GL_F";
_man8 addMagazine "30Rnd_762x39_Mag_F";
_man8 addMagazine "1Rnd_HE_Grenade_shell";
_man8 addMagazine "1Rnd_HE_Grenade_shell";
_man8 addMagazine "1Rnd_HE_Grenade_shell";
_man8 addMagazine "1Rnd_HE_Grenade_shell";
_man8 addMagazine "RPG7_F";
_man8 addWeapon "launch_RPG7_F";
_man8 addMagazine "RPG7_F";
_man8 addMagazine "RPG7_F";
_man8 call setMissionSkill;
_man8 addRating 1e11;
_man8 addEventHandler ["Killed", server_playerDied];

// Syndikat LMG
_man9 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man9;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man9 addUniform "U_I_C_Soldier_Para_1_F";
_man9 addVest "V_PlateCarrierSpec_tna_F";
_man9 addHeadgear "H_HelmetB_tna_F";
_man9 addGoggles "G_Balaclava_TI_G_blk_F";
_man9 addBackpack "B_Bergen_tna_F";
_man9 addItemToVest "FirstAidKit";
_man9 addMagazine "200Rnd_556x45_Box_F";
_man9 addWeapon "LMG_03_F";
_man9 addMagazine "RPG7_F";
_man9 addWeapon "launch_RPG7_F";
_man9 addMagazine "200Rnd_556x45_Box_F";
_man9 addMagazine "200Rnd_556x45_Box_F";
_man9 addMagazine "RPG7_F";
_man9 addMagazine "RPG7_F";
_man9 addMagazine "RPG7_F";
_man9 addMagazine "RPG7_F";
_man9 call setMissionSkill;
_man9 addRating 1e11;
_man9 addEventHandler ["Killed", server_playerDied];

// Syndikat SMG
_man10 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man10;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man10 addUniform "U_I_C_Soldier_Para_5_F";
_man10 addVest "V_BandollierB_ghex_F";
_man10 addItemToVest "FirstAidKit";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 addWeapon "arifle_AKS_F";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 call setMissionSkill;
_man10 addRating 1e11;
_man10 addEventHandler ["Killed", server_playerDied];

// Syndikat SMG
_man10 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man10;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man10 addUniform "U_I_C_Soldier_Para_5_F";
_man10 addVest "V_BandollierB_ghex_F";
_man10 addItemToVest "FirstAidKit";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 addWeapon "arifle_AKS_F";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 addMagazine "30Rnd_545x39_Mag_F";
_man10 call setMissionSkill;
_man10 addRating 1e11;
_man10 addEventHandler ["Killed", server_playerDied];

_leader = leader _group;
[_group, _pos] call defendArea;