// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: Syndikat AI Group
//	@file Author: AgentRev edited by Masin

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = param [2, 7, [0]];
_radius = param [3, 10, [0]];

_unitTypes =
[
	"C_man_polo_1_F", "C_man_polo_1_F_euro", "C_man_polo_1_F_afro", "C_man_polo_1_F_asia",
	"C_man_polo_2_F", "C_man_polo_2_F_euro", "C_man_polo_2_F_afro", "C_man_polo_2_F_asia",
	"C_man_polo_3_F", "C_man_polo_3_F_euro", "C_man_polo_3_F_afro", "C_man_polo_3_F_asia",
	"C_man_polo_4_F", "C_man_polo_4_F_euro", "C_man_polo_4_F_afro", "C_man_polo_4_F_asia",
	"C_man_polo_5_F", "C_man_polo_5_F_euro", "C_man_polo_5_F_afro", "C_man_polo_5_F_asia",
	"C_man_polo_6_F", "C_man_polo_6_F_euro", "C_man_polo_6_F_afro", "C_man_polo_6_F_asia"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	
	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "U_I_C_Soldier_Para_2_F";
			_unit addVest "V_BandollierB_ghex_F";
			_unit addBackpack "B_Carryall_oli";
			_unit addMagazine "3Rnd_HE_Grenade_shell";
			_unit addMagazine "30Rnd_762x39_Mag_F";
			_unit addWeapon "arifle_AK12_GL_F";
			_unit addMagazine "30Rnd_762x39_Mag_F";
			_unit addMagazine "3Rnd_HE_Grenade_shell";
			_unit addMagazine "3Rnd_HE_Grenade_shell";
			_unit addMagazine "3Rnd_HE_Grenade_shell";
			_unit addMagazine "3Rnd_HE_Grenade_shell";
			_unit addMagazine "RPG7_F";
			_unit addWeapon "launch_RPG7_F";
			_unit addMagazine "RPG7_F";
			_unit addMagazine "RPG7_F";
		};
		// LMG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "U_I_C_Soldier_Para_1_F";
			_unit addVest "V_PlateCarrierSpec_tna_F";
			_unit addHeadgear "H_HelmetB_tna_F";
			_unit addGoggles "G_Balaclava_TI_G_blk_F";
			_unit addBackpack "B_Bergen_tna_F";
			_unit addMagazine "200Rnd_556x45_Box_F";
			_unit addWeapon "LMG_03_F";
			_unit addMagazine "RPG7_F";
			_unit addWeapon "launch_RPG7_F";
			_unit addMagazine "200Rnd_556x45_Box_F";
			_unit addMagazine "200Rnd_556x45_Box_F";
			_unit addMagazine "RPG7_F";
			_unit addMagazine "RPG7_F";
			_unit addMagazine "RPG7_F";
			_unit addMagazine "RPG7_F";
		};
		// Rifleman
		default
		{
			if (_unit == leader _group) then
			{
				_unit addUniform "U_I_C_Soldier_Camo_F";
				_unit addVest "V_PlateCarrier2_rgr_noflag_F";
				_unit addBackpack "B_FieldPack_oli";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addWeapon "arifle_AK12_F";
				_unit addPrimaryWeaponItem "muzzle_snds_B";
				_unit addPrimaryWeaponItem "optic_DMS";
				_unit addPrimaryWeaponItem "bipod_03_F_blk";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addMagazine "RPG7_F";
				_unit addWeapon "launch_RPG7_F";
				_unit addMagazine "RPG7_F";
							
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addHeadgear "H_StrawHat";
				_unit addGoggles "G_Bandanna_aviator";
				_unit addUniform "U_I_C_Soldier_Para_4_F";
				_unit addVest "V_BandollierB_ghex_F";
				_unit addBackpack "B_Kitbag_rgr";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addWeapon "arifle_AKM_F";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addMagazine "30Rnd_762x39_Mag_F";
				_unit addMagazine "RPG7_F";
				_unit addWeapon "launch_RPG7_F";
				_unit addMagazine "RPG7_F";
				_unit addMagazine "RPG7_F";
			};
		};
	};

	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit enablegunlights "forceOn";

	_unit addRating 1e11;
	_unit spawn addMilCap;
	_unit spawn refillPrimaryAmmo;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};

[_group, _pos] call defendArea;
