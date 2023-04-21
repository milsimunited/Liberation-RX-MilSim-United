_unit = _this select 0;


_unit addHeadgear msu_opfor_helmet;


_oldContentU = uniformItems _unit;
_unit forceAddUniform msu_opfor_uniform;
{
    _unit addItemToUniform _x;
} forEach _oldContentU;


_oldContentV = vestItems _unit;
_unit addVest msu_opfor_vest;
{
    _unit addItemToVest _x;
} forEach _oldContentV;


_unit addPrimaryWeaponItem "acc_flashlight";


_unit linkItem "ACE_NVG_Gen4_Black";

