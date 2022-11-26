// *** FRIENDLIES ***
GRLIB_side_friendly = WEST;
GRLIB_color_friendly = "ColorBLUFOR";

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "B_Heli_Transport_03_F"; // comment to use value from lobby/server.cfg
FOB_typename = "Land_Cargo_HQ_V1_F";
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

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units = [
["BWA3_Medic_Fleck",0,ai_value,0,GRLIB_perm_inf]
];

units_loadout_overide = [];

light_vehicles = [

// Light vehicles

// Halo

["OPTRE_M12_FAV_APC",0,light_vehicle_price_tier_3,0,GRLIB_perm_inf],
["OPTRE_M12_LRV",0,light_vehicle_price_tier_7,0,GRLIB_perm_inf],
["OPTRE_M12_FAV_APC_MED",0,light_vehicle_price_tier_3,0,GRLIB_perm_inf],
["OPTRE_M12_FAV",0,light_vehicle_price_tier_3,0,GRLIB_perm_inf],
["OPTRE_M12A1_LRV",0,light_vehicle_price_tier_7,0,GRLIB_perm_inf],
["OPTRE_M12G1_LRV",0,light_vehicle_price_tier_7,0,GRLIB_perm_inf],
["OPTRE_M12R_AA",0,light_vehicle_price_tier_7,0,GRLIB_perm_inf],
["OPTRE_M813_TT",0,light_vehicle_price_tier_3,0,GRLIB_perm_inf],
["OPTRE_M914_RV",0,light_vehicle_price_tier_7,0,GRLIB_perm_inf]
];

strong_light_vehicles = [

// Strong light vehicles
["OPTRE_M412_IFV_UNSC",0,strong_light_vehicle_price_tier_7,0,GRLIB_perm_inf]
];

heavy_vehicles = [


// Heavy vehicles

["OPTRE_M494",0,heavy_vehicle_price_tier_12,0,GRLIB_perm_inf],
["OPTRE_M413_MGS_UNSC",0,heavy_vehicle_price_tier_12,0,GRLIB_perm_inf]
];

strong_heavy_vehicles = [

// Strong heavy vehicles
["OPTRE_M808BM_UNSC",0,strong_heavy_vehicle_price_tier_4,0,GRLIB_perm_inf],
["OPTRE_M808B_UNSC",0,strong_heavy_vehicle_price_tier_4,0,GRLIB_perm_inf],
["OPTRE_M808B2",0,strong_heavy_vehicle_price_tier_4,0,0,GRLIB_perm_inf],
["OPTRE_M808B2",0,air_vehicle_price_tier_13 ,0,GRLIB_perm_inf],
["OPTRE_M850_UNSC",0,air_vehicle_price_tier_13  ,0,GRLIB_perm_inf]
];

air_vehicles = [

// Air vehicles

// Light Transport

// Halo

["OPTRE_Pelican_unarmed",0,air_vehicle_price_tier_1,0,GRLIB_perm_inf],
["OPTRE_UNSC_hornet",0,air_vehicle_price_tier_1,0,GRLIB_perm_inf],
["OPTRE_UNSC_falcon_unarmed",0,air_vehicle_price_tier_1,0,GRLIB_perm_inf],

// Medium Transport

// Halo

["OPTRE_UNSC_hornet_CAP",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_UNSC_hornet_CAS",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_AV22C_Sparrowhawk",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_AV22A_Sparrowhawk",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_AV22_Sparrowhawk",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_AV22B_Sparrowhawk",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_UNSC_falcon",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],

// Heavy Transport
["OPTRE_Pelican_armed",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf],
["OPTRE_Pelican_armed_70mm",0,air_vehicle_price_tier_8,0,GRLIB_perm_inf]
];


fast_air_vehicle = [

// Fast air vehicle
["OPTRE_YSS_1000_A_VTOL",0,fast_air_vehicle_price_tier_5,0,GRLIB_perm_inf]
];



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

