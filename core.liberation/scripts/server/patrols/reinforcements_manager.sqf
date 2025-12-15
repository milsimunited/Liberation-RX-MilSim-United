params [ "_targetsector" ];
diag_log format ["Spawn Reinforcement Sector %1 at %2", _targetsector, time];

sleep 20;
if ( ([] call F_opforCap < GRLIB_battlegroup_cap) && (combat_readiness >= bg_readiness_min) && (diag_fps > 25.0) && (GRLIB_side_friendly countSide allUnits > 6) ) then {
	[ markerPos _targetsector ] spawn send_paratroopers;

	if ( combat_readiness >= bg_readiness_high ) then {
		[ markerPos _targetsector, true ] spawn spawn_battlegroup;
	};
};
