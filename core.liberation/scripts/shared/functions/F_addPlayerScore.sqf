params ["_uid", "_score"];

private _p1 = _uid call BIS_fnc_getUnitByUID;
if (!isNull _p1) then {
    private _score2 = _score;
    private _cur_score = score _p1;
    private _new_score = (_cur_score + _score);
    if (_new_score < msu_score_min) then { _score2 = msu_score_min - _cur_score; } else { if (_new_score > msu_score_max) then { _score2 = msu_score_max - _cur_score; }; };
    _p1 addScore _score2;
};

{
    if ( (_x select 0) == _uid) exitWith {
        private _cur_score = (_x select 1);
        private _new_score = (_cur_score + _score);
        if (_new_score < msu_score_min) then { _new_score = msu_score_min; } else { if (_new_score > msu_score_max) then { _new_score = msu_score_max; }; };
        _x set [1, _new_score];
    };
} forEach GRLIB_player_scores;
