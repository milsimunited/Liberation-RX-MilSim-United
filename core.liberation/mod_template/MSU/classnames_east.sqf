// *** BADDIES ***
GRLIB_side_enemy = east;
GRLIB_color_enemy = "ColorOPFOR";
GRLIB_color_enemy_bright = "ColorRED";

// Used in default_loadout.sqf for units that are defined at the bottom of this file (Units with loadout change)
opfor_helmet = "CUP_H_RUS_Altyn";
opfor_uniform = "CFP_U_O_RUMVD_Gorka_ATACSFG_MCam";
opfor_vest = "CFP_V_RUS_6B45_MCam_3";


// All class MUST be defined !
opfor_sentry = "CFP_O_WAGNER_Contractor_1_WDL_01";
opfor_rifleman = "CFP_O_WAGNER_Contractor_2_WDL_01";
opfor_grenadier = "CFP_O_WAGNER_Security_Contractor_AK74_GL_WDL_01";
opfor_aa = "CFP_O_WAGNER_Tactical_Specialist_Igla_WDL_01";
opfor_squad_leader = "CFP_O_WAGNER_Team_Coordinator_WDL_01";
opfor_team_leader = "CFP_O_WAGNER_Team_Coordinator_WDL_01";
opfor_marksman = "CFP_O_WAGNER_Marksman_WDL_01";
opfor_machinegunner = "CFP_O_WAGNER_Field_Specialist_PKM_WDL_01";
opfor_heavygunner = "CFP_O_WAGNER_Field_Specialist_RPK_WDL_01";
opfor_medic = "CFP_O_WAGNER_Field_Medic_WDL_01";
opfor_rpg = "CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01";
opfor_at = "CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01";
opfor_officer = "CFP_O_WAGNER_Team_Coordinator_WDL_01";
opfor_sharpshooter = "CFP_O_WAGNER_Marksman_WDL_01";
opfor_sniper = "CFP_O_WAGNER_Security_Contractor_SVD_WDL_01";
opfor_spotter = "CFP_O_WAGNER_Security_Contractor_SVD_WDL_01";
opfor_engineer = "CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01";
opfor_paratrooper = "CFP_O_WAGNER_Security_Contractor_AK74_GL_WDL_01";
opfor_mrap = "CFP_O_WAGNER_BTR_80_WDL_01";
opfor_mrap_hmg = "CFP_O_WAGNER_BTR_80_WDL_01";
opfor_mrap_gmg = "CFP_O_WAGNER_BTR_80_WDL_01";
opfor_transport_helo = "CFP_O_WAGNER_Mi24_D_WDL_01";
opfor_transport_truck = "CUP_O_Kamaz_RU";
opfor_ammobox_transport = "CUP_O_Kamaz_RU";
opfor_fuel_truck = "CUP_O_Kamaz_Refuel_RU";
opfor_ammo_truck = "CUP_O_Kamaz_Reammo_RU";
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";
opfor_flag = "Flag_CSAT_F";

militia_squad = [
	"CFP_O_WAGNER_Team_Coordinator_WDL_01",
	"CFP_O_WAGNER_Contractor_1_WDL_01",
	"CFP_O_WAGNER_Contractor_2_WDL_01",
	"CFP_O_WAGNER_Security_Contractor_AK74_GL_WDL_01",
	"CFP_O_WAGNER_Security_Contractor_AK74_GL_WDL_01",
	"CFP_O_WAGNER_Field_Specialist_RPK_WDL_01",
	"CFP_O_WAGNER_Field_Specialist_PKM_WDL_01",
	"CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01",
	"CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01",
	"CFP_O_WAGNER_Marksman_WDL_01",
	"CFP_O_WAGNER_Security_Contractor_SVD_WDL_01"
];
private _editFullMilitiaSquadLoadout = false;

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
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CUP_O_T90_RU",
	"CUP_O_2S6M_RU"
];

boats_east = [
	"O_Boat_Armed_01_hmg_F"
];

opfor_vehicles = [
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CUP_O_T90_RU",
	"CUP_O_2S6M_RU"
];

opfor_vehicles_low_intensity = [
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01"
];

opfor_battlegroup_vehicles = [
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CUP_O_T90_RU",
	"CUP_O_2S6M_RU"
];

opfor_battlegroup_vehicles_low_intensity = [
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CUP_O_T90_RU",
	"CUP_O_2S6M_RU"
];

opfor_troup_transports = [
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CFP_O_WAGNER_Mi8_WDL_01",
	"CFP_O_WAGNER_Mi24_D_WDL_01"
];

opfor_choppers = [
    "CFP_O_WAGNER_Mi8_WDL_01",
	"CFP_O_WAGNER_Mi24_D_WDL_01"
];

opfor_air = [
    "CFP_O_WAGNER_Mi8_WDL_01",
	"CFP_O_WAGNER_Mi24_D_WDL_01",
	"CUP_O_SU34_RU"
];

opfor_statics = [
	"CUP_O_2S6M_RU"
];

opfor_reinforcement_vehicles = [
	"CUP_O_GAZ_Vodnik_BPPU_RU",
	"CFP_O_WAGNER_BTR_80_WDL_01",
    "CUP_O_T90_RU",
	"CUP_O_2S6M_RU"
];

opfor_recyclable = [
	["CUP_O_GAZ_Vodnik_BPPU_RU", 0, 200, 0],
	["CFP_O_WAGNER_BTR_80_WDL_01", 0, 200, 0],
	["CUP_O_T90_RU", 0, 300, 0],
	["CUP_O_2S6M_RU", 0, 300, 0],
	["CFP_O_WAGNER_Mi8_WDL_01", 0, 400, 0],
	["CFP_O_WAGNER_Mi24_D_WDL_01", 0, 400, 0],
	["CUP_O_SU34_RU", 0, 500, 0]
];

loot_crates = [
	["Box_NATO_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Box_East_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Box_IND_AmmoVeh_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_BarrelWater_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_FoodSacks_01_large_brown_idap_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0],
	["Land_MetalBarrel_F", 0, round(box_recycle_value / GRLIB_recycling_percentage), 0]
];

/*
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
*/
