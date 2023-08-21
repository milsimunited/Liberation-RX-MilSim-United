GRLIB_save_key = "MilSim_United";
// change this value if you want different saveGames on different map
GRLIB_side_resistance = resistance;
GRLIB_side_civilian = civilian;
GRLIB_respawn_marker = "respawn_west";
GRLIB_sector_size = 800;
GRLIB_capture_size = 100;
GRLIB_radiotower_size = 3000;
GRLIB_spawn_min = 1000;
GRLIB_spawn_max = 2500;
GRLIB_recycling_percentage = 1.00;
GRLIB_endgame = 0;
GRLIB_vulnerability_timer = 1000;
GRLIB_defended_buildingPos_part = 0.0;
GRLIB_sector_military_value = 2;
GRLIB_secondary_objective_impact = 0.4;
GRLIB_sector_spawn_factor = 2.8;
GRLIB_sector_cap = 90 * GRLIB_unitcap;
GRLIB_battlegroup_cap = 95 * GRLIB_unitcap;
GRLIB_patrol_cap = 10 * GRLIB_unitcap;
GRLIB_blufor_cap = 10 * GRLIB_unitcap;
GRLIB_battlegroup_size = 6;
GRLIB_civilians_amount = 1.1 * GRLIB_civilian_activity;
GRLIB_fob_range = 450;
GRLIB_surrender_chance = 75;
GRLIB_secondary_missions_costs = [ 50,5 ];
GRLIB_halo_altitude = 2000;
GRLIB_civ_killing_penalty = 0;
GRLIB_squad_size_bonus = 0;
GRLIB_perm_ban = -1000000;
GRLIB_perm_inf = -100;
GRLIB_perm_log = 300;
GRLIB_perm_tank = 1200;
GRLIB_perm_air = 2400;
GRLIB_perm_max = 3600;
GRLIB_date_year = 2023;
GRLIB_date_month = 7;
GRLIB_date_day = 30;
GRLIB_nights_start = 21;
GRLIB_nights_stop = 4;
GRLIB_blufor_cap = 64;
GREUH_start_ammo = 1000;

// don't forget that the human commander manages those, not the server
GRLIB_offload_diag = false;

// NRE_Key = 199;
MGR_Key = 19;

// TFAR checker
tfar_checker = true;
ts_server_name = "MilSim United";
tfar_channel = "╠-● Ingame [TFAR]";

// gain and punishment
respawn_ammo = 135; // +/- is conditional
opfor_kill_score = 0;
opfor_kill_ammo = 0;
opfor_kill_score_infantry = 4;
opfor_kill_ammo_infantry = 7;
kamikaze_kill_score = 8;
kamikaze_kill_ammo = 14;
civkill_score = -45;
civkill_ammo = -275;
civkill_combat_readiness = 7;
tkill_score = -6;
tkill_ammo = -12;
tk_active = false; //NEW Tkillscript with dialog

// tkill_script in init.sqf
// pylon_restrictions in init.sqf
// SNC_VehRestriction in init.sqf


// logistics
prisoner_intel = 4;
prisoner_score = 8;
prisoner_ammo = 10;
prisoner_combat_readiness = 9;
prisoner_i = 0;

box_recycle_value = 36; // Only use by 2 dividable numbers
logistics_ammo_for_all = false;
logistics_ammo_increase = true;


// Sector config
sector_rank_gain = 10;
fallback_income = 65;
income_sectors_bigtown = 65;
income_sectors_capture = 65;
income_sectors_military = 65;
income_sectors_factory = 65;
income_sectors_tower = 65;
readiness_increase_bigtown = 4;
readiness_increase_capture = 4;
readiness_increase_military = 4;
readiness_increase_factory = 4;
readiness_increase_tower = 4;
Sector_ammo_for_all = false;


// Building Penalty
building_penalty_isActive = false;

// Do not allow air vehicles to trigger zones. 
air_cannot_trigger_on = true;


// resources
msu_resource_min_players = 10;
msu_fuel_min = 10;
msu_fuel_plane = 0;
msu_fuel_heli = 0;
msu_fuel_mbt = 0;
msu_fuel_ifv = 0;
msu_fuel_apc = 0;
msu_fuel_armed = 0;

// slot system
msu_slot_system = false;

// AI Leaders have automaticly radios
AI_leader_radio = false;

// AI skill
skill_scan = false;
skill_parachuters = 0.9;
skill_air_vehicles_planes = 0.9;
skill_air_vehicles_helicopters = 0.9;
skill_ground_vehicles = 0.9;

// AI Limit
ai_limit = 3;
ai_limiter_on = true;

// AI buildable
ai_skill = 1;
ai_value = 200; // price

// HC
hc_battlegroup_on = true;
limit_hc_gr = false;

// Readiness Increase from towns
readiness_calc_bg_town = true;
readiness_calc_sm_town = true;
limit_readiness = true;
fob_hunting_readiness = 40;

// Battlegroup readiness
bg_readiness_cooldown = false;
bg_readiness_min = 45;
bg_readiness_high = 75;
// msu loops
msu_heartbeat = 240;
huber_commandos = true;

// Battlegroup sleeping (divided with csat aggressivity)
bg_sleeptimer = 1800; 
sector_reinforcement = true;
limit_bg_dist = GRLIB_spawn_max; 
reinforce_spawn_min = GRLIB_spawn_min;
unload_distance = 100;

// Deactivate HC spawning
hc_spawn_off = true;
hc_spawn_towns = false;
hc_spawn_patrol = false;

//Datalink Options
force_datalink = true;
force_sensorTarget_opfor = false;

//Enemy IEDs
ied_enemy_sector = ["ACE_IEDLandBig_Range", "APERSMine", "APERSBoundingMine", "IEDUrbanBig_F", "APERSTripMine"];





moderators = [
    "76561198057808323", // Johannes
    "76561198019854511", // Voltaren
    "76561198203314980", // Bobi
    "76561198094301584", // Devin
    "76561197997804176", // Slotzi
    "76561198283765221", // Steakman
    "76561198396300771", // LTVince
    "76561197993044168", // Huber Sepp
    "76561198043617179"  // Mantanismus
];




