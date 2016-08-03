#include "arsenalDefines.hpp"
// Made by Raz, data entry from Josh, Zissou and stuffed sheep Made on AhoyWorld this script features all magazines, most weapons, Nato backpacks, Nato items, Nato clothes. You may use this on your mission start, please keep us credited! Enjoy.
// _null = [this] execVM "scripts\VAserver.sqf";

if (!isServer) exitWith {};

private ["_box"];

_box = _this select 0;

["AmmoboxInit",[_box,false,{true}]] call BIS_fnc_arsenal;
private _availableItems = [] call derp_fnc_findItemList;
_availableItems = (((((((_availableItems - ArsenalWeaponBlacklist)  - ArsenalBlacklistedItems) - ArsenalBlacklistedUniforms) - ArsenalBlacklistedHelmets) - ArsenalBlacklistedGlasses) - ArsenalBlacklistedBackpacks) - ArsenalBlacklistedVests);
[_box, _availableItems, true] call BIS_fnc_addVirtualItemCargo;
[_box, _availableItems, true] call BIS_fnc_addVirtualWeaponCargo;
[_box, _availableItems, true] call BIS_fnc_addVirtualBackpackCargo;
[_box, _availableItems, true] call BIS_fnc_addVirtualMagazineCargo;
