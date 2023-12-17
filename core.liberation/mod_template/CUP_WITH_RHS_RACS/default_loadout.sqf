_unit = _this select 0;


_unit addHeadgear opfor_helmet;


_oldContentU = uniformItems _unit;
_unit forceAddUniform opfor_uniform;
{
    _unit addItemToUniform _x;
} forEach _oldContentU;


_oldContentV = vestItems _unit;
_unit addVest opfor_vest;
{
    _unit addItemToVest _x;
} forEach _oldContentV;

if( (ai_equipment_replacement) && (typeof _unit == ai_replacement_classname) ) then {
    _unit removeWeapon(primaryWeapon _unit);
    _unit addWeapon ai_replacement_weapon;
    _unit addMagazines [ai_replacement_magazine,8];
};

_unit addPrimaryWeaponItem "acc_flashlight";
_unit linkItem "ACE_NVG_Gen4_Black";