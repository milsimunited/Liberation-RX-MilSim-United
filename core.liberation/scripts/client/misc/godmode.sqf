disableSerialization;

_array = _this select 0;
_ctrl  = _array select 0;

if (ctrlChecked _ctrl) then {
	hint "GodMode ON !";
	// player forceAddUniform "U_B_Protagonist_VR";
	player allowDamage false;
	player setDamage 0;
	do_admin = 1;
} else {
	hint "GodMode OFF !";
	// player forceAddUniform "U_B_CombatUniform_mcam";
	player allowDamage true;
	do_admin = 0;
};
sleep 5;
