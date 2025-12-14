private [ "_sleeptime", "_countplayers" ];

if (isNil "bg_sleeptimer") then {bg_sleeptimer = 1800};

if (combat_readiness <= 0) then {combat_readiness = 1};

while { GRLIB_csat_aggressivity > 0.5 && GRLIB_endgame == 0 } do {

	_sleeptime =  bg_sleeptimer;

	if ( combat_readiness >= bg_readiness_high ) then { _sleeptime = _sleeptime * 0.50 };

	sleep _sleeptime;

	if ( !isNil "GRLIB_last_battlegroup_time" ) then {
		waitUntil { sleep 60; time > ( GRLIB_last_battlegroup_time + _sleeptime ) };
	};

	if ( ([] call F_opforCap < GRLIB_battlegroup_cap) && (combat_readiness >= bg_readiness_min) && (diag_fps > 25.0) && (GRLIB_side_friendly countSide allUnits > 6) ) then {
		[] spawn spawn_battlegroup;
	};
};
