// *** FRIendlIES ***
GRLIB_side_friendly = west;
GRLIB_color_friendly = "ColorBLUFOR";

// default className: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "B_Heli_Transport_03_F";
// comment to use value from lobby/server.cfg
FOB_typename = "Land_OPTRE_hard_tent_des";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "OPTRE_m1087_stallion_device_unsc";
FOB_outpost = "";
FOB_box_outpost = "";
Respawn_truck_typename = "";
ammo_truck_typename = "";
fuel_truck_typename = "";
repair_truck_typename = "";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "rhsusf_army_ucp_helipilot";
crewman_classname = "rhsusf_army_ucp_crewman";
A3W_BoxWps = "rhs_weapon_crate";

units_loadout_overide = [];

// [className, MANPOWER, ammo, fuel, rank]
infantry_units = [
	["BWA3_Medic_Fleck", 0, ai_value, 0, MSU_Rank_Private]
];

small_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M274_ATV", 0, 10, 0, MSU_Rank_Private],
	["OPTRE_M12_FAV_APC", 0, 100, msu_fuel_uarmed, MSU_Rank_Private]
];
small_infantry_transport_armed_HMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["OPTRE_M12_LRV", 0, 200, msu_fuel_larmed, MSU_Rank_Corporal],
	["OPTRE_M12G1_LRV", 0, 400, msu_fuel_harmed, MSU_Rank_Corporal],
	["OPTRE_salamanderagl_01", 0, 200, msu_fuel_harmed, MSU_Rank_Corporal],
	["OPTRE_armed_puma_01", 0, 200, msu_fuel_harmed, MSU_Rank_Corporal]
];

small_infantry_transport_armed_GMG = [
	["CUP_B_RG31_Mk19_OD_USA", 0, 400, msu_fuel_apc, MSU_Rank_Corporal]
];

small_infantry_transport_armed_AT = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M12A1_LRV", 0, 300, msu_fuel_apc, MSU_Rank_Corporal],
	["OPTRE_AT_puma_01", 0, 300, msu_fuel_apc, MSU_Rank_Corporal]
];

big_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M411_APC_UNSC", 0, 150, msu_fuel_uarmed, MSU_Rank_Private]
	
];

big_infantry_transport_armed_HMG = [
	["BWA3_Dingo2_FLW200_M2_CG13_Fleck", 0, 350, msu_fuel_apc, MSU_Rank_Corporal]

];

big_infantry_transport_armed_GMG = [
	["CUP_B_Dingo_GL_GER_Wdl", 0, 500, msu_fuel_apc, MSU_Rank_Corporal]
];

armored_infantry_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["OPTRE_M313_UNSC", 0, 450, msu_fuel_ifv, MSU_Rank_Corporal]

];

artillery_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M875_SPH", 0, 1500, msu_fuel_mbt, MSU_Rank_Sergeant]
];

apc = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M494", 0, 1300, msu_fuel_ifv, MSU_Rank_Sergeant],
	["OPTRE_M412_IFV_UNSC", 0, 1300, msu_fuel_ifv, MSU_Rank_Sergeant],
	["OPTRE_M413_MGS_UNSC", 0, 1300, msu_fuel_ifv, MSU_Rank_Sergeant],
	["OPTRE_ferret_01", 0, 1300, msu_fuel_ifv, MSU_Rank_Sergeant]
];

mbt = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M808BM_UNSC", 0, 1800, msu_fuel_ifv, MSU_Rank_Sergeant],
	["OPTRE_M808B_UNSC", 0, 1800, msu_fuel_mbt, MSU_Rank_Sergeant],
	["OPTRE_M808S", 0, 1800, msu_fuel_mbt, MSU_Rank_Sergeant],
	["OPTRE_M850_UNSC", 0, 2250, msu_fuel_mbt, MSU_Rank_Sergeant]

];

anti_air = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_M12R_AA", 0, 700, msu_fuel_mbt, MSU_Rank_Sergeant],
	["OPTRE_M808B2", 0, 1200, msu_fuel_mbt, MSU_Rank_Sergeant]
];