static_vehicles = [

// static_vehicles
["OPTRE_Lance",100,0,GRLIB_perm_inf],
["OPTRE_Scythe",50,0,0,GRLIB_perm_inf]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
"CUP_WV_B_CRAM",
"CUP_WV_B_RAM_Launcher",
"B_Radar_System_01_F",
"B_SAM_System_03_F",
"B_Ship_MRLS_01_F",
"B_AAA_System_01_F",
"CUP_WV_B_SS_Launcher",
"rnt_mantis_base",
"rnt_mantis_radar",
"B_SAM_System_01_F"
];

support_vehicles_west = [

// support_vehicles_west
// Quadbike
["OPTRE_M274_ATV",0,10,0,-100],
// HALO
["OPTRE_m1087_stallion_unsc",0,logistic_ground_vehicle_price_tier_1,0,GRLIB_perm_inf],
["OPTRE_m1087_stallion_unsc_resupply",0,logistic_ground_vehicle_price_tier_1,0,GRLIB_perm_inf],
["OPTRE_m1087_stallion_cover_unsc",0,logistic_ground_vehicle_price_tier_1,0,GRLIB_perm_inf],
["OPTRE_m1087_stallion_unsc_medical",0,logistic_ground_vehicle_price_tier_2,0,GRLIB_perm_inf],
["OPTRE_m1087_stallion_unsc_repair",0,logistic_ground_vehicle_price_tier_3,0,GRLIB_perm_inf]
];

support_crates = [

// support_crates
// Ersatzteile
["ACE_Track",0,0,0,GRLIB_perm_inf],
["ACE_Wheel",0,0,0,GRLIB_perm_inf],
// Kisten
["Box_NATO_Equip_F",0,0,0,GRLIB_perm_inf],
["B_CargoNet_01_ammo_F",0,0,0,GRLIB_perm_inf],
["CargoNet_01_box_F",0,0,0,GRLIB_perm_inf],
["CargoNet_01_barrels_F",0,0,0,GRLIB_perm_inf],
// Waffen
// ["SNC_Javelin",0,400,0,GRLIB_perm_inf],
// Kistenf�ller & Container
["Land_RepairDepot_01_green_F",0,0,0,GRLIB_perm_inf],
["ffaa_UAVStation",0,0,0,GRLIB_perm_inf],
// Huron Container
[ammo_sling_typename,0,0,0,GRLIB_perm_inf],
[repair_sling_typename,0,0,0,GRLIB_perm_inf],
[fuel_sling_typename,0,0,0,GRLIB_perm_inf],
[medic_sling_typename,0,0,0,GRLIB_perm_inf],
// Taru Container
["Land_Pod_Heli_Transport_04_medevac_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_covered_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_repair_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_fuel_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_ammo_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_box_F",0,0,0,GRLIB_perm_inf],
["Land_Pod_Heli_Transport_04_bench_F",0,0,0,GRLIB_perm_inf],
// FOB
[FOB_box_typename,0,15000,0,GRLIB_perm_inf],
[FOB_truck_typename,0,15000,0,GRLIB_perm_inf]
];

