// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"CUP_B_Mi171Sh_ACR",
		"CUP_B_Mi24_D_CDF",
		"CUP_B_Mi35_CZ",
	  "CUP_B_UH1Y_GUNSHIP_F",
		"CUP_B_UH60L_US",
	  "CUP_Merlin_HC3",
	  "CUP_O_Ka50_AA_SLA",
	  "CUP_O_Ka50_SLA",
	  "CUP_O_Mi24_P_RU",
	  "CUP_O_Mi24_V_RU",
	  "CUP_O_Mi8_RU",
	  "CUP_B_CH47F_USA",
		"CUP_B_AH1Z",
		"CUP_B_AH1Z_14RndHydrax",
		"CUP_B_AH1Z_7RndHydra",
		"CUP_B_AH1Z_AT",
		"CUP_B_AH1Z_Escort",
		"CUP_B_AH1Z_NOAA",
		"CUP_B_AH1Z_NoWeapons",
		"CUP_B_AH1_AT_BAF",
		"CUP_B_AH1_BAF",
		"CUP_B_AH1_ES_BAF",
		"CUP_B_AH1_MR_BAF",
		"CUP_B_AH1_NO_BAF",
		"CUP_B_AH64D_AT_USA",
		"CUP_B_AH64D_ES_USA",
		"CUP_B_AH64D_MR_USA",
		"CUP_B_AH64D_NO_USA",
		"CUP_B_AH64D_USA",
		"CUP_B_AW159_Armed_BAF",
	  "Cobra2",
	  "Cobra1",
	  "Cobra3",
	  "AH1W_2",
	  "AH1W",
	  "UH1C_HH",
	  "uh1h_Shark",
	  "uh1c_miniguns",
	  "UH1H_Gun",
	  "UH1C_XM16AS",
	  "UH1C_XM21AS",
	  "UH1H_Gunship",
	  "UH1H_LMG",
	  "UH1H_rockets",
	  "UH1H_Transport",
	  "UH1N_Gau_Gatling",
	  "UH1N_Bulletstorm",
	  "UH1N_Gunship",
	  "UH1N_Hydra",
	  "UH1N_TOW",
	  "UH1Y_TOW",
	  "UH1Y_Venom_50Cal",
	  "UH1Y_Venom"

	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