helicopter_personal_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_UNSC_falcon_S", 0, 400, msu_fuel_heli, MSU_Rank_Private],
	["OPTRE_Pelican_unarmed", 0, 400, msu_fuel_heli, MSU_Rank_Private]
];

helicopter_cargo_transport = [
	["OPTRE_UNSC_falcon_S", 0, 400, msu_fuel_heli, MSU_Rank_Private],
	["OPTRE_Pelican_unarmed", 0, 400, msu_fuel_heli, MSU_Rank_Private]
];

helicopter_armed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_UNSC_falcon_armed_S", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_Falconagl_01", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_raven_01", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_Pelican_armed_70mm_single_seater", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_Pelican_unarmed_SOCOM", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_AV22B_Sparrowhawk", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_AV22_Sparrowhawk", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_AV22A_Sparrowhawk", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_AV22C_Sparrowhawk", 0, 1700, msu_fuel_aheli, MSU_Rank_Major],
	["OPTRE_UNSC_hornet_CAS", 0, 1700, msu_fuel_aheli, MSU_Rank_Major]
];

planes = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_T_VtoL_01_infantry_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, MSU_Rank_Private],
	["B_T_VtoL_01_vehicle_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, MSU_Rank_Private]
];

jets = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_gladius_01", 0, 1400, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_gladius_01L", 0, 1400, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_bayonetstealth_01", 0, 1700, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_bayonet_01", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["OPTRE_gladius_01", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_gladius_01L", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_YSS_1000_A_VTOL_Single", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_YSS_1000_A", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_YSS_1000_A_VTOL", 0, 2000, msu_fuel_aplane, MSU_Rank_Major],
	["OPTRE_YSS_1000_A_Single", 0, 2000, msu_fuel_aplane, MSU_Rank_Major]
];

drones = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_Wombat_S", 0, 1500, 0, MSU_Rank_Private],
	["OPTRE_Wombat", 0, 1500, msu_fuel_apc, MSU_Rank_Captain],
	["OPTRE_Wombat_B", 0, 1500, msu_fuel_aplane, MSU_Rank_Captain]
];

medical_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_m1087_stallion_unsc_medical", 0, 500, 0, MSU_Rank_Private],
	["OPTRE_M12_FAV_APC_MED", 0, 400, msu_fuel_bat, MSU_Rank_Private]
];

medical_vehicle_air = [
	["CUP_B_UH1Y_MEV_USMC", 0, 400, msu_fuel_heli, MSU_Rank_Private]
];

logistics_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_m1087_stallion_unsc", 0, 150, msu_fuel_blogi, MSU_Rank_Private],
	["OPTRE_m1087_stallion_unsc_resupply", 0, 150, msu_fuel_blogi, MSU_Rank_Private],
	["OPTRE_m1087_stallion_cover_unsc", 0, 150, msu_fuel_blogi, MSU_Rank_Private],
	["OPTRE_m1087_stallion_unsc_refuel", 0, 150, msu_fuel_blogi, MSU_Rank_Private],
	["OPTRE_m1087_stallion_unsc_repair", 0, 150, msu_fuel_blogi, MSU_Rank_Private]

];

boats = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["optre_catfish_unarmed_f", 0, 125, 0, MSU_Rank_Private],
	["optre_catfish_mg_f", 0, 125, 0, MSU_Rank_Private],
	["optre_catfish_atgm_f", 0, 125, 0, MSU_Rank_Private],
	["optre_catfish_aa_f", 0, 125, 0, MSU_Rank_Private]
];

static_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["OPTRE_Static_M41", 20, 0, 0, MSU_Rank_Private],
	["B_radar_System_01_F", 10, 0, 0, MSU_Rank_Private],
	["OPTRE_Lance", 20, 0, 0, MSU_Rank_Private],
	["OPTRE_Scythe_AA", 20, 0, 0, MSU_Rank_Private],
	["OPTRE_Scythe", 20,0, 0, MSU_Rank_Private]
];

