// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	//RH Pistol Stuff
	["Desert Eagle", "RH_deagle", 100],
	["Desert Eagle Gold", "RH_deagleg", 100],
	["Desert Eagle Silver", "RH_deagles", 100],
	["Desert Eagle Modern", "RH_deaglem", 100],
	["CZ-75", "RH_cz75", 50],
	["S&W 659", "RH_sw659", 50],
	["USP", "RH_usp", 65],
	["Makarov", "RH_mak", 50],
	["M1911", "RH_m1911", 75],
	["Kimber 1911", "RH_kimber", 75],
	["Kimber 1911 NW", "RH_kimber_nw", 75],
	["USP Modern", "RH_uspm", 65],
	["M9", "RH_m9", 50],
	["M9 Compact", "RH_m9c", 50],
	["VZ-61", "RH_vz61", 50],
	["Glock 18", "RH_g18", 75],
	["Glock 17", "RH_g17", 50],
	["Tokarev TT33", "RH_tt33", 75],
	["MK-2", "RH_mk2", 25],
	["P-226", "RH_p226", 50],
	["P-226s", "RH_p226s", 50],
	["Glock 19", "RH_g19", 55],
	["Glock 19 Tactical", "RH_g19t", 55],
	["VP-70", "RH_vp70", 50],
	["Mateba", "RH_mateba", 100],
	["Colt Python", "RH_python", 100],
	["MP412", "RH_mp412", 100],
	["Taurus Raging Bull", "RH_bull", 100],
	["Taurus Raging Bull Black", "RH_bullb", 100],
	[".45 TTracker", "RH_ttracker", 50],
	[".45 TTracker ODG", "RH_ttracker_g", 50],
	["FNP 45", "RH_fnp45", 55],
	["FNP 45 Tactical", "RH_fnp45t", 55],
	["FN 5.7", "RH_fn57", 75],
	["FN 5.7 ODG", "RH_fn57_g", 75],
	["FN 5.7 Tactical", "RH_fn57_t", 75],
	["GSH-18", "RH_gsh18", 50],
	["Tec-9", "RH_tec9", 75],
	["Micro-Uzi", "RH_muzi", 75]
];

