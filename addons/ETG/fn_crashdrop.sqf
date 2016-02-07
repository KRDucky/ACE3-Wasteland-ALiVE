/*
	Filename: 		fn_crashdrop.sqf
	Author: 		Kellojo
	Description: 	Heli crash and drop script main function - Part of the ETG script collection
	Link: 			http://www.armaholic.com/page.php?id=29519
*/

_mode = [_this, 0, 0, [0]] call BIS_fnc_param;

_time = 600;										//Time between every heli crash/supply drop in seconds (integer)
_markertp = "hd_unknown";							//Type of marker? (https://community.bistudio.com/wiki/cfgMarkers) (string - leave empty if no marker is wanted)
_fire = true;										//Should fire be around the helicrashsite ? (true/false)
_ai = true;											//AI? (true/false)
_mapcenter = [4998.7925,4991.8281];						//Edit this coordinate it should be roughly the center of the map you are playing on (this one is for Altis)
_centerrad = 6500;									//Radius around the _CenterOfMap (make sure its covering the whole map - Integer)
_rpt = true;										//Writes debug information to the rpt file. (true/false)

_MaxAmmount = 5;									//Ammount of Magazines and Items that can spawn at one lootpile
_MaxItem = 10;										//Max ammount of individual items
_MaxMag = 10;										//Max ammount of individual magazines
_MaxWeap = 10;										//Max ammount of individual weapons
_MaxBpack = 10;

