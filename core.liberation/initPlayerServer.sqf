/*
	File: initPlayerServer.sqf

	Author: xImSebi
	
	Description:
		Activated once a unit finishes loading the server mission
		Assigns the player to the zeus curator object with the same UID
*/

_player = _this select 0;
// Gets the UID of the player
playerUid = (getPlayerUID _player);

{
	// Gets the UID of the Zeus Curator Object owner - set by init_curators.sqf
	curatorOwner = (_x getVariable "owner");

	// Comparing the UIDs and assign Zeus Curator Object to current player
	if (curatorOwner == playerUid) then {
		diag_log ("UID Match! Reassigning player """ + (name _player) + """ to Zeus Curator Object """ + (vehicleVarName _x) + """");
		unassignCurator _x;
		sleep 1;
		_player assignCurator _x;
		diag_log "Assigned player to Zeus Curator Object";
	};
} forEach allCurators;