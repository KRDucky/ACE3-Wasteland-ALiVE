// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_LightArmVeh.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"CUP_B_HMMWV_Avenger_USA",
		"CUP_B_HMMWV_MK19_USA",
		"CUP_B_HMMWV_SOV_USA",
		"CUP_I_Datsun_PK_TK",
		"CUP_O_LR_MG_TKA",
		"CUP_O_LR_SPG9_TKA"
	] call BIS_fnc_selectRandom;

	_missionType = "Light Armed Vehicle";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
