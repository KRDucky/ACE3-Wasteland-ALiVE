// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
//_player linkItem "NVGoggles";

_player addBackpack "B_AssaultPack_rgr";

_player addItem "ACE_fieldDressing";
_player addItem "ACE_fieldDressing";
_player addItem "ACE_fieldDressing";
_player addItem "ACE_fieldDressing";
_player addItem "ACE_fieldDressing";
_player addItem "ACE_EarPlugs";
_player addItem "ACRE_PRC343";
_player addItem "ACE_morphine";
_player addItem "ACE_epinephrine";

switch (true) do
{

	case (side _player == independent):
	{
		_player addWeapon "GG_Weaponpack_M1_Garand";
		_player addMagazine "GG_M1_Garand_Magazine";
		_player addMagazine "GG_M1_Garand_Magazine";
		_player addMagazine "GG_M1_Garand_Magazine_Green";
		_player addMagazine "GG_M1_Garand_Magazine_Green";
		_player selectWeapon "GG_Weaponpack_M1_Garand";
		_player addMagazine "ACE_HandFlare_Green";
		_player addMagazine "ACE_HandFlare_Green";
		_player addMagazine "ACE_HandFlare_Green";
	};
};
switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
		_player addItem "ACE_bodybag";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MineDetector";
		_player addItem "Toolkit";
		_player addItem "ACE_wirecutter";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
		_player addItem "ACE_ATragMX";
		_player addItem "ACE_Kestrel4500";
		_player addItem "ACE_RangeCard";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