buildings_west = [
["Land_optre_milwall_corner",0,0,0,GRLIB_perm_inf],
["Land_optre_milwall_gateXL",0,0,0,GRLIB_perm_inf],
["Land_optre_milwall_hub",0,0,0,GRLIB_perm_inf],
["Land_optre_milwall_segment",0,0,0,GRLIB_perm_inf],
["US_WarfareBArtilleryRadar_Base_EP1",0,0,0,GRLIB_perm_inf],
["Land_fort_artillery_nest_EP1",0,0,0,GRLIB_perm_inf],
["Land_Mil_Barracks_EP1",0,0,0,GRLIB_perm_inf],
["Land_Mil_Barracks_i_EP1",0,0,0,GRLIB_perm_inf],
["Land_Mil_Barracks_no_interior_EP1_CUP",0,0,0,GRLIB_perm_inf],
["Land_Mil_Barracks_L_EP1",0,0,0,GRLIB_perm_inf],
["Land_fortified_nest_big_EP1",0,0,0,GRLIB_perm_inf],
["Land_fortified_nest_small_EP1",0,0,0,GRLIB_perm_inf],
["Land_Fort_Watchtower_EP1",0,0,0,GRLIB_perm_inf],
["WarfareBDepot",0,0,0,GRLIB_perm_inf],
["US_WarfareBUAVterminal_Base_EP1",0,0,0,GRLIB_perm_inf],
["Land_fort_rampart_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBFieldhHospital_Base_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBAircraftFactory_Base_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBVehicleServicePoint_Base_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBBarrier10xTall_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBBarracks_Base_EP1",0,0,0,GRLIB_perm_inf],
["Land_Barrack2_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBBarrier5x_EP1",0,0,0,GRLIB_perm_inf],
["WarfareBCamp",0,0,0,GRLIB_perm_inf],
["76n6ClamShell_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBBarrier10x_EP1",0,0,0,GRLIB_perm_inf],
["US_WarfareBHeavyFactory_Base_EP1",0,0,0,GRLIB_perm_inf],
["Land_CamoNetB_NATO_EP1",0,0,0,GRLIB_perm_inf],
["Land_CamoNet_NATO_EP1",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_wall_6_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_line_3_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_big_tower_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_tower_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_wall_corridor_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_wall_corner_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_wall_4_green_F",0,0,0,GRLIB_perm_inf],

["Land_HBarrier_1_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrierWall6_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_3_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrierTower_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrierWall_corridor_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrierWall4_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrierWall_corner_F",0,0,0,GRLIB_perm_inf],

["Land_CncBarrierMedium_F",0,0,0,GRLIB_perm_inf],
["Land_CncBarrierMedium4_F",0,0,0,GRLIB_perm_inf],
["Land_CncShelter_F",0,0,0,GRLIB_perm_inf],
["Land_CncWall1_F",0,0,0,GRLIB_perm_inf],
["Land_CncWall4_F",0,0,0,GRLIB_perm_inf],
["Land_CncBarrier_stripes_F",0,0,0,GRLIB_perm_inf],
["Flag_UNO_F",0,0,0,GRLIB_perm_inf],
["Flag_NATO_F",0,0,0,GRLIB_perm_inf],
["FlagCarrierGermany_EP1",0,0,0,GRLIB_perm_inf],
["FlagCarrierRU",0,0,0,GRLIB_perm_inf],
["Flag_UK_F",0,0,0,GRLIB_perm_inf],
["Flag_US_F",0,0,0,GRLIB_perm_inf],
["Land_PortableLight_single_F",0,0,0,GRLIB_perm_inf],

["Land_Campfire_F",0,0,0,GRLIB_perm_inf],
["Land_CampingChair_V1_F",0,0,0,GRLIB_perm_inf],
["Land_CampingTable_F",0,0,0,GRLIB_perm_inf],
["Land_fort_bagfence_long",0,0,0,GRLIB_perm_inf],

["Land_HelipadSquare_F",0,0,0,GRLIB_perm_inf],
["PortableHelipadLight_01_blue_F",0,0,0,GRLIB_perm_inf],
["PortableHelipadLight_01_green_F",0,0,0,GRLIB_perm_inf],

["Land_ClutterCutter_large_F",0,0,0,GRLIB_perm_inf],

["Land_Hangar_F",0,0,0,GRLIB_perm_inf],
["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_inf],
["Land_Medevac_house_V1_F",0,0,0,GRLIB_perm_inf],
["Land_Medevac_HQ_V1_F",0,0,0,GRLIB_perm_inf],

["Land_PortableLight_double_F",0,0,0,GRLIB_perm_inf],
["Land_LampAirport_F",0,0,0,GRLIB_perm_inf],
["Land_LampStreet_02_double_F",0,0,0,GRLIB_perm_inf],
["Land_SandbagBarricade_01_hole_F",0,0,0,GRLIB_perm_inf],
["Land_fortified_nest_small",0,0,0,GRLIB_perm_inf],
["Land_fortified_nest_big",0,0,0,GRLIB_perm_inf],
["Land_BagBunker_Small_F",0,0,0,GRLIB_perm_inf],
["land_bunker_garage",0,0,0,GRLIB_perm_inf],
["Land_Trench_01_grass_F",0,0,0,GRLIB_perm_inf],
["Land_fort_rampart",0,0,0,GRLIB_perm_inf],
["Land_fort_artillery_nest",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_line_5_green_F",0,0,0,GRLIB_perm_inf],
["Land_HBarrier_01_big_4_green_F",0,0,0,GRLIB_perm_inf],
["zed2",0,0,0,GRLIB_perm_inf],
["US_WarfareBBarrier10xTall_EP1",0,0,0,GRLIB_perm_inf],
["WarfareBCamp",0,0,0,GRLIB_perm_inf],
["Fortress2",0,0,0,GRLIB_perm_inf],
["Land_Lampa_sidl_3",0,0,0,GRLIB_perm_inf],
["Land_TentHangar_V1_F", 0, 0, 0, GRLIB_perm_inf],
["Land_fort_bagfence_round",0,0,0,GRLIB_perm_inf],
["Land_fort_bagfence_long",0,0,0,GRLIB_perm_inf],
["Land_fort_bagfence_corner",0,0,0,GRLIB_perm_inf],
["Land_CzechHedgehog_01_new_F",0,0,0,GRLIB_perm_inf],
["Land_Bunker_01_blocks_3_F",0,0,0,GRLIB_perm_inf],
["Land_Bunker_01_small_F",0,0,0,GRLIB_perm_inf],
["Land_Bunker_01_tall_F",0,0,0,GRLIB_perm_inf],
["Land_PillboxBunker_01_big_F",0,0,0,GRLIB_perm_inf],
["SignM_FOB_Revolve_EP1",0,0,0,GRLIB_perm_inf],
["Land_Shooting_range",0,0,0,GRLIB_perm_inf],
["Shed",0,0,0,GRLIB_perm_inf],
["ShedSmall",0,0,0,GRLIB_perm_inf],
["CampEast_EP1",0,0,0,GRLIB_perm_inf],
["Land_Mil_WallBig_4m_F",0,0,0,GRLIB_perm_inf],
["rnt_graben_t",0,0,0,GRLIB_perm_inf],
["rnt_graben_bunker",0,0,0,GRLIB_perm_inf],
["rnt_graben_ecke",0,0,0,GRLIB_perm_inf],
["rnt_graben_ende",0,0,0,GRLIB_perm_inf],
["rnt_graben_stellung",0,0,0,GRLIB_perm_inf],
["rnt_graben_gerade",0,0,0,GRLIB_perm_inf],
["MapBoard_stratis_F",0,0,0,GRLIB_perm_inf],
["MapBoard_altis_F",0,0,0,GRLIB_perm_inf],
["Land_MapBoard_Enoch_F", 0, 0, 0, GRLIB_perm_inf],
["MapBoard_Malden_F",0,0,0,GRLIB_perm_inf],
["MapBoard_Tanoa_F",0,0,0,GRLIB_perm_inf],
["ClutterCutter",0,0,0,GRLIB_perm_inf],
["Notice_board_EP1",0,0,0,GRLIB_perm_inf],
["Land_CncBlock",0,0,0,GRLIB_perm_inf],
["Concrete_Wall_EP1",0,0,0,GRLIB_perm_inf],
["Land_Ind_Shed_02_EP1",0,0,0,GRLIB_perm_inf],
["HeliH",0,0,0,GRLIB_perm_inf],
["HeliHRescue",0,0,0,GRLIB_perm_inf],
["HeliHCivil",0,0,0,GRLIB_perm_inf],
["Land_strelecky_post_new",0,0,0,GRLIB_perm_inf],
["Land_GuardTower_01_F",0,0,0,GRLIB_perm_inf],
["Target_PopUp4_Moving_90deg_F",0,0,0,GRLIB_perm_inf]

];

if ( isNil "blufor_squad_inf_light" ) then { blufor_squad_inf_light = [] };
if ( count blufor_squad_inf_light == 0 ) then { blufor_squad_inf_light = [
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
if ( isNil "blufor_squad_inf" ) then { blufor_squad_inf = [] };
if ( count blufor_squad_inf == 0 ) then { blufor_squad_inf = [
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
if ( isNil "blufor_squad_at" ) then { blufor_squad_at = [] };
if ( count blufor_squad_at == 0 ) then { blufor_squad_at = [
"CUP_B_USMC_Soldier_SL",
"CUP_B_USMC_Medic",
"CUP_B_USMC_Soldier_HAT",
"CUP_B_USMC_Soldier_LAT",
"CUP_B_USMC_Engineer",
"CUP_B_USMC_Soldier"
];
};
if ( isNil "blufor_squad_aa" ) then { blufor_squad_aa = [] };
if ( count blufor_squad_aa == 0 ) then { blufor_squad_aa = [
"CUP_B_USMC_Soldier_SL",
"CUP_B_USMC_Medic",
"CUP_B_USMC_Soldier_AA",
"CUP_B_USMC_Soldier_AA",
"CUP_B_USMC_Engineer",
"CUP_B_USMC_Soldier"
];
};
if ( isNil "blufor_squad_mix" ) then { blufor_squad_mix = [] };
if ( count blufor_squad_mix == 0 ) then { blufor_squad_mix = [
"CUP_B_USMC_Soldier_SL",
"CUP_B_USMC_Medic",
"CUP_B_USMC_Soldier_AA",
"CUP_B_USMC_Soldier_HAT",
"CUP_B_USMC_Engineer",
"CUP_B_USMC_Soldier"
];
};

squads = [
[blufor_squad_inf_light,10,300,0,GRLIB_perm_inf],
[blufor_squad_inf,20,400,0,GRLIB_perm_inf],
[blufor_squad_at,25,600,0,GRLIB_perm_inf],
[blufor_squad_aa,25,600,0,GRLIB_perm_inf],
[blufor_squad_mix,25,600,0,GRLIB_perm_inf]
];

// All the UAVs must be declared here
uavs = [
"B_UAV_01_F",
"B_UAV_02_dynamicLoadout_F",
"B_T_UAV_03_dynamicLoadout_F",
"B_UAV_05_F",
"B_UAV_06_F",
"C_UAV_06_F",
"B_T_UGV_01_olive_F",
"B_T_UGV_01_rcws_olive_F",
"B_UGV_01_F",
"B_UGV_01_rcws_F",
"B_UGV_02_Demining_F",
"B_Radar_System_01_F",
"UK3CB_BAF_MQ9_Reaper_DPMW",
"CUP_WV_B_CRAM",
"B_SAM_System_03_F",
"B_Ship_MRLS_01_F",
"B_AAA_System_01_F",
"USAF_MQ9",
"USAF_RQ4A",
"ffaa_ea_reaper",
"rnt_mantis_base",
"rnt_mantis_radar",
"B_SAM_System_01_F"
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
"CUP_B_M2StaticMG_MiniTripod_USMC",
"CUP_B_M252_USMC",
"CUP_B_M119_USMC",
"CUP_B_MK19_TriPod_USMC",
"CUP_B_Stinger_AA_pod_Base_USMC",
"CUP_B_TOW_TriPod_USMC"
];

box_transport_config_west = [
[ "CUP_B_MTVR_USMC", -6.5, [0, -0.4, 0.3], [0, -2.1, 0.3] ],
[ "CUP_B_T810_Unarmed_CZ_DES", -5.5, [0, 0.3, 0], [0, -1.25, 0] ],
[ "CUP_B_T810_Armed_CZ_DES", -5.5, [0, 0.3, -0.3], [0, -1.25, -0.3] ]
];

//GRLIB_AirDrop_1 = [];
//GRLIB_AirDrop_2 = [];
GRLIB_AirDrop_3 = [
"CUP_B_T810_Armed_CZ_DES",
"CUP_B_nM1025_M2_USMC_WDL",
"CUP_B_M1151_Deploy_USMC",
"CUP_B_RG31_M2_OD_USMC"
];
GRLIB_AirDrop_4 = [
"CUP_B_T810_Unarmed_CZ_DES",
"CUP_B_T810_Armed_CZ_DES",
"CUP_B_MTVR_USMC"
];
GRLIB_AirDrop_5 = [
"CUP_B_M1126_ICV_M2_Woodland",
"CUP_B_M1126_ICV_MK19_Woodland",
"CUP_B_RG31E_M2_OD_USMC"
];
//GRLIB_AirDrop_6 = [];
