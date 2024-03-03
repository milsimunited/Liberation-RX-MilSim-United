// *** BADDIES ***
GRLIB_side_enemy = east;
GRLIB_color_enemy = "ColorOPFOR";
GRLIB_color_enemy_bright = "ColorRED";

// Used in default_loadout.sqf for units that are defined at the bottom of this file (Units with loadout change)
opfor_helmet = "CUP_H_RUS_6B47_v2_GogglesClosed_Summer";
opfor_uniform = "CUP_U_O_RUS_Ratnik_Autumn";
opfor_vest = "CUP_V_CZ_vest16";


// All class MUST be defined !
opfor_sentry = "OPTREW_Grunt_5";
opfor_rifleman = "OPTREW_Grunt_2";
opfor_grenadier = "OPTREW_Grunt_1";
opfor_squad_leader = "OPTRE_FC_Elite_Zealot";
opfor_team_leader = "OPTREW_Grunt_2";
opfor_marksman = "OPTRE_Jackal_Infantry_F";
opfor_machinegunner = "OPTRE_Jackal_Infantry_F";
opfor_heavygunner = "OPTRE_Jackal_Infantry_F";
opfor_medic = "OPTRE_Jackal_Infantry_F";
opfor_rpg = "OPTRE_Jackal_Infantry_F";
opfor_at = "OPTRE_FC_Elite_MinorAT";
opfor_aa = "OPTRE_FC_Elite_MinorAT";
opfor_officer = "OPTREW_Grunt_3";
opfor_sharpshooter = "OPTRE_Jackal_Infantry_F";
opfor_sniper = "OPTRE_Jackal_Infantry_F";
opfor_spotter = "OPTRE_Jackal_Infantry_F";
opfor_engineer = "OPTRE_Jackal_Infantry_F";
opfor_paratrooper = "OPTREW_Grunt_4";
opfor_mrap = "CUP_O_GAZ_Vodnik_PK_RU";
opfor_mrap_hmg = "CUP_O_GAZ_Vodnik_PK_RU";
opfor_mrap_gmg = "CUP_O_GAZ_Vodnik_AGS_RU";
opfor_transport_helo = "CUP_O_Mi8AMT_RU";
opfor_transport_truck = "CUP_O_Ural_RU";
opfor_fuel_truck = "CUP_O_Ural_Refuel_RU1";
opfor_ammo_truck = "CUP_O_Ural_Reammo_RU";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "Flag_CSAT_F";

militia_squad = [
    "WBK_EliteMainWeap_4",
	"OPTRE_Jackal_Infantry_F",
	"OPTREW_Grunt_5",
	"OPTREW_Grunt_2",
	"OPTREW_Grunt_1",
	"OPTREW_Grunt_3",
	"OPTREW_Grunt_4",
	"WBK_EliteMainWeap_4"
];
private _editFullMilitiaSquadLoadout = true;

militia_loadout_overide = [
];

divers_squad = [
	"O_diver_TL_F",
	"O_diver_TL_F",
	"O_diver_exp_F",
	"O_diver_exp_F",
	"O_diver_exp_F",
	"O_diver_exp_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F",
	"O_diver_F"
];

militia_vehicles = [
	"OPTRE_FC_Spectre_Transport_Ultra"
];

boats_east = [
	"O_Boat_Armed_01_hmg_F"
];

opfor_vehicles = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_Spectre_AT"
];

opfor_vehicles_low_intensity = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_Spectre_AT"
];

opfor_battlegroup_vehicles = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_AA_Wraith",
    "OPTRE_FC_SAM_Wraith_Needle",
	"OPTRE_FC_Spectre_AT"
];

opfor_battlegroup_vehicles_low_intensity = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_Spectre_AT"
];

opfor_troup_transports = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_Spectre_AT"

];

opfor_choppers = [
    "OPTRE_FC_Type26B_Ultra_Banshee",
	"OPTRE_FC_Type27_Banshee",
	"OPTRE_FC_Type26B_Banshee",
	"OPTRE_FC_Type26N_Banshee",
	"OPTRE_FC_Spirit_Concussion"
];

opfor_air = [
    "OPTRE_FC_Type26B_Ultra_Banshee",
	"OPTRE_FC_Type27_Banshee",
	"OPTRE_FC_Type26B_Banshee",
	"OPTRE_FC_Type26N_Banshee",
	"OPTRE_FC_Spirit_Concussion"
];