// Prices for blufor vehicle tiers
light_vehicle_price_hmg = 220;
light_vehicle_price_gmg = 250;
heavy_vehicle_price_tank = 500;
heavy_vehicle_price_tank_light = 1000;
heavy_vehicle_price_tank_heavy = 1500;
logistic_air_vehicle_price = 250;
logistic_ground_vehicle_price = 200;
light_vehicle_price_tier_1 = 50;
light_vehicle_price_tier_2 = 75;
light_vehicle_price_tier_3 = 100;
light_vehicle_price_tier_4 = 125;
light_vehicle_price_tier_5 = 150;
light_vehicle_price_tier_6 = 175;
light_vehicle_price_tier_7 = 200;
light_vehicle_price_tier_8 = 225;
light_vehicle_price_tier_9 = 250;
light_vehicle_price_tier_10 = 275;
light_vehicle_price_tier_11 = 300;
light_vehicle_price_tier_12 = 350;
strong_light_vehicle_price_tier_1 = 100;
strong_light_vehicle_price_tier_2 = 125;
strong_light_vehicle_price_tier_3 = 150;
strong_light_vehicle_price_tier_4 = 175;
strong_light_vehicle_price_tier_5 = 200;
strong_light_vehicle_price_tier_6 = 225;
strong_light_vehicle_price_tier_7 = 250;
strong_light_vehicle_price_tier_8 = 275;
strong_light_vehicle_price_tier_9 = 300;
strong_light_vehicle_price_tier_10 = 325;
strong_light_vehicle_price_tier_11 = 350;
strong_light_vehicle_price_tier_12 = 375;
strong_light_vehicle_price_tier_13 = 400;
strong_light_vehicle_price_tier_14 = 425;
strong_light_vehicle_price_tier_15 = 450;
heavy_vehicle_price_tier_1 = 350;
heavy_vehicle_price_tier_2 = 375;
heavy_vehicle_price_tier_3 = 400;
heavy_vehicle_price_tier_4 = 425;
heavy_vehicle_price_tier_5 = 450;
heavy_vehicle_price_tier_6 = 475;
heavy_vehicle_price_tier_7 = 500;
heavy_vehicle_price_tier_8 = 550;
heavy_vehicle_price_tier_9 = 600;
heavy_vehicle_price_tier_10 = 650;
heavy_vehicle_price_tier_11 = 700;
heavy_vehicle_price_tier_12 = 800;
heavy_vehicle_price_tier_13 = 900;
heavy_vehicle_price_tier_14 = 1100;
heavy_vehicle_price_tier_15 = 1350;
heavy_vehicle_price_tier_16 = 1600;
heavy_vehicle_price_tier_17 = 1850;
strong_heavy_vehicle_price_tier_1 = 1200;
strong_heavy_vehicle_price_tier_2 = 1500;
strong_heavy_vehicle_price_tier_3 = 2000;
strong_heavy_vehicle_price_tier_4 = 3000;
strong_heavy_vehicle_price_tier_5 = 4000;
strong_heavy_vehicle_price_tier_6 = 3200;
strong_heavy_vehicle_price_tier_7 = 6400;
air_vehicle_price_tier_1 = 400;
air_vehicle_price_tier_2 = 425;
air_vehicle_price_tier_3 = 450;
air_vehicle_price_tier_4 = 500;
air_vehicle_price_tier_5 = 550;
air_vehicle_price_tier_6 = 650;
air_vehicle_price_tier_7 = 700;
air_vehicle_price_tier_8 = 950;
air_vehicle_price_tier_9 = 1050;
air_vehicle_price_tier_10 = 1150;
air_vehicle_price_tier_11 = 1450;
air_vehicle_price_tier_12 = 1650;
air_vehicle_price_tier_13 = 1950;
air_vehicle_price_tier_14 = 2150;
air_vehicle_price_tier_15 = 4150;
fast_air_vehicle_price_tier_1 = 550;
fast_air_vehicle_price_tier_2 = 1200;
fast_air_vehicle_price_tier_3 = 1450;
fast_air_vehicle_price_tier_4 = 1700;
fast_air_vehicle_price_tier_5 = 1950;
fast_air_vehicle_price_tier_6 = 2200;
fast_air_vehicle_price_tier_7 = 2450;
fast_air_vehicle_price_tier_8 = 2700;
fast_air_vehicle_price_tier_9 = 2950;
fast_air_vehicle_price_tier_10 = 3200;
logistic_ground_vehicle_price_tier_1 = 100;
logistic_ground_vehicle_price_tier_1 = 125;
logistic_ground_vehicle_price_tier_1 = 150;
logistic_ground_vehicle_price_tier_4 = 200;
logistic_ground_vehicle_price_tier_5 = 250;
logistic_ground_vehicle_price_tier_6 = 300;




// trait restrictions
trait_restrictions = false;
support_medic_restriction = false;
MSU_Med_Div = 1;
MSU_Eng_Div = 1;




// ai equipment replacements
msu_opfor_helmet = 'VSM_ProjectHonor_OPS_2'; // rhs_6b27m_green
msu_opfor_uniform = 'VSM_ProjectHonor_Crye_SS_Camo'; // Alpine_white_Crye_camo VSM_M81_BDU_Camo 
msu_opfor_vest = 'VSM_LBT6094_operator_ProjectHonor'; // rhs_6b5_rifleman_khaki

msu_civ_uniform = 'U_BG_Guerilla3_1';

ai_equipment_replacement = true;
ai_replacement_classname = "rhs_vmf_flora_rifleman";
ai_replacement_weapon = "hlc_rifle_g3a3";
ai_replacement_magazine = "ACE_20Rnd_762x51_M118LR_Mag";



/*
If we need a specific whitelist someday the following array needs to be set: 
MSU_whitelisted_from_arsenal = [];

An example with only VSM gear and RHS weapons but including all ACE items is located in: 
\mod_template\RHS_USAF\arsenal_vsm_whitelist.sqf
*/



// true to activate factions selection
FAC_MSU_ACTIVE = false;

items_allFac = [/*
    "U_B_FullGhillie_lsh",
    "U_B_FullGhillie_sard",
    "U_B_GhillieSuit",
    "U_B_T_FullGhillie_tna_F",
    "U_B_T_Sniper_F",
    "U_B_Wetsuit",
    "U_B_pilotCoveralls",
    "H_pilotHelmetFighter_B",
    "H_pilotHelmetHeli_B",
    "V_RebreatherB"*/
];



// Global arsenal
global_arsenal = false;
item_whitelist = [];
item_blacklist = [];




