// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_CivHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass = ["I_Heli_Transport_02_F", "UH1Y_FFV", "UH1H_Transport", "UH1H_FFV", "UH1H_Closed", "Bell412", "CUP_Merlin_HC3_FFV", "CUP_B_UH60L_FFV_US", "CUP_B_Mi171Sh_Unarmed_ACR", "CUP_B_MV22_USMC", "CUP_B_MH60S_FFV_USMC", "CUP_B_CH53E_USMC", "CUP_B_AW159_Unarmed_BAF", "B_Heli_Transport_03_unarmed_F", "O_Heli_Transport_04_bench_F"] call BIS_fnc_selectRandom;

	_missionType = "Transport Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
