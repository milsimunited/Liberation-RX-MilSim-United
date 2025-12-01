titleText ["" ,"BLACK FADED", 100];
waitUntil {sleep 0.2; !(isNil "GRLIB_init_server")};
waitUntil {sleep 0.2; GRLIB_init_server};
player allowDamage false;
disableUserInput true;
player setPosATL ((getmarkerpos GRLIB_respawn_marker) findEmptyPosition [0,50]);
GRLIB_player_spawned = false;
// removeAllWeapons player;
// removeAllItems player;
// removeAllAssignedItems player;
// removeVest player;
// removeBackpack player;
// removeHeadgear player;
// removeGoggles player;
player setVariable ["GREUH_stuff_price", 0];
GRLIB_backup_loadout = [player] call F_getLoadout;

waitUntil {sleep 0.2; !(isNil "dostartgame")};
waitUntil {sleep 0.2; dostartgame == 1};
player allowDamage true;

[] execVM "scripts\client\spawn\redeploy_manager.sqf";
[] execVM "scripts\client\misc\welcome.sqf";

sleep 5;

// Checks if player is spawning for the first time after loading into the mission
// If player is not spawning for the first time: Call Event to reassign Zeus Curator
if (playerFirstSpawn) then {
	playerFirstSpawn = false;
} else {
	["ReassignZeusCurator", [player]] call CBA_fnc_serverEvent;
};

// Arma gives 1 Score per enemy kill -> Score is basically rank points, so you get 1 extra rank point for kills.
// This script disables it. Need to refresh the script each time a unit respawns
[[player], "scripts\server\resources\disableArmaScoreGain.sqf"] remoteExec ["execVM", 2];