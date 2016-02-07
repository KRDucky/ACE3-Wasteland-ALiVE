// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"CUP_O_T55_TK",
 	  "CUP_O_T72_TKA",
 	  "CUP_O_T72_RU",
 	  "CUP_B_T72_CDF",
 	  "CUP_B_M1A2_TUSK_MG_US_Army",
 	  "CUP_B_M1A1_Woodland_US_Army",
 	  "CUP_B_M1A1_Woodland_USMC",
 	  "CUP_B_M1A2_TUSK_MG_USMC",
 	  "CUP_B_LAV25_USMC",
 	  "SUD_M1A1",
 	  "SUD_M2A2",
		"SUD_T72B"


	] call BIS_fnc_selectRandom;

	_missionType = "Main Battle Tank";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
