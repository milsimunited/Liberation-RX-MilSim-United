private _currentTime = systemTime;
private _day = _currentTime select 2;
private _hour = _currentTime select 3;
private _minute = _currentTime select 4;

if (_day != 1) exitWith {};
if (_hour != 5) exitWith {};

if ((_minute > 30) && (_minute < 45)) then {
	diag_log "First day of the month between 05:30 and 05:45. Resetting Player Data.";
	diag_log "Old Player Data";
	diag_log format["GRLIB_player_scores = %1", GRLIB_player_scores];
	GRLIB_player_scores = [];
};