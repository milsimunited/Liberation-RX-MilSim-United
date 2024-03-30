diag_log "--- Liberation RX by pSiKO ---";
// [] call compileFinal preprocessFileLineNUmbers "build_info.sqf";
diag_log "--- Init start ---";
titleText ["Loading...","BLACK FADED", 100];

enableSaving [false, false];
disableMapIndicators [true,true,false,false];
setGroupIconsVisible [false,false];

abort_loading = false;
abort_loading_msg = "Unkwon Error";
GRLIB_ACE_enabled = false;
[] call compileFinal preprocessFileLineNUmbers "whitelist.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\fetch_params.sqf";


// [] spawn VCM_fnc_VcomInit;


if (!abort_loading) then {
	[] call compileFinal preprocessFileLineNUmbers "scripts\shared\classnames.sqf";
	[] call compileFinal preprocessfilelinenumbers "scripts\shared\init_shared.sqf";
	[] call compileFinal preprocessFileLineNUmbers "scripts\shared\init_sectors.sqf";
	if (!GRLIB_ACE_enabled) then {[] execVM "R3F_LOG\init.sqf"};

		if (isServer) then {

		[] execVM "scripts\server\init_server.sqf";

		//Tkill with diag.
		if (isNil 'tk_init_allowed') then { tk_init_allowed = false; };
		
		if (tk_init_allowed) then {
		["ace_unconscious", {
		params ["_unit", "_state"];
		
		if (isNil 'tk_active') then { tk_active = false; };
		if ((tk_active) && (_state) && (isPlayer _unit)) then {[_state,_unit]execVM "MilSimUnited\tkill.sqf"}}] call CBA_fnc_addEventHandler;
		}
	};
		
	
		if (!isDedicated && !hasInterface && isMultiplayer) then {
		[] execVM "scripts\server\offloading\hc_manager.sqf";
	};
	
	
} else {
	GRLIB_init_server = false;
	publicVariable "GRLIB_init_server";
	publicVariable "abort_loading";
	publicVariable "abort_loading_msg";
};

if (!isDedicated && hasInterface) then {
	[] execVM "scripts\client\init_client.sqf";
} else {
	setViewDistance 1600;
	setTerrainGrid 50;
};


SNC_VehRestriction = true;

// MilSim United ===========================================================================

sleep 5;

if (isNil "tkill_script") then { tkill_script = true; };
if (isNil "frdl_fire_dmg_threshold") then { frdl_fire_dmg_threshold = 0.1; };

msu_playable_units = ["B_Soldier_F", "B_medic_F", "B_engineer_F", "B_soldier_exp_F", "B_officer_F", "B_Pilot_F", "B_Helipilot_F", "B_helicrew_F", "B_crew_F"];


