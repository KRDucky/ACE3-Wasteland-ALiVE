private ["_unit","_ammo","_randomGoggles","_randomUniform","_randomHat","_randomVest","_availableGoggles","_availableUniforms","_availableHeadgear","_specialVests","_specialGuns","_count","_gun"];

_unit removeWeapon "launch_NLAW_F";
_unit removeWeapon "launch_I_Titan_F";
_unit removeWeapon "launch_I_Titan_short_F";
removeHeadgear _unit;
removeGoggles _unit;

_availableGoggles = [
"G_Combat","G_Lowprofile","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Sport_Blackred","G_Sport_Blackyellow","G_Squares_Tinted","G_Tactical_Black","G_Tactical_Clear","G_Bandanna_blk"];

_availableUniforms = [
"U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_GhillieSuit","U_B_HeliPilotCoveralls","U_B_Wetsuit","U_O_CombatUniform_ocamo","U_O_GhillieSuit","U_O_PilotCoveralls","U_Rangemaster","U_NikosBody","U_OrestesBody","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_wdl","U_B_CombatUniform_wdl_tshirt","U_B_CombatUniform_wdl_vest","U_B_CombatUniform_sgg","U_B_CombatUniform_sgg_tshirt","U_B_CombatUniform_sgg_vest","U_B_SpecopsUniform_sgg","U_B_PilotCoveralls","U_O_CombatUniform_oucamo","U_O_SpecopsUniform_ocamo","U_O_SpecopsUniform_blk","U_O_OfficerUniform_ocamo","U_I_CombatUniform","U_I_CombatUniform_tshirt","U_I_CombatUniform_shortsleeve","U_I_pilotCoveralls","U_I_HeliPilotCoveralls","U_I_GhillieSuit","U_I_OfficerUniform","U_I_Wetsuit","U_Competitor","U_MillerBody","U_KerryBody","U_AttisBody","U_AntigonaBody","U_IG_Menelaos","U_C_Novak","U_OI_Scientist","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_IG_Guerilla3_2","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3","U_B_survival_uniform","U_I_G_Story_Protagonist_F","U_I_G_resistanceLeader_F","U_C_Journalist","U_C_Scientist","U_NikosAgedBody","U_IG_Guerrilla_6_1","U_BG_Guerrilla_6_1","U_OG_Guerrilla_6_1","U_C_Driver_1","U_C_Driver_2","U_C_Driver_3","U_C_Driver_4","U_Marshal","U_C_Driver_1_black","U_C_Driver_1_blue","U_C_Driver_1_green","U_C_Driver_1_red","U_C_Driver_1_white","U_C_Driver_1_yellow","U_C_Driver_1_orange"];

_availableHeadgear = [
"H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_indp","H_Booniehat_mcamo","H_Booniehat_grn","H_Booniehat_tan","H_Booniehat_dirty","H_Booniehat_dgtl","H_Booniehat_khk_hs","H_Cap_red","H_Cap_blu","H_Cap_oli","H_Cap_headphones","H_Cap_tan","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_brn_SPECOPS","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_Raven","H_Cap_blk_ION","H_Cap_oli_hs","H_Cap_press","H_Cap_usblack","H_Cap_surfer","H_Cap_police","H_BandMask_blk","H_BandMask_khk","H_BandMask_reaper","H_BandMask_demon","H_Bandanna_surfer","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_camo","H_Bandanna_mcamo","H_Shemag_khk","H_Shemag_tan","H_Shemag_olive","H_Shemag_olive_hs","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_red","H_Beret_grn","H_Beret_grn_SF","H_Beret_brn_SF","H_Beret_ocamo","H_Beret_02","H_Beret_Colonel","H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_khk","H_Watchcap_camo","H_Watchcap_sgg","H_TurbanO_blk","H_StrawHat","H_StrawHat_dark","H_Hat_blue","H_Hat_brown","H_Hat_camo","H_Hat_grey","H_Hat_checker","H_Hat_tan","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F","H_RacingHelmet_1_black_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_orange_F","H_Cap_marshal"];

_specialVests = [
];

_specialGuns = [];

_randomHat = _availableHeadgear call BIS_fnc_selectRandom;
_unit addHeadgear _randomHat;

_randomGoggles = _availableGoggles call BIS_fnc_selectRandom;
_unit addGoggles _randomGoggles;

if(random 10 > 8) then {
    _unit addVest (_specialVests call BIS_fnc_selectRandom);
}
else{
    _unit addVest (["V_HarnessO_brn","V_HarnessO_gry","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry"] call BIS_fnc_selectRandom);
};

_randomUniform = _availableUniforms call BIS_fnc_selectRandom;
_unit forceAddUniform _randomUniform;

if(random 10 > 6) then {
    removeAllWeapons _unit;
    _gun = (_specialGuns call BIS_fnc_selectRandom);
    [_unit, _gun, 2, 0] call BIS_fnc_addWeapon;
}
else {
    _ammo = (primaryWeaponMagazine _unit) select 0;
    _count = floor random 5;
    for "_i" from 1 to _count do { _unit addItem _ammo;};
};

_unit addPrimaryWeaponItem "acc_flashlight";
