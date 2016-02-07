// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 6, 0, ["Vests","Headgear"]],
	["GenStore2", 6, 0, ["Vests","Headgear"]],
	["GenStore3", 6, 0, ["Vests","Headgear"]],
	["GenStore4", 0, 0, ["Vests","Headgear"]],
	["GenStore5", 5, 0, ["Vests","Headgear"]],

	["GunStore1", 1, 0, []],
	["GunStore2", 1, 0, []],
	["GunStore3", 6, 0, []],
	["GunStore4", 1, 0, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 1, 0, []],
	["VehStore2", 6, 0, ["Boats"]],
	["VehStore3", 4, 0, ["Boats"]],
	["VehStore4", 5, 0, ["Boats"]],
	["VehStore5", 0, 0, ["Planes"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_1"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
