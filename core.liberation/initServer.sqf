//Global Arsenal
if (isNil 'equipment') then {
	[] call compileFinal preprocessFileLineNUmbers "MilSimUnited\create_arsenal_Itemlist.sqf";
};
if !(isNil 'equipment') then {
	sleep 2;
	pub_arsenal_box = equipment - item_blacklist + item_whitelist;
	publicVariable 'pub_arsenal_box';
};



["ace_unconscious", {
	// global event (runs on all machines)
	params ["_unit", "_isUnconscious"];

	_allHCs = entities "HeadlessClient_F";
	_allHPs = allPlayers - _allHCs;
	_aliveCount = 0;
	_allCount = count _allHPs;

	if ((_isUnconscious) && (_unit in _allHPs)) then {
		// (format ["%1 is down", name _unit]) remoteExec ["systemChat", 0];
		[getPlayerUID _unit, - respawn_ammo] remoteExec ["F_addPlayerAmmo", 2];
	} else {
		[getPlayerUID _unit, + respawn_ammo] remoteExec ["F_addPlayerAmmo", 2];
	};
}] call CBA_fnc_addEventHandler;



addMissionEventHandler ['EntityKilled', {
	params ["_unit", "_killer"];

	if (isPlayer _unit) then {
		/*
			_hs_unconscious = _unit getVariable ['ACE_isUnconscious', false];
			if (_hs_unconscious == true) then {
				_unit setVariable ["GREUH_ammo_count", ((_unit getVariable ["GREUH_ammo_count", 25]) - 25), true];
			};
		*/
	} else {
		if (isPlayer _killer) then {
			if (side group _unit == opfor) then {

				_score = MSU_InfantryKill_AddScore;
				_ammo = MSU_InfantryKill_AddAmmo;

				// Player is in a vehicle -> Gets reduced rank and ammo (If player in vehicle, unit loadout is empty)
				if ((count getUnitLoadout (vehicle _killer)) == 0) then {
					_score = MSU_Kill_AddScore;
					_ammo = MSU_Kill_AddAmmo;
				};
				
				[getPlayerUID _killer, _score] remoteExec ["F_addPlayerScore", 2];
				[getPlayerUID _killer, _ammo] remoteExec ["F_addPlayerAmmo", 2];
				diag_log format ["[Ammo] %1 Killed opfor  %2", name _killer, _ammo ];
				
			} else {
				if (((side group _unit == civilian) && (weapons _unit isEqualTo [])) || (side group _unit == blufor)) then {
					_msg = format ["%1 killed a civillian/friendly/prisoner. Penalty: %2 rank, %3 ammo, +%4 aggression ", name _killer, civkill_score, civkill_ammo, civkill_combat_readiness];
					[gamelogic, _msg] remoteExec ["globalChat", 0];
					[getPlayerUID _killer, civkill_score] remoteExec ["F_addPlayerScore", 2];
					[getPlayerUID _killer, civkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
					combat_readiness = combat_readiness + civkill_combat_readiness;
					
					diag_log format ["[Ammo] %1 Killed Civ - %2", name _killer, civkill_ammo ];
				} else {
					if (building_penalty_isActive) then {
						_class = typeOf _unit;
						_tre = [ configFile >> "CfgVehicles" >> _class, true ] call BIS_fnc_returnParents;

						if (("House" in _tre) && !("Strategic" in _tre)) then {
							_cost = [configFile >> "CfgVehicles" >> _class >> "cost"] call BIS_fnc_getCfgData;
							_name = [configFile >> "CfgVehicles" >> _class >> "displayName"] call BIS_fnc_getCfgData;

							_msg = format ["%1 destroyed a civilian building: %2, cost %3", name _killer, _name, _cost];
							[gamelogic, _msg] remoteExec ["globalChat", 0];
						};
					};
				};
			};
		};
	};
}];



/*
	addMissionEventHandler ['HandleDisconnect', {
		_unit = _this select 0;
		_hs_unconscious = _unit getVariable ['ACE_isUnconscious', false];
		if (_hs_unconscious == true) then {
			_unit setVariable ["GREUH_ammo_count", ((_unit getVariable ["GREUH_ammo_count", 25]) - 25), true];
		};
	}];

	// hs_spawn min dist
	if ( (combat_readiness < bg_readiness_min) || ((_spawn_position distance2D ([] call F_getNearestFob) < GRLIB_sector_size*2)) || (_spawn_position distance2D lhd < GRLIB_sector_size*2) || (_spawn_position distance2D myLARsBox < GRLIB_sector_size*2) || (_spawn_position isEqualTo [0,0]) ) then {
		_too_close = true;
	};
*/



hs_spawn_init = '[this] spawn loadout_militia;';

hs_spawn = compileFinal "
	if( huber_commandos && (diag_fps > 30.0) ) then {
		_headlessClients = entities 'HeadlessClient_F';
		_humanPlayers = allPlayers - _headlessClients;
		_count_players = count _humanPlayers;
		huber_commando_dist = 300;
		huber_commando_dist2 = 500;
		
		{
			_player = _x;
			_too_close = false;
			
			_spawn_position = [ [ [getPos _player, huber_commando_dist2] ], ['water'] ] call BIS_fnc_randomPos;

			if ( (_spawn_position distance _player < huber_commando_dist) || ((_spawn_position distance2D ([] call F_getNearestFob) < huber_commando_dist2)) || (_spawn_position distance2D lhd < huber_commando_dist2) || (_spawn_position isEqualTo [0,0]) ) then {
				_too_close = true;
			};
			
			if (_too_close == false) then {
				_group_spawn = createGroup opfor;
				_spawn_opfor = selectRandom militia_squad;
				
				_spawn_opfor createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.3, 'private']; sleep 1;

				_wp1_spawn = _group_spawn addWaypoint [getPosWorld _player, huber_commando_dist];
				_wp1_spawn setwaypointtype 'MOVE';
				_wp1_spawn setWaypointBehaviour 'AWARE';
				_wp1_spawn setWaypointSpeed 'FULL';

				_wp2_spawn = _group_spawn addWaypoint [getPos _player, huber_commando_dist];

				_wp3_spawn = _group_spawn addWaypoint [getPos _player, huber_commando_dist];

				_wp4_spawn = _group_spawn addWaypoint [getpos _player, huber_commando_dist];
				_wp4_spawn setWaypointStatements ['true', '{deleteVehicle _x} forEach thisList;'];
			};
		} forEach allPlayers;
	};

";

// Reset player scores if:
// Server is started at the first day of the month AND
// Server-Time is between 05:30 and 05:45
[] execVM "MilSimUnited\checkSystemTime.sqf";
["Initialize", [true]] call BIS_fnc_dynamicGroups;

while { true } do {
	sleep msu_heartbeat;
	/*_hs_time = systemTime;

	if (((_hs_time select 3) == 5) && ((_hs_time select 4) < 30)) then {
		_msg = format['Server restart and maintenance at 05:30. Recycle your vehicles in time! Server-Neustart und Wartung um 05:30. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};
	if (((_hs_time select 3) == 15) && ((_hs_time select 4) >= 30)) then {
		_msg = format['Server restart at the next full hour. Recycle your vehicles in time! Server-Neustart zur nächsten vollen Stunde. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};*/

	[] spawn hs_spawn;
};
