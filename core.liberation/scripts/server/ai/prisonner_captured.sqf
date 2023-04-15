params [ "_unit", "_unit_owner" ];

if(!isServer) exitWith{}; // isDedicated

resources_intel = resources_intel + prisoner_intel;
stats_prisonners_captured = stats_prisonners_captured + 1;
publicVariable "stats_prisonners_captured";

[ 0 ] remoteExec ["remote_call_intel", 0];

if (isPlayer _unit_owner) then {

	[getPlayerUID _unit_owner, prisoner_score] remoteExec ["F_addPlayerScore", 2];
	[getPlayerUID _unit_owner, prisoner_ammo] remoteExec ["F_addPlayerAmmo", 2];
	combat_readiness = combat_readiness - prisoner_combat_readiness;
	
	_msg = format ["%1 brought in a prisoner. -%4 aggression.", name _unit_owner, prisoner_score, prisoner_ammo, prisoner_combat_readiness];
	[gamelogic, _msg] remoteExec ["globalChat", 0];
	diag_log format ["[Ammo] %1", _msg];
};


/*
	{
		[getPlayerUID _x, prisoner_score] remoteExec ["F_addPlayerScore", 2];
		[getPlayerUID _x, prisoner_ammo] remoteExec ["F_addPlayerAmmo", 2];
	} forEach allPlayers;

	// %2 rank and %3 ammo for everybody and -%4 aggression.
*/