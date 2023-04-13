_unit = _this select 0;


_unit addHeadgear "H_HelmetIA";


_oldContentU = uniformItems _unit;
_unit forceAddUniform "U_I_CombatUniform";
{
    _unit addItemToUniform _x;
} forEach _oldContentU;


_oldContentV = vestItems _unit;
_unit addVest "V_PlateCarrierIA1_dgtl";
{
    _unit addItemToVest _x;
} forEach _oldContentV;


_unit addPrimaryWeaponItem "acc_flashlight";


_unit linkItem "ACE_NVG_Gen4_Black";

