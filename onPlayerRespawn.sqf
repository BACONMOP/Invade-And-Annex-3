/*
@filename: onPlayerRespawn.sqf
Author:
	
	BACONMOP

Last modified:

	
Description:

	Client scripts that should execute after respawn.
______________________________________________________*/

private ["_iampilot"];

//=========================== Fatigue setting

if (PARAMS_Fatigue == 0) then {player enableFatigue FALSE;};

//=========================== Restrictions

if (PARAMS_RestrictedItems == 1) then {
	addActionRestrictions = '
		params ["_target", "", "", "", "_action", "", "", "", "", "", "_event"];
		[player, 0] call derp_fnc_gearLimitations;
		false
	';
	inGameUISetEventHandler ["Action", addActionRestrictions];
	inGameUISetEventHandler ["PrevAction", addActionRestrictions];
	inGameUISetEventHandler ["NextAction", addActionRestrictions];
};

//=========================== PILOTS ONLY

_pilots = ["B_pilot_F","B_helipilot_F"];
_iampilot = ({typeOf player == _x} count _pilots) > 0;
if (_iampilot) then {
	//===== UH-80 TURRETS
	if (PARAMS_UH80TurretControl != 0) then {
		inturretloop = false;
		UH80TurretAction = player addAction ["Turret Control",AW_fnc_uh80TurretControl,[],-95,false,false,'','[] call AW_fnc_conditionUH80TurretControl'];
	};
};

//======================Refueling with Repair spec and Engineer

FUELFUNC = {
   
ADDFUEL = player addAction ["<t color='#99ffc6'>Refuel Aircraft</t>",{
RF_BIRD = cursorTarget; publicVariable "RF_BIRD"; 
Current_fuel = fuel RF_BIRD; if (Current_fuel <= 0.1) then { Fuel_to_ADD = Current_fuel + 0.2; publicVariable "Fuel_to_ADD";
Send_Com = {RF_BIRD setFuel Fuel_to_ADD}; publicVariable "Send_Com";
remoteExecCall ["Send_Com",2]; cutText['Aircraft refuelled', 'PLAIN']; } else { cutText['Fuel not required', 'PLAIN'];  };
  
  },[],1,false,true,""," ((vehicle player) == player) && (CursorTarget isKindOf ""Air"" ) && ((player distance cursorTarget) < 10) "];
};

if (player isKindOf "B_soldier_repair_F") then {player call FUELFUNC;  } else {};
if (player isKindOf "B_engineer_F") then {player call FUELFUNC; } else {};



//======================= Add players to Zeus

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;