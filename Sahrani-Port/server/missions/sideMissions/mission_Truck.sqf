// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_Truck.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "sideMissionDefines.sqf"

private ["_nbUnits", "_vehicleClass", "_vehicle"];

_setupVars =
{
	_missionType = "Supply Truck";
	_locationsArray = MissionSpawnMarkers;
	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_setupObjects =
{
	_missionPos = markerPos _missionLocation;

	_vehicleClass =
	[
		"B_Truck_01_covered_F",
		"B_Truck_01_fuel_F",
		"B_Truck_01_medical_F",
		"B_Truck_01_Repair_F",
		"O_Truck_03_covered_F",
		"O_Truck_03_fuel_F",
		"O_Truck_03_medical_F",
		"O_Truck_03_repair_F",
		"CUP_B_Ural_Reammo_CDF",
		"CUP_B_Ural_Refuel_CDF",
		"CUP_B_Ural_Repair_CDF",
		"CUP_C_Ural_Civ_01",
		"CUP_C_Ural_Open_Civ_01",
		"CUP_O_Ural_Reammo_CHDKZ",
		"CUP_B_HMMWV_Terminal_USA",
		"CUP_B_HMMWV_Transport_USA",
		"SUD_TRUCK5t_OPEN",
		"SUD_TRUCK5t",
		"SUD_TRUCK5t_REPAIR",
		"SUD_TRUCK5t_REAMMO",
		"SUD_TRUCK5t_REFUEL",
		"SUD_URAL",
    "CUP_B_HMMWV_Ambulance_USA",
		"CUP_B_BRDM2_HQ_CDF",
		"CUP_O_UAZ_Unarmed_TKA",
		"CUP_O_Ural_Empty_TKA"
	] call BIS_fnc_selectRandom;

	// Class, Position, Fuel, Ammo, Damage, Special
	_vehicle = [_vehicleClass, _missionPos] call createMissionVehicle;
	_vehicle call fn_refilltruck;

	_aiGroup = createGroup CIVILIAN;
	[_aiGroup, _missionPos, _nbUnits] call createCustomGroup;

	_missionPicture = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "picture");
	_vehicleName = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");

	_missionHintText = format ["A <t color='%2'>%1</t> has been immobilized, go get it for your team.", _vehicleName, sideMissionColor];
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = {!alive _vehicle};

_failedExec =
{
	// Mission failed
	deleteVehicle _vehicle;
};

_successExec =
{
	// Mission completed
	_vehicle lock 1;
	_vehicle setVariable ["R3F_LOG_disabled", false, true];

	_successHintMessage = "The truck has been captured, well done.";
};

_this call sideMissionProcessor;
