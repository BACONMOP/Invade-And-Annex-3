/*
@filename: fn_vSetup02.sqf
Author:

	???
	
Last modified:

	22/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	Apply code to vehicle
	vSetup02 deals with code that is already applied where it should be.
_______________________________________________*/

//============================================= CONFIG

private ["_u","_t"];

_u = _this select 0;
_t = typeOf _u;

if (isNull _u) exitWith {};

//============================================= ARRAYS

_ghosthawk = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"]; 			// ghosthawk
_strider = ["I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"];					// strider
_blackVehicles = [];															// black skin
_wasp = ["B_Heli_Light_01_F","B_Heli_Light_01_armed_F"];						// MH-9
_orca = ["O_Heli_Light_02_unarmed_F"];											// Orca
_mobileArmory = ["B_Truck_01_ammo_F"];											// Mobile Armory
_noAmmoCargo = ["B_APC_Tracked_01_CRV_F","B_Truck_01_ammo_F"];					// Bobcat CRV
_slingHeli = ["I_Heli_Transport_02_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];											// sling capable
_slingable = ["B_Heli_Light_01_F"];												// slingable
_notSlingable = ["B_Heli_Light_01_armed_F", "B_Heli_Attack_01_F"];				// not slingable
_dropHeli = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"]; 			// drop capable
_uav = ["B_UAV_02_CAS_F","B_UAV_02_F","B_UGV_01_F","B_UGV_01_rcws_F"];			// UAVs

//============================================= SORT

//===== Turret Lock

if (_t in _ghosthawk) then {
	_u setVariable ["turretL_locked",FALSE,TRUE];
	_u setVariable ["turretR_locked",FALSE,TRUE];
};


//===== black camo

if (_t in _blackVehicles) then {
	for "_i" from 0 to 9 do {_u setObjectTextureGlobal [_i,"#(argb,8,8,3)color(0,0,0,0.6)"];};
};

//===== strider nato skin

if (_t in _strider) then {
	_u setObjectTextureGlobal [0,'\A3\soft_f_beta\mrap_03\data\mrap_03_ext_co.paa'];
	_u setObjectTextureGlobal [1,'\A3\data_f\vehicles\turret_co.paa']; 
};

//===== aaf skin

if(_t in _wasp) then {
	_u setObjectTextureGlobal [0,'A3\Air_F\Heli_Light_01\Data\skins\heli_light_01_ext_digital_co.paa'];
};

//===== aaf skin

if(_t in _orca) then {
	_u setObjectTextureGlobal [0,'A3\Air_F\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa'];
};

//==== UAVs

if(_t in _uav) then {
	{deleteVehicle _x;} count (crew _u);
	[_u] spawn {
		_u = _this select 0;
		sleep 2;
		createVehicleCrew _u;
	};
};

//=== Zues
{_x addCuratorEditableObjects [[_u],FALSE];} count allCurators;