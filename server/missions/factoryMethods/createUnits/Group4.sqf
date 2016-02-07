//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man5", "_man6"];

_group = _this select 0;
_pos = _this select 1;

// Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
_leader addUniform "U_PMC_BlckPolo_BgPants";
_leader addVest "V_TacVest_darkblck";
_leader addBackpack "PMC_B_Carryall_blk";
_leader addMagazine "CUP_20Rnd_B_AA12_74Slug";
_leader addWeapon "CUP_sgun_AA12";
_leader addMagazine "CUP_20Rnd_B_AA12_Pellets";
_leader addMagazine "CUP_20Rnd_B_AA12_HE";
_leader addWeapon "tf47_at4_heat";
_leader addHeadgear "H_Capbw_pmc";



// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
_man2 addUniform "U_PMC_BlckPolo_BgPants";
_man2 addVest "V_TacVest_darkblck";
_man2 addBackpack "PMC_B_Carryall_blk";
_man2 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man2 addWeapon "CUP_arifle_Mk17_CQC";
_man2 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man2 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man2 addWeapon "CUP_launch_NLAW";
_man2 addHeadgear "H_Capbw_pmc";
_man2 addGoggles "G_mas_wpn_wrap_c";

// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
_man3 addUniform "U_PMC_BlckPolo_BgPants";
_man3 addVest "V_TacVest_darkblck";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man3 addWeapon "CUP_arifle_Mk17_CQC";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addHeadgear "H_Capbw_pmc";
_man3 addGoggles "G_mas_wpn_wrap_c";

// Soldier4
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
_man4 addUniform "U_PMC_BlckPolo_BgPants";
_man4 addVest "V_TacVest_darkblck";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addWeapon "CUP_arifle_Mk17_CQC";
_man4 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addHeadgear "H_Capbw_pmc";
_man4 addGoggles "G_mas_wpn_wrap_c";


// Soldier5
_man5 = _group createUnit ["C_man_polo_5_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
_man5 addUniform "U_PMC_BlckPolo_BgPants";
_man5 addVest "V_TacVest_darkblck";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addWeapon "CUP_arifle_Mk17_CQC";
_man5 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addHeadgear "H_Capbw_pmc";
_man5 addGoggles "G_mas_wpn_wrap_c";


// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
_man6 addUniform "U_PMC_BlckPolo_BgPants";
_man6 addVest "V_TacVest_darkblck";
_man6 addWeapon "CUP_arifle_Mk17_CQC";
_man6 addPrimaryWeaponItem "ACE_optic_Hamr_2D";
_man6 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man6 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man6 addHeadgear "H_Capbw_pmc";
_man6 addGoggles "G_mas_wpn_wrap_c";




_leader = leader _group;

{
	_x spawn refillPrimaryAmmo;
//	_x spawn addMilCap;
	_x call setMissionSkill;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos, "LandVehicle"] call defendArea;
