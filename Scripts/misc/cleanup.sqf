private ["_canDeleteGroup","_group","_groups","_units"];

while {true} do {
	sleep 480 + (random 240);
	{deleteVehicle _x;} count allDead;
	sleep 1;
	{deleteVehicle _x;} count (allMissionObjects "CraterLong");
	sleep 1;
	{deleteVehicle _x;} count (allMissionObjects "WeaponHolder");
	sleep 1;
	{deleteVehicle _x;} count (allMissionObjects "WeaponHolderSimulated");
	sleep 1;
	{if (!isPlayer _x) then {_x enableFatigue FALSE;};} count allUnits;
	{if ((count units _x) == 0) then {deleteGroup _x;};} count allGroups;
};


