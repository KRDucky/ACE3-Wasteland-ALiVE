// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_VehicleCapture.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, JoSchaap, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicle", "_vehicleName", "_vehDeterminer"];

// setupVars must be defined in the top mission file

_setupObjects =
{
	_missionPos = markerPos _missionLocation;

	// Class, Position, Fuel, Ammo, Damage, Special
	_vehicle = [_vehicleClass, _missionPos] call createMissionVehicle;

	switch (true) do
	{
		// GMG MRAPs
		/*case ({ _vehicle isKindOf _x } count ["MRAP_01_gmg_base_F","MRAP_02_gmg_base_F","MRAP_03_gmg_base_F"] > 0):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce grenades to 50
			_vehicle removeMagazines "96Rnd_40mm_G_belt";
			_vehicle addMagazine ["96Rnd_40mm_G_belt", 50];
		};*/

		// AMV-7 Marshall
		case (_vehicle isKindOf "CUP_O_BTR60_TK"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce all shells and MG ammo, reset smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// AFV-4 Gorgon
		case (_vehicle isKindOf "SUD_BMP2"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce all shells and MG ammo, reset AT missiles and smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// BTR-K Kamysh
		case (_vehicle isKindOf "CUP_O_T55_TK"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce all shells and MG ammo, reset AT missiles and smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// FV-720 Mora
		case (_vehicle isKindOf "CUP_O_BRDM2_TKA"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce all shells and MG ammo, reset smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// M2A4 Slammer UP
		case (_vehicle isKindOf "CUP_O_T72_TKA"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce AP shells & MG ammo, reset HE shells and smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// M2A1 Slammer
		case (_vehicle isKindOf "CUP_O_BM21_TKA"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce AP shells & MG ammo, reset HE shells and smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// T-100 Varsuk
		case (_vehicle isKindOf "CUP_B_AAV_USMC"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce all shells & MG ammo, reset smoke mags

			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// MBT-52 Kuma
		case (_vehicle isKindOf "CUP_B_M163_USA"):
		{
			_vehicle setVehicleAmmoDef 1;

			// Reduce AP shells & MG ammo, reset HE shells and smoke mags
			_vehicle addMagazineTurret ["SmokeLauncherMag", [0,0]];
			_vehicle setVehicleAmmo 0.5;
		};

		// PO-30 Orca
		case (_vehicle isKindOf "UH1C"):
		{
			// Reset all ammo
			_vehicle setVehicleAmmoDef 1;
		};

		// Mi-48 Kajman
		case (_vehicle isKindOf "UH1H_Gunship"):
		{
			_vehicle setVehicleAmmo 0;

		};

		// All other helicopters
		case (_vehicle isKindOf "UH1H_FFV"):
		{
			// Cut all ammo by half
			_vehicle setVehicleAmmoDef 0.5;
		};
	};

	// Reset all flares to 120
	if (_vehicleClass isKindOf "Air") then
	{
		{
			if (["CMFlare", _x] call fn_findString != -1) then
			{
				_vehicle removeMagazinesTurret [_x, [-1]];
			};
		} forEach getArray (configFile >> "CfgVehicles" >> _vehicleClass >> "magazines");

		_vehicle addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];
	};

	reload _vehicle;

	_aiGroup = createGroup CIVILIAN;
	[_aiGroup, _missionPos, _nbUnits] call createCustomGroup;

	_missionPicture = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "picture");
	_vehicleName = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");

	_vehDeterminer = if ("AEIMO" find (_vehicleName select [0,1]) != -1) then { "An" } else { "A" };

	_missionHintText = format ["%1 <t color='%3'>%2</t> has been immobilized, go get it for your team!", _vehDeterminer, _vehicleName, mainMissionColor];
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

	_successHintMessage = format ["The %1 has been captured, well done.", _vehicleName];
};

_this call mainMissionProcessor;