// list for vehicle restrictions

car_vehicles = [];
{
    car_vehicles pushBack (_x select 0);
} forEach (small_infantry_transport_unarmed + small_infantry_transport_armed_HMG + small_infantry_transport_armed_GMG + small_infantry_transport_armed_AT + big_infantry_transport_unarmed + big_infantry_transport_armed_HMG + big_infantry_transport_armed_GMG + armored_infantry_transport + medical_vehicle_ground + logistics_vehicle_ground + boats);

tank_vehicles = [];
{
    tank_vehicles pushBack (_x select 0);
} forEach (mbt + artillery_vehicles + anti_air + apc);

plane_vehicles = [];
{
    plane_vehicles pushBack (_x select 0);
} forEach (planes);

helicopter_armed_vehicles = [];
{
    helicopter_armed_vehicles pushBack (_x select 0);
} forEach (helicopter_armed);

jet_vehicles = [];
{
    jet_vehicles pushBack (_x select 0);
} forEach (jets);

transport_air_vehicles = [];
{
    transport_air_vehicles pushBack (_x select 0);
} forEach (helicopter_cargo_transport + helicopter_personal_transport + medical_vehicle_air);

blufor_air = [
	"RHS_AH1Z_wd",
	"RHS_A10",
	"rhsusf_f22",
	"B_Heli_Attack_01_F"
];

boats_west = [
	"CUP_B_RHIB2Turret_USMC",
	"CUP_B_RHIB_USMC",
	"CUP_B_LCU1600_USMC",
	"CUP_B_Zodiac_USMC"
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"CUP_WV_B_CRAM",
    "OPTRE_Scythe",
	"OPTRE_Scythe_AA",
	"OPTRE_Lance",
	"OPTRE_Wombat_S",
	"OPTRE_Wombat",
	"OPTRE_Wombat_B",
	"CUP_WV_B_RAM_Launcher",
	"B_radar_System_01_F",
	"B_SAM_System_03_F",
	"B_Ship_MRLS_01_F",
	"B_AAA_System_01_F",
	"CUP_WV_B_SS_Launcher",
	"rnt_mantis_base",
	"rnt_mantis_radar",
	"B_SAM_System_01_F",
	"itc_land_COBRA01"
];

