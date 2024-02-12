_unit = _this select 0;

_list = position _unit nearEntities ["MAN",10];
{
	[_unit, _x] call ACE_medical_treatment_fnc_fullHeal;
	sleep 0.1;
} foreach _list;