/*smgArray = compileFinal str[

];

rifleArray = compileFinal str[
// Rifles
["", "arifle_mas_lee", 125],

// Assault rifles
["", "arifle_mas_m14", 125],
["", "srifle_mas_ebr", 125],
["", "arifle_mas_ak12_sf", 125],
["", "arifle_mas_ak12_sf_gl", 125],
["", "arifle_mas_ak74", 125],
["", "arifle_mas_ak74_gl", 125],
["", "arifle_mas_ak_74m", 125],
["", "arifle_mas_ak_74m_c", 125],
["", "arifle_mas_ak_74m_gl", 125],
["", "arifle_mas_ak_74m_gl_c", 125],
["", "arifle_mas_ak_74m_sf", 125],
["", "arifle_mas_ak_74m_sf_c", 125],
["", "arifle_mas_ak_74m_sf_gl", 125],
["", "arifle_mas_ak_74m_sf_gl_c", 125],
["", "arifle_mas_akm", 125],
["", "arifle_mas_akm_gl", 125],
["", "arifle_mas_akms", 125],
["", "arifle_mas_akms_c", 125],
["", "arifle_mas_akms_gl", 125],
["", "arifle_mas_akms_gl_c", 125],
["", "arifle_mas_aks74", 125],
["", "arifle_mas_aks74_gl", 125],
["", "arifle_mas_aks_74_sf", 125],
["", "arifle_mas_aks_74_sf_gl", 125],
["", "arifle_mas_arx", 125],
["", "arifle_mas_arx_gl", 125],
["", "arifle_mas_arx_l", 125],
["", "arifle_mas_arx_l_gl", 125],
["", "arifle_mas_mp40", 125],
["", "arifle_mas_sten", 125],
["", "arifle_mas_fal", 125],
["", "arifle_mas_fal_m203", 125],
["", "arifle_mas_g3", 125],
["", "arifle_mas_g36c", 125],
["", "arifle_mas_g3_m203", 125],
["", "arifle_mas_g3s", 125],
["", "arifle_mas_g3s_m203", 125],
["", "arifle_mas_hk416", 125],
["", "arifle_mas_hk416_d", 125],
["", "arifle_mas_hk416_v", 125],
["", "arifle_mas_hk416_gl", 125],
["", "arifle_mas_hk416_gl_d", 125],
["", "arifle_mas_hk416_gl_v", 125],
["", "arifle_mas_hk416_m203", 125],
["", "arifle_mas_hk416_m203_d", 125],
["", "arifle_mas_hk416_m203_v", 125],
["", "arifle_mas_hk416_m203c", 125],
["", "arifle_mas_hk416_m203c_d", 125],
["", "arifle_mas_hk416_m203c_v", 125],
["", "arifle_mas_hk416c", 125],
["", "arifle_mas_hk416c_d", 125],
["", "arifle_mas_hk416c_v", 125],
["", "arifle_mas_hk417_m203c", 125],
["", "arifle_mas_hk417_m203c_d", 125],
["", "arifle_mas_hk417_m203c_v", 125],
["", "arifle_mas_hk417c", 125],
["", "arifle_mas_hk417c_d", 125],
["", "arifle_mas_hk417c_v", 125],
["", "arifle_mas_l119", 125],
["", "arifle_mas_l119_d", 125],
["", "arifle_mas_l119_gl", 125],
["", "arifle_mas_l119_gl_d", 125],
["", "arifle_mas_l119_gl_v", 125],
["", "arifle_mas_l119_m203", 125],
["", "arifle_mas_l119_m203_d", 125],
["", "arifle_mas_l119_m203_v", 125],
["", "arifle_mas_l119_v", 125],
["", "arifle_mas_l119c", 125],
["", "arifle_mas_l119c_d", 125],
["", "arifle_mas_l119c_v", 125],
["", "arifle_mas_m16", 125],
["", "arifle_mas_m16_gl", 125],
["", "arifle_mas_m27", 125],
["", "arifle_mas_m27_d", 125],
["", "arifle_mas_m27_v", 125],
["", "arifle_mas_m27m", 125],
["", "arifle_mas_m27m_d", 125],
["", "arifle_mas_m27m_v", 125],
["", "arifle_mas_m4", 125],
["", "arifle_mas_m4_d", 125],
["", "arifle_mas_m4_gl", 125],
["", "arifle_mas_m4_gl_d", 125],
["", "arifle_mas_m4_gl_v", 125],
["", "arifle_mas_m4_m203", 125],
["", "arifle_mas_m4_m203_d", 125],
["", "arifle_mas_m4_m203_v", 125],
["", "arifle_mas_m4_m203c", 125],
["", "arifle_mas_m4_m203c_d", 125],
["", "arifle_mas_m4_m203c_v", 125],
["", "arifle_mas_m4_v", 125],
["", "arifle_mas_m4c", 125],
["", "arifle_mas_m4c_d", 125],
["", "arifle_mas_m4c_v", 125],
["", "arifle_mas_m4vlt", 125],
["", "arifle_mas_m70", 125],
["", "arifle_mas_m70_gl", 125],
["", "arifle_mas_m70ab", 125],
["", "arifle_mas_m70ab_gl", 125],
["", "arifle_mas_mk16", 125],
["", "arifle_mas_mk16_gl", 125],
["", "arifle_mas_mk16_l", 125],
["", "arifle_mas_mk16_l_gl", 125],
["", "arifle_mas_mk17", 125],
["", "arifle_mas_mk17_gl", 125],

// Marksman rifles
["", "srifle_mas_hk417", 125],
["", "srifle_mas_hk417_d", 125],
["", "srifle_mas_hk417_v", 125],
["", "srifle_mas_mk17s", 125],
["", "srifle_mas_mk17s_h", 125],
["", "srifle_mas_mk17s_sd", 125],
["", "srifle_mas_sr25", 125],
["", "srifle_mas_sr25_d", 125],
["", "srifle_mas_sr25_d_h", 125],
["", "srifle_mas_sr25_d_sd", 125],
["", "srifle_mas_sr25_h", 125],
["", "srifle_mas_sr25_sd", 125],
["", "srifle_mas_sr25_v", 125],
["", "srifle_mas_sr25_v_h", 125],
["", "srifle_mas_sr25_v_sd", 125],
["", "srifle_mas_m110", 125],
["", "srifle_mas_m110_h", 125],
["", "srifle_mas_m110_sd", 125],

// Sniper rifles
["", "srifle_mas_vss", 125], // 39mm
["", "srifle_mas_vss_h", 125],
["", "srifle_mas_m24", 125], // 51mm
["", "srifle_mas_m24_d", 125],
["", "srifle_mas_m24_v", 125],
["", "srifle_mas_m91", 125], // 54mm
["", "srifle_mas_m91_l", 125],
["", "srifle_mas_svd", 125], // 54mm
["", "srifle_mas_svd_l", 125],
["", "srifle_mas_lrr", 125], // .338
["", "srifle_mas_m107", 125], // 99m
["", "srifle_mas_m107_d", 125],
["", "srifle_mas_m107_v", 125],
["", "srifle_mas_ksvk", 125], // 108mm
["", "srifle_mas_ksvk_c", 125]
];

lmgArray = compileFinal str
[
	["", "LMG_mas_M240_F", 125],
	["", "LMG_mas_M249_F", 125],
	["", "LMG_mas_M249_F_d", 125],
	["", "LMG_mas_M249_F_v", 125],
	["", "LMG_mas_M249a_F", 125],
	["", "LMG_mas_M60_F", 125],
	["", "LMG_mas_Mk200_F", 125],
	["", "LMG_mas_Mk48_F", 125],
	["", "LMG_mas_Mk48_F_d", 125],
	["", "LMG_mas_Mk48_F_v", 125],
	["", "LMG_mas_m72_F", 125],
	["", "LMG_mas_mg3_F", 125],
	["", "LMG_mas_pkm_F", 125],
	["", "LMG_mas_pech_F", 125],
	["", "LMG_mas_rpk_F", 125]
];

launcherArray = compileFinal str
[
	["", "mas_launch_LAW_F", 400],
	["", "mas_launch_M136_F", 400],
	["", "mas_launch_Metis_F", 400],
	["", "mas_launch_NLAW_F", 400],
	["", "mas_launch_RPG18_F", 400],
	["", "mas_launch_RPG7_F", 400],
	["", "mas_launch_TitanS_F", 400],
	["", "mas_launch_maaws_F", 400],
	["", "mas_launch_pzf60_F", 400],
	["", "mas_launch_smaw_F", 400],
	["", "mas_launch_Stinger_F", 400],
	["", "mas_launch_Strela_F", 400]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str[
	["ZU23 AA (AAF)", "I_mas_ZU23_AAF", 3000],
	["ZU23 AA (RU)", "O_mas_ZU23_AAF", 3000],
	["ZU23 AA (PMC)", "B_mas_ZU23_FIA", 3000],
	["DSHkM .50 (AAF)", "I_mas_DSHKM_AAF", 2000],
	["DSHkM .50 (RU)", "O_mas_DSHKM_AAF", 2000],
	["DSHkM .50 (PMC)", "B_mas_DSHKM_FIA", 2000],
	["DSHkM .50 Low tripod (AAF)", "I_mas_DSHkM_Mini_TriPod", 2000],
	["DSHkM .50 Low tripod (RU)", "O_mas_DSHkM_Mini_TriPod", 2000],
	["DSHkM .50 Low tripod (PMC)", "B_mas_DSHkM_Mini_TriPod_FIA", 2000],
	["KORD .50 (AAF)", "I_mas_KORD_AAF", 2000],
	["KORD .50 (RU)", "O_mas_KORD_AAF", 2000],
	["KORD .50 High tripod (AAF)", "I_mas_KORD_high_AAF", 2000],
	["KORD .50 High tripod (RU)", "O_mas_KORD_high_AAF", 2000],
	["AGS (AAF)", "I_mas_AGS_AAF", 2000],
	["AGS (RU)", "O_mas_AGS_AAF", 2000],
	["AGS (PMC)", "B_mas_AGS_FIA", 2000],
	["GMG (AAF)", "I_mas_GMG_AAF", 2000],
	["GMG (PMC)", "B_mas_GMG_AAF", 2000],
	["M2 .50 (AAF)", "I_mas_M2StaticMG_AAF", 2000],
	["M2 .50 (NATO)", "B_mas_M2StaticMG_AAF", 2000],
	["M2 .50 (PMC)", "B_mas_M2StaticMG_FIA", 2000],
	["M2 .50 Low tripod (AAF)", "I_mas_M2StaticMG_MiniTripod_AAF", 2000],
	["M2 .50 Low tripod (NATO)", "B_mas_M2StaticMG_MiniTripod_AAF", 2000],
	["M2 .50 Low tripod (PMC)", "B_mas_M2StaticMG_MiniTripod_FIA", 2000],
	["Mk 19 (AAF)", "I_mas_MK19_TriPod_AAF", 2000],
	["Mk 19 (NATO)", "B_mas_MK19_TriPod_AAF", 2000],
	["Metis (AAF)", "I_mas_Metis_AAF", 2500],
	["Metis (RU)", "O_mas_Metis_AAF", 2500],
	["Metis (PMC)", "B_mas_Metis_FIA", 2500],
	["SPG-9", "I_mas_SPG9_AAF", 1500],
	["SPG-9", "O_mas_SPG9_AAF", 1500],
	["SPG-9", "B_mas_SPG9_FIA", 1500],
	["IGLA AA", "I_mas_Igla_AA_pod_AAF", 2500],
	["IGLA AA", "O_mas_Igla_AA_pod_AAF", 2500],
	["Stinger AA", "I_mas_Stinger_AA_pod_AAF", 2500],
	["Stinger AA", "B_mas_Stinger_AA_pod_AAF", 2500],
	["Stinger AA", "B_mas_Stinger_AA_pod_FIA", 2500],
	["TOW", "I_mas_TOW_TriPod_AAF", 2500],
	["TOW", "B_mas_TOW_TriPod_AAF", 2500],
	["82mm Mortar", "I_mas_2b14_82mm_AAF", 3500],
	["82mm Mortar", "O_mas_2b14_82mm_AAF", 3500],
	["82mm Mortar", "B_mas_2b14_82mm_FIA", 3500],
	["M252 Mortar", "I_mas_M252_AAF", 3500],
	["M252 Mortar", "B_mas_M252_AAF", 3500]
];*/