support_crates = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Category_ReplacementParts],
	["ACE_Track", 0, 0, 0, MSU_Rank_Private],
	["ACE_Wheel", 0, 0, 0, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Category_Logistics],
	["Land_IntravenStand_01_empty_F", 0, 0, 0, MSU_Rank_Private],
	["Box_IED_exp_F", 0, 0, 0, MSU_Rank_Private],
	["Land_RepairDepot_01_green_F", 0, 0, 0, MSU_Rank_Private],
	["US_WarfareBVehicleServicePoint_Base_EP1", 0, 0, 0, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Category_MaintenanceSmall],
	["B_CargoNet_01_ammo_F", 0, 0, 0, MSU_Rank_Private],
	["CargoNet_01_box_F", 0, 0, 0, MSU_Rank_Private],
	["CargoNet_01_barrels_F", 0, 0, 0, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Category_MaintenanceBig],
	// Huron Container
	[ammo_sling_typename, 0, 0, 0, MSU_Rank_Private],
	[repair_sling_typename, 0, 0, 0, MSU_Rank_Private],
	[fuel_sling_typename, 0, 0, 0, MSU_Rank_Private],
	[medic_sling_typename, 0, 0, 0, MSU_Rank_Private],
	// Taru Container
	["Land_Pod_Heli_Transport_04_medevac_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_covered_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_repair_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_fuel_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_ammo_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_box_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Pod_Heli_Transport_04_bench_F", 0, 0, 0, MSU_Rank_Private],
	// USAF Container
	["USAF_Slingload_ammo", 0, 0, 0, MSU_Rank_Private],
	["USAF_Slingload_Repair", 0, 0, 0, MSU_Rank_Private],
	["USAF_Slingload_fuel", 0, 0, 0, MSU_Rank_Private],
	// BundeswehrFleck
	["BWA3_WLP14_ammo_Fleck", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Flatbed_Oliv", 0, 0, 0, MSU_Rank_Private],
	["BWA3_TCK9_fuel_Fleck", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Repair_Fleck", 0, 0, 0, MSU_Rank_Private],
	// Bundeswehr Tropen
	["BWA3_WLP14_ammo_Tropen", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Flatbed_Tropen", 0, 0, 0, MSU_Rank_Private],
	["BWA3_TCK9_fuel_Tropen", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Repair_Tropen", 0, 0, 0, MSU_Rank_Private],
	// BundeswehrWinter
	["BWA3_WLP14_ammo_Winter", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Flatbed_Winter", 0, 0, 0, MSU_Rank_Private],
	["BWA3_TCK9_fuel_Winter", 0, 0, 0, MSU_Rank_Private],
	["BWA3_WLP14_Repair_Winter", 0, 0, 0, MSU_Rank_Private],
	// FOB
	[FOB_box_typename, 0, 0, 0, 9999],
	[FOB_truck_typename, 0, 0, 0, 9999]
];

buildings_west = [
	// Mauern,Türme
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Barricade],
	["land_optre_bootcamp_barracks", 0, 0, 0, MSU_Rank_Private],
	["Land_optre_milwall_corner", 0, 0, 0, MSU_Rank_Private],
	["Land_optre_milwall_gateXL", 0, 0, 0, MSU_Rank_Private],
	["Land_optre_milwall_hub", 0, 0, 0, MSU_Rank_Private],
	["Land_optre_milwall_segment", 0, 0, 0, MSU_Rank_Private],
	["land_optre_bootcamp_gate", 0, 0, 0, MSU_Rank_Private],
	["land_optre_bootcamp_wall", 0, 0, 0, MSU_Rank_Private],
	["land_optre_bootcamp_wall_end", 0, 0, 0, MSU_Rank_Private],
	["land_optre_bootcamp_wall_B", 0, 0, 0, MSU_Rank_Private],
	["US_WarfareBBarrier10xTall_EP1", 0, 0, 0, MSU_Rank_Private],
	["US_WarfareBBarrier5x_EP1", 0, 0, 0, MSU_Rank_Private],
	["US_WarfareBBarrier10x_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier_large", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier5", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier3", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier1", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier_3_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier_5_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrier_Big_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrierTower_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrierWall6_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrierWall4_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrierWall_corner_F", 0, 0, 0, MSU_Rank_Private],
	["Land_HBarrierWall_corridor_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Cargo_Tower_V1_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Cargo_Patrol_V3_F", 0, 0, 0, MSU_Rank_Private],
	["Land_GuardTower_01_F", 0, 0, 0, MSU_Rank_Private],
	// Wände
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Walls],
	["Concrete_Wall_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_Mil_WallBig_4m_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CncShelter_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CncWall1_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CncWall4_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CncBarrier_stripes_F", 0, 0, 0, MSU_Rank_Private],
	// Wall,stellungen
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Sandbags],
	["Land_fortified_nest_big", 0, 0, 0, MSU_Rank_Private],
	["Land_fortified_nest_small", 0, 0, 0, MSU_Rank_Private],
	["Land_Bunker_01_blocks_3_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Bunker_01_small_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Bunker_01_tall_F", 0, 0, 0, MSU_Rank_Private],
        ["land_bunker_garage", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_t", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_bunker", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_ecke", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_ende", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_stellung", 0, 0, 0, MSU_Rank_Private],
	["rnt_graben_gerade", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_artillery_nest_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_rampart_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_rampart", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_artillery_nest", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_bagfence_long", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_bagfence_round", 0, 0, 0, MSU_Rank_Private],
	["Land_fort_bagfence_corner", 0, 0, 0, MSU_Rank_Private],
	["Land_SandbagBarricade_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_SandbagBarricade_01_hole_F", 0, 0, 0, MSU_Rank_Private],
	["Land_SandbagBarricade_01_half_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CncBarrier_stripes_F", 0, 0, 0, MSU_Rank_Private],
	// Camo-Nätze
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Camonet],
	["Land_CamoNetB_NATO", 0, 0, 0, MSU_Rank_Private],
	["Land_CamoNet_NATO", 0, 0, 0, MSU_Rank_Private],
	["Land_CamoNetVar_NATO_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_CamoNet_NATO_EP1", 0, 0, 0, MSU_Rank_Private],
	["ShedBig", 0, 0, 0, MSU_Rank_Private],
	["Shed", 0, 0, 0, MSU_Rank_Private],
	// Feldlazarett
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Hospital],
	["USMC_WarfareBFieldhHospital", 0, 0, 0, MSU_Rank_Private],
	["US_WarfareBFieldhHospital_Base_EP1", 0, 0, 0, MSU_Rank_Private],
	["INS_WarfareBFieldhHospital", 0, 0, 0, MSU_Rank_Private],
	["TK_GUE_WarfareBFieldhHospital_Base_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_Medevac_house_V1_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Medevac_HQ_V1_F", 0, 0, 0, MSU_Rank_Private],
	// Leitern,treppen
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Ladder],
	["Land_Platform_Stairs_30", 0, 0, 0, MSU_Rank_Private],
	["Land_Platform_Stairs_20", 0, 0, 0, MSU_Rank_Private],
	["Land_ladderEP1", 0, 0, 0, MSU_Rank_Private],
	["Land_ladder_half_EP1", 0, 0, 0, MSU_Rank_Private],
	// Lampen
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Lamps],
	["Land_TentLamp_01_standing_red_F", 0, 0, 0, MSU_Rank_Private],
	["Land_LampDecor_F", 0, 0, 0, MSU_Rank_Private],
	["Land_LampAirport_F", 0, 0, 0, MSU_Rank_Private],
	["Land_LampStreet_F", 0, 0, 0, MSU_Rank_Private],
	["Land_LampStreet_small_F", 0, 0, 0, MSU_Rank_Private],
	["Land_PortableLight_single_F", 0, 0, 0, MSU_Rank_Private],
	["Land_PortableLight_double_F", 0, 0, 0, MSU_Rank_Private],
	["Land_LampStreet_02_double_F", 0, 0, 0, MSU_Rank_Private],
	["Land_PortableLight_02_quad_yellow_F", 0, 0, 0, MSU_Rank_Private],
	// Flaggen
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Flag],
	["OPTRE_CTF_Flag_UNSCBlue", 0, 0, 0, MSU_Rank_Private],
	["OPTRE_CTF_Flag_UNSCRed", 0, 0, 0, MSU_Rank_Private],
	["OPTRE_CTF_Flag_UNSCWhite", 0, 0, 0, MSU_Rank_Private],
	// Camp zeug
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Camp],
	["Land_Campfire_F", 0, 0, 0, MSU_Rank_Private],
	["CampEast_EP1", 0, 0, 0, MSU_Rank_Private],
	["Land_tent_east", 0, 0, 0, MSU_Rank_Private],
	["Land_CampingChair_V1_F", 0, 0, 0, MSU_Rank_Private],
	["Land_CampingTable_F", 0, 0, 0, MSU_Rank_Private],
	["MapBoard_stratis_F", 0, 0, 0, MSU_Rank_Private],
	["MapBoard_altis_F", 0, 0, 0, MSU_Rank_Private],
	["Land_MapBoard_Enoch_F", 0, 0, 0, MSU_Rank_Private],
	["MapBoard_Malden_F", 0, 0, 0, MSU_Rank_Private],
	["MapBoard_Tanoa_F", 0, 0, 0, MSU_Rank_Private],
	// Heli-Pads,Air-Zeug
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Pad],
	["Heli_H_civil", 0, 0, 0, MSU_Rank_Private],
	["HeliH", 0, 0, 0, MSU_Rank_Private],
	["HeliHRescue", 0, 0, 0, MSU_Rank_Private],
	["Land_TentHangar_V1_F", 0, 0, 0, MSU_Rank_Private],
	// Cutter
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Cutter],
	["ClutterCutter", 0, 0, 0, MSU_Rank_Private],
	["Land_ClutterCutter_large_F", 0, 0, 0, MSU_Rank_Private],
	//Other
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Mod_Other],
	["Land_Pier_F", 0, 0, 0, MSU_Rank_Private]
];

