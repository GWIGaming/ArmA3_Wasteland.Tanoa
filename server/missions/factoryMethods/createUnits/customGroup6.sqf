//	@file Version: 1.0
//	@file Name: Nato Group
//	@file Author: Masin
//	@file Created: 06/22/2016 20:57
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man5", "_man6", "_man7", "_man8", "_man9", "_man10"];

_group = _this select 0;
_pos = _this select 1;

// Nato Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_leader addUniform "U_B_T_Soldier_F";
_leader addVest "V_PlateCarrierSpec_tna_F";
_leader addBackpack "B_Carryall_oli";
_leader addHeadgear "H_Beret_02";
_leader addGoggles "G_Shades_Black";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addWeapon "arifle_SPAR_03_blk_F";
_leader addMagazine "Titan_AT";
_leader addWeapon "launch_B_Titan_short_tna_F";
_leader addPrimaryWeaponItem "muzzle_snds_B";
_leader addPrimaryWeaponItem "acc_flashlight";
_leader addPrimaryWeaponItem "optic_AMS";
_leader addPrimaryWeaponItem "bipod_01_F_blk";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addMagazine "20Rnd_762x51_Mag";
_leader addMagazine "Titan_AT";
_leader addMagazine "Titan_AT";
_leader call setMissionSkill;
_leader addRating 1e11;
_leader addEventHandler ["Killed", server_playerDied];


// Nato 5.56 LMG
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addHeadgear "H_HelmetB_Enh_tna_F";
_man2 addGoggles "G_Balaclava_TI_G_blk_F";
_man2 addUniform "U_B_T_Soldier_AR_F";
_man2 addVest "V_PlateCarrierGL_tna_F";
_man2 addBackpack "B_Bergen_tna_F";
_man2 addMagazine "150Rnd_556x45_Drum_Mag_F";
_man2 addMagazine "150Rnd_556x45_Drum_Mag_F";
_man2 addMagazine "150Rnd_556x45_Drum_Mag_F";
_man2 addMagazine "Titan_AT";
_man2 addWeapon "arifle_SPAR_02_khk_F";
_man2 addPrimaryWeaponItem "muzzle_snds_M";
_man2 addPrimaryWeaponItem "acc_flashlight";
_man2 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man2 addPrimaryWeaponItem "bipod_01_F_blk";
_man2 addWeapon "launch_B_Titan_short_tna_F";
_man2 addItemToBackpack "Titan_AT";
_man2 addItemToBackpack "Titan_AT";
_man2 addItemToBackpack "Titan_AT";
_man2 addItemToBackpack "Titan_AT";
_man2 call setMissionSkill;
_man2 addRating 1e11;
_man2 addEventHandler ["Killed", server_playerDied];


// Nato .338 LMG
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_C_Driver_4";
_man3 addVest "V_PlateCarrierGL_blk";
_man3 addBackpack "B_ViperHarness_blk_F";
_man3 addHeadgear "H_HelmetSpecB_blk";
_man3 addGoggles "G_Balaclava_TI_G_blk_F";
_man3 addItemToVest "FirstAidKit";
_man3 addItemToBackpack "Medikit";
_man3 addMagazine "130Rnd_338_Mag";
_man3 addWeapon "MMG_02_black_F";
_man3 addPrimaryWeaponItem "muzzle_snds_338_black";
_man3 addPrimaryWeaponItem "optic_ERCO_blk_F";
_man3 addPrimaryWeaponItem "bipod_01_F_blk";
_man3 addPrimaryWeaponItem "bipod_01_F_blk";
_man3 addMagazine "130Rnd_338_Mag";
_man3 addMagazine "130Rnd_338_Mag";
_man3 addMagazine "130Rnd_338_Mag";
_man3 call setMissionSkill;
_man3 addRating 1e11;
_man3 addEventHandler ["Killed", server_playerDied];


// Nato Rifleman
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man4 addUniform  "U_B_T_Soldier_F";
_man4 addVest "V_PlateCarrier2_tna_F";
_man4 addBackpack "B_AssaultPack_tna_F";
_man4 addHeadgear "H_HelmetB_Enh_tna_F";
_man4 addGoggles "G_Combat";
_man4 addMagazine "20Rnd_762x51_Mag";
_man4 addWeapon "arifle_SPAR_03_blk_F";
_man4 addMagazine "20Rnd_762x51_Mag";
_man4 addMagazine "20Rnd_762x51_Mag";
_man4 addMagazine "20Rnd_762x51_Mag";
_man4 addMagazine "NLAW_F";
_man4 addWeapon "launch_NLAW_F";
_man4 addPrimaryWeaponItem "muzzle_snds_B_khk_F";
_man4 addPrimaryWeaponItem "acc_flashlight";
_man4 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man4 addPrimaryWeaponItem "bipod_02_F_blk";
_man4 call setMissionSkill;
_man4 addRating 1e11;
_man4 addEventHandler ["Killed", server_playerDied];


// Nato 40mm
_man5 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man5 addUniform "U_B_T_Soldier_AR_F";
_man5 addVest "V_PlateCarrier1_tna_F";
_man5 addBackpack "B_Kitbag_rgr";
_man5 addHeadgear "H_HelmetB_Enh_tna_F";
_man5 addGoggles "G_Balaclava_TI_G_blk_F";
_man5 addItemToVest "FirstAidKit";
_man5 addItemToBackpack "Medikit";
_man5 addMagazine "30Rnd_556x45_Stanag";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addWeapon "arifle_SPAR_01_GL_blk_F";
_man5 addPrimaryWeaponItem "muzzle_snds_M";
_man5 addPrimaryWeaponItem "optic_ERCO_blk_F";
_man5 addMagazine "30Rnd_556x45_Stanag";
_man5 addMagazine "30Rnd_556x45_Stanag";
_man5 addMagazine "30Rnd_556x45_Stanag";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 addMagazine "1Rnd_HE_Grenade_shell";
_man5 call setMissionSkill;
_man5 addRating 1e11;
_man5 addEventHandler ["Killed", server_playerDied];


