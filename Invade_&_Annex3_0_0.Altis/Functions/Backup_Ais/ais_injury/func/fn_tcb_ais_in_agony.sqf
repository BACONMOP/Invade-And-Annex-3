private ["_unit","_in_agony","_side","_fa_action","_drag_action"];
_unit = (_this select 1) select 0;
_in_agony = (_this select 1) select 1;
_side = _unit getVariable "tcb_ais_side";
if (playerSide == _side) then {
	if (_in_agony) then {
		_unit playActionNow "agonyStart";
		if (local player) then {[side _unit,"HQ"] sideChat format ["%1 is down and needs help at %2!",name _unit, mapGridPosition _unit]};
		
		if (isNil {_unit getVariable ["fa_action", Nil]}) then {
				_fa_action = _unit addAction [format["<t color='#F00000'>First Aid to %1</t>",name _unit],{_this spawn tcb_fnc_firstAid},_unit,100,false,true,"",
				"{not isNull (_target getVariable _x)} count ['healer','dragger'] == 0 && {alive _target} && {vehicle _target == _target}
			"];
			_unit setVariable ["fa_action", _fa_action];
		};
		if (isNil {_unit getVariable ["drag_action", Nil]}) then {
			_drag_action = _unit addAction [format["<t color='#FC9512'>Drag %1</t>",name _unit],{_this spawn tcb_fnc_drag},_unit,99,false,true,"",
				"{not isNull (_target getVariable _x)} count ['healer','dragger','helper'] == 0 && {alive _target} && {vehicle _target == _target}
			"];
			_unit setVariable ["drag_action", _drag_action];
		};
		if (tcb_ais_medical_education >= 1) then {
			if (isNil {_unit getVariable ["help_action", Nil]}) then {
				_help_action = _unit addAction [format["<t color='#FC9512'>Press on the wound</t>",name _unit],{_this spawn tcb_fnc_help},_unit,98,false,true,"",
					"{not isNull (_target getVariable _x)} count ['healer','dragger','helper'] == 0 && {alive _target} && {vehicle _target == _target}
				"];
				_unit setVariable ["help_action", _help_action];
			};
		};
		[_unit] execFSM (TCB_AIS_PATH+"fsm\ais_marker.fsm");
	} else {
		if (tcb_ais_bloodParticle) then {[_unit] call tcb_fnc_resetBleeding};
		_unit playActionNow "agonyStop";
		
		_unit removeAction (_unit getVariable "fa_action");
		_unit removeAction (_unit getVariable "drag_action");
		_unit removeAction (_unit getVariable "carry_action");
		_unit removeAction (_unit getVariable "help_action");
		_unit setVariable ["fa_action",nil];
		_unit setVariable ["drag_action",nil];
		_unit setVariable ["carry_action",nil];
		_unit setVariable ["help_action",nil];
		if (!isNil {_unit getVariable "drag_action"}) then {
			_unit removeAction (_unit getVariable "drop_action");
			_unit setVariable ["drop_action",nil];
		};
		if (!isNil {_unit getVariable "carry_action"}) then {
			_unit removeAction (_unit getVariable "carry_action");
			_unit setVariable ["carry_action",nil];
		};
		if (!isNil {_unit getVariable "fa_action"}) then {
			_unit removeAction (_unit getVariable "fa_action");
			_unit setVariable ["fa_action",nil];
		};
		if (tcb_ais_medical_education >= 1) then {
			if (!isNil {_unit getVariable "help_action"}) then {
				_unit removeAction (_unit getVariable "help_action");
				_unit setVariable ["help_action",nil];
			};
		};
	};
};