if (isnil "blufor_squad_inf_light") then {
	blufor_squad_inf_light = []
};
if (count blufor_squad_inf_light == 0) then {
	blufor_squad_inf_light = [
		"CUP_B_USMC_Soldier_SL",
		"CUP_B_USMC_Medic",
		"CUP_B_USMC_Soldier_GL",
		"CUP_B_USMC_Soldier_AR",
		"CUP_B_USMC_Soldier_LAT",
		"CUP_B_USMC_Engineer",
		"CUP_B_USMC_Soldier",
		"CUP_B_USMC_Soldier"
	];
};
if (isnil "blufor_squad_inf") then {
	blufor_squad_inf = []
};
if (count blufor_squad_inf == 0) then {
	blufor_squad_inf = [
		"CUP_B_USMC_Soldier_SL",
		"CUP_B_USMC_Medic",
		"CUP_B_USMC_Spotter",
		"CUP_B_USMC_Soldier_AR",
		"CUP_B_USMC_Soldier_MG",
		"CUP_B_USMC_Soldier_Marksman",
		"CUP_B_USMC_Soldier_LAT",
		"CUP_B_USMC_Engineer",
		"CUP_B_USMC_Soldier",
		"CUP_B_USMC_Soldier"
	];
};
if (isnil "blufor_squad_at") then {
	blufor_squad_at = []
};
if (count blufor_squad_at == 0) then {
	blufor_squad_at = [
		"CUP_B_USMC_Soldier_SL",
		"CUP_B_USMC_Medic",
		"CUP_B_USMC_Soldier_HAT",
		"CUP_B_USMC_Soldier_LAT",
		"CUP_B_USMC_Engineer",
		"CUP_B_USMC_Soldier"
	];
};
if (isnil "blufor_squad_aa") then {
	blufor_squad_aa = []
};
if (count blufor_squad_aa == 0) then {
	blufor_squad_aa = [
		"CUP_B_USMC_Soldier_SL",
		"CUP_B_USMC_Medic",
		"CUP_B_USMC_Soldier_AA",
		"CUP_B_USMC_Soldier_AA",
		"CUP_B_USMC_Engineer",
		"CUP_B_USMC_Soldier"
	];
};
if (isnil "blufor_squad_mix") then {
	blufor_squad_mix = []
};
if (count blufor_squad_mix == 0) then {
	blufor_squad_mix = [
		"CUP_B_USMC_Soldier_SL",
		"CUP_B_USMC_Medic",
		"CUP_B_USMC_Soldier_AA",
		"CUP_B_USMC_Soldier_HAT",
		"CUP_B_USMC_Engineer",
		"CUP_B_USMC_Soldier"
	];
};

