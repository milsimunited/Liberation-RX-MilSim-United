params ["_uid", "_ammo"];

private _p1 = _uid call BIS_fnc_getUnitByUID;
if (!isNull _p1) then {
    private _cur_ammo = _p1 getVariable ['GREUH_ammo_count', 0];
    private _new_ammo = (_cur_ammo + _ammo);
    if (_new_ammo < msu_ammo_min) then { _new_ammo = msu_ammo_min; } else { if (_new_ammo > msu_ammo_max) then { _new_ammo = msu_ammo_max; }; };
    _p1 setVariable ['GREUH_ammo_count', _new_ammo, true];
};

{
    if ( (_x select 0) == _uid) exitWith {
        private _cur_ammo = (_x select 2);
        private _new_ammo = (_cur_ammo + _ammo);
        if (_new_ammo < msu_ammo_min) then { _new_ammo = msu_ammo_min; } else { if (_new_ammo > msu_ammo_max) then { _new_ammo = msu_ammo_max; }; };
        _x set [2, _new_ammo];
    };
} forEach GRLIB_player_scores;
