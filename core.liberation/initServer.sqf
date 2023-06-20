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
				
				_score = opfor_kill_score;
				_ammo = opfor_kill_ammo;
				if  ((typeOf _killer == "B_Soldier_F") || (typeOf _killer == "B_medic_F") || (typeOf _killer == "B_engineer_F") || (typeOf _killer == "B_soldier_exp_F")) then {
					_score = opfor_kill_score_infantry;
					_ammo = opfor_kill_ammo_infantry;
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
*/



hs_spawn_init = '[this] spawn loadout_militia;';

hs_spawn = compileFinal "
	if( huber_commandos && (diag_fps > 25.0) ) then {
		_headlessClients = entities 'HeadlessClient_F';
		_humanPlayers = allPlayers - _headlessClients;
		_count_players = count _humanPlayers;
		
		if(_count_players > 0) then {
			_player = selectRandom _humanPlayers;
			_too_close = false;
			
			_spawn_position = [ [ [getPos _player, GRLIB_sector_size+GRLIB_capture_size] ], ['water'] ] call BIS_fnc_randomPos;

			if ( ((combat_readiness < bg_readiness_min*2) && (_spawn_position distance2D ([] call F_getNearestFob) < GRLIB_sector_size*2)) || (_spawn_position distance2D lhd < GRLIB_sector_size*2) || (_spawn_position distance2D myLARsBox < GRLIB_sector_size*2) || (_spawn_position isEqualTo [0,0]) ) then {
				_too_close = true;
			};
			
			if (_too_close == false) then {
				{
					if (_spawn_position distance _x < GRLIB_sector_size) then {
						_too_close = true;
					};
				} forEach allPlayers;
			};
			
			if (_too_close == false) then {
				_group_spawn = createGroup opfor;
				
				opfor_machinegunner createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.9, 'private']; sleep 1;
				opfor_machinegunner createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.9, 'private']; sleep 1;
				opfor_sharpshooter createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.9, 'private']; sleep 1;
				opfor_aa createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.9, 'private']; sleep 1;
				opfor_at createUnit [_spawn_position, _group_spawn, hs_spawn_init, 0.4, 'private']; sleep 1;

				_wp1_spawn = _group_spawn addWaypoint [getPosWorld _player, GRLIB_capture_size*3];
				_wp1_spawn setwaypointtype 'MOVE';
				_wp1_spawn setWaypointBehaviour 'AWARE';
				_wp1_spawn setWaypointSpeed 'FULL';

				_wp2_spawn = _group_spawn addWaypoint [getPos _player, GRLIB_capture_size*3];

				_wp3_spawn = _group_spawn addWaypoint [getPos _player, GRLIB_capture_size*2];

				_wp4_spawn = _group_spawn addWaypoint [getpos _player, GRLIB_capture_size*4];
				_wp4_spawn setWaypointStatements ['true', '{deleteVehicle _x} forEach thisList;'];
			};
		};
		
	};

";






["Initialize", [true]] call BIS_fnc_dynamicGroups;




while { true } do {
	sleep msu_heartbeat;
	_hs_time = systemTime;

	if (((_hs_time select 3) == 1) && ((_hs_time select 4) >= 30)) then {
		_msg = format['Server restart at the next full hour. Recycle your vehicles in time! Server-Neustart zur nächsten vollen Stunde. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};
	if (((_hs_time select 3) == 7) && ((_hs_time select 4) >= 30)) then {
		_msg = format['Server restart at the next full hour. Recycle your vehicles in time! Server-Neustart zur nächsten vollen Stunde. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};
	if (((_hs_time select 3) == 13) && ((_hs_time select 4) >= 30)) then {
		_msg = format['Server restart at the next full hour. Recycle your vehicles in time! Server-Neustart zur nächsten vollen Stunde. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};
	if (((_hs_time select 3) == 19) && ((_hs_time select 4) >= 30)) then {
		_msg = format['Server restart at the next full hour. Recycle your vehicles in time! Server-Neustart zur nächsten vollen Stunde. Fahrzeuge rechtzeitig recyceln!'];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	};

	[] spawn hs_spawn;
	[] spawn hs_spawn;
};