// Nato Sniper
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man6 addGoggles "G_Balaclava_TI_G_blk_F";
_man6 addUniform "U_B_T_FullGhillie_tna_F";
_man6 addVest "V_PlateCarrierGL_tna_F";
_man6 addItemToUniform "FirstAidKit";
_man6 addItemToVest "FirstAidKit";
_man6 addBackpack "B_AssaultPack_tna_F";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addWeapon "srifle_LRR_tna_F";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addMagazine "7Rnd_408_Mag";
_man6 addPrimaryWeaponItem "optic_LRPS_tna_F";
_man6 call setMissionSkill;
_man6 addRating 1e11;
_man6 addEventHandler ["Killed", server_playerDied];

// Nato Rifleman
_man7 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man7;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man7 addUniform  "U_B_T_Soldier_F";
_man7 addVest "V_PlateCarrier2_tna_F";
_man7 addBackpack "B_AssaultPack_tna_F";
_man7 addHeadgear "H_HelmetB_Enh_tna_F";
_man7 addGoggles "G_Combat";
_man7 addMagazine "20Rnd_762x51_Mag";
_man7 addWeapon "arifle_SPAR_03_blk_F";
_man7 addMagazine "20Rnd_762x51_Mag";
_man7 addMagazine "20Rnd_762x51_Mag";
_man7 addMagazine "20Rnd_762x51_Mag";
_man7 addMagazine "NLAW_F";
_man7 addWeapon "launch_NLAW_F";
_man7 addPrimaryWeaponItem "muzzle_snds_B_khk_F";
_man7 addPrimaryWeaponItem "acc_flashlight";
_man7 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man7 addPrimaryWeaponItem "bipod_02_F_blk";
_man7 call setMissionSkill;
_man7 addRating 1e11;
_man7 addEventHandler ["Killed", server_playerDied];

// Nato Rifleman
_man8 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man8;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man8 addUniform  "U_B_T_Soldier_F";
_man8 addVest "V_PlateCarrier2_tna_F";
_man8 addBackpack "B_AssaultPack_tna_F";
_man8 addHeadgear "H_HelmetB_Enh_tna_F";
_man8 addGoggles "G_Combat";
_man8 addMagazine "20Rnd_762x51_Mag";
_man8 addWeapon "arifle_SPAR_03_blk_F";
_man8 addMagazine "20Rnd_762x51_Mag";
_man8 addMagazine "20Rnd_762x51_Mag";
_man8 addMagazine "20Rnd_762x51_Mag";
_man8 addMagazine "NLAW_F";
_man8 addWeapon "launch_NLAW_F";
_man8 addPrimaryWeaponItem "muzzle_snds_B_khk_F";
_man8 addPrimaryWeaponItem "acc_flashlight";
_man8 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man8 addPrimaryWeaponItem "bipod_02_F_blk";
_man8 call setMissionSkill;
_man8 addRating 1e11;
_man8 addEventHandler ["Killed", server_playerDied];

// Nato Rifleman
_man9 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man9;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man9 addUniform  "U_B_T_Soldier_F";
_man9 addVest "V_PlateCarrier2_tna_F";
_man9 addBackpack "B_AssaultPack_tna_F";
_man9 addHeadgear "H_HelmetB_Enh_tna_F";
_man9 addGoggles "G_Combat";
_man9 addMagazine "20Rnd_762x51_Mag";
_man9 addWeapon "arifle_SPAR_03_blk_F";
_man9 addMagazine "20Rnd_762x51_Mag";
_man9 addMagazine "20Rnd_762x51_Mag";
_man9 addMagazine "20Rnd_762x51_Mag";
_man9 addMagazine "NLAW_F";
_man9 addWeapon "launch_NLAW_F";
_man9 addPrimaryWeaponItem "muzzle_snds_B_khk_F";
_man9 addPrimaryWeaponItem "acc_flashlight";
_man9 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man9 addPrimaryWeaponItem "bipod_02_F_blk";
_man9 call setMissionSkill;
_man9 addRating 1e11;
_man9 addEventHandler ["Killed", server_playerDied];

// Nato Rifleman
_man10 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man10;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man10 addUniform  "U_B_T_Soldier_F";
_man10 addVest "V_PlateCarrier2_tna_F";
_man10 addBackpack "B_AssaultPack_tna_F";
_man10 addHeadgear "H_HelmetB_Enh_tna_F";
_man10 addGoggles "G_Combat";
_man10 addMagazine "20Rnd_762x51_Mag";
_man10 addWeapon "arifle_SPAR_03_blk_F";
_man10 addMagazine "20Rnd_762x51_Mag";
_man10 addMagazine "20Rnd_762x51_Mag";
_man10 addMagazine "20Rnd_762x51_Mag";
_man10 addMagazine "NLAW_F";
_man10 addWeapon "launch_NLAW_F";
_man10 addPrimaryWeaponItem "muzzle_snds_B_khk_F";
_man10 addPrimaryWeaponItem "acc_flashlight";
_man10 addPrimaryWeaponItem "optic_ERCO_khk_F";
_man10 addPrimaryWeaponItem "bipod_02_F_blk";
_man10 call setMissionSkill;
_man10 addRating 1e11;
_man10 addEventHandler ["Killed", server_playerDied];


_leader = leader _group;
[_group, _pos] call defendArea;