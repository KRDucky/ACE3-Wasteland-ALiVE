//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man5", "_man6"];

_group = _this select 0;
_pos = _this select 1;
//PMC Faction
// Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
_leader addUniform "U_PMC_CombatUniformRS_BSGPBB";
_leader addVest "V_TacVest_darkblck";
_leader addBackpack "PMC_AssaultPack_Rgr";
_leader addMagazine "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1";
_leader addWeapon "CUP_lmg_L110A1";
_leader addPrimaryWeaponItem "CUP_optic_ACOG";
_leader addMagazine "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1";
_leader addMagazine "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1";
_leader addHeadgear "H_Cap_pmc_headphones";
_leader addGoggles "G_Shades_Black";


// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
_man2 addUniform "U_PMC_IndUniformRS_BSBPBB";
_man2 addVest "V_PlateCarrierInd_PMC_blk";
_man2 addBackpack "PMC_AssaultPack_Rgr";
_man2 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man2 addWeapon "CUP_arifle_Mk17_STD";
_man2 addPrimaryWeaponItem "CUP_optic_Eotech533";
_man2 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man2 addMagazine "tf47_m3maaws_heat";
_man2 addWeapon "tf47_m3maaws";
_man2 addMagazine "tf47_m3maaws_hedp";
_man2 addHeadgear "H_Cap_pmc_headphones";
_man2 addGoggles "Pomi_Goggles_Grn";

// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
_man3 addUniform "U_PMC_IndUniformRS_BSBPBB";
_man3 addVest "V_PlateCarrierInd_PMC_blk";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addPrimaryWeaponItem "CUP_optic_Eotech533";
_man3 addWeapon "CUP_arifle_Mk17_STD";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man3 addHeadgear "H_Cap_pmc_headphones";
_man3 addGoggles "G_Shades_Black";

// Soldier4
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
_man4 addUniform "U_PMC_IndUniformRS_BSBPBB";
_man4 addVest "V_PlateCarrierInd_PMC_blk";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addWeapon "CUP_arifle_Mk17_CQC";
_man4 addPrimaryWeaponItem "CUP_optic_Eotech533";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man4 addHeadgear "H_Cap_pmc_headphones";
_man4 addGoggles "G_Shades_Black";


// Soldier5
_man5 = _group createUnit ["C_man_polo_5_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
_man5 addUniform "U_PMC_IndUniformRS_BSBPBB";
_man5 addVest "V_PlateCarrierInd_PMC_blk";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addWeapon "CUP_arifle_Mk17_CQC";
_man5 addPrimaryWeaponItem "CUP_optic_Eotech533";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addMagazine "CUP_20Rnd_762x51_B_SCAR";
_man5 addHeadgear "H_Cap_pmc_headphones";
_man5 addGoggles "G_Shades_Black";


// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
_man6 addUniform "U_PMC_IndUniformRS_BSBPBB";
_man6 addVest "V_PlateCarrierInd_PMC_blk";
_man6 addWeapon "CUP_srifle_M110";
_man6 addPrimaryWeaponItem "CUP_optic_Leupold_VX3";
_man6 addMagazine "CUP_20Rnd_762x51_B_M110";
_man6 addMagazine "CUP_20Rnd_762x51_B_M110";
_man6 addHeadgear "H_Cap_pmc_headphones";
_man6 addGoggles "G_Shades_Black";




_leader = leader _group;

{
	_x spawn refillPrimaryAmmo;
//	_x spawn addMilCap;
	_x call setMissionSkill;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos, "LandVehicle"] call defendArea;
