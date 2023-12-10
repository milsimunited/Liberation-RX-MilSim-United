/*
	File: reassignZeusCurator.sqf

	Author: xImSebi
	
	Description:
		Checks if the provided player matches with the owner variable of a zeus object
		If the players UID matches, the zeus curator will be assigned again
		Without this, a player would lose the zeus functionality after respawning
*/

params ["_player"];

playerId = (getPlayerUID _player);

{
	if ((_x getVariable "owner") == playerId) then {
		diag_log ("Player " + (name _player) + " respawned. Reassigning Zeus Curator.");
		unassignCurator _x;
		sleep 1;
		_player assignCurator _x;
	};
} forEach allCurators;