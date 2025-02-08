diag_log "--- Client Init start ---";

waitUntil {!isNil "abort_loading" };
waitUntil {!isNil "GRLIB_init_server" };
if (!GRLIB_init_server || abort_loading) exitWith {
	private _msg = format ["Sorry, An error occured on Server startup.\nPlease check the error logs.\n\n%1", abort_loading_msg];
	titleText [_msg, "BLACK FADED", 100];
	uisleep 10;
	endMission "LOSER";
};
sleep 5;
PAR_Grp_ID = getPlayerUID player;
if (PAR_Grp_ID == "" || !(isPlayer player)) exitWith {
	private _msg = format ["ARMA3 Multiplayer Initialization Error!\nPlease reconnect to the server..."];
	titleText [_msg, "BLACK FADED", 100];
	uisleep 10;
	endMission "LOSER";
};

if (!isMultiplayer) exitWith {
	private _msg = format ["Sorry, Liberation RX is a Multiplayer Mission Only..."];
	titleText [_msg, "BLACK FADED", 100];
	uisleep 10;
	endMission "LOSER";
};



// commander whitelist
is_commander = false;
if ( !isNil "GRLIB_whitelisted_steamids" ) then {
	if ( ( getPlayerUID player ) in GRLIB_whitelisted_steamids ) then {
		is_commander = true;
	};
};

0 enableChannel [false, true];
1 enableChannel [false, true];
2 enableChannel [false, true];


// TFR Checker !isServer
/*if(tfar_checker) then {

	waitUntil {!isNull player };

	private _tfarEnabled = call TFAR_fnc_isTeamSpeakPluginEnabled;
	private _debug = ((isServer && hasInterface) || (is_commander));
	// private _debug = false;

	if(!_tfarEnabled) then {
		while {!_tfarEnabled && !_debug} do {
			private _msg = format ["To play, you need to have Task Force Radio (Beta) enabled. Please check your Plugin Version. Ask for help on teamspeak at milsim-united.teamspeak.me"];
			titleText [_msg, "BLACK FADED", 100];
			20 cutFadeOut 20;
			_tfarEnabled = call TFAR_fnc_isTeamSpeakPluginEnabled;
			sleep 1;
		};
	};

	if(_tfarenabled) then {
		_correctServer = call TFAR_fnc_getTeamSpeakServerName;
		while { !(_correctServer == ts_server_name) && !_debug} do {
			private _msg = format ["Please connect to our teamspeak at milsim-united.teamspeak.me"];
			titleText [_msg, "BLACK FADED", 100];
			20 cutFadeOut 0.1;
			// _msg = format ["_correctServer: %1", _correctServer]; hint format[_msg];
			sleep 1;
			_correctServer = call TFAR_fnc_getTeamSpeakServerName;
		};
		_correctChannel = call TFAR_fnc_getTeamSpeakChannelName;
		if (!(_correctChannel == tfar_channel) && !_debug) then {
			while {!(_correctChannel == tfar_channel)} do {
				private _msg = format ["Please reload your Plugin to be moved into the correct channel. If it does not work, please contact a moderator."];
				titleText [_msg, "BLACK FADED", 100];
				20 cutFadeOut 20;
				// _msg = format ["_correctChannel: %1", _correctChannel]; hint format[_msg];			
				sleep 1;
				_correctChannel = call TFAR_fnc_getTeamSpeakChannelName;
			};
		};
	};
	20 cutFadeOut 2;
	sleep 2;
	titleText ["TFAR Plugin working, Welcome!","PLAIN DOWN"];

};*/