//Add or remove item classnames to the array to add them to the loot table
_Backpacks = 		['B_HuntingBackpack', 'CUP_B_USMC_MOLLE'];
_Weapons = 			['hlc_rifle_M1903A1_unertl', 'hlc_rifle_M1903A1', 'hlc_rifle_RU556', 'hlc_rifle_RU5562', 'hlc_rifle_Colt727', 'hlc_rifle_Colt727_GL', 'hlc_rifle_bcmjack', 'hlc_rifle_Bushmaster300', 'hlc_rifle_vendimus', 'hlc_rifle_SAMR', 'hlc_rifle_honeybase', 'hlc_rifle_honeybadger', 'hlc_rifle_G36A1', 'hlc_rifle_G36A1AG36', 'hlc_rifle_G36KA1', 'hlc_rifle_G36C', 'hlc_rifle_G36E1', 'hlc_rifle_G36KE1', 'hlc_rifle_G36V', 'hlc_rifle_G36TAC', 'hlc_rifle_G36KTAC', 'hlc_rifle_G36CTAC', 'hlc_rifle_G36MLIC', 'hlc_rifle_G36KMLIC', 'hlc_smg_mp5k_PDW', 'hlc_smg_mp5a4', 'hlc_smg_mp510', 'hlc_smg_9mmar', 'hlc_smg_mp5sd6', 'hlc_smg_mp5n', 'hlc_smg_mp5a3', 'hlc_rifle_G36CMLIC', 'hlc_rifle_ak74', 'hlc_rifle_akm', 'hlc_rifle_ak12', 'hlc_rifle_aku12', 'hlc_rifle_rpk12', 'hlc_rifle_rpk74n', 'hlc_rifle_saiga12k', 'hlc_rifle_aek971', 'hlc_rifle_aug', 'hlc_rifle_auga1_B', 'hlc_rifle_auga1carb_b', 'hlc_rifle_aughbar_b', 'hlc_rifle_augpara_b', 'hlc_rifle_auga2_b', 'hlc_rifle_auga2carb_b', 'hlc_rifle_auga2lsw_b', 'hlc_rifle_auga2para_b', 'hlc_rifle_augsr_b', 'hlc_rifle_augsrcarb_b', 'hlc_rifle_augsrhbar_b', 'hlc_rifle_auga3_b', 'hlc_rifle_l1a1slr', 'hlc_rifle_SLR', 'hlc_rifle_STG58F', 'hlc_rifle_FAL5061', 'hlc_rifle_falosw', 'hlc_rifle_g3sg1', 'hlc_rifle_psg1', 'hlc_rifle_g3a3', 'hlc_rifle_g3ka4', 'hlc_rifle_hk51', 'hlc_rifle_hk53', 'hlc_rifle_M14', 'hlc_rifle_M21', 'hlc_rifle_M14DMR', 'hlc_rifle_m14sopmod', 'CUP_srifle_M107_Base', 'CUP_srifle_M40A3', 'CUP_srifle_M24_wdl', 'CUP_srifle_M24_ghillie', 'CUP_srifle_AWM_wdl', 'CUP_srifle_ksvk', 'CUP_srifle_AS50', 'GG_Weaponpack_M1_Garand', 'CUP_smg_EVO'];
_Items = 		  	['ACRE_PRC343','ACRE_PRC77','ACRE_PRC117f','ACRE_PRC152', 'ACE_optic_Hamr_2D', 'ACE_Vector', 'ACE_RangeCard', 'ACE_optic_SOS_2D', 'ACE_optic_LRPS_2D', 'ACE_MX2A', 'ACE_RangeTable_82mm', 'ACE_microDAGR', 'ACE_MapTools', 'ACE_wirecutter', 'ACE_acc_pointer_green_IR', 'ACE_acc_pointer_red', 'ACE_HuntIR_monitor', 'ACE_Kestrel4500', 'HLC_Optic_ZFSG1', 'hlc_muzzle_snds_G3', 'hlc_muzzle_snds_HK33', 'hlc_muzzle_762SUP_AK', 'hlc_muzzle_545SUP_AK', 'HLC_Optic_PSO1', 'HLC_Optic_G36Export35x', 'HLC_Optic_G36dualoptic35x', 'hlc_optic_LRT_m14', 'CUP_muzzle_snds_M110', 'CUP_muzzle_snds_G36_black', 'CUP_muzzle_snds_AWM', 'CUP_optic_TrijiconRx01_black', 'CUP_optic_LeupoldMk4_CQ_T', 'CUP_optic_LeupoldMk4_10x40_LRT_Woodland', 'CUP_optic_RCO', 'CUP_optic_CompM2_Woodland2', 'CUP_optic_Kobra', 'CUP_optic_LeupoldMk4', 'CUP_optic_CompM4'];
_magazines = 		['hlc_50rnd_762x51_M_M14', 'hlc_50rnd_762x51_M_G3', 'hlc_20Rnd_762x51_S_fal', 'hlc_50rnd_762x51_M_FAL', 'hlc_30Rnd_556x45_B_AUG', 'hlc_30Rnd_556x45_SOST_AUG', 'hlc_25Rnd_9x19mm_JHP_AUG', 'hlc_45Rnd_545x39_t_rpk', 'hlc_30Rnd_545x39_EP_AK', 'hlc_45Rnd_762x39_m_rpk', 'hlc_30Rnd_762x39_b_ak', 'hlc_10rnd_12g_buck_S12', 'hlc_VOG25_AK', 'hlc_30rnd_556x45_EPR_G36', 'hlc_100rnd_556x45_EPR_G36', 'hlc_30rnd_556x45_EPR', '29rnd_300BLK_STANAG', 'hlc_30rnd_556x45_SPR', 'hlc_5rnd_3006_1903', 'GG_M1_Garand_Magazine', 'GG_M1_Garand_Magazine_Green', 'CUP_5Rnd_86x70_L115A1', 'CUP_30Rnd_9x19_EVO', 'CUP_5Rnd_127x99_as50_M', 'CUP_5Rnd_762x51_M24', 'CUP_10Rnd_127x99_m107', 'CUP_5Rnd_127x108_KSVK_M', 'hlc_30Rnd_9x19_SD_MP5', 'hlc_30Rnd_9x19_GD_MP5', 'hlc_30Rnd_10mm_JHP_MP5'];
_aiunits = 			["O_Soldier_lite_F"];  			//Add or remove unit classnames for more or less ai

//random timer + calls in new drop/crash
if (_mode == 1) exitwith {
	sleep (round (random _time));
	[2] call fn_crashdrop;
};

