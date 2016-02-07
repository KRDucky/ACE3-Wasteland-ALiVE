// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isEngineer", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isEngineer = (["_engineer_", _unit] call fn_findString != -1);

_defaultVest = "V_mas_usr_Rangemaster_belt";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_mas_usd_B_founiform11_o" };
				if (_item == "vest") then { _result = _defaultVest };
				if (_item == "goggles") then { _result = "G_mas_wpn_wrap_g"};
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_mas_sfod_B_CombatUniform_wood_vest1" };
				if (_item == "vest") then { _result = "V_mas_usr_PlateCarrier2_rgr" };
				if (_item == "goggles") then { _result = "G_mas_wpn_mask" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_mas_sfod_B_CombatUniform_wood" };
				if (_item == "vest") then { _result = _defaultVest };
				if (_item == "goggles") then { _result = "G_mas_wpn_wrap_g" };
			};
		};

		if (_item == "headgear") then { _result = "H_mas_usn_helmet_ops_sf_h" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_mas_rus_O_GhillieSuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_mas_rus_O_Gorka_uniform_x" };
				if (_item == "vest") then { _result = "V_mas_rus_Sovarmor_she" };
				if (_item == "goggles") then { _result = "G_Balaclava_blk" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_mas_rus_O_Gorka_uniform_w" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_Shemag_olive" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_PMC_IndUniformRS_BSTPTB" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_PMC_RedPlaidShirt_DenimCords" };
				if (_item == "vest") then { _result = "V_PlateCarrierInd_PMC_grn" };
				if (_item == "goggles") then { _result = "G_Shades_Black" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_PMC_CombatUniformLS_GSSPBB" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_Cap_tan_pmc" };
	};
};

_result
