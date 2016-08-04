/*
Author:

	BACONMOP

Description:

	Things that may run on both server.
	Deprecated initialization file.
______________________________________________________*/
enableSaving false;
artySorcher allowDamage False;
artyMLRS allowDamage False;
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};
AW_PARAM_MainEnemyFaction = "MainEnemyFaction" call BIS_fnc_getParamValue;
AW_PARAM_SecondaryEnemyFaction = "SecondaryEnemyFaction" call BIS_fnc_getParamValue;
[] call AW_fnc_factionDefine;

_mapSize = [configfile >> "cfgworlds" >> "Tanoa","mapSize"] call bis_fnc_returnConfigEntry;
_mapHalf = _mapSize / 2;
mapCent = [_mapHalf,_mapHalf,0];
publicVariable "mapCent";

artySorcher allowFleeing 0;
artyMLRS allowFleeing 0;
addMissionEventHandler ["HandleDisconnect", {
    _this params ["_unit", "", "", "_name"];
    if ("derp_revive" in (getMissionConfigValue "respawnTemplates")) then {
        _unit setVariable ["derp_revive_downed", false, true];
    };
}];
sleep 10;
execVM "Missions\Main\Main_Machine.sqf";																// Main Aos
//execVM "scripts\Encampments.sqf";																		// AA Encampments
execVM "Missions\Priority\MissionControl.sqf"															// Priority Missions
execVM "Missions\Side\MissionControl.sqf";																// Side Missions
execVM "scripts\misc\airbaseDefense.sqf";													// Airbase air defense
execVM "scripts\misc\cleanup.sqf";															// cleanup
execVM "scripts\misc\zeusupdater.sqf";														// zeus unit updater loop
adminCurators = allCurators;
enableEnvironment FALSE;

#include "defines\arsenalDefines.hpp"
[ArsenalBoxes, ("ArsenalFilter" call BIS_fnc_getParamValue)] call derp_fnc_VA_filter; // Init arsenal boxes.