respawn_lhd = compileFinal preprocessFileLineNumbers "scripts\client\spawn\respawn_lhd.sqf";
spawn_camera = compileFinal preprocessFileLineNumbers "scripts\client\spawn\spawn_camera.sqf";
cinematic_camera = compileFinal preprocessFileLineNumbers "scripts\client\ui\cinematic_camera.sqf";
write_credit_line = compileFinal preprocessFileLineNumbers "scripts\client\ui\write_credit_line.sqf";
do_load_box = compileFinal preprocessFileLineNumbers "scripts\client\ammoboxes\do_load_box.sqf";
set_rank = compileFinal preprocessFileLineNumbers "scripts\client\misc\set_rank.sqf";
vehicle_permissions = compileFinal preprocessFileLineNumbers "scripts\client\misc\vehicle_permissions.sqf";
vehicle_defense = compileFinal preprocessFileLineNumbers "scripts\client\misc\vehicle_defense.sqf";
fetch_permission = compileFinal preprocessFileLineNumbers "scripts\client\misc\fetch_permission.sqf";
is_menuok = compileFinal preprocessFileLineNumbers "scripts\client\misc\is_menuok.sqf";
is_neartransport = compileFinal preprocessFileLineNumbers "scripts\client\misc\is_neartransport.sqf";
paraDrop = compileFinal preprocessFileLineNumbers "scripts\client\spawn\paraDrop.sqf";
get_lrx_name = compileFinal preprocessFileLineNumbers "scripts\client\misc\get_lrx_name.sqf";

R3F_LOG_joueur_deplace_objet = objNull;
GRLIB_player_spawned = false;


[group player, "add"] remoteExec ["addel_group_remote_call", 2];

if (!([] call F_getValid)) exitWith {endMission "LOSER"};
if ( typeOf player == "VirtualSpectator_F" ) exitWith {
	[] execVM "scripts\client\markers\empty_vehicles_marker.sqf";
	[] execVM "scripts\client\markers\fob_markers.sqf";
	[] execVM "scripts\client\markers\hostile_groups.sqf";
	[] execVM "scripts\client\markers\huron_marker.sqf";
	[] execVM "scripts\client\markers\sector_manager.sqf";
	[] execVM "scripts\client\markers\spot_timer.sqf";
	[] execVM "scripts\client\misc\synchronise_vars.sqf";
	[] execVM "scripts\client\ui\ui_manager.sqf";
};
[] execVM "scripts\client\commander\enforce_whitelist.sqf";
[] execVM "scripts\client\ui\intro.sqf";
[] execVM "scripts\client\ammoboxes\ammobox_action_manager.sqf";
[] execVM "scripts\client\markers\sector_manager.sqf";
[] execVM "scripts\client\misc\sides_stats_manager.sqf";
[] execVM "scripts\client\build\build_overlay.sqf";
[] execVM "scripts\client\build\do_build.sqf";
[] execVM "scripts\client\markers\empty_vehicles_marker.sqf";
[] execVM "scripts\client\markers\fob_markers.sqf";
[] execVM "scripts\client\markers\a3w_mission_marker.sqf";
[] execVM "scripts\client\markers\hostile_groups.sqf";
[] execVM "scripts\client\markers\huron_marker.sqf";
[] execVM "scripts\client\markers\spot_timer.sqf";
[] execVM "scripts\client\misc\broadcast_squad_colors.sqf";
[] execVM "scripts\client\misc\disable_remote_sensors.sqf";
//[] execVM "scripts\client\misc\offload_diag.sqf";
[] execVM "scripts\client\misc\permissions_warning.sqf";
[] execVM "scripts\client\misc\secondary_jip.sqf";
[] execVM "scripts\client\misc\stop_renegade.sqf";
[] execVM "scripts\client\misc\synchronise_vars.sqf";
[] execVM "scripts\client\misc\manage_weather.sqf";
[] execVM "scripts\client\misc\no_thermic.sqf";
[] execVM "scripts\client\misc\init_markers.sqf";
[] execVM "scripts\client\actions\action_manager.sqf";
[] execVM "scripts\client\actions\action_manager_veh.sqf";
[] execVM "scripts\client\actions\recycle_manager.sqf";
[] execVM "scripts\client\actions\intel_manager.sqf";
[] execVM "scripts\client\actions\dog_manager.sqf";
[] execVM "scripts\client\actions\man_manager.sqf";
[] execVM "scripts\client\actions\squad_manager.sqf";
[] execVM "scripts\client\ui\ui_manager.sqf";
[] execVM "GREUH\scripts\GREUH_activate.sqf";

