/*
ADV_zeus script by Belbo
Makes most units placed in the editor and playable units editable by Zeus.
Call from init.sqf via:
if (isServer) then {[CURATORMODULENAME,true] execVM "ADV_zeus.sqf";};
*/

_curator = _this select 0;
_addCivilians = _this select 1;

//adds objects placed in editor:
_curator addCuratorEditableObjects [vehicles,true];
_curator addCuratorEditableObjects [(allMissionObjects "Man"),false];
_curator addCuratorEditableObjects [(allMissionObjects "Air"),true];
//_curator addCuratorEditableObjects [(allMissionObjects "Ammo"),false];
	
/*//makes all units continuously available to Zeus (for respawning players and AI that's being spawned by a script.)
while {true} do {
	_toAdd = if (!_addCivilians && {(side _x) == civilian}) then {false} else {true};
	{
		if (_toAdd) then {_curator addCuratorEditableObjects [[_x], true]};
	} forEach allUnits;
	_curator addCuratorEditableObjects [vehicles, true];
	sleep 10;
};*/


while {true} do {
			{
				_x addCuratorEditableObjects [allUnits,true];
				_x addCuratorEditableObjects [vehicles,true];
			} forEach [Z_Dexter,Z_Tony];
			sleep 10;
		};

if (true) exitWith {};



