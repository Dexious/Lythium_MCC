["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
	
//TFAR Radios Sync
player addEventHandler ["InventoryClosed", {
	call PHX_FNC_TASKFORCERADIOTUNING;
}];

removeAllWeapons player;