//Hide markers
{_x setMarkerAlpha 0} foreach ["base1","base2","base3","base4","outsideMCC"];
//Disable Saving
enableSaving [false, false];
//AI STFU
enableSentences false;

//Server
if (isServer) then {
	//[] spawn compileFinal preprocessFileLineNumbers "scripts\show_fps.sqf";
	[] spawn compileFinal preprocessFileLineNumbers "save_manager.sqf";
	call compile preprocessFileLineNumbers "Missionparams.sqf";
	waitUntil { phxmissionparamstart};
	//CuratorModule = your curator module name; true = boolean, if civilians should be editable by zeus as well.
	[Z_Dexter,false] execVM "scripts\ADV_zeus.sqf";
	[Z_Tony,false] execVM "scripts\ADV_zeus.sqf";
};

//R3F_LOG
execVM "R3F_LOG\init.sqf";