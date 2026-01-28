diag_log format [ "Spawning regular squad at %1", time ];

params [ "_sector", "_squadies_to_spawn" ];
private [ "_sectorpos", "_spawnpos", "_grp", "_nextunit", "_corrected_amount", "_player_count" ];

//_corrected_amount = round ( (count _squadies_to_spawn) * ([] call F_adaptiveOpforFactor) );


_player_count = GRLIB_side_friendly countSide allUnits;
_corrected_amount = 5;

if ( _player_count <= 3) then {
	_corrected_amount = 1;
}else{
	if ( _player_count <= 5) then {
		_corrected_amount = 2;
	}else{
		if ( _player_count <= 6) then {
			_corrected_amount = 3;
		};
	};
};


_squadies_to_spawn = _squadies_to_spawn call BIS_fnc_arrayShuffle;

_grp = createGroup [GRLIB_side_enemy, true];
{
	if ( ( count units _grp ) < _corrected_amount) then {
		_spawnpos = zeropos;
		_max_try = 10;

		while { (_spawnpos isEqualTo zeropos) && _max_try > 0 } do {
			_safepos = [getMarkerPos _sector, 5, GRLIB_capture_size, 1, 0, 0, 0, [], [zeropos, zeropos]] call BIS_fnc_findSafePos;
			_spawnpos = _safepos findEmptyPosition [1, 20, "B_Heli_Light_01_F"];
			if ( count _spawnpos == 0 ) then { _spawnpos = zeropos } else {
				if ( surfaceIsWater _spawnpos ) then { _spawnpos = zeropos };
			};
			_max_try = _max_try - 1;
		};
		if (!(_spawnpos isEqualTo zeropos)) then {
			_x createUnit [([_spawnpos, floor(random GRLIB_capture_size * 0.5), random 360] call BIS_fnc_relPos), _grp,'this addMPEventHandler ["MPKilled", {_this spawn kill_manager}]'];
			_nextunit = (units _grp) select ((count (units _grp)) -1);
			[ _nextunit ] spawn loadout_militia;
		};
	};
	sleep 0.1;
} foreach _squadies_to_spawn;

diag_log format [ "Done Spawning regular squad (%1) at %2", count (units _grp), time ];

_grp;