MSU_blacklisted_from_arsenal = [
"H_HelmetO_ViperSP_hex_F",
"H_HelmetO_ViperSP_ghex_F",
"U_O_V_Soldier_Viper_hex_F",
"U_O_V_Soldier_Viper_F",
"O_V_Soldier_Viper_F",
"O_V_Soldier_Viper_hex_F",
"B_Bergen_dgtl_F",
"B_Bergen_hex_F",
"B_Bergen_mcamo_F",
"B_Bergen_tna_F",
"U_O_CombatUniform_ocamo",
"U_O_CombatUniform_oucamo",
"U_O_OfficerUniform_ocamo",
"U_O_PilotCoveralls",
"U_O_SpecopsUniform_ocamo",
"U_O_Wetsuit",
"U_O_T_Soldier_F",
"U_O_T_FullGhillie_tna_F",
"U_O_T_Officer_F",
"U_O_V_Soldier_Viper_F",
"U_O_V_Soldier_Viper_hex_F",
"dvk_csat_inm_u",
"dvk_csat_plamc",
"dvk_csat_uv_tanoa_u",
"dvk_csat_uv_urban_u",
"dvk_china_hpilot",
"dvk_iran_hpilot",
"dvk_csat_iransf",
"dvk_csat_plasf",
"dvk_csat_uv_plan_u",
"dvk_csat_uv_sfa_u",
"dvk_csat_uv_inavy_u",
"dvk_csat_uv_sft_u",
"CsatU_Berezka",
"CsatU_BerezkaY",
"CsatU_blue",
"CsatU_EMR",
"CsatU_Green",
"CsatU_khaki",
"CsatU_mtp",
"CsatU_TigerJ",
"CsatU_type07u",
"H_HelmetSpecO_blk",
"H_HelmetSpecO_ocamo",
"H_HelmetLeaderO_ocamo",
"H_HelmetLeaderO_oucamo",
"H_HelmetCrew_O",
"H_ParadeDressCap_01_CSAT_F",
"CSAT_helmet_blue",
"CSAT_helmet_EMR",
"CSAT_helmet_Green",
"CSAT_helmet_khaki",
"CSAT_helmet_mtp",
"CSAT_helmet_TigerJ",
"CSAT_helmet_Type07U",
"H_MilCap_ocamo",
"H_PilotHelmetFighter_O",
"H_HelmetO_ocamo",
"H_HelmetO_oucamo",
"H_HelmetSpecO_ghex_F",
"H_HelmetLeaderO_ghex_F",
"H_MilCap_ghex_F",
"H_HelmetO_ghex_F",
"H_HelmetO_ViperSP_ghex_F",
"H_HelmetO_ViperSP_hex_F",
"dvk_altcsat_beret_g",
"dvk_altcsat_beret",
"dvk_altcsat_beret_r",
"DVK_altcsat_jh_plasf",
"DVK_altcsat_cap_irano",
"DVK_altcsat_cap_plan",
"dvk_altcsat_h_plamc",
"H_Beret_CSAT_01_F",
"U_O_FullGhillie_ard",
"U_O_FullGhillie_lsh",
"U_O_FullGhillie_sard",
"U_I_Protagonist_VR",
"U_C_Protagonist_VR",
"U_O_Protagonist_VR",
"U_B_Protagonist_VR",
"V_CSAT",
"V_CSAT_R",
"U_O_T_Sniper_F",
"U_O_GhillieSuit",
"U_O_officer_noInsignia_hex_F",
"B_AssaultPack_ocamo",
"B_Carryall_ocamo",
"B_FieldPack_ocamo",
"B_TacticalPack_ocamo",
"B_Carryall_ghex_F",
"B_FieldPack_ghex_F",
"B_ViperHarness_ghex_F",
"B_ViperHarness_hex_F",
"B_ViperLightHarness_ghex_F",
"B_ViperLightHarness_hex_F",
"B_RadioBag_01_ghex_F",
"B_RadioBag_01_hex_F",
"H_HelmetCrew_O_ghex_F",
"V_HarnessOGL_brn",
"V_HarnessOGL_gry",
"V_HarnessO_brn",
"V_HarnessO_gry",
"V_HarnessOGL_ghex_F",
"V_HarnessO_ghex_F",
"dvk_csat_uv_altis",
"dvk_csat_uv_urban",
"dvk_csat_heavyv_altis",
"dvk_csat_heavyv_jun",
"dvk_csat_heavyv_urban",
"B_AA_01_weapon_F",
"B_AT_01_weapon_F",
"B_GMG_01_A_weapon_F",
"B_GMG_01_high_weapon_F",
"B_GMG_01_weapon_F",
"B_HMG_01_A_weapon_F",
"B_HMG_01_high_weapon_F",
"B_HMG_01_support_F",
"B_HMG_01_support_high_F",
"B_HMG_01_weapon_F",
"B_Mortar_01_support_F",
"B_Mortar_01_weapon_F",
"B_Respawn_Sleeping_bag_blue_F",
"B_Respawn_Sleeping_bag_brown_F",
"B_Respawn_Sleeping_bag_F",
"B_Respawn_TentA_F",
"B_Respawn_TentDome_F",
"B_UAV_01_backpack_F",
"B_UAV_06_backpack_F",
"B_UAV_06_medical_backpack_F",
"B_UGV_02_Demining_backpack_F",
"B_UGV_02_Science_backpack_F",
"C_IDAP_UAV_01_backpack_F",
"C_IDAP_UAV_06_antimine_backpack_F",
"C_IDAP_UAV_06_backpack_F",
"C_IDAP_UAV_06_medical_backpack_F",
"C_IDAP_UGV_02_Demining_backpack_F",
"C_UAV_06_backpack_F",
"C_UAV_06_medical_backpack_F",
"I_AA_01_weapon_F",
"I_AT_01_weapon_F",
"I_C_HMG_02_high_weapon_F",
"I_C_HMG_02_support_F",
"I_C_HMG_02_support_high_F",
"I_C_HMG_02_weapon_F",
"I_E_AA_01_weapon_F",
"I_E_AT_01_weapon_F",
"I_E_GMG_01_A_Weapon_F",
"I_E_GMG_01_high_Weapon_F",
"I_E_GMG_01_Weapon_F",
"I_E_HMG_01_A_Weapon_F",
"I_E_HMG_01_high_Weapon_F",
"I_E_HMG_01_support_F",
"I_E_HMG_01_support_high_F",
"I_E_HMG_01_Weapon_F",
"I_E_HMG_02_high_weapon_F",
"I_E_HMG_02_support_F",
"I_E_HMG_02_support_high_F",
"I_E_HMG_02_weapon_F",
"I_E_Mortar_01_support_F",
"I_E_Mortar_01_Weapon_F",
"I_E_UAV_01_backpack_F",
"I_E_UAV_06_backpack_F",
"I_E_UAV_06_medical_backpack_F",
"I_E_UGV_02_Demining_backpack_F",
"I_E_UGV_02_Science_backpack_F",
"I_G_HMG_02_high_weapon_F",
"I_G_HMG_02_support_F",
"I_G_HMG_02_support_high_F",
"I_G_HMG_02_weapon_F",
"I_GMG_01_A_weapon_F",
"I_GMG_01_high_weapon_F",
"I_GMG_01_weapon_F",
"I_HMG_01_A_weapon_F",
"I_HMG_01_high_weapon_F",
"I_HMG_01_support_F",
"I_HMG_01_support_high_F",
"I_HMG_01_weapon_F",
"I_HMG_02_high_weapon_F",
"I_HMG_02_support_F",
"I_HMG_02_support_high_F",
"I_HMG_02_weapon_F",
"I_Mortar_01_support_F",
"I_Mortar_01_weapon_F",
"I_UAV_06_backpack_F",
"I_UAV_06_medical_backpack_F",
"I_UGV_02_Demining_backpack_F",
"I_UGV_02_Science_backpack_F",
"O_AA_01_weapon_F",
"O_AT_01_weapon_F",
"O_GMG_01_A_weapon_F",
"O_GMG_01_high_weapon_F",
"O_GMG_01_weapon_F",
"O_HMG_01_A_weapon_F",
"O_HMG_01_high_weapon_F",
"O_HMG_01_support_F",
"O_HMG_01_support_high_F",
"O_HMG_01_weapon_F",
"O_Mortar_01_support_F",
"O_Mortar_01_weapon_F",
"O_UAV_01_backpack_F",
"O_UAV_06_backpack_F",
"O_UAV_06_medical_backpack_F",
"O_UGV_02_Demining_backpack_F",
"O_UGV_02_Science_backpack_F",
"RHS_AGS30_Gun_Bag",
"RHS_AGS30_Tripod_Bag",
"RHS_DShkM_Gun_Bag",
"RHS_DShkM_TripodHigh_Bag",
"RHS_DShkM_TripodLow_Bag",
"RHS_Kord_Gun_Bag",
"RHS_Kord_Tripod_Bag",
"RHS_Kornet_Gun_Bag",
"RHS_Kornet_Tripod_Bag",
"RHS_M2_Gun_Bag",
"RHS_M2_MiniTripod_Bag",
"RHS_M2_Tripod_Bag",
"rhs_M252_Bipod_Bag",
"rhs_M252_Gun_Bag",
"RHS_Metis_Gun_Bag",
"RHS_Metis_Tripod_Bag",
"RHS_Mk19_Gun_Bag",
"RHS_Mk19_Tripod_Bag",
"RHS_NSV_Gun_Bag",
"RHS_NSV_Tripod_Bag",
"RHS_Podnos_Bipod_Bag",
"RHS_Podnos_Gun_Bag",
"RHS_SPG9_Gun_Bag",
"RHS_SPG9_Tripod_Bag",
"rhs_Tow_Gun_Bag",
"rhs_TOW_Tripod_Bag",
"UK3CB_BAF_L111A1",
"UK3CB_BAF_L134A1",
"UK3CB_BAF_L16_Tripod",
"UK3CB_BAF_L16",
"UK3CB_BAF_M6",
"UK3CB_BAF_Tripod",
"uns_M1_81mm_mortar_US_Bag",
"uns_M1919_low_US_Bag",
"uns_M2_60mm_mortar_US_Bag",
"uns_m2_high_US_Bag",
"uns_M2_low_US_Bag",
"uns_M30_107mm_mortar_US_Bag",
"uns_M60_high_US_Bag",
"uns_M60_low_US_Bag",
"uns_MK18_low_US_Bag",
"uns_STABO_US_Bag",
"uns_Tripod_Bag",
"rhs_xmas_antlers",
"H_Construction_basic_black_F",
"H_Construction_earprot_black_F",
"H_Construction_headset_black_F",
"H_Construction_basic_orange_F",
"H_Construction_basic_orange_F",
"H_Construction_headset_orange_F",
"H_Construction_basic_red_F",
"H_Construction_earprot_red_F",
"H_Construction_headset_red_F",
"H_Construction_basic_vrana_F",
"H_Construction_earprot_vrana_F",
"H_Construction_headset_vrana_F",
"H_Construction_basic_white_F",
"H_Construction_earprot_white_F",
"H_Construction_headset_white_F",
"H_Construction_basic_yellow_F",
"H_Construction_earprot_yellow_F",
"H_Construction_headset_yellow_F",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_2_F",
"H_RacingHelmet_1_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_3_F",
"H_RacingHelmet_4_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_yellow_F",
"LOP_U_TAK_Civ_Fatigue_01",
"LOP_U_TAK_Civ_Fatigue_02",
"LOP_U_TAK_Civ_Fatigue_03",
"LOP_U_TAK_Civ_Fatigue_04",
"LOP_U_TAK_Civ_Fatigue_05",
"LOP_U_TAK_Civ_Fatigue_06",
"LOP_U_TAK_Civ_Fatigue_07",
"LOP_U_TAK_Civ_Fatigue_08",
"LOP_U_TAK_Civ_Fatigue_09",
"LOP_U_TAK_Civ_Fatigue_10",
"LOP_U_TAK_Civ_Fatigue_11",
"LOP_U_TAK_Civ_Fatigue_12",
"LOP_U_TAK_Civ_Fatigue_13",
"LOP_U_TAK_Civ_Fatigue_14",
"LOP_U_TAK_Civ_Fatigue_15",
"LOP_U_TAK_Civ_Fatigue_16",
"LOP_U_CHR_Priest_01",
"LOP_U_CHR_Rocker_01",
"LOP_U_CHR_Rocker_02",
"LOP_U_CHR_Rocker_03",
"LOP_U_CHR_Rocker_04",
"LOP_U_CHR_SchoolTeacher_01",
"LOP_U_CHR_Worker_01",
"LOP_U_CHR_Worker_02",
"LOP_U_CHR_Worker_03",
"LOP_U_CHR_Worker_04",
"LOP_U_CHR_Worker_05",
"LOP_U_CHR_Worker_06",
"LOP_U_CHR_Worker_07",
"U_C_ConstructionCoverall_Black_F",
"U_C_ConstructionCoverall_Blue_F",
"U_C_ConstructionCoverall_Red_F",
"U_C_ConstructionCoverall_Vrana_F",
"U_C_Driver_1_black",
"U_C_Driver_1_blue",
"U_C_Driver_2",
"U_C_Driver_1",
"U_C_Driver_1_green",
"U_C_Driver_1_orange",
"U_C_Driver_1_red",
"U_C_Driver_3",
"U_C_Driver_4",
"U_C_Driver_1_white",
"U_C_Driver_1_yellow",
"U_C_FormalSuit_01_black_F",
"U_C_FormalSuit_01_blue_F",
"U_C_FormalSuit_01_gray_F",
"U_C_FormalSuit_01_khaki_F",
"U_C_FormalSuit_01_tshirt_black_F",
"U_C_FormalSuit_01_tshirt_gray_F",
"U_BG_Guerilla1_1",
"U_BG_Guerilla1_2_F",
"LOP_U_ISTS_Fatigue_01",
"LOP_U_ISTS_Fatigue_02",
"LOP_U_ISTS_Fatigue_03",
"LOP_U_ISTS_Fatigue_04",
"LOP_U_AM_Fatigue_01_4",
"LOP_U_AM_Fatigue_01_6",
"LOP_U_AM_Fatigue_01",
"LOP_U_AM_Fatigue_01_5",
"LOP_U_AM_Fatigue_01_2",
"LOP_U_AM_Fatigue_01_3",
"LOP_U_AM_Fatigue_02_3",
"LOP_U_AM_Fatigue_02_5",
"LOP_U_AM_Fatigue_02_6",
"LOP_U_AM_Fatigue_02_4",
"LOP_U_AM_Fatigue_02_2",
"LOP_U_AM_Fatigue_02",
"LOP_U_AM_Fatigue_03_3",
"LOP_U_AM_Fatigue_03_6",
"LOP_U_AM_Fatigue_03_4",
"LOP_U_AM_Fatigue_03_2",
"LOP_U_AM_Fatigue_03_5",
"LOP_U_AM_Fatigue_03",
"LOP_U_AM_Fatigue_04_6",
"LOP_U_AM_Fatigue_04_5",
"LOP_U_AM_Fatigue_04_4",
"LOP_U_AM_Fatigue_04_2",
"LOP_U_AM_Fatigue_04_3",
"LOP_U_AM_Fatigue_04",
"U_OrestesBody",
"U_C_Journalist",
"U_I_ParadeUniform_01_AAF_decorated_F",
"U_O_ParadeUniform_01_CSAT_decorated_F",
"U_I_E_ParadeUniform_01_LDF_decorated_F",
"U_B_ParadeUniform_01_US_decorated_F",
"U_I_ParadeUniform_01_AAF_F",
"U_O_ParadeUniform_01_CSAT_F",
"U_I_E_ParadeUniform_01_LDF_F",
"U_B_ParadeUniform_01_US_F",
"U_C_Paramedic_01_F",
"U_C_Uniform_Scientist_01_formal_F",
"U_C_Scientist",
"U_C_Uniform_Scientist_01_F",
"U_C_Uniform_Scientist_02_F",
"U_C_Uniform_Scientist_02_formal_F",
"V_DeckCrew_blue_F",
"V_DeckCrew_brown_F",
"V_DeckCrew_green_F",
"V_DeckCrew_red_F",
"V_DeckCrew_violet_F",
"V_DeckCrew_white_F",
"V_DeckCrew_yellow_F",
"V_Press_F",
"V_Plain_crystal_F",
"V_Plain_medical_F",
"V_Safety_blue_F",
"V_Safety_orange_F",
"V_Safety_yellow_F",
"B_Patrol_Respawn_bag_F",
"B_CombinationUnitRespirator_01_F",
"B_Messenger_Black_F",
"B_Messenger_Coyote_F",
"B_Messenger_Gray_F",
"B_Messenger_Olive_F",
"B_Messenger_IDAP_F",
"B_CivilianBackpack_01_Everyday_Astra_F",
"B_CivilianBackpack_01_Everyday_Black_F",
"B_CivilianBackpack_01_Everyday_Vrana_F",
"B_CivilianBackpack_01_Everyday_IDAP_F",
"B_CivilianBackpack_01_Sport_Blue_F",
"B_CivilianBackpack_01_Sport_Green_F",
"B_CivilianBackpack_01_Sport_Red_F",
"B_SCBA_01_F",
"I_UavTerminal",
"C_UavTerminal",
"O_UavTerminal",
"I_E_UavTerminal",

"DTS_Helmet_IA",
"H_Construction_earprot_orange_F",
"H_Hat_Tinfoil_F",
"CUP_PMC_G_thug",
"CUP_hgun_Browning_HP",

"hlc_rifle_BAB",
"rhs_weap_SCARH_USA_CQC",
"rhs_weap_SCARH_USA_LB",
"rhs_weap_SCARH_USA_STD",
"HLC_wp_M134Painless",
"hlc_wp_SCARL_STD_300AAC_SRX_muddy",
"hlc_wp_SCARH_CQC_SRX_tranoflage",
"CUP_arifle_M16A1GL_FS",
"hgun_esd_01_F",
"hlc_pistol_DL44",
"VSM_CSAT_AOR2_Camo",
"VSM_CSAT_MulticamTropic_Camo",
"rhs_uniform_cossack",
"RUFlagS",
"RUFlag",
"RUFlagW",
"RUFlagWS",
"U_C_man_sport_2_F",
"U_C_ArtTShirt_01_v6_F",
"U_C_ArtTShirt_01_v2_F",
"U_I_C_Soldier_Para_5_F",
"U_C_Uniform_Farmer_01_F",
"U_C_IDAP_Man_Jeans_F",
"U_C_Mechanic_01_F",
"U_C_IDAP_Man_TeeShorts_F",
"U_C_IDAP_Man_Tee_F",
"U_C_IDAP_Man_shorts_F",
"U_C_IDAP_Man_casual_F",
"ITC_Land_O_AL6_Packed",
"ITC_Land_O_AL6m_Packed",
"ITC_Land_O_UAV_Packed",
"ITC_Land_O_AR2e_Packed",
"ITC_Land_O_AR2i_Packed",
"ITC_Land_O_AL6m_Packed",
"ITC_Land_O_AL6m_Packed",

"CUP_launch_Javelin",
"CUP_Javelin_M",
"launch_mas_aus_javelin_F",
"jav_AT_mas_aus",
"U_C_Poloshirt_blue",
"U_C_Poloshirt_burgundy",
"U_C_Poloshirt_salmon",
"U_C_Poloshirt_redwhite",
"U_C_Poloshirt_stripped",
"U_C_Poloshirt_tricolour",
"U_Marshal",
"U_Rangemaster",
"U_I_C_Soldier_Bandit_4_F",
"U_I_C_Soldier_Bandit_5_F",
"U_I_C_Soldier_Bandit_1_F",
"U_I_C_Soldier_Bandit_2_F",
"U_C_Man_casual_2_F",
"U_C_Man_casual_3_F",
"U_C_Man_casual_1_F",
"jav_AT_mas_aus",
"U_C_Man_casual_5_F",
"U_C_Man_casual_4_F",
"U_C_Man_casual_6_F",
"U_C_man_sport_3_F",
"U_C_man_sport_1_F",
"U_C_ArtTShirt_01_v1_F",
"U_C_ArtTShirt_01_v4_F",
"U_C_ArtTShirt_01_v5_F",
"U_C_ArtTShirt_01_v3_F",
"U_C_E_LooterJacket_01_F",
"U_I_L_Uniform_01_tshirt_skull_F",
"U_I_L_Uniform_01_tshirt_black_F",
"U_I_L_Uniform_01_tshirt_sport_F",
"U_C_IDAP_Man_cargo_F",
"CUP_U_C_AirMedic_orange_01",
"CUP_U_C_AirMedic_red_01",
"CUP_U_C_AirMedic_yellow_01",
"CUP_U_O_CHDKZ_Bardak",
"CUP_U_O_CHDKZ_Lopotev",
"CUP_U_C_Citizen_02",
"CUP_U_C_Citizen_01",
"CUP_U_C_Citizen_04",
"CUP_U_C_Citizen_03",
"CUP_U_C_Fireman_01",
"CUP_O_TKI_Khet_Jeans_04",
"CUP_O_TKI_Khet_Jeans_02",
"CUP_O_TKI_Khet_Jeans_01",
"CUP_O_TKI_Khet_Jeans_03",
"CUP_O_TKI_Khet_Partug_04",
"CUP_O_TKI_Khet_Partug_02",
"CUP_O_TKI_Khet_Partug_01",
"CUP_O_TKI_Khet_Partug_07",
"CUP_O_TKI_Khet_Partug_08",
"CUP_O_TKI_Khet_Partug_05",
"CUP_O_TKI_Khet_Partug_06",
"CUP_O_TKI_Khet_Partug_03",
"CUP_U_C_Labcoat_02",
"CUP_U_C_Labcoat_03",
"CUP_U_C_Labcoat_01",
"CUP_U_C_Mechanic_02",
"CUP_U_C_Mechanic_03",
"CUP_U_C_Mechanic_01",
"CUP_U_USNavy_LHD_crew_Blue",
"CUP_U_USNavy_LHD_crew_Brown",
"CUP_U_USNavy_LHD_crew_Green",
"CUP_U_USNavy_LHD_crew_Red",
"CUP_U_USNavy_LHD_crew_Violet",
"CUP_U_USNavy_LHD_crew_White",
"CUP_U_USNavy_LHD_crew_Yellow",
"CUP_U_C_Pilot_01",
"CUP_U_C_Policeman_01",
"CUP_U_C_Priest_01",
"CUP_U_C_Profiteer_02",
"CUP_U_C_Profiteer_03",
"CUP_U_C_Profiteer_01",
"CUP_U_C_Profiteer_04",
"CUP_U_C_racketeer_01",
"CUP_U_C_racketeer_04",
"CUP_U_C_racketeer_02",
"CUP_U_C_racketeer_03",
"CUP_U_C_Rocker_01",
"CUP_U_C_Rocker_03",
"CUP_U_C_Rocker_02",
"CUP_U_C_Rocker_04",
"CUP_U_C_Rescuer_01",
"CUP_U_C_Suit_01",
"CUP_U_C_Suit_02",
"CUP_U_C_Suit_03",
"CUP_U_C_Functionary_jacket_02",
"CUP_U_C_Functionary_jacket_01",
"CUP_U_C_Functionary_jacket_03",
"CUP_U_C_Tracksuit_02",
"CUP_U_C_Tracksuit_01",
"CUP_U_C_Tracksuit_04",
"CUP_U_C_Tracksuit_03",
"CUP_U_C_Villager_01",
"CUP_U_C_Villager_04",
"CUP_U_C_Villager_02",
"CUP_U_C_Villager_03",
"CUP_U_C_Woodlander_01",
"CUP_U_C_Woodlander_02",
"CUP_U_C_Woodlander_03",
"CUP_U_C_Woodlander_04",
"CUP_U_C_Worker_03",
"CUP_U_C_Worker_04",
"CUP_U_C_Worker_02",
"CUP_U_C_Worker_01",
"FIR_CWU45_dayoff",
"rhs_uniform_omon",
"launch_O_Titan_short_F",
"launch_I_Titan_short_F",
"launch_B_Titan_short_F",
"launch_O_Titan_short_ghex_F",
"hlc_muzzle_apology",
"launch_B_Titan_short_tna_F",

"USP_OVERWHITE_G3C_GRN_UCP",
"USP_OVERWHITE_G3C_TAN_UCP",
"USP_OVERWHITE_G3C_MCA_UCP",
"USP_OVERWHITE_G3C_GRN_UCP",
"USP_OVERWHITE_G3C_BLK_UCP",
"USP_PAKOL_HAT",
"USP_PCU_G3C_GRY_BLK",
"USP_PCU_G3C_KP_GRY_BLK",
"USP_PCU_G3C_KP_MX_GRY_BLK",
"USP_PCU_G3C_KP_OR_GRY_BLK",
"USP_PCU_G3C_MX_GRY_BLK",
"USP_PCU_G3C_OR_GRY_BLK",
"USP_BOWMAN_ELITE",
"USP_CRYE_AIRFRAME_CMWV",
"USP_CRYE_AIRFRAME_CMV",
"USP_BAT_PVS31",
"USP_BOLTCUTTER",
"USP_CARABINER",
"USP_ROAM2",
"USP_CROWBAR",
"USP_CRYE_KNEEPAD",
"USP_ACC_NSEAS",
"USP_FAST_COVER",
"USP_FAST_COVER_CBR",
"USP_FAST_COVER_MC",
"USP_FAST_COVER_RGR",
"USP_EARMUFF",
"USP_EARMUFF_GRN",
"USP_EARMUFF_TAN",
"USP_FACESHIELD_GRN",
"USP_FACESHIELD",
"USP_FACESHIELD_TAN",
"USP_WRISTWATCH",
"USP_GOGGLE_COVER",
"USP_GOGGLE_COVER_FG",
"USP_GOGGLE_COVER_MC",
"USP_GOGGLE_COVER_TAN",
"USP_GUNSIGHT",
"USP_GUNSIGHT_MC",
"USP_GUNSIGHT_TAN",
"USP_COUNTERWEIGHT",
"USP_COUNTERWEIGHT_CBR",
"USP_COUNTERWEIGHT_MC",
"USP_COUNTERWEIGHT_RGR",
"USP_ACC_GPNVG18",
"USP_ACC_GPNVG18_TAN",
"USP_ACC_PVS15",
"USP_ACC_PVS14",
"USP_MOHOC",
"USP_MOHOC_GRN",
"USP_CHARGE",
"USP_MS2000",
"USP_MECHANIX",
"USP_MECHANIX_BLK2",
"USP_MECHANIX_CBR",
"USP_MECHANIX_CBR2",
"USP_MECHANIX_GRN",
"USP_MECHANIX_GRY",
"USP_MECHANIX_MC",
"USP_NIGHTCAP",
"USP_NIGHTCAP_CBR",
"USP_NIGHTCAP_MC",
"USP_NIGHTCAP_MCA",
"USP_NIGHTCAP_MCB",
"USP_NIGHTCAP_MCD",
"USP_NIGHTCAP_MCT",
"USP_NIGHTCAP_RGR",
"USP_OVERLORD",
"USP_OVERLORD_CBR",
"USP_OVERLORD_GRN",
"USP_OVERLORD_MC",
"USP_OVERLORD_MIX",
"USP_OVERLORD_TAN",
"USP_SEALSTRIKE",
"USP_TOMAHAWK",
"USP_ZIPTIE",
"USP_ROLLFLAG",
"USP_ROLLFLAG2",
"USP_LAAW_CLIP",
"USP_OVERWHITE_G3C_KP2_TAN_TSW",
"USP_OVERWHITE_G3C_KP2_TAN_TSD",
"USP_OVERWHITE_G3C_KP2_TAN_RGR",
"USP_OVERWHITE_G3C_KP2_TAN_NAV",
"USP_OVERWHITE_G3C_KP2_TAN_MCW",
"USP_OVERWHITE_G3C_KP2_TAN_MCT",
"USP_OVERWHITE_G3C_KP2_TAN_MCD",
"USP_OVERWHITE_G3C_KP2_TAN_MCB",
"USP_OVERWHITE_G3C_KP2_TAN_MC",
"USP_OVERWHITE_G3C_KP2_TAN_M81",
"USP_OVERWHITE_G3C_KP2_TAN_KHK",
"USP_OVERWHITE_G3C_KP2_TAN_GRY",
"USP_OVERWHITE_G3C_KP2_TAN",
"USP_OVERWHITE_G3C_KP2_TAN_AOR2",
"USP_OVERWHITE_G3C_KP2_TAN_AOR1",
"USP_OVERWHITE_G3C_KP2_MCA_TSW",
"USP_OVERWHITE_G3C_KP2_MCA_TSD",
"USP_OVERWHITE_G3C_KP2_MCA_RGR",
"USP_OVERWHITE_G3C_KP2_MCA_NAV",
"USP_OVERWHITE_G3C_KP2_MCA_MCW",
"USP_OVERWHITE_G3C_KP2_MCA_MCT",
"USP_OVERWHITE_G3C_KP2_MCA_MCD",
"USP_OVERWHITE_G3C_KP2_MCA_MCB",
"USP_OVERWHITE_G3C_KP2_MCA_MC",
"USP_OVERWHITE_G3C_KP2_MCA_M81",
"USP_OVERWHITE_G3C_KP2_MCA_KHK",
"USP_OVERWHITE_G3C_KP2_MCA_GRY",
"USP_OVERWHITE_G3C_KP2",
"USP_OVERWHITE_G3C_KP2_MCA_AOR2",
"USP_OVERWHITE_G3C_KP2_MCA_AOR1",
"USP_OVERWHITE_G3C_KP2_GRN_TSW",
"USP_OVERWHITE_G3C_KP2_GRN_TSD",
"USP_OVERWHITE_G3C_KP2_GRN_RGR",
"USP_OVERWHITE_G3C_KP2_GRN_NAV",
"USP_OVERWHITE_G3C_KP2_GRN_MCW",
"USP_OVERWHITE_G3C_KP2_GRN_MCT",
"USP_OVERWHITE_G3C_KP2_GRN_MCD",
"USP_OVERWHITE_G3C_KP2_GRN_MCB",
"USP_OVERWHITE_G3C_KP2_GRN_MC",
"USP_OVERWHITE_G3C_KP2_GRN_M81",
"USP_OVERWHITE_G3C_KP2_GRN_KHK",
"USP_OVERWHITE_G3C_KP2_GRN_GRY",
"USP_OVERWHITE_G3C_KP2_GRN",
"USP_OVERWHITE_G3C_KP2_GRN_AOR2",
"USP_OVERWHITE_G3C_KP2_GRN_AOR1",
"USP_OVERWHITE_G3C_KP2_BLK",
"USP_OVERWHITE_G3C_KP2_BLK_TSW",
"USP_OVERWHITE_G3C_KP2_BLK_TSD",
"USP_OVERWHITE_G3C_KP2_BLK_RGR",
"USP_OVERWHITE_G3C_KP2_BLK_NAV",
"USP_OVERWHITE_G3C_KP2_BLK_MCW",
"USP_OVERWHITE_G3C_KP2_BLK_MCT",
"USP_OVERWHITE_G3C_KP2_BLK_MCD",
"USP_OVERWHITE_G3C_KP2_BLK_MCB",
"USP_OVERWHITE_G3C_KP2_BLK_MC",
"USP_OVERWHITE_G3C_KP2_BLK_M81",
"USP_OVERWHITE_G3C_KP2_BLK_KHK",
"USP_OVERWHITE_G3C_KP2_BLK_GRY",
"USP_OVERWHITE_G3C_KP2_BLK_AOR2",
"USP_OVERWHITE_G3C_KP2_BLK_AOR1",
"USP_ZIPON_PANEL_RGR_RF2",
"USP_ZIPON_PANEL_MCT_RF2",
"USP_ZIPON_PANEL_MCD_RF2",
"USP_ZIPON_PANEL_MCB_RF2",
"USP_ZIPON_PANEL_MCA_RF2",
"USP_ZIPON_PANEL_MC_RF2",
"USP_ZIPON_PANEL_CBR_RF2",
"USP_ZIPON_PANEL_RF2",
"USP_ZIPON_PANEL_RGR_RF",
"USP_ZIPON_PANEL_MCT_RF",
"USP_ZIPON_PANEL_MCD_RF",
"USP_ZIPON_PANEL_MCB_RF",
"USP_ZIPON_PANEL_MCA_RF",
"USP_ZIPON_PANEL_MC_RF",
"USP_ZIPON_PANEL_CBR_RF",
"USP_ZIPON_PANEL_RF",
"USP_PAKOL_HAT_BM_DUST",
"USP_PAKOL_HAT_BM_DIRT",
"USP_PAKOL_HAT_BM",
"USP_PAKOL_HAT_DUST",
"USP_PAKOL_HAT_DIRT",
"USP_PAKOL_HAT",
"USP_PATROL_PACK_CB_CS_RP",
"USP_PATROL_PACK_CB_CS_ZT",
"USP_PATROL_PACK_CB_CS_RP",
"I_UAV_01_backpack_F",
"USP_PATROL_PACK_CB_CS_ZT",
"LMG_mas_aus_02_F",
"LMG_mas_aus_02_camo_F",
"LMG_mas_aus_03_F",
"LMG_mas_aus_03C_F",
"LMG_mas_aus_gpmg_F",
"150Rnd_mas_aus_762x51_Mag",
"200Rnd_mas_aus_556x45_Drum_Mag_F",
"200Rnd_mas_aus_556x45SD_Drum_Mag_F",
"30Rnd_mas_aus_556x45sd_Stanag",
"30Rnd_mas_aus_556x45_Stanag",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A",
"USP_PATROL_PACK_CB_CS_RP",
"rhs_uniform_df15",
"rhs_uniform_df15_tan",
"rhs_uniform_emr_des_patchless",
"rhs_uniform_vdv_emr_des",
"rhs_uniform_emr_patchless",
"rhs_uniform_msv_emr",
"rhs_uniform_vdv_emr",
"rhs_uniform_flora_patchless",
"rhs_uniform_flora_patchless_alt",
"rhs_uniform_flora",
"rhs_uniform_rva_flora",
"rhs_uniform_vdv_flora",
"rhs_uniform_vmf_flora",
"rhs_uniform_vmf_flora_subdued",
"rhs_uniform_gorka_r_g",
"rhs_uniform_gorka_r_y",
"rhs_uniform_gorka_1_a",
"rhs_uniform_gorka_1_b",
"rhs_uniform_mvd_izlom",
"rhs_uniform_m88_patchless",
"rhs_uniform_mflora_patchless",
"rhs_uniform_vdv_mflora",
"rhs_uniform_6sh122_gloves_v2",
"rhs_uniform_6sh122_v1",
"rhs_uniform_klmk_oversuit",
"rhs_uniform_afghanka_klmk",
"rhs_uniform_afghanka_moldovan_ttsko_blue",
"rhs_uniform_afghanka_moldovan_ttsko_cold",
"rhs_uniform_afghanka_moldovan_ttsko_desat",
"rhs_uniform_afghanka_moldovan_ttsko_hot",
"rhs_uniform_afghanka_spetsodezhda",
"rhs_uniform_afghanka_ttsko",
"rhs_uniform_afghanka_ttsko_2",
"rhs_uniform_afghanka_vsr_1",
"rhs_uniform_afghanka_vsr_2",
"rhs_uniform_afghanka_vsr_3",
"rhs_uniform_afghanka_boots_moldovan_ttsko_cold",
"rhs_uniform_afghanka_boots_moldovan_ttsko_hot",
"rhs_uniform_afghanka_boots_moldovan_ttsko_desat",
"rhs_uniform_afghanka_boots_spetsodezhda",
"rhs_uniform_afghanka_boots_ttsko",
"rhs_uniform_afghanka_para_ttsko",
"rhs_uniform_afghanka_para_ttsko_2",
"rhs_uniform_afghanka_para_vsr",
"rhs_uniform_afghanka_para_vsr_2",
"rhs_uniform_afghanka_winter_moldovan_ttsko",
"rhs_uniform_afghanka_winter_spetsodezhda",
"rhs_uniform_afghanka_winter_ttsko",
"rhs_uniform_afghanka_winter_vsr",
"rhs_uniform_afghanka_winter_vsr_2",
"rhs_uniform_afghanka_winter_vsr_3",
"rhs_uniform_afghanka_winter_boots_moldovan_ttsko",
"rhs_uniform_afghanka_winter_boots_spetsodezhda",
"rhs_uniform_afghanka_winter_boots_ttsko",
"rhs_uniform_afghanka_winter_boots_vsr",
"rhs_uniform_afghanka_winter_boots_vsr_2",
"rhs_uniform_vkpo",
"rhs_uniform_vkpo_alt",
"rhs_uniform_vkpo_gloves_alt",
"rhs_uniform_vkpo_gloves",
"rhs_uniform_6sh122_v2",
"rhs_6b13_Flora",
"rhs_6b13_Flora_6sh92",
"rhs_6b13_Flora_6sh92_headset_mapcase",
"rhs_6b13_Flora_6sh92_radio",
"rhs_6b13_Flora_6sh92_vog",
"rhs_6b13_Flora_crewofficer",
"rhs_6b13_EMR",
"rhs_6b13_EMR_6sh92",
"rhs_6b13_EMR_6sh92_radio",
"rhs_6b13_EMR_6sh92_vog",
"rhs_6b13_EMR_6sh92_headset_mapcase",
"rhs_6b13_6sh92_vog",
"rhs_6b23_6sh92_vog",
"rhs_6b23_6sh92_vog_headset",
"rhs_6b23_digi",
"rhs_6b23_6sh116_vog",
"rhs_6b23_digi_6sh92",
"rhs_6b23_digi_6sh92_spetsnaz2",
"rhs_6b23_digi_6sh92_headset",
"rhs_6b23_digi_6sh92_headset_spetsnaz",
"rhs_6b23_digi_6sh92_headset_mapcase",
"rhs_6b23_digi_6sh92_radio",
"rhs_6b23_digi_6sh92_Spetsnaz",
"rhs_6b23_digi_6sh92_vog",
"rhs_6b23_digi_6sh92_Vog_Spetsnaz",
"rhs_6b23_digi_6sh92_vog_headset",
"rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz",
"rhs_6b23_digi_crewofficer",
"rhs_6b23_digi_crew",
"rhs_6b23_digi_engineer",
"rhs_6b23_digi_medic",
"rhs_6b23_digi_rifleman",
"rhs_6b23_digi_sniper",
"rhs_6b23_digi_vydra_3m",
"rhs_6b23_6sh116_flora",
"rhs_6b23_6sh116_vog_flora",
"rhs_6b23_ML",
"rhs_6b23_ML_6sh92",
"rhs_6b23_ML_6sh92_headset",
"rhs_6b23_ML_6sh92_headset_mapcase",
"rhs_6b23_ML_6sh92_radio",
"rhs_6b23_ML_6sh92_vog",
"rhs_6b23_ML_6sh92_vog_headset",
"rhs_6b23_ML_crewofficer",
"rhs_6b23_ML_crew",
"rhs_6b23_ML_engineer",
"rhs_6b23_ML_medic",
"rhs_6b23_ML_rifleman",
"rhs_6b23_ML_sniper",
"rhs_6b23_ML_vydra_3m",
"rhs_6sh92_vog",
"rhs_6sh92_vog_headset",
"rhs_6sh92_digi",
"rhs_6sh92_digi_headset",
"rhs_6sh92_digi_radio",
"rhs_6sh92_digi_vog",
"rhs_6sh92_digi_vog_headset",
"rhs_6sh92_vsr",
"rhs_6sh92_vsr_headset",
"rhs_6sh92_vsr_radio",
"rhs_6sh92_vsr_vog",
"rhs_6sh92_vsr_vog_headset",
"rhs_6b13",
"rhs_6b13_6sh92",
"rhs_6b13_6sh92_headset_mapcase",
"rhs_6b13_6sh92_radio",
"rhs_6b13_crewofficer",
"rhs_6b23",
"rhs_6b23_6sh92",
"rhs_6b23_6sh92_headset",
"rhs_6b23_6sh92_headset_mapcase",
"rhs_6b23_6sh92_radio",
"rhs_6b23_crewofficer",
"rhs_6b23_crew",
"rhs_6b23_engineer",
"rhs_6b23_medic",
"rhs_6b23_rifleman",
"rhs_6b23_sniper",
"rhs_6b23_vydra_3m",
"rhs_6b23_6sh116",
"rhs_6b23_6sh116_mixed",
"rhs_6b23_6sh116_vog_mixed",
"rhs_6b43",
"rhs_6b45",
"rhs_6b45_holster",
"rhs_6b45_light",
"rhs_6b45_mg",
"rhs_6b45_off",
"rhs_6b45_rifleman",
"rhs_6b45_rifleman_2",
"rhs_6b45_grn",
"rhs_6b5_spetsodezhda",
"rhs_6b5_rifleman_spetsodezhda",
"rhs_6b5_medic_spetsodezhda",
"rhs_6b5_officer_spetsodezhda",
"rhs_6b5_sniper_spetsodezhda",
"rhs_6b5_ttsko",
"rhs_6b5_rifleman_ttsko",
"rhs_6b5_medic_ttsko",
"rhs_6b5_sniper_ttsko",
"rhs_6b5_officer_ttsko",
"rhs_6b5_vsr",
"rhs_6b5_rifleman_vsr",
"rhs_6b5_medic_vsr",
"rhs_6b5_officer_vsr",
"rhs_6b5_sniper_vsr",
"rhs_6sh117_mg",
"rhs_6sh117_rifleman",
"rhs_6sh117_ar",
"rhs_6sh117_nco",
"rhs_6sh117_nco_azart",
"rhs_6sh117_svd",
"rhs_6sh117_val",
"rhs_6sh117_grn",
"rhs_6sh92",
"rhs_6sh92_headset",
"rhs_6sh92_radio",
"rhs_rd54_emr1",
"rhs_rd54_flora2",
"rhs_rd54_flora1",
"rhs_rd54_vest_emr1",
"rhs_rd54_vest_flora2",
"rhs_rd54_vest_flora1",
"rhs_rk_sht_30_emr",
"rhs_rk_sht_30_emr_engineer_empty",
"rhs_tortila_emr",
"rhs_6b26_digi",
"rhs_6b26_digi_bala",
"rhs_6b26_digi_ess",
"rhs_6b26_digi_ess_bala",
"rhs_6b26",
"rhs_6b26_bala",
"rhs_6b26_ess",
"rhs_6b26_ess_bala",
"rhs_6b27m_digi",
"rhs_6b27m_digi_bala",
"rhs_6b27m_digi_ess",
"rhs_6b27m_digi_ess_bala",
"rhs_6b27m",
"rhs_6b27m_bala",
"rhs_6b27m_ess",
"rhs_6b27m_ess_bala",
"rhs_6b27m_ml",
"rhs_6b27m_ml_bala",
"rhs_6b27m_ml_ess",
"rhs_6b27m_ML_ess_bala",
"rhs_6b28",
"rhs_6b28_ess",
"rhs_6b28_bala",
"rhs_6b28_ess_bala",
"rhs_6b28_flora",
"rhs_6b28_flora_bala",
"rhs_6b28_flora_ess",
"rhs_6b28_flora_ess_bala",
"rhs_6b47",
"rhs_6b47_6m2_1",
"rhs_6b47_6m2",
"rhs_6b47_bala",
"rhs_6b47_emr",
"rhs_6b47_emr_2",
"rhs_6b47_emr_1",
"rhs_6b47_6B50",
"rhs_6b47_ess",
"rhs_6b47_ess_bala",
"rhs_6b7_1m_emr",
"rhs_6b7_1m_bala2_emr",
"rhs_6b7_1m_bala1_emr",
"rhs_6b7_1m_emr_ess",
"rhs_6b7_1m_emr_ess_bala",
"rhs_6b7_1m_flora",
"rhs_6b7_1m_bala1_flora",
"rhs_6b7_1m_bala2_flora",
"rhs_6b7_1m_flora_ns3",
"rhs_beret_mp2",
"rhs_beret_mp1",
"rhs_beret_mvd",
"rhs_beret_omon",
"rhs_beret_vdv1",
"rhs_beret_vdv2",
"rhs_beret_vdv3",
"rhs_beret_vdv_early",
"rhs_beret_milp",
"rhs_Booniehat_digi",
"rhs_Booniehat_flora",
"rhs_cossack_visor_cap",
"rhs_cossack_visor_cap_tan",
"rhs_cossack_papakha",
"rhs_fieldcap",
"rhs_fieldcap_helm_digi",
"rhs_fieldcap_helm_ml",
"rhs_fieldcap_helm",
"rhs_fieldcap_digi",
"rhs_fieldcap_digi2",
"rhs_fieldcap_izlom",
"rhs_fieldcap_m88_klmk",
"rhs_fieldcap_m88_klmk_back",
"rhs_fieldcap_m88_moldovan_ttsko_blue",
"rhs_fieldcap_m88_moldovan_ttsko_blue_back",
"rhs_fieldcap_m88_moldovan_ttsko_cold",
"rhs_fieldcap_m88_moldovan_ttsko_cold_back",
"rhs_fieldcap_m88_moldovan_ttsko_desat",
"rhs_fieldcap_m88_moldovan_ttsko_desat_back",
"rhs_fieldcap_m88_moldovan_ttsko_hot",
"rhs_fieldcap_m88_moldovan_ttsko_hot_back",
"rhs_fieldcap_m88_ttsko_alt",
"rhs_fieldcap_m88_ttsko_alt_back",
"rhs_fieldcap_m88_ttsko_vdv",
"rhs_fieldcap_m88_ttsko_vdv_back",
"rhs_fieldcap_m88_ttsko",
"rhs_fieldcap_m88_ttsko_back",
"rhs_fieldcap_m88_vsr_2",
"rhs_fieldcap_m88_vsr_2_back",
"rhs_fieldcap_m88_vsr",
"rhs_fieldcap_m88_vsr_back",
"rhs_fieldcap_ml",
"rhs_fieldcap_vsr",
"rhs_stsh81_butan",
"rhs_vkpo_cap",
"rhs_vkpo_cap_alt"
];

// MSU_whitelisted_from_arsenal = [];