throwputArray = compileFinal str[
	["Mini Grenade", "MiniGrenade", 50],
	["Frag Grenade", "HandGrenade", 100],
	["APERS TripMine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Claymore", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["SLAM", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["C4", "DemoCharge_Remote_Mag", 450],
	["Satchel Charge", "SatchelCharge_Remote_Mag", 500],
	["Handflare White", "ACE_HandFlare_White", 25],
	["Handflare Red", "ACE_HandFlare_Red", 25],
	["Handflare Green", "ACE_HandFlare_Green", 25],
	["Handflare Yellow", "ACE_HandFlare_Yellow", 25],
	["M84 Flashbang", "ACE_M84", 30],
	["", "SmokeShell", 50],
	["", "SmokeShellPurple", 50],
	["", "SmokeShellBlue", 50],
	["", "SmokeShellGreen", 50],
	["", "SmokeShellYellow", 50],
	["", "SmokeShellOrange", 50],
	["", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[

	// RH Pistol ammo
  ["", "RH_7Rnd_50_AE", 50],
	["", "RH_16Rnd_9x19_cz", 50],
	["", "RH_14Rnd_9x19_sw", 50],
	["", "RH_12Rnd_45cal_usp", 50],
	["", "RH_8Rnd_9x18_Mak", 50],
	["", "RH_7Rnd_45cal_m1911", 50],
	["", "RH_16Rnd_40cal_usp", 50],
	["", "RH_15Rnd_9x19_M9", 50],
	["", "RH_20Rnd_32cal_vz61", 50],
	["", "RH_33Rnd_9x19_g18", 50],
	["", "RH_17Rnd_9x19_g17", 50],
	["", "RH_8Rnd_762_tt33", 50],
	["", "RH_10Rnd_22LR_mk2", 50],
	["", "RH_15Rnd_9x19_SIG", 50],
	["", "RH_18Rnd_9x19_VP", 50],
	["", "RH_6Rnd_44_Mag", 50],
	["", "RH_6Rnd_357_Mag", 50],
	["", "RH_6Rnd_454_Mag", 50],
	["", "RH_6Rnd_45ACP_Mag", 50],
	["", "RH_15Rnd_45cal_fnp", 50],
	["", "RH_20Rnd_57x28_FN", 50],
	["", "RH_18Rnd_9x19_gsh", 50],
	["", "RH_32Rnd_9x19_tec", 50],
	["", "RH_30Rnd_9x19_UZI", 50],
  	// End RH Pistol Ammo
	  //ACE3 ammo
	["", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", 50],
	["", "ACE_30Rnd_556x45_Stanag_Mk262_mag", 50],
	["", "ACE_30Rnd_556x45_Stanag_Mk318_mag", 50],
	["", "ACE_30Rnd_556x45_Stanag_Tracer_Dim", 50],
	["", "ACE_20Rnd_762x51_Mag_Tracer", 50],
	["", "ACE_20Rnd_762x51_Mag_Tracer_Dim", 50],
	["", "ACE_20Rnd_762x51_Mag_SD", 50],
	["", "ACE_10Rnd_762x51_M118LR_Mag", 50],
	["", "ACE_10Rnd_762x51_Mk316_Mod_0_Mag", 50],
	["", "ACE_10Rnd_762x51_Mk319_Mod_0_Mag", 50],
	["", "ACE_10Rnd_762x51_M993_AP_Mag", 50],
	["", "ACE_20Rnd_762x51_M118LR_Mag", 50],
	["", "ACE_20Rnd_762x51_Mk316_Mod_0_Mag", 50],
	["", "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", 50],
	["", "ACE_20Rnd_762x51_M993_AP_Mag", 50],
	["", "ACE_20Rnd_762x67_Mk248_Mod_0_Mag", 50],
	["", "ACE_20Rnd_762x67_Mk248_Mod_1_Mag", 50],
	["", "ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag", 50],
	["", "ACE_10Rnd_338_300gr_HPBT_Mag", 50],
	["", "ACE_10Rnd_338_API526_Mag", 50],
	["", "ACE_5Rnd_127x99_Mag", 50],
	["", "ACE_5Rnd_127x99_API_Mag", 50],
	["", "ACE_5Rnd_127x99_AMAX_Mag", 50],
	["", "ACE_30Rnd_9x19_mag", 50],
	["", "ACE_16Rnd_9x19_mag", 50],
	["", "ACE_10Rnd_762x54_Tracer_mag", 50],
	["", "ACE_HuntIR_M203", 50],
			// End ACE3 Ammo
	["", "NLAW_F", 50],
	["", "RPG32_mas_AA_F", 50],
	["", "Sting_mas_AA_F", 50],
	["", "Titan_AP", 50],
	["", "Titan_AT", 50],
	["", "UGL_FlareCIR_F", 50],
	["", "UGL_FlareGreen_F", 50],
	["", "UGL_FlareRed_F", 50],
	["", "UGL_FlareWhite_F", 50],
	["", "UGL_FlareYellow_F", 50]

];


//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
			// RH Stuff
  ["", "RH_muzisd", 25, "item"],
	["", "RH_tecsd", 50, "item"],
	["", "RH_x300", 25, "item"],
	["", "RH_sfn57", 50, "item"],
	["", "RH_x2", 25, "item"],
	["", "RH_m6x", 25, "item"],
	["", "RH_docter", 50, "item"],
	["", "RH_osprey", 50, "item"],
	["", "RH_gemtech45", 50, "item"],
	["", "RH_vp70stock", 25, "item"],
	["", "RH_gemtech9", 50, "item"],
	["", "RH_suppr9", 50, "item"],
	["", "RH_m9qd", 25, "item"],
	["", "RH_matchsd", 50, "item"],
	["", "RH_pmir", 25, "item"],
	["", "RH_pmsd", 50, "item"],
	["", "RH_fhusp", 25, "item"],
	["", "RH_aacusp", 50, "item"],
	["", "RH_A26", 25, "item"],
	["", "RH_demz", 25, "item"],
	// Bipods
	["Bipod (NATO)", "bipod_01_F_blk", 250, "item"],
	["Bipod (CSAT)", "bipod_02_F_blk", 250, "item"],
	["Bipod (AAF)", "bipod_03_F_blk", 250, "item"],
	["Bipod (MTP)", "bipod_01_F_mtp", 250, "item"],
	["Bipod (Hex)", "bipod_02_F_hex", 250, "item"],
	["Bipod (Olive)", "bipod_03_F_oli", 250, "item"],
	["Bipod (Sand)", "bipod_01_F_snd", 250, "item"],
	["Bipod (Tan)", "bipod_02_F_tan", 250, "item"],
	["Flashlight", "acc_flashlight", 25, "item"],
	// Laser pointers
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	// ACE Gear
	["Red Laser", "ACE_acc_pointer_red", 25, "item"],
	["Green Laser", "ACE_acc_pointer_green", 25, "item"],
	["Green Laser w/ IR Laser", "ACE_acc_pointer_green_IR", 30, "item"],
	["MRCO (2D)", "ACE_optic_MRCO_2D", 100, "item"],
	["ARCO (2D)", "ACE_optic_Arco_2D", 125, "item"],
	["RCO (2D)", "ACE_optic_Hamr_2D", 150, "item"],
	["MOS (2D)", "ACE_optic_SOS_2D", 150, "item"],
	["LRPS (2D)", "ACE_optic_LRPS_2D", 300, "item"],
  // Stock Gear
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["DMS", "optic_DMS", 175, "item"],
	["AMS [DLC]", "optic_AMS", 200, "item"],
	["AMS (Khaki) [DLC]", "optic_AMS_khk", 200, "item"],
	["AMS (Sand) [DLC]", "optic_AMS_snd", 200, "item"],
	["Kahlia [DLC]", "optic_KHS_blk", 250, "item"],
	["Kahlia (Hex) [DLC]", "optic_KHS_hex", 250, "item"],
	["Kahlia (Tan) [DLC]", "optic_KHS_tan", 250, "item"],
	["Kahlia (Old) [DLC]", "optic_KHS_old", 250, "item"],
	["NVS", "optic_NVS", 500, "item"],
	["TWS", "optic_tws", 5000, "item"],
	["TWS MG", "optic_tws_mg", 6000, "item"],
	["Nightstalker", "optic_Nightstalker", 7500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str[
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	["Beret (Green)", "H_Beret_grn", 10, "hat"],
	["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	["Beret (Red)", "H_Beret_red", 10, "hat"],
  ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	["Black Turban", "H_TurbanO_blk", 50, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 300, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 300, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 2000, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

		//ACE
	["Tactical Ladder Pack", "ACE_TacticalLadder_Pack", 150, "backpack"],
	["Reserve Chute", "ACE_ReserveParachute", 150, "backpack"],
	["Parachute (non-steerable)", "ACE_NonSteerableParachute", 200, "backpack"]
];

genItemArray = compileFinal str[
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 500, "backpack"],
	["Remote Designator Bag (NATO) [DLC]", "B_Static_Designator_01_weapon_F", 1000, "backpack"],
	["Remote Designator Bag (CSAT) [DLC]", "O_Static_Designator_02_weapon_F", 1000, "backpack"],
	["Sandbag (empty)", "ACE_Sandbag_empty", 10, "item"],
	["", "ACE_fieldDressing", 25, "item"],
	["", "ACE_morphine", 100 ,"item"],
	["", "ACE_epinephrine", 100, "item"],
	["", "ACE_bloodIV", 250, "item"],
	//["", "ACE_salineIV", 100, "item"],
	//["", "ACE_salineIV_500", 50, "item"],
	//["", "ACE_salineIV_250", 25, "item"],
	["", "ACE_EarPlugs", 10, "item"],
	["", "ACE_UAVBattery", 50, "item"],
	["", "ACE_microDAGR", 120, "gps"],
	["", "ACE_MX2A", 150, "binoc"],
	["", "ACE_bodybag", 1, "item"],
	["GPS", "ItemGPS", 100, "gps"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles", "NVGoggles", 100, "nvg"],
	["", "ACE_ATragMX", 50, "item"],
	["", "ACE_NVG_Gen1", 100, "nvg"],
	["", "ACE_NVG_Gen2", 150, "nvg"],
	["", "ACE_NVG_Gen4", 250, "nvg"],
	["", "ACE_NVG_Wide", 300, "nvg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["", "ACE_Vector", 150, "binoc"],
	["", "ACE_Clacker", 25, "item"],
	["", "ACE_M26_Clacker", 25, "item"],
	["", "ACE_DefusalKit", 50, "item"],
	["", "ACE_DeadManSwitch", 100, "item"],
	["", "ACE_Cellphone", 50, "item"],
	["", "ACE_Altimeter", 25, "item"],
	["", "ACE_RangeCard", 25, "item"],
	["", "ACE_Kestrel4500", 50, "item"],
	["", "ACE_HuntIR_monitor", 100, "item"],
	["", "ACE_DAGR", 150, "item"],
	["", "ACE_MapTools", 25, "item"],
	["", "ACE_SpareBarrel", 100, "item"],
	["", "ACE_wirecutter", 50, "item"],
	["", "ACE_IR_Strobe_Item", 5, "item"],
	["", "ACE_Vector", 200, "binoc"],
	["", "ACE_SpottingScope", 100, "item"],
	["", "ACE_Tripod", 100, "item"],
	["", "ACE_Yardage450", 150, "binoc"],
	["", "ACRE_PRC343", 20, "item"],
	["", "ACRE_PRC77", 50, "item"],
	["", "ACRE_PRC117f", 100, "item"],
	["", "ACRE_PRC152", 150, "item"],
	["", "ACRE_PRC148", 150, "item"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator", "Laserdesignator", 1000, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str[
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	["", "ACE_HuntIR_Box", 250, "ammocrate"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str[
	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Typhoon Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Typhoon Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Typhoon Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Typhoon Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Typhoon Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Typhoon Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Typhoon Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["KamAZ Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["KamAZ Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["KamAZ Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["KamAZ Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["KamAZ Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["KamAZ Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["", "B_MRAP_01_F", 4000, "vehicle"],
	["", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["", "O_MRAP_02_F", 4000, "vehicle"],
	["", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["", "I_MRAP_03_F", 4000, "vehicle"],
	["", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
];

tanksArray = compileFinal str
[
	["", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	["", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["", "B_Heli_Attack_01_F", 50000, "vehicle"], // RAH-66 with gunner
	["", "O_Heli_Attack_02_F", 60000, "vehicle"], // Mi-28 with gunner
	["", "O_Heli_Attack_02_black_F", 60000, "vehicle"] // Mi-28 with gunner (black camo)
];

planesArray = compileFinal str
[
	["", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["", "B_UAV_02_F", 20000, "vehicle"],
	["", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["", "O_UAV_02_F", 20000, "vehicle"],
	["", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["", "I_UAV_02_F", 20000, "vehicle"],
	["", "I_UAV_02_CAS_F", 10000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
