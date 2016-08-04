/*
 * Author: BACONMOP
 * For new Spawned bases
 *
 *
 */

_base = _this select 0;


// Respawn Position -------------------------------

_baseRespawnMarker = (missionconfigfile >> "Main_Aos" >> "AOs" >> _base >> "respawnPos") call BIS_fnc_getCfgData;
_respawnMarkerPos = getMarkerPos _baseRespawnMarker;
_respawnMarker = [west, _respawnMarkerPos] call BIS_fnc_addRespawnPosition;
_basevisMarker = (missionconfigfile >> "Main_Aos" >> "AOs" >> _base >> "visMrkr") call BIS_fnc_getCfgData;
{_x setMarkerPos (getMarkerPos _baseRespawnMarker);} forEach [_basevisMarker];
sleep 1;

_arsenal = "B_CargoNet_01_ammo_F" createVehicle (getMarkerPos _baseRespawnMarker);
clearItemCargoGlobal _arsenal;
clearWeaponCargoGlobal _arsenal;
clearBackpackCargoGlobal _arsenal;
[[_arsenal], ("ArsenalFilter" call BIS_fnc_getParamValue)] call derp_fnc_VA_filter;
_arsenal addAction ["<t color='#009ACD'>Teleport To Main Base</t>","[player,'BASE'] remoteExec ['AW_fnc_baseTeleport',2];"];
_arsenal addAction ["<t color='#009ACD'>Teleport To ROB Eagle</t>","[player,'Tuvanaka_Airbase'] remoteExec ['AW_fnc_baseTeleport',2];"];
_arsenal addAction ["<t color='#009ACD'>Teleport To FOB Fin</t>","[player,'Lijnhaven'] remoteExec ['AW_fnc_baseTeleport',2];"];
_arsenal addAction ["<t color='#009ACD'>Teleport To FOB Comms Bravo</t>","[player,'Abandoned_Mine'] remoteExec ['AW_fnc_baseTeleport',2];"];
_arsenal addAction ["<t color='#009ACD'>Teleport To FOB Terminus</t>","[player,'Int_Airport'] remoteExec ['AW_fnc_baseTeleport',2];"];

// Markers ----------------------------------------

_targetStartText = format
	[
		"<t align='center' size='2.2'>Base Taken</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>Good Job. We have now setup a base at that location.<br/><br/>We have provided you with some vehicles at that location"
	];
[_targetStartText] remoteExec ["AW_fnc_globalHint",0,false];


// Vehicles ---------------------------------------

_baseVehicles = (missionconfigfile >> "Main_Aos" >> "AOs" >> _base >> "vehicles") call BIS_fnc_getCfgData;
{
	_veh = _x select 0;
	_mkr = _x select 1;
	_vehicle = _veh createVehicle getMarkerPos _mkr;
	_vehicle setDir (MarkerDir _mkr);
	_timer = _x select 2;
	0 = [_vehicle,_timer,FALSE,AW_fnc_vSetup02,_base] spawn AW_fnc_vBaseMonitor;
}forEach _baseVehicles;


/*
Removed until Defend AOs is finished.
// Base Lost --------------------------------------

waitUntil {sleep 5;!(_base in controlledZones)};

_targetStartText = format
	[
		"<t align='center' size='2.2'>Base Lost</t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t><br/>____________________<br/>The enemy have taken the base.<br/><br/>We cannot use that location anymore until we take it back."
	];
[_targetStartText] remoteExec ["AW_fnc_globalHint",0,false];

deleteVehicle _arsenal;
_respawnMarker call BIS_fnc_removeRespawnPosition;
*/
