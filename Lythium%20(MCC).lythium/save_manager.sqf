//save_key = "Malden_SaveTest_PDW";

if ( isMultiplayer ) then 
{
	param_load_savegame = ["LoadSave",0] call bis_fnc_getParamValue;
	param_save_delay = ["SaveDelay",0] call bis_fnc_getParamValue;
};

if ( !(isNil "param_wipe_savegame_1") && !(isNil "param_wipe_savegame_2") ) then 
{
	if ( param_wipe_savegame_1 == 1 && param_wipe_savegame_2 == 1 ) then 
	{
		profileNamespace setVariable ["new",nil ];
		saveProfileNamespace;
	};
};

if ( param_load_savegame == 1) then 
{
	hint "Loading...";
	
	_pdw = ["new", "profile"] call OO_PDW;
		sleep 2;
		
		_objects = "loadObjects" call _pdw;
		//hint format ["Restore all objects %1", _objects];
	
	hint "Loading finished";
};

while { true } do 
{
	//sleep 300;
	sleep param_save_delay;
	hint "Saving started! Please wait...";
	sleep 2;
	
	_pdw = ["new", "profile"] call OO_PDW;

//Filters example
//_aroundpos = [[position player, 100], [position chopper, 10]];
//["setAroundPos", _aroundpos] call _pdw;
//["setExcludingTypes", ["B_Heli_Light_01_F"]] call _pdw;
//["setExcludingMarkers", ["test1", "test2"]] call _pdw;

["setExcludingMarkers", ["base1","base2","base3","base4","outside1","outside2","outside3","outside4"]] call _pdw;

//hint "Save all objects";	
"saveObjects" call _pdw;
	
	
	hint "Saving completed";
};