opfor_statics = [
	"O_HMG_01_high_F",
	"O_GMG_01_high_F",
	"O_static_AA_F",
	"O_static_AT_F",
	"O_Mortar_01_F"
];

opfor_reinforcement_vehicles = [
	"OPTRE_FC_Spectre_Transport_Ultra",
    "OPTRE_FC_Spectre_AI",
	"OPTRE_FC_Spectre_AT",
	"OPTREW_Hunter_1",
	"OPTREW_Hunter_1",
	"OPTRE_FC_Wraith"
];

opfor_recyclable = [
	["O_Boat_Armed_01_hmg_F", 2, round (100 / GRLIB_recycling_percentage), 2],
	["O_HMG_01_high_F", 0, round (20 / GRLIB_recycling_percentage), 0],
	["O_GMG_01_high_F", 0, round (40 / GRLIB_recycling_percentage), 0],
	["O_static_AA_F", 0, round (80 / GRLIB_recycling_percentage), 0],
	["O_static_AT_F", 0, round (80 / GRLIB_recycling_percentage), 0],
	["O_Mortar_01_F", 0, round (300 / GRLIB_recycling_percentage), 0],
	["CUP_O_C47_SLA", 1, round (20 / GRLIB_recycling_percentage), 2],
	["O_Plane_Fighter_02_F", 1, round (40 / GRLIB_recycling_percentage), 2],
	["O_Plane_Fighter_02_Stealth_F", 1, round (30 / GRLIB_recycling_percentage), 2],
	["CUP_O_SU34_RU", 1, round (40 / GRLIB_recycling_percentage), 2],
	["CUP_O_Su25_Dyn_RU", 1, round (30 / GRLIB_recycling_percentage), 2],
	["CUP_O_Mi24_V_Dynamic_RU", 5, round (20 / GRLIB_recycling_percentage), 5],
	["CUP_O_Mi24_P_Dynamic_RU", 5, round (20 / GRLIB_recycling_percentage), 5],
	["CUP_O_Mi8_RU", 5, round (50 / GRLIB_recycling_percentage), 5],
	["CUP_O_Ka60_Grey_RU", 5, round (50 / GRLIB_recycling_percentage), 5],
	["CUP_O_Ka52_RU", 5, round (50 / GRLIB_recycling_percentage), 5],
	["CUP_O_Ka50_DL_RU", 5, round (50 / GRLIB_recycling_percentage), 5],
	["CUP_O_BM21_RU", 5, round (50 / GRLIB_recycling_percentage), 5],
	["CUP_O_T72_RU", 5, round (50 / GRLIB_recycling_percentage), 3],
	["CUP_O_Ural_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BTR90_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BMP_HQ_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BMP3_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BRDM2_RUS", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_UAZ_AGS30_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_UAZ_MG_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BRDM2_ATGM_RUS", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_BTR60_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_T90_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_2S6M_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_MTLB_pk_Green_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_GAZ_Vodnik_AGS_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["CUP_O_GAZ_Vodnik_PK_RU", 10, round (150 / GRLIB_recycling_percentage), 10],
	["LOP_ChDKZ_BTR70", 10, round (200 / GRLIB_recycling_percentage), 10],
	["CUP_O_UAZ_Unarmed_RU", 10, round (300 / GRLIB_recycling_percentage), 10],
	["CUP_O_GAZ_Vodnik_BPPU_RU", 15, round (400 / GRLIB_recycling_percentage), 15],
	["CUP_O_UAZ_AA_RU", 15, round (800 / GRLIB_recycling_percentage), 15],
	["CUP_O_MTLB_pk_Green_RU", 15, round (900 / GRLIB_recycling_percentage), 15],
	["CUP_O_Ural_ZU23_RU", 15, round (900 / GRLIB_recycling_percentage), 15]
];

loot_crates = [
	["Box_NATO_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Box_East_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Box_IND_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_BarrelWater_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_FoodSacks_01_large_brown_idap_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_MetalBarrel_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0]
];

if (isServer) then {
	loadout_msu_opf = compile preprocessFileLineNumbers "mod_template\MSU\default_loadout.sqf";

	if (_editFullMilitiaSquadLoadout) then {
		{
			[_x, "InitPost", {
				params ["_vehicle"];
				[_vehicle] spawn loadout_msu_opf;
			}, nil, nil, true] call CBA_fnc_addClassEventHandler;
		} forEach militia_squad;
	};
};
