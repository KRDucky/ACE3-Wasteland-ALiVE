// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = [_this, 2, 7, [0]] call BIS_fnc_param;
_radius = [_this, 3, 10, [0]] call BIS_fnc_param;

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

	_unit addVest "CUP_V_B_GER_Carrier_Rig";
	_unit addMagazine "hlc_30rnd_556x45_EPR_G36";
	_unit addMagazine "hlc_30rnd_556x45_EPR_G36";
	_unit addMagazine "hlc_30rnd_556x45_EPR_G36";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "CUP_U_B_GER_Tropentarn_2";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addWeapon "hlc_rifle_G36A1AG36";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "CUP_U_B_GER_Tropentarn_2";
			_unit addBackpack "CUP_B_USMC_MOLLE";
			_unit addWeapon "GG_Weaponpack_M1_Garand";
			_unit addMagazine "tf47_smaw_HEAA";
			_unit addWeapon "tf47_smaw";
			_unit addMagazine "GG_M1_Garand_Magazine_Red";
			_unit addMagazine "GG_M1_Garand_Magazine_Red";
			_unit addMagazine "GG_M1_Garand_Magazine_Red";
			_unit addMagazine "GG_M1_Garand_Magazine_Red";
			_unit addMagazine "tf47_smaw_HEDP";
		};
		// Rifleman
		default
		{
			_unit addUniform "CUP_U_B_GER_Tropentarn_2";

			if (_unit == leader _group) then
			{
				_unit addWeapon "hlc_rifle_G36C";
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addWeapon "hlc_rifle_G36C";
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