[] execVM "addons\TARU\taru_init.sqf";

// Init Tips Tables from XML
GREUH_TipsText = [];
{
	if (_x select [0, 1] != "t" && _x != "br") then {
    	GREUH_TipsText pushback (_x select [7]);
	};
} forEach ((localize "STR_TUTO_TEXT12") splitString "></");

/*
{
	[_x] call BIS_fnc_drawCuratorLocations;
} foreach allCurators;
*/

// Sign Add
addMissionEventHandler ["Draw3D",{
	private _pos = ASLToAGL getPosASL chimera_sign;
	if (player distance2D _pos <= 30) then {
		drawIcon3D ["", [1,1,1,1], _pos vectorAdd [0, 0, 3], 0, 0, 0, "- READ ME -", 2, 0.05, "TahomaB"];
	};

	private _near_grave = nearestObjects [player, GRLIB_player_grave, 2];
	if (count (_near_grave) != 0) then {
		private _grave = _near_grave select 0;
		private _grave_pos = ASLToAGL getPosASL _grave;
		drawIcon3D [getMissionPath "res\skull.paa", [1,1,1,1], _grave_pos vectorAdd [0, 0, 1], 2, 2, 0, (_grave getVariable ["GRLIB_grave_message", ""]), 2, 0.05, "RobotoCondensed", "center"];
	};

	private _near_sign = player nearobjects [FOB_sign, 5];
	if (count (_near_sign) > 0 && player distance2D lhd >= 200) then {  
		private _sign = _near_sign select 0;
		private _gid = _sign getVariable ["GRLIB_vehicle_owner", "public"];
		private _name = "- LRX";
		if (_gid != "public") then {
			_name = GRLIB_player_scores select { _x select 0 == _gid} select 0 select 3;
		};
		drawIcon3D ["", [1,1,1,1], (ASLToAGL getPosASL _sign) vectorAdd [0, 0, 2.5], 0, 0, 0, format ["- FOB %1 -", _name], 2, 0.07, "RobotoCondensed", "center"];
	};
}];
chimera_sign addAction ["<t color='#FFFFFF'>" + localize "STR_READ_ME" + "</t>",{createDialog "liberation_notice"},"",999,true,true,"","[] call is_menuok",5];
// chimera_sign addAction ["<t color='#FFFFFF'>" + localize "STR_TIPS" + "</t>",{createDialog "liberation_tips"},"",998,true,true,"","[] call is_menuok",5];


waitUntil {!isNull findDisplay 46};
(findDisplay 46) displayAddEventHandler ["Unload",{	
	// code here gets executed on the client at end of mission, whether due to player abort, loss of connection, or mission ended by server;
	// might not work on headless clients
}];

waitUntil { time > 5 };
initAmbientLife;
enableEnvironment [true, true];
setTerrainGrid 25;  //High = 12.5, Very High = 6.25, Ultra = 3.125

(group player) setVariable ["BIS_dg_reg",nil,true];


findDisplay 46 displayAddEventHandler ["KeyDown",{
    if ((_this select 1) in actionKeys "IngamePause") then {
        0 spawn {
            _t = diag_tickTime + 1;
            waitUntil {diag_tickTime > _t || !isNull findDisplay 49};
            if (diag_tickTime > _t) exitWith {};
            findDisplay 49 displayCtrl 1010 ctrlAddEventHandler ["ButtonClick",{
				_message = format ["%1 has respawned!", name player];
				_message remoteExec ["hint", -2];
			}];
        };
    };
    false
}];

diag_log "--- Client Init stop ---";
