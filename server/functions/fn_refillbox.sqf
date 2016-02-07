// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box allowDamage false; // No more fucking busted crates
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["mas_launch_smaw_F", "mas_launch_NLAW_F", "mas_launch_TitanS_F", "mas_launch_maaws_F", "mas_launch_M136_F"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", "mas_launch_Stinger_F", RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(3,8)]
		];
	};
	case "mission_RULaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["mas_launch_RPG7_F", "mas_launch_RPG18_F", "mas_launch_pzf60_F", "mas_launch_Metis_F"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", "mas_launch_Strela_F", RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(3,8)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder", "ACE_MX2A", "ACE_SpottingScope", "ACE_Vector", "ACE_Yardage450"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["ACE_optic_MRCO_2D", "ACE_optic_Arco_2D", "ACE_optic_Hamr_2D ", "ACE_optic_SOS_2D", "RH_m6x", "optic_Yorris"], RANDOM_BETWEEN(0,2)],
			["itm", ["muzzle_mas_snds_SM", "muzzle_mas_snds_SMc", "RH_demz", "RH_sfn57", "RH_gemtech45"], RANDOM_BETWEEN(0,3)],
			["wep", ["RH_deaglem", "RH_bullb", "RH_mateba", "RH_fn57_t"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["srifle_mas_hk417", "srifle_mas_ebr", "srifle_mas_m110"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["LMG_mas_Mk48_F", "LMG_mas_mg3_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", ["20Rnd_mas_762x51_Stanag", "20Rnd_mas_762x51_T_Stanag"], RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_762x51_T_Stanag", RANDOM_BETWEEN(4,8)],
			["mag", "150Rnd_762x51_Box_Tracer", RANDOM_BETWEEN(4,8)],
			["mag", "RH_20Rnd_57x28_FN", RANDOM_BETWEEN(1,5)],
			["mag", "RH_6Rnd_454_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "RH_6Rnd_44_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "RH_7Rnd_50_AE", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_RUSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder", "ACE_MX2A", "ACE_SpottingScope", "ACE_Vector", "ACE_Yardage450"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["ACE_optic_MRCO_2D", "ACE_optic_Arco_2D", "ACE_optic_Hamr_2D ", "ACE_optic_SOS_2D", "RH_m6x", "muzzle_mas_snds_SVD", "muzzle_mas_snds_AK", "optic_Yorris", "optic_mas_kobra", "optic_mas_PSO","optic_mas_PSO_nv_eo_c"], RANDOM_BETWEEN(0,2)],
			["itm", ["RH_A26", "RH_gemtech9", "RH_pmir", "RH_pmsd", "RH_vp70stock"], RANDOM_BETWEEN(0,3)],
			["wep", ["RH_cz75", "RH_mak", "RH_vz61", "RH_tt33", "RH_vp70"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["arifle_mas_ak12_sf", "srifle_mas_svd", "srifle_mas_m91"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["LMG_mas_pkm_F", "LMG_mas_rpk_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", ["10Rnd_mas_762x54_mag", "30Rnd_mas_545x39_mag"], RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_762x54_T_mag", RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_545x39_T_mag", RANDOM_BETWEEN(4,8)],
			["mag", "RH_16Rnd_9x19_cz", RANDOM_BETWEEN(1,5)],
			["mag", "RH_8Rnd_9x18_Mak", RANDOM_BETWEEN(1,5)],
			["mag", "RH_20Rnd_32cal_vz61", RANDOM_BETWEEN(1,5)],
			["mag", "RH_8Rnd_762_tt33", RANDOM_BETWEEN(1,5)],
			["mag", "RH_18Rnd_9x19_VP", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_USBasic":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder_mas_h", "ACE_SpottingScope", "ACE_Yardage450"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["ACE_optic_MRCO_2D", "ACE_optic_Arco_2D", "ACE_optic_Hamr_2D ", "ACE_optic_SOS_2D", "RH_m6x", "RH_x2", "optic_mas_Holosight_blk", "optic_mas_acog_eo", "optic_mas_acog_rd", "optic_mas_aim", "optic_mas_zeiss_eo"], RANDOM_BETWEEN(0,2)],
			["itm", ["RH_gemtech9", "RH_suppr9", "RH_gemtech45"], RANDOM_BETWEEN(0,3)],
			["wep", ["RH_g19t", "RH_p226", "hgun_mas_usp_F", "hgun_mas_m9_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["arifle_mas_mp5", "arifle_mas_m1014", "arifle_mas_m14", "arifle_mas_fal", "arifle_mas_fal_m203", "arifle_mas_g3", "arifle_mas_g3_m203", "arifle_mas_arx", "arifle_mas_arx_l", "arifle_mas_mk17", "arifle_mas_mk16", "arifle_mas_mk16_l", "arifle_mas_mk16_l_gl", "arifle_mas_mk16_gl", "arifle_mas_g36c", "arifle_mas_l119", "arifle_mas_l119c", "arifle_mas_m4", "arifle_mas_m16", "arifle_mas_hk416", "arifle_mas_hk416_m203",], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["LMG_mas_M240_F", "LMG_mas_M249_F", "arifle_mas_m27"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["wep", ["arifle_mas_lee", "arifle_mas_hk417c", "arifle_mas_mp40", "arifle_mas_sten"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", ["20Rnd_mas_762x51_Stanag", "30Rnd_mas_556x45_Stanag", "30Rnd_mas_9x21_Stanag", "30Rnd_9x21_Mag", "5Rnd_mas_762x51_Stanag",  ], RANDOM_BETWEEN(4,8)],
      ["mag", ["20Rnd_mas_12Gauge_Slug", "20Rnd_mas_12Gauge_Pellets", "20Rnd_mas_12Gauge_Demo", "7Rnd_mas_12Gauge_Slug", "7Rnd_mas_12Gauge_Pellets"], RANDOM_BETWEEN(4,8)],
			["mag", ["200Rnd_mas_556x45_Stanag", "150Rnd_mas_556x45_Stanag"], RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_762x51_Stanag", RANDOM_BETWEEN(4,8)],
			["mag", "17Rnd_mas_9x21_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "12Rnd_mas_45acp_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "RH_15Rnd_9x19_SIG", RANDOM_BETWEEN(1,5)],
			["mag", "RH_17Rnd_9x19_g17", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_RUBasic":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder", "ACE_MX2A", "ACE_SpottingScope", "ACE_Vector", "ACE_Yardage450"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["ACE_optic_MRCO_2D", "ACE_optic_Arco_2D", "ACE_optic_Hamr_2D ", "ACE_optic_SOS_2D", "optic_mas_PSO", "optic_mas_PSO_c", "optic_mas_PSO_eo", "optic_mas_PSO_eo_c", "optic_mas_PSO_day", "optic_mas_PSO_nv_day", "optic_mas_term", "optic_mas_kobra", "optic_mas_kobra_c"], RANDOM_BETWEEN(0,2)],
			["wep", ["hgun_mas_mak_F", "hgun_mas_grach_F", "hgun_mas_sa61_F", "hgun_mas_uzi_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["arifle_mas_m70", "arifle_mas_aks74u", "arifle_mas_aks74u_c", "arifle_mas_m70ab_gl", "arifle_mas_saiga", "arifle_mas_bizon", "arifle_mas_akms", "arifle_mas_akms_gl_c", "arifle_mas_akm", "arifle_mas_ak_74m_sf", "arifle_mas_ak_74m_sf_gl", "arifle_mas_aks_74_sf", "arifle_mas_aks_74_sf_gl", "arifle_mas_ak12_sf", "arifle_mas_ak12_sf_gl", "arifle_mas_ak_74m", "arifle_mas_ak74"], RANDOM_BETWEEN(1,7), RANDOM_BETWEEN(4,6)],
			["wep", ["LMG_mas_rpk_F", "LMG_mas_pkm_F", "LMG_mas_m72_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", ["30Rnd_mas_545x39_mag", "30Rnd_mas_762x39_mag"], RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_762x54_mag", RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_762x39_mag", RANDOM_BETWEEN(4,8)],
			["mag", "100Rnd_mas_545x39_mag", RANDOM_BETWEEN(4,8)],
			["mag", "25Rnd_mas_9x19_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "20Rnd_mas_765x17_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "17Rnd_mas_9x21_Mag", RANDOM_BETWEEN(1,5)],
			["mag", "8Rnd_mas_9x18_Mag", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_USSnipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_mas_lrr", "srifle_mas_lrr_sd", "srifle_mas_m107", "srifle_mas_m107_v"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["srifle_mas_m24", "srifle_mas_m24_v"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["Binocular", "Rangefinder", "ACE_Vector"], RANDOM_BETWEEN(1,3)],
			["itm", ["optic_mas_DMS", "optic_mas_DMS_c", "optic_mas_zeiss", "optic_mas_zeiss_c", "optic_mas_zeiss_eo", "optic_mas_LRPS"], RANDOM_BETWEEN(1,4)],
			["itm", ["muzzle_mas_snds_SH", "muzzle_mas_snds_SHc", "muzzle_mas_snds_SV", "muzzle_mas_snds_SVc"], RANDOM_BETWEEN(0,3)]
		];
	};
	case "mission_RUSnipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_mas_ksvk", "srifle_mas_ksvk_c", "srifle_mas_m91", "srifle_mas_vss"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["srifle_mas_svd", "arifle_mas_asval"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["Binocular", "Rangefinder", "ACE_Vector"], RANDOM_BETWEEN(1,3)],
			["itm", ["optic_mas_PSO", "optic_mas_PSO_c", "optic_mas_PSO_eo", "optic_mas_PSO_eo_c", "optic_mas_PSO_nv_eo", "optic_mas_PSO_nv_day", "optic_mas_PSO_kv_c"], RANDOM_BETWEEN(1,4)]
			["itm", ["muzzle_mas_snds_SVD", "muzzle_mas_snds_KSVK", "muzzle_mas_snds_AK"], RANDOM_BETWEEN(0,3)]
		];
	};
};

[_box, _boxItems] call processItems;
