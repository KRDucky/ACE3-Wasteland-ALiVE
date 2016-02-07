//	@file Version: 1.0
//	@file Name: smallGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6"];

_group = _this select 0;
_pos = _this select 1;

// Sniper
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
_leader addUniform "CUP_U_B_USMC_Ghillie_WDL";
_leader addVest "V_BandollierB_rgr";
_leader addMagazine "hlc_5rnd_3006_1903";
_leader addWeapon "hlc_rifle_M1903A1_unertl";
_leader addMagazine "hlc_5rnd_3006_1903";
_leader addMagazine "hlc_5rnd_3006_1903";
_leader addMagazine "HandGrenade";

// Sniper
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
_man2 addUniform "CUP_U_B_USMC_Ghillie_WDL";
_man2 addVest "V_BandollierB_rgr";
_man2 addMagazine "CUP_5Rnd_762x51_M24";
_man2 addWeapon "CUP_srifle_M40A3";
_man2 addPrimaryWeaponItem "ACE_optic_LRPS_2D";
_man2 addMagazine "CUP_5Rnd_762x51_M24";
_man2 addMagazine "CUP_5Rnd_762x51_M24";
_man2 addMagazine "HandGrenade";

// Sniper
_man3 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
_man3 addUniform "CUP_U_B_USMC_Ghillie_WDL";
_man3 addVest "V_BandollierB_rgr";
_man3 addMagazine "CUP_10Rnd_127x99_m107";
_man3 addWeapon "CUP_srifle_M107_Base";
_man3 addPrimaryWeaponItem "ACE_optic_LRPS_2D";
_man3 addMagazine "CUP_10Rnd_127x99_m107";
_man3 addMagazine "CUP_10Rnd_127x99_m107";
_man3 addMagazine "HandGrenade";

// Spotter
_man4 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
_man4 addUniform "CUP_U_B_USMC_Ghillie_WDL";
_man4 addVest "V_BandollierB_rgr";
_man4 addMagazine "hlc_20Rnd_762x51_B_M14";
_man4 addWeapon "hlc_rifle_m14sopmod";
_man4 addMagazine "hlc_20Rnd_762x51_B_M14";
_man4 addMagazine "hlc_50rnd_762x51_M_M14";
_man4 addMagazine "HandGrenade";
_man4 addItem "Rangefinder";

// Spotter
_man5 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
_man5 addUniform "CUP_U_B_USMC_Ghillie_WDL";
_man5 addVest "V_BandollierB_rgr";
_man5 addMagazine "hlc_20Rnd_762x51_B_M14";
_man5 addWeapon "hlc_rifle_m14sopmod";
_man5 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man5 addMagazine "hlc_20Rnd_762x51_B_M14";
_man5 addMagazine "hlc_50rnd_762x51_M_M14";
_man5 addMagazine "HandGrenade";
_man5 addItem "Rangefinder";

// Spotter
_man6 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
_man6 addUniform "CUP_U_B_USMC_Ghillie_WDL";
_man6 addVest "V_BandollierB_rgr";
_man6 addMagazine "hlc_20Rnd_762x51_B_M14";
_man6 addWeapon "hlc_rifle_m14sopmod";
_man6 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man6 addMagazine "hlc_20Rnd_762x51_B_M14";
_man6 addMagazine "hlc_50rnd_762x51_M_M14";
_man6 addMagazine "HandGrenade";
_man6 addItem "Rangefinder";

//AT Defender
_man7 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
_man7 addUniform "CUP_U_I_Ghillie_Top";
_man7 addVest "V_TacVest_camo";
_man7 addMagazine "GG_M1_Garand_Magazine";
_man7 addMagazine "GG_M1_Garand_Magazine";
_man7 addMagazine "GG_M1_Garand_Magazine";
_man7 addMagazine "GG_M1_Garand_Magazine";
_man7 addMagazine "GG_M1_Garand_Magazine_Green";
_man7 addMagazine "GG_M1_Garand_Magazine_Green";
_man7 addMagazine "GG_M1_Garand_Magazine_Green";
_man7 addMagazine "GG_M1_Garand_Magazine_Green";
_man7 addMagazine "GG_M1_Garand_Magazine_Red";
_man7 addMagazine "GG_M1_Garand_Magazine_Red";
_man7 addMagazine "GG_M1_Garand_Magazine_Red";
_man7 addMagazine "GG_M1_Garand_Magazine_Red";
_man7 addWeapon "GG_Weaponpack_M1_Garand";
_man7 addPrimaryWeaponItem "CUP_optic_CompM4";
_man7 addWeapon "tf47_at4_heat";
_man7 selectWeapon "tf47_at4_heat";

//AA Defender
_man8 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
_man8 addUniform "CUP_U_I_Ghillie_Top";
_man8 addVest "V_TacVest_camo";
_man8 addBackpack "CUP_B_USMC_MOLLE";
_man8 addMagazine "GG_M1_Garand_Magazine";
_man8 addMagazine "GG_M1_Garand_Magazine";
_man8 addMagazine "GG_M1_Garand_Magazine";
_man8 addMagazine "GG_M1_Garand_Magazine";
_man8 addMagazine "GG_M1_Garand_Magazine_Green";
_man8 addMagazine "GG_M1_Garand_Magazine_Green";
_man8 addMagazine "GG_M1_Garand_Magazine_Green";
_man8 addMagazine "GG_M1_Garand_Magazine_Green";
_man8 addMagazine "GG_M1_Garand_Magazine_Red";
_man8 addMagazine "GG_M1_Garand_Magazine_Red";
_man8 addMagazine "GG_M1_Garand_Magazine_Red";
_man8 addMagazine "GG_M1_Garand_Magazine_Red";
_man8 addWeapon "GG_Weaponpack_M1_Garand";
_man8 addPrimaryWeaponItem "CUP_optic_CompM4";
_man8 addWeapon "CUP_launch_9K32Strela";
_man8 addMagazine "CUP_Strela_2_M";
_man8 selectWeapon "CUP_launch_9K32Strela";

sleep 0.1; // Without this delay, headgear doesn't get removed properly

_leader = leader _group;

{
	_x call setMissionSkill;
	_x allowFleeing 0;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos] call defendArea;