//creates a drop/crash
if (_mode == 2) exitwith {

	//Get data
	_cord1 = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;
	sleep 0.5;
	_cord2 = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;
	sleep 0.5;
	_cord3 = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;
	sleep 0.5;
	_cord4 = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;
	sleep 0.5;
	_cord5 = [_mapcenter, 1, _centerrad, 3, 0, 600, 0] call BIS_fnc_findSafePos;

	//Spawn heli & cargo
	_veh = [[0,0,0], 180,"UH1H_Transport",EAST] call bis_fnc_spawnvehicle;
	_cargo = "B_CargoNet_01_ammo_F" createVehicle [0,0,0];
	_grp = group (_veh select 0);

	veh = _veh;
	cargo = _cargo;

	clearMagazineCargoGlobal _cargo;
	clearWeaponCargoGlobal _cargo;
	clearItemCargoGlobal _cargo;
	clearBackpackCargoGlobal _cargo;

	{
		_x disableAI "AUTOTARGET";
		_x disableAI "TARGET";
		_x disableAI "SUPPRESSION";
		removeBackpackGlobal _x;
		removeAllWeapons _x;
	} forEach units (_veh select 2);

	//Spawn loot
	_weapc = 0;
	_weapcount = round (random _MaxWeap);
	while {_weapc < _weapcount} do {
		sleep 0.1;
		_weapc = _weapc + 1;
		_curi = _Weapons call BIS_fnc_selectRandom;
		_ammount = 1;
		_mag = getArray (configFile / "CfgWeapons" / _curi / "magazines");
		_cargo addWeaponCargoGlobal [_curi,_ammount];
		_cargo addMagazineCargoGlobal [(_mag select 0),round random 8];
	};


	_magc = 0;
	_magcount = round (random _MaxMag);
	while {_magc < _magcount} do {
		sleep 0.1;
		_magc = _magc + 1;
		_curi = _magazines call BIS_fnc_selectRandom;
		_cargo addMagazineCargoGlobal [_curi,round (random 5)];
	};


	_ic = 0;
	_ic = round (random _MaxItem);
	while {_ic < _ic} do {
		sleep 0.1;
		_ic = _ic + 1;
		_curi = _Items call BIS_fnc_selectRandom;
		_ammount = 1;
		_cargo addItemCargoGlobal [_curi,_ammount];
	};


	_bpackc = 0;
	_backcount = round (random _MaxBpack);
	while {_bpackc < _backcount} do {
		sleep 0.1;
		_bpackc = _bpackc + 1;
		_curi = _Backpacks call BIS_fnc_selectRandom;
		_ammount = 1;
		_cargo addBackpackCargoGlobal [_curi,_ammount];
	};

	(_veh select 0) setSlingLoad _cargo;

	//Set waypoints
	ETG_tvehdrop = false;
	ETG_tvehcrash = false;

	_wp = _grp addWaypoint [_cord1, 0];
	_wp setWaypointType "move";
	_wp setWaypointBehaviour "CARELESS";
	(_veh select 0) flyInHeight 220;
	[_grp,1]setWaypointSpeed "FULL";

	_wp = _grp addWaypoint [_cord2, 0];
	_wp setWaypointType "move";
	_wp setWaypointBehaviour "CARELESS";
	_wp setWaypointStatements ['true', "ETG_tvehdrop = true;"];

	_wp = _grp addWaypoint [_cord3, 0];
	_wp setWaypointType "move";
	_wp setWaypointBehaviour "CARELESS";

	_wp = _grp addWaypoint [_cord4, 0];
	_wp setWaypointType "move";
	_wp setWaypointBehaviour "CARELESS";

	_wp = _grp addWaypoint [_cord5, 0];
	_wp setWaypointType "move";
	_wp setWaypointBehaviour "CARELESS";
	_wp setWaypointStatements ['true', "ETG_tvehcrash = true;"];

	waituntil {ETG_tvehdrop};

	//Unload
	(_veh select 0) flyInHeight 90;
	(_veh select 0) setSlingLoad objNull;
	_chute = "B_Parachute_02_F" createVehicle position _cargo;
	_cargo attachTo [_chute,[0, 0, -1.2]];

	_smoke = "SmokeShellRed" createVehicle position _cargo;
	_smoke attachto [_cargo,[0,0,0]];
	sleep 10;
	_smoke setDamage 1;
	deleteVehicle _smoke;

	_smoke = "SmokeShellRed" createVehicle position _cargo;
	_smoke attachto [_cargo,[0,0,0]];

	waituntil {(getPos _cargo select 2) < 4};
	detach _cargo;
	sleep 4;
	deleteVehicle _chute;
	_smoke = "SmokeShellRed" createVehicle position _cargo;
	_smoke attachto [_cargo,[0,0,0]];

	if (_rpt) then {
		diag_log "###ETG Heli Crash and Drop Script by Kellojo###";
		diag_log format ["###Cargodrop position: %1",position _cargo];
		diag_log "###End###";
	};

	if !(isNil "_markertp") then {
		_marker = createMarker ["",position _cargo];
		_marker setMarkerType _markertp;
	};

	if (_ai) then {
	_hcunits = [position _cargo, EAST, _aiunits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_hcg = group (leader _hcunits);
		_hcg addWaypoint [position	_cargo, 0];
		[_hcg, 0] setWaypointType "GUARD";
		[_hcg, 0] setWaypointBehaviour "AWARE";
		{
			removeBackpackGlobal _x;
			removeAllWeapons _x;
			_curW = _weapons call BIS_fnc_selectRandom;
			[_x,_curW, 5] call BIS_fnc_addWeapon;
		} forEach units _hcunits;
	};

	//Wait for crash & crash
	waituntil {ETG_tvehcrash  || (getDammage (_veh select 0) > 0.2)};
	(_veh select 0) setDamage 1;

	waituntil {(getPos (_veh select 0) select 2) < 1};
	sleep 10;

	_crashpos = position (_veh select 0);
	_crashrot = getDir (_veh select 0);
	sleep 2;
	deleteVehicle (_veh select 0);

	if !(isNil "_markertp") then {
		_marker = createMarker ["",_crashpos];
		_marker setMarkerType _markertp;
	};

	_cheli = createVehicle ["Land_Wreck_Heli_Attack_01_F",_crashpos,[], 0, "can_collide"];
	_cheli setDir _crashrot;
	_cheli setPos [position _cheli select 0,position _cheli select 1, 0.1];
	_cheli setVectorUp surfaceNormal position _cheli;
	_smokeeff = createVehicle ["test_EmptyObjectForSmoke",position _cheli,[], 0, "can_collide"];
	_smokeeff attachTo [_cheli, [0.5, -2, 1] ];
	_fireeff = createVehicle ["Campfire_burning_F",_crashpos,[], 0, "can_collide"];

	if (_ai) then {
		_hcunits = [position _cheli, EAST, _aiunits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_hcg = group (leader _hcunits);
		_hcg addWaypoint [position	_cargo, 0];
		[_hcg, 0] setWaypointType "GUARD";
		[_hcg, 0] setWaypointBehaviour "AWARE";
		{
			removeBackpackGlobal _x;
			removeAllWeapons _x;
			_curW = _weapons call BIS_fnc_selectRandom;
			[_x,_curW, 5] call BIS_fnc_addWeapon;
		} forEach units _hcunits;
	};

	if (_rpt) then {
		diag_log "###ETG Heli Crash and Drop Script by Kellojo###";
		diag_log format ["###Helicrash position: %1",_crashpos];
		diag_log "###End###";
	};

	_weapc = 0;
	_maxweapc = round (random _MaxWeap);
	_whold = createVehicle ["Box_IND_Wps_F",_crashpos,[], 25, "none"];
	clearMagazineCargoGlobal _whold;
	clearWeaponCargoGlobal _whold;
	clearItemCargoGlobal _whold;
	clearBackpackCargoGlobal _whold;
	while {_weapc < _maxweapc} do {
		_weapc = _weapc + 1;
		_curri = _Weapons call BIS_fnc_selectRandom;
		_Ammount = 1;
		_whold addWeaponCargoGlobal [_curri,_Ammount];
		_mag = getArray (configFile / "CfgWeapons" / _curri / "magazines");
		_whold addMagazineCargoGlobal [(_mag select 0),round random 6];
	};

	_magc = 0;
	_maxmagc = round (random _MaxMag);
	_whold = createVehicle ["Box_IND_Wps_F",_crashpos,[], 25, "none"];
	clearMagazineCargoGlobal _whold;
	clearWeaponCargoGlobal _whold;
	clearItemCargoGlobal _whold;
	clearBackpackCargoGlobal _whold;
	while {_magc < _maxmagc} do {
		_magc = _magc + 1;
		_curri = _magazines call BIS_fnc_selectRandom;
		_Ammount = round (random _MaxItem);

		_whold addMagazineCargoGlobal [_curri,_Ammount];
	};

	_ic = 0;
	_maxic = round (random _MaxItem);
	_whold = createVehicle ["Box_East_Grenades_F",_crashpos,[], 25, "none"];
	clearMagazineCargoGlobal _whold;
	clearWeaponCargoGlobal _whold;
	clearItemCargoGlobal _whold;
	clearBackpackCargoGlobal _whold;
	while {_ic < _maxic} do {
		_ic = _ic + 1;
		_curri = _Items call BIS_fnc_selectRandom;
		_Ammount = 1;
		_whold addItemCargoGlobal [_curri,_Ammount];
	};

	_bpackc = 0;
	_maxbpackc = round (random _MaxBpack);
	_whold = createVehicle ["Box_East_Grenades_F",_crashpos,[], 25, "none"];
	clearMagazineCargoGlobal _whold;
	clearWeaponCargoGlobal _whold;
	clearItemCargoGlobal _whold;
	clearBackpackCargoGlobal _whold;
	while {_bpackc < _maxbpackc} do {
		_bpackc = _bpackc + 1;
		_curri = _Backpacks call BIS_fnc_selectRandom;
		_Ammount = 1;
		clearBackpackCargoGlobal _whold;
		_whold addBackpackCargoGlobal [_curri,_Ammount];
	};

	[1] call fn_crashdrop;
};
