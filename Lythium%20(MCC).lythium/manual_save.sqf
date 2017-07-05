//save_key = "Malden_SaveTest_PDW";

hint "Saving started! Please wait...";
sleep 2;

_pdw = ["new", "profile"] call OO_PDW;

//Filters example
//_aroundpos = [[position player, 100], [position chopper, 10]];
//["setAroundPos", _aroundpos] call _pdw;
//["setExcludingTypes", ["B_Heli_Light_01_F"]] call _pdw;
//["setExcludingMarkers", ["test1", "test2"]] call _pdw;

["setExcludingMarkers", ["base1","base2","base3","base4","outsideMCC"]] call _pdw;

//hint "Save all objects";	
"saveObjects" call _pdw;

hint "Saving completed";