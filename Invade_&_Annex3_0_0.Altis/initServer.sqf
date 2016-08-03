/*
Author:
	
	BACONMOP
	
Description:

	Things that may run on both server.
	Deprecated initialization file.
______________________________________________________*/
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};
artySorcher allowFleeing 0;
artyMLRS allowFleeing 0;

sleep 10;
execVM "Missions\Main\Main_Machine.sqf";																// Main Aos
execVM "scripts\Encampments.sqf";																		// AA Encampments
execVM "Missions\Priority\MissionControl.sqf"															// Priority Missions
execVM "Missions\Side\MissionControl.sqf";																// Side Missions
execVM "scripts\misc\airbaseDefense.sqf";													// Airbase air defense
execVM "scripts\misc\cleanup.sqf";															// cleanup
execVM "scripts\misc\zeusupdater.sqf";														// zeus unit updater loop
adminCurators = allCurators;
enableEnvironment FALSE;
