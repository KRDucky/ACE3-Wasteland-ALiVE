if (!isDedicated) then { //preventing start on server
	waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned
    [{
      if (cameraView == "EXTERNAL") then {
            if ((vehicle player) == player && (weaponState player) select 0 != "") then {
                player switchCamera "INTERNAL";
            };
        };
    },1,[]] call CBA_fnc_addPerFrameHandler;
};