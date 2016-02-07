//ETG Heli Crash And Drop Script
if (isServer) then {
	diag_log "initializing CrashDrop";
	   fn_crashdrop = compile preprocessFile "addons\ETG\fn_crashdrop.sqf";
		 [2] call fn_crashdrop;
};