squads = [
	[blufor_squad_inf_light, 10, 300, 0, MSU_Rank_Private],
	[blufor_squad_inf, 20, 400, 0, MSU_Rank_Private],
	[blufor_squad_at, 25, 600, 0, MSU_Rank_Private],
	[blufor_squad_aa, 25, 600, 0, MSU_Rank_Private],
	[blufor_squad_mix, 25, 600, 0, MSU_Rank_Private]
];

// All the UAVs must be declared here
uavs = [
     "OPTRE_Scythe",
	"OPTRE_Scythe_AA",
	"OPTRE_Lance",
	"OPTRE_Wombat_S",
	"OPTRE_Wombat",
	"OPTRE_Wombat_B",
	"CUP_B_USMC_DYN_MQ9",
	"B_UAV_01_F",
	"B_UAV_02_dynamicloadout_F",
	"B_T_UAV_03_dynamicloadout_F",
	"B_UAV_05_F",
	"B_UAV_06_F",
	"C_UAV_06_F",
	"B_T_UGV_01_olive_F",
	"B_T_UGV_01_rcws_olive_F",
	"B_UGV_01_F",
	"B_UGV_01_rcws_F",
	"B_UGV_02_Demining_F",
	"B_radar_System_01_F",
	"CUP_WV_B_CRAM",
	"B_SAM_System_03_F",
	"B_Ship_MRLS_01_F",
	"B_AAA_System_01_F",
	"USAF_MQ9",
	"USAF_RQ4A",
	"ffaa_ea_reaper",
	"rnt_mantis_base",
	"rnt_mantis_radar",
	"B_SAM_System_01_F",
	"itc_land_COBRA01",
	"CUP_B_AH6X_USA",
	"CUP_B_USMC_DYN_MQ9",
        "CUP_WV_B_CRAM",
        "CUP_WV_B_RAM_Launcher",
        "B_radar_System_01_F",
        "B_SAM_System_03_F",
        "B_Ship_MRLS_01_F",
        "B_AAA_System_01_F",
        "CUP_WV_B_SS_Launcher",
        "rnt_mantis_base",
        "rnt_mantis_radar",
        "B_SAM_System_01_F",
        "itc_land_COBRA01",
	"CUP_O_Pchela1T_RU"
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
	"CUP_B_AAV_Unarmed_USMC"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"CUP_B_AAV_Unarmed_USMC"
];

