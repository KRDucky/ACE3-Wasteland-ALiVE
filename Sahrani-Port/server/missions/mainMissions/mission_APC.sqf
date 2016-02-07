// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"CUP_O_BTR60_TK",
		"CUP_O_BTR90_RU",
		"CUP_O_Ural_ZU23_TKA",
		"CUP_B_Dingo_Des",
		"CUP_B_Dingo_GL_Des",
		"CUP_B_LAV25M240_USMC",
		"CUP_B_HMMWV_Avenger_USA",
		"CUP_B_HMMWV_Avenger_USMC",
		"SUD_BRDM2",
		"CUP_I_BRDM2_ATGM_TK_Gue",
 	  "SUD_BTR60",
 	  "SUD_BMP2",
 	  "SUD_M113",
 	  "SUD_M163",
 	  "CUP_B_BRDM2_ATGM_CDF",
 		"CUP_B_BRDM2_CDF",
 	  "CUP_B_Dingo_GL_Wdl",
		"CUP_B_Dingo_Wdl",
		"CUP_B_LAV25_USMC",
 	  "CUP_B_M163_USA",
 	  "CUP_B_Ural_ZU23_CDF"
	] call BIS_fnc_selectRandom;

	_missionType = switch (true) do
	{
		case ({_vehicleClass isKindOf _x} count ["CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_Avenger_USA", "CUP_O_Ural_ZU23_TKA", "CUP_B_Ural_ZU23_CDF"] > 0): { "Anti Aircraft Vehicle" };
		case (_vehicleClass isKindOf "Tank_F"):                                                          { "Infantry Fighting Vehicle" };
		default                                                                                          { "Armored Personnel Carrier" };
	};

	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
