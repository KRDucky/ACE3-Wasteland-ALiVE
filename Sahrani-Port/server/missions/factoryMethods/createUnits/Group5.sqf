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
_leader addUniform "U_IG_Guerilla1_1";
_leader addVest "V_Chestrig_rgr";
_leader addBackpack "CUP_B_USMC_AssaultPack";
_leader addMagazine "hlc_30Rnd_762x39_b_ak";
_leader addWeapon "hlc_rifle_akm";
_leader addPrimaryWeaponItem "CUP_optic_Kobra";
_leader addMagazine "hlc_30Rnd_762x39_b_ak";
_leader addMagazine "hlc_30Rnd_762x39_b_ak";
_leader addWeapon "CUP_launch_RPG18";
_leader addHeadgear "H_Cap_press";
_leader addGoggles "CUP_FR_NeckScarf";


// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
_man2 addUniform "U_IG_Guerilla1_1";
_man2 addVest "V_Chestrig_rgr";
_man2 addBackpack "CUP_B_USMC_AssaultPack";
_man2 addMagazine "CUP_8Rnd_B_Saiga12_74Slug_M";
_man2 addWeapon "CUP_sgun_Saiga12K";
_man2 addPrimaryWeaponItem "CUP_optic_Kobra";
_man2 addMagazine "CUP_8Rnd_B_Saiga12_74Slug_M";
_man2 addMagazine "CUP_Strela_2_M";
_man2 addWeapon "CUP_launch_9K32Strela";
_man2 addMagazine "CUP_Strela_2_M";
_man2 addHeadgear "H_Booniehat_grn";
_man2 addGoggles "CUP_FR_NeckScarf";

// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
_man3 addUniform "U_IG_Guerilla1_1";
_man3 addVest "V_Chestrig_rgr";
_man3 addPrimaryWeaponItem "HLC_Optic_1p29";
_man3 addWeapon "hlc_rifle_rpk12";
_man3 addMagazine "hlc_45Rnd_545x39_t_rpk";
_man3 addMagazine "hlc_45Rnd_545x39_t_rpk";
_man3 addHeadgear "H_Booniehat_grn";
_man3 addGoggles "CUP_FR_NeckScarf";

// Soldier4
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
_man4 addUniform "U_IG_Guerilla1_1";
_man4 addVest "V_Chestrig_rgr";
_man4 addMagazine "hlc_30Rnd_762x39_b_ak";
_man4 addWeapon "hlc_rifle_akms";
_man4 addPrimaryWeaponItem "CUP_optic_Kobra";
_man4 addMagazine "hlc_30Rnd_762x39_b_ak";
_man4 addMagazine "hlc_30Rnd_762x39_b_ak";
_man4 addHeadgear "H_Booniehat_grn";
_man4 addGoggles "CUP_FR_NeckScarf";


// Soldier5
_man5 = _group createUnit ["C_man_polo_5_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
_man5 addUniform "U_IG_Guerilla1_1";
_man5 addVest "V_Chestrig_rgr";
_man5 addMagazine "hlc_30Rnd_762x39_b_ak";
_man5 addWeapon "hlc_rifle_akms";
_man5 addPrimaryWeaponItem "CUP_optic_Kobra";
_man5 addMagazine "hlc_30Rnd_762x39_b_ak";
_man5 addMagazine "hlc_30Rnd_762x39_b_ak";
_man5 addHeadgear "H_Booniehat_grn";
_man5 addGoggles "CUP_FR_NeckScarf";


// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
_man6 addUniform "U_IG_Guerilla1_1";
_man6 addVest "V_Chestrig_rgr";
_man6 addWeapon "hlc_rifle_akms";
_man6 addPrimaryWeaponItem "CUP_optic_Kobra";
_man6 addMagazine "hlc_30Rnd_762x39_b_ak";
_man6 addMagazine "hlc_30Rnd_762x39_b_ak";
_man6 addHeadgear "H_Booniehat_grn";
_man6 addGoggles "CUP_FR_NeckScarf";



_leader = leader _group;

{
	_x spawn refillPrimaryAmmo;
//	_x spawn addMilCap;
	_x call setMissionSkill;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos, "LandVehicle"] call defendArea;