["B_Soldier_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_medic_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_engineer_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_soldier_exp_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_officer_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Pilot_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Helipilot_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_helicrew_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_crew_F", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["HandleScore", { 
		params ["_unit", "_object", "_score"]; 
		if((isPlayer _unit) && (_object iskindof "Air") && (_score < 0)) then {
			_unit addScore  -_score;
			_msg = format ["[AirVehicleCrash] %1 crashed %2, score %3 compensated", name _unit, typeOf _object, _score];
			[_msg] remoteExec ["log_on_server", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_Medic_Fleck", "InitPost", {
	params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_shooter", "_hitPoint"];
		if ( (tkill_script) && (_damage > frdl_fire_dmg_threshold) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
	_vehicle addEventHandler ["Dammaged", {
		params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
		if ( (tkill_script) && (isPlayer _shooter) && (_shooter != _unit) && (alive _unit) ) then {
			_msg = format ["Friendly fire from %1 to %2. Penalty: %3 rank and %4 ammo (damage %5)", name _shooter, name _unit, tkill_score, tkill_ammo, _damage];
			[gamelogic, _msg] remoteExec ["globalChat", 0];
			[getPlayerUID _shooter, tkill_score] remoteExec ["F_addPlayerScore", 2];
			[getPlayerUID _shooter, tkill_ammo] remoteExec ["F_addPlayerAmmo", 2];
		};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




// opfor
["rhs_mvd_izlom_arifleman_rpk", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_vdv_recon_marksman_vss", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_mvd_izlom_rifleman_asval", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_T_Crew_F", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_T_Soldier_F", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_vmf_flora_sergeant", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_vmf_flora_rifleman", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_vmf_flora_driver", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["PRACS_SLA_AA_Vehicle_Crew", "InitPost", {
	params ["_vehicle"];
	[_vehicle] spawn loadout_militia;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




// civ
["C_Man_4_enoch_F", "InitPost", {
	params ["_vehicle"];
	_vehicle forceAddUniform msu_civ_uniform;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




log_on_server = compileFinal "
		params ['_msg'];
		diag_log _msg;
";

{
	_x addEventHandler ["CuratorObjectPlaced", {
		params ["_curator", "_entity"];
		_unit = getassignedcuratorunit _curator;
		
		_msg = format ["[CuratorAction] %1 placed %2", name _unit, typeOf _entity];
		[_msg] remoteExec ["log_on_server", 2];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	}];

	_x addEventHandler ["CuratorObjectEdited", {
		params ["_curator", "_entity"];
		_unit = getassignedcuratorunit _curator;
		
		_msg = format ["[CuratorAction] %1 moved %2", name _unit, typeOf _entity];
		[_msg] remoteExec ["log_on_server", 2];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	}];

	_x addEventHandler ["CuratorObjectDoubleClicked", {
		params ["_curator", "_entity"];
		_unit = getassignedcuratorunit _curator;
		
		_msg = format ["[CuratorAction] %1 edited %2", name _unit, typeOf _entity];
		[_msg] remoteExec ["log_on_server", 2];
		[gamelogic, _msg] remoteExec ["globalChat", 0];
	}];
} foreach allcurators;




// Invulnerable crates
["Box_IED_Exp_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_NATO_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_East_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_IND_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_BarrelWater_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_FoodSacks_01_large_brown_idap_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_MetalBarrel_F", "InitPost", {
    params ["_vehicle"];
	_vehicle allowDamage false;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




// SAM
["B_SAM_System_02_F", "InitPost", {
    params ["_vehicle"];
	[
		_vehicle,
		["Green",1], 
		true
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




["CargoNet_01_box_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSize;
	[_vehicle,1] call ace_cargo_fnc_setSpace;
	["ACE_Wheel", _vehicle] call ace_cargo_fnc_addCargoItem;
	["ACE_Track", _vehicle] call ace_cargo_fnc_addCargoItem;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable; 
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable; 
	_vehicle setVariable ["ACE_isRepairFacility",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_CargoNet_01_ammo_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSize;
	[_vehicle,1] call ace_cargo_fnc_setSpace;
	[_vehicle, 150000] call ace_rearm_fnc_makeSource;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CargoNet_01_barrels_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSize;
	[_vehicle,1] call ace_cargo_fnc_setSpace;
    [_vehicle, 15000] call ace_refuel_fnc_makeSource;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_MetalBarrel_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,4] call ace_cargo_fnc_setSize;
    [_vehicle, 3750] call ace_refuel_fnc_makeSource;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_NATO_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_East_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Box_IND_AmmoVeh_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_BarrelWater_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_MetalBarrel_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_FoodSacks_01_large_brown_idap_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 1.5, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Medevac_F", "InitPost", {
	params ["_vehicle"];
	clearItemCargoGlobal _vehicle;
	_vehicle addAction	[localize "STR_MSU_Medic_Container_Fullheal",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller,true] execVM "MilSimUnited\heal.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
	_vehicle addAction	[localize "STR_MSU_Medic_Container_FullhealArea",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller] execVM "MilSimUnited\heal_aoe.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Ammo_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 1000000] call ace_rearm_fnc_makeSource;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;



["rhsusf_M977A4_AMMO_BKIT_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 150000] call ace_rearm_fnc_makeSource;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M977A4_AMMO_BKIT_usarmy_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 150000] call ace_rearm_fnc_makeSource;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_CargoNet_01_ammo_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 1500] call ace_rearm_fnc_makeSource;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_kamaz5350_ammo_vmf", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	[_vehicle, 150000] call ace_rearm_fnc_makeSource;
    [_vehicle, 15000] call ace_refuel_fnc_makeSource;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1152_rsv_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;



["BWA3_Multi_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Flatbed_Oliv", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Repair_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;


// ACE Cargo definition
["rnt_mantis_radar", "InitPost", {
    params ["_vehicle"];
	[_vehicle, -1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rnt_mantis_base", "InitPost", {
    params ["_vehicle"];
	[_vehicle, -1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rnt_mantis_base", "InitPost", {
    params ["_vehicle"];
	[_vehicle, -1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1220_MK19_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1220_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1220_M153_M2_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1230_M2_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1230a1_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1230_MK19_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,5] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 8] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Winter", "InitPost", {
    params ["_vehicle"];
	[_vehicle, -1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_CH47F_VIV_USA", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_CH47F_USA", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_MH47E_USA", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_CH53E_GER", "InitPost", {
    params ["_vehicle"];
	[_vehicle,30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_CH53E_VIV_GER", "InitPost", {
    params ["_vehicle"];
	[_vehicle,30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_MV22_USMC", "InitPost", {
    params ["_vehicle"];
	[_vehicle,40] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_MV22_VIV_USMC", "InitPost", {
    params ["_vehicle"];
	[_vehicle,40] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_MV22_USMC_RAMPGUN", "InitPost", {
    params ["_vehicle"];
	[_vehicle,40] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_VTOL_01_infantry_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,46] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_VTOL_01_vehicle_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,46] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["USAF_C130J_Cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle,50] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["usaf_kc135", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["USAF_C130J", "InitPost", {
    params ["_vehicle"];
	[_vehicle,16] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["USAF_C17", "InitPost", {
    params ["_vehicle"];
	[_vehicle,1000] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_VtoL_01_vehicle_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,40] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_VtoL_01_infantry_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_VtoL_01_armed_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_Pod_Heli_Transport_04_medevac_F", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Valor_Transport_Unarmed_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 24] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Valor_Transport_Armed_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 16] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1084A1R_SOV_M2_D_fmtv_socom", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	[_vehicle, 1000] call ace_rearm_fnc_makeSource;
    [_vehicle, 1250] call ace_refuel_fnc_makeSource;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_B_WD_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_UGV_01_olive_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 3] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M977A4_BKIT_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M977A4_BKIT_M2_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_C130J_Cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 50] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_C130J", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 16] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F_10_cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F_10", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH1Y_UNARMED_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH60M2_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_NH90_TTH_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Merlin_HC4_32", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Merlin_HC4_18_GPMG", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_NH90_TTH_M3M_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Heli_Transport_01_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_Heli_Transport_02_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH60M_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH60M_MEV_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH60M_MEV2_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_T_UGV_01_rcws_olive_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 1] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi8AMT_vvs", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi8AMT_vvs", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Land_Pod_Heli_Transport_04_covered_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle, 2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Merlin_HC3_Cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle,16] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;


["UK3CB_BAF_Merlin_HC4_Cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle,16] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Truck_01_box_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

// ACE Medical Vehicles

["USMC_WarfareBFieldhHospital", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["US_WarfareBFieldhHospital_Base_EP1", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["INS_WarfareBFieldhHospital", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["TK_GUE_WarfareBFieldhHospital_Base_EP1", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
	[_vehicle,3] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_FV432_GB_Ambulance", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["vtx_UH60M_MEDEVAC", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Truck_01_medical_F", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
	[_vehicle,3] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_LR_Ambulance_GB_D", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Redd_Tank_Fuchs_1A4_San_Tropentarn", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["ffaa_et_toa_ambulancia", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_UH60M_Unarmed_FFV_MEV_US", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["CUP_B_UH1Y_MEV_USMC", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_San", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_LandRover_Amb_FFR_Green_A", "InitPost", {
    params ["_vehicle"];
	_vehicle setVariable ["ace_medical_medicClass", 1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_kamaz5350_open_msv", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Husky_Passenger_HMG_Green_DPMW", "InitPost", {
    params ["_vehicle"];
	[_vehicle,4] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_CH53e_USMC_cargo", "InitPost", {
    params ["_vehicle"];
	[_vehicle,30] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_CH53E_USMC_GAU21_D", "InitPost", {
    params ["_vehicle"];
	[_vehicle,7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_CH53e_USMC_D", "InitPost", {
    params ["_vehicle"];
	[_vehicle,7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_MELB_AH6M", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_MELB_MH6M", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_mi28n_vvsc", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi24P_vvs", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi24V_vvs", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi8MTV3_heavy_vvs", "InitPost", {
    params ["_vehicle"];
	[_vehicle,7] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Wildcat_AH1_CAS_6A", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_Tiger", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_Tiger_RMK", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Heli_Attack_01_dynamicloadout_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_Heli_Attack_02_dynamicloadout_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Ka52_vvsc", "InitPost", {
    params ["_vehicle"];
	[_vehicle,0] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;


["RHS_UH60M_ESSS_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH1Y_d", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_M977A4_BKIT_M2_usarmy_wd", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	_vehicle setVariable ["ACE_isRepairVehicle",1];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	[_vehicle, 3000] call ace_rearm_fnc_makeSource;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_TCK9_Fuel_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Repair_Fleck", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Repair_Tropen", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Tropen", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	[_vehicle, 3000] call ace_rearm_fnc_makeSource;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Ammo_Winter", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
	[_vehicle, 3000] call ace_rearm_fnc_makeSource;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_WLP14_Repair_Winter", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Heli_Transport_03_unarmed_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	[
		_vehicle,
		["Green",1], 
		true
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
	[
		_vehicle,
		["Green",1], 
		true
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["TF373_SOAR_MH47G", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
	[
		_vehicle,
		["TF373_MH47G_Legacy_Clean_No_Callsign",1], 
		["HideFrontLeftSki",1,"HideFrontRightSki",1,"HideBackLeftSki",1,"HideBackRightSki",1,"HideFlag",1,"HideM134Belt_2",0,"HideM134Belt_1",0,"HideSlingHatch",0,"HideM134_L",0,"HideM134_R",0,"HideProbe",0,"HideCargoSeats",0,"crew_door_right",0,"crew_door_bar_rotate",0]
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["TF373_SOAR_MH47G_EasyActions", "InitPost", {
    params ["_vehicle"];
	[_vehicle,24] call ace_cargo_fnc_setSpace;
	[
		_vehicle,
		["TF373_MH47G_Legacy_Clean_No_Callsign",1], 
		["HideFrontLeftSki",1,"HideFrontRightSki",1,"HideBackLeftSki",1,"HideBackRightSki",1,"HideFlag",1,"HideM134Belt_2",0,"HideM134Belt_1",0,"HideSlingHatch",0,"HideM134_L",0,"HideM134_R",0,"HideProbe",0,"HideCargoSeats",0,"crew_door_right",0,"crew_door_bar_rotate",0]
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi8mt_vdv", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
	[
		_vehicle,
		["Green",1], 
		true
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_UH60M", "InitPost", {
    params ["_vehicle"];
	[_vehicle,8] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_Mi8MTV3_heavy_vdv", "InitPost", {
    params ["_vehicle"];
	[_vehicle,4] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_Merlin_HC3_CSAR_DPMW_RM", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["UK3CB_BAF_MAN_HX58_Cargo_Green_A_DPMW_RM", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Boat_Transport_01_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,3] call ace_cargo_fnc_setSize;
	[_vehicle,3] call ace_cargo_fnc_setSpace;
	[_vehicle, true, [0, 3, 0], 0] call ace_dragging_fnc_setCarryable;
	[_vehicle, true, [0, 3, 0], 0] call ace_dragging_fnc_setDraggable;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_C_Boat_Transport_02_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,4] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_Boat_Armed_01_minigun_F", "InitPost", {
    params ["_vehicle"];
	[_vehicle,4] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_mkvsoc", "InitPost", {
    params ["_vehicle"];
	[_vehicle,12] call ace_cargo_fnc_setSpace;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_Plane_Fighter_04_F", "InitPost", {
    params ["_vehicle"];
	[
		_vehicle,
		["CamoGrey",1], 
		true
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;



// Tanks

["rhs_btr80a_msv", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 1)} else {(_unit getHit _hitSelection) + (_damage * 1)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1a2sep1tuskiiwd_usarmy", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 0.4)} else {(_unit getHit _hitSelection) + (_damage * 0.4)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

/*["BWA3_Leopard2_Fleck", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 0.2)} else {(_unit getHit _hitSelection) + (_damage * 0.4)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["BWA3_Puma_Fleck", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 0.2)} else {(_unit getHit _hitSelection) + (_damage * 0.3)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;*/

["rhs_t90sab_tv", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 1)} else {(_unit getHit _hitSelection) + (_damage * 1)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_T_APC_Tracked_02_cannon_ghex_F", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _damage = _this select 2;
		_damage = _damage * 1.25;
		_damage;
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_LT_01_cannon_F", "InitPost", {
    params ["_vehicle"];
	_vehicle setObjectTextureGlobal [0,"A3\armor_f_tank\lt_01\data\lt_01_main_olive_co.paa"];
	_vehicle setObjectTextureGlobal [1,"A3\armor_f_tank\lt_01\data\lt_01_cannon_olive_co.paa"];
	_vehicle setObjectTextureGlobal [2,"A3\Armor_F\Data\camonet_aaf_digi_green_co.paa"];
	_vehicle setObjectTextureGlobal [3,"A3\armor_f\data\cage_olive_co.paa"];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_LT_01_AT_F", "InitPost", {
    params ["_vehicle"];
	_vehicle setObjectTextureGlobal [0,"A3\armor_f_tank\lt_01\data\lt_01_main_olive_co.paa"];
	_vehicle setObjectTextureGlobal [1,"A3\armor_f_tank\lt_01\data\lt_01_at_olive_co.paa"];
	_vehicle setObjectTextureGlobal [2,"A3\Armor_F\Data\camonet_aaf_digi_green_co.paa"];
	_vehicle setObjectTextureGlobal [3,"A3\armor_f\data\cage_olive_co.paa"];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_LT_01_AA_F", "InitPost", {
    params ["_vehicle"];
	_vehicle setObjectTextureGlobal [0,"A3\armor_f_tank\lt_01\data\lt_01_main_olive_co.paa"];
	_vehicle setObjectTextureGlobal [1,"A3\armor_f_tank\lt_01\data\lt_01_at_olive_co.paa"];
	_vehicle setObjectTextureGlobal [2,"A3\Armor_F\Data\camonet_aaf_digi_green_co.paa"];
	_vehicle setObjectTextureGlobal [3,"A3\armor_f\data\cage_olive_co.paa"];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["I_LT_01_scout_F", "InitPost", {
    params ["_vehicle"];
	[
		_vehicle,
		["Indep_Olive",1], 
		["showTools",1,"showCamonetHull",0,"showBags",0,"showSLATHull",0]
	] call BIS_fnc_initVehicle;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_t72ba_tv", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 2)} else {(_unit getHit _hitSelection) + (_damage * 2)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhs_t90sm_tv", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 10)} else {(_unit getHit _hitSelection) + (_damage * 10)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_MBT_04_command_F", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 1.0)} else {(_unit getHit _hitSelection) + (_damage * 0.7)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_MBT_04_cannon_F", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 1.0)} else {(_unit getHit _hitSelection) + (_damage * 2.0)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["B_MBT_01_cannon_F", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 1.0)} else {(_unit getHit _hitSelection) + (_damage * 1.0)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_APC_Tracked_02_AA_F", "InitPost", {
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 3.0)} else {(_unit getHit _hitSelection) + (_damage * 3.0)};
	}];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["O_T_APC_Tracked_02_AA_ghex_F", "InitPost", { // Tigris
    params ["_vehicle"];
	_vehicle addEventHandler ["HandleDamage", {  
		private _unit = _this select 0;
		private _hitSelection = _this select 1;
		private _damage = _this select 2;
		if (_hitSelection isEqualTo "") then {(damage _unit) + (_damage * 3.0)} else {(_unit getHit _hitSelection) + (_damage * 3.0)};
	}];
	
	[
		_vehicle,
	["GreenHex",1], 
	["showTracks",0,"showCamonetHull",1,"showCamonetTurret",1,"showSLATHull",0]
	] call BIS_fnc_initVehicle;
	_vehicle setObjectTextureGlobal [0, '#(rgb,8,8,3)color(0.15,0.15,0.09,3)'];
	_vehicle setObjectTextureGlobal [2, '#(rgb,8,8,3)color(0.15,0.15,0.09,3)'];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;




//["USAF_A10", "InitPost", {
//    params ["_vehicle"];
//		private _pylon = getPylonMagazines _vehicle;
//	for "_i" from 1 to (count _pylon) do { 
// 	_vehicle setPylonLoadout [_i, "", true]; 
//};
//	_vehicle setVariable ["ace_pylons_magazineWhitelist",USAF_A10, true]}, nil, nil, true] call CBA_fnc_addClassEventHandler;


// Advanced Singloading
ASL_SLING_RULES_OVERRIDE = [ 
	["Air", "CAN_SLING", "All"]
];
// ["Air", "CANT_SLING", "Tank"],

// Advanced Towing
SA_MAX_TOWED_CARGO = 4;
SA_TOW_RULES_OVERRIDE =[
	["All", "CAN_TOW", "All"]
];
// ["Car", "CANT_TOW", "Tank"],
// ["Air", "CANT_TOW", "Air"]

//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";
// if (isServer) then {[2000,-1,false,100,1000,100]execvm "zbe_cache\main.sqf"};




// Zeus can use all addons
private _addons = "true" configClasses (configFile >> "CfgPatches") apply {toLower configName _x};

// manually activate all addons
activateAddons _addons;

// manually add our addons to all curators
if (isServer) then {
    {
        _x addCuratorAddons _addons;
    } forEach allCurators;
};









// MilSim United ===========================================================================





diag_log "--- Init stop ---";