vehicle_rearm_sources_west = [
	"CUP_B_AAV_Unarmed_USMC"
];

vehicle_big_units_west = [
	"CUP_B_LCU1600_USMC"
];

GRLIB_vehicle_whitelist_west = [
];

GRLIB_vehicle_blacklist_west = [
	"CUP_B_SearchLight_static_USMC",
	"CUP_B_M2StaticMG_USMC",
	"CUP_B_M2StaticMG_miniTripod_USMC",
	"CUP_B_M252_USMC",
	"CUP_B_M119_USMC",
	"CUP_B_MK19_TriPod_USMC",
	"CUP_B_Stinger_AA_pod_Base_USMC",
	"CUP_B_toW_TriPod_USMC"
];

box_transport_config_west = [
	[ "CUP_B_MTVR_USMC", -6.5, [0, -0.4, 0.3], [0, -2.1, 0.3] ],
	[ "CUP_B_T810_Unarmed_CZ_DES", -5.5, [0, 0.3, 0], [0, -1.25, 0] ],
	[ "CUP_B_T810_Armed_CZ_DES", -5.5, [0, 0.3, -0.3], [0, -1.25, -0.3] ]
];

// GRLIB_Airdrop_1 = [];
// GRLIB_Airdrop_2 = [];
GRLIB_Airdrop_3 = [
	"CUP_B_T810_Armed_CZ_DES",
	"CUP_B_nM1025_M2_USMC_WDL",
	"CUP_B_M1151_Deploy_USMC",
	"CUP_B_RG31_M2_OD_USMC"
];
GRLIB_Airdrop_4 = [
	"CUP_B_T810_Unarmed_CZ_DES",
	"CUP_B_T810_Armed_CZ_DES",
	"CUP_B_MTVR_USMC"
];
GRLIB_Airdrop_5 = [
	"CUP_B_M1126_ICV_M2_Woodland",
	"CUP_B_M1126_ICV_MK19_Woodland",
	"CUP_B_RG31E_M2_OD_USMC"
];
// GRLIB_Airdrop_6 = [];

vehicle_big_units_west = [
	
];

vehicle_extreme_big_units_west = [
	"CUP_B_Frigate_ANZAC",
	"HAFM_CB90_BLU",
	"HAFM_GunBoat_BLU",
	"HAFM_Russen",
	"HAFM_MEKO_TN",
	"HAFM_MEKO_HN",
	"HAFM_FREMM",
	"HAFM_ABurke"
];
