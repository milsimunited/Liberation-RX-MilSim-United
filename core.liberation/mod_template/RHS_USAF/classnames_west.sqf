// *** FRIendlIES ***
GRLIB_side_friendly = WEST;
GRLIB_color_friendly = "ColorBLUFOR";

// default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "B_Heli_Transport_03_F";
// comment to use value from lobby/server.cfg
FOB_typename = "Land_MedicalTent_01_aaf_generic_open_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "rhsusf_m113_usarmy_unarmed";
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

// [classname, MANPOWER, ammo, fuel, rank]
infantry_units = [
    ["BWA3_Medic_Fleck", 0, ai_value, 0, GRLIB_perm_inf]
];

small_infantry_transport_unarmed = [
    ["B_Quadbike_01_F", 0, 10, 0, GRLIB_perm_inf],
    ["C_Offroad_02_unarmed_F", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_mrzr4_d", 0, 100, 0, GRLIB_perm_inf],
    ["B_LSV_01_unarmed_F", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1043_w", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1151_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1165_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1152_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1152_sicps_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
    ["rhsusf_m1152_rsv_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_landRover_Soft_FFR_Green_A", 0, 100, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_landRover_Hard_FFR_Green_A", 0, 100, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_landRover_Snatch_FFR_Green_A", 0, 100, 0, GRLIB_perm_inf],
    ["BWA3_Eagle_Fleck", 0, 100, 0, GRLIB_perm_inf]  
];

small_infantry_transport_armed_HMG = [
    ["rhsusf_m1165_asv_m240_usaf_d", 0, 200, 0, GRLIB_perm_inf],
    ["rhsusf_m1043_w_m2", 0, 200, 0, GRLIB_perm_inf],
    ["rhsusf_M1230_M2_usarmy_wd", 0, 200, 0, GRLIB_perm_inf],
    ["rhsusf_m1165a1_gmv_m2_m240_socom_d", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
    ["UK3CB_BAF_Coyote_Passenger_L111A1_W", 0, 200, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Panther_GPMG_Green_A", 0, 200, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_landRover_WMIK_GPMG_FFR_Green_A", 0, 200, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Husky_Passenger_GPMG_Green", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
    ["UK3CB_BAF_Husky_Passenger_HMG_Green", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
    ["BWA3_Eagle_FLW100_Fleck", 0, 250, 0, GRLIB_perm_inf]
];

small_infantry_transport_armed_GMG = [
    ["UK3CB_BAF_Jackal2_L134A1_W", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Husky_Passenger_GMG_Green", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_m1165a1_gmv_mk19_m240_socom_d", 0, 400, msu_fuel_apc, GRLIB_perm_inf]
];

small_infantry_transport_armed_AT = [
    ["B_LSV_01_AT_F", 0, 300, 0, GRLIB_perm_inf],
    ["rhsusf_m1045_w", 0, 300, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_landRover_WMIK_Milan_FFR_Green_A", 0, 300, 0, GRLIB_perm_inf]
];

big_infantry_transport_unarmed = [
    ["B_MRAP_01_F", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1220_usarmy_wd", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1238A1_socom_d", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
    ["I_MRAP_03_F", 0, 200, msu_fuel_apc, GRLIB_perm_inf]
];

big_infantry_transport_armed_HMG = [
    ["rhsusf_m1240a1_m240_uik_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_m1240a1_m2_uik_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1230_M2_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1220_M153_M2_usarmy_wd", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
    ["BWA3_Dingo2_FLW100_MG3_CG13_Fleck", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
    ["BWA3_Dingo2_FLW200_M2_CG13_Fleck", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
    ["B_MRAP_01_HMG_F", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
    ["I_MRAP_03_hmg_F", 0, 400, msu_fuel_apc, GRLIB_perm_inf]
];

big_infantry_transport_armed_GMG = [
    ["B_MRAP_01_gmg_F", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1220_MK19_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_M1230_MK19_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
    ["rhsusf_m1240a1_mk19_uik_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf]
];

armored_infantry_transport = [
    ["UK3CB_BAF_FV432_Mk3_GPMG_Green", 0, 400, msu_fuel_ifv, GRLIB_perm_inf],
    ["rhsusf_stryker_m1126_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
    ["rhsusf_stryker_m1127_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
    ["rhsusf_stryker_m1132_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
    ["UK3CB_BAF_FV432_Mk3_RWS_Green", 0, 450, msu_fuel_ifv, GRLIB_perm_inf]

];

artillery_vehicles = [
    ["rhsusf_m109_usarmy", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
    ["BWA3_Panzerhaubitze2000_Fleck", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
    ["B_MBT_01_arty_F", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhsusf_M142_usarmy_WD", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["RHS_BM21_VMF_01", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
    ["B_MBT_01_mlrs_F", 0, 3000, 0, msu_fuel_mbt, GRLIB_perm_inf] 
];

apc = [
    ["BWA3_Puma_Fleck", 0, 1400, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_LT_01_scout_F", 0, 200, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_LT_01_AA_F", 0, 600, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_LT_01_AT_F", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_LT_01_cannon_F", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["Redd_tank_Wiesel_1A2_toW_Tropentarn", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["Redd_tank_Wiesel_1A4_MK20_Tropentarn", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],    
    ["RHS_M6_wd", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
    ["rhs_btr80a_vmf", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
    ["rnt_sppz_2a2_luchs_tropentarn", 0, 900, msu_fuel_ifv, GRLIB_perm_inf],
    ["RHS_M2A3_wd", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["RHS_M2A3_BUSKIII_wd", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
    ["Redd_Marder_1A5_Tropentarn", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["UK3CB_BAF_Warrior_A3_W_Camo", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
    ["UK3CB_BAF_Warrior_A3_W_Cage", 0, 1100, msu_fuel_ifv, GRLIB_perm_inf],   
    ["B_T_APC_Wheeled_01_cannon_F", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_APC_tracked_03_cannon_F", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
    ["I_APC_Wheeled_03_cannon_F", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf]
];

mbt = [
   
    ["rhs_t80ue1", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhs_t90sm_tv", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhsusf_m1a1aim_tuski_wd", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhsusf_m1a2sep1tuskiwd_usarmy", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhsusf_m1a2sep2wd_usarmy", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["rhsusf_m1a2sep1tuskiiwd_usarmy", 0,2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["BWA3_Leopard2_Fleck", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
    ["B_MBT_01_TUSK_F", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
    ["I_MBT_03_cannon_F", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
    ["B_AFV_Wheeled_01_up_cannon_F", 0, 1800, msu_fuel_ifv, GRLIB_perm_inf]
    
];

anti_air = [
    ["rhs_zsu234_aa", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
    ["Redd_tank_Gepard_1A2_Flecktarn", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
    ["B_APC_Tracked_01_AA_F", 0, 700, msu_fuel_mbt, GRLIB_perm_inf]
    
];

helicopter_personal_transport = [
    ["RHS_MELB_MH6M", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_UH1Y_UNARMED_d", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_UH60M2_d", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_UH60M_d", 0, 400, 0, GRLIB_perm_inf],
    ["BWA3_NH90_TTH_Fleck", 0, 400, 0, GRLIB_perm_inf],
    ["BWA3_NH90_TTH_M3M_Fleck", 0, 400, 0, GRLIB_perm_inf],
    ["B_Heli_Transport_01_F", 0, 400, 0, GRLIB_perm_inf],
    ["O_Heli_Light_02_unarmed_F", 0, 400, 0, GRLIB_perm_inf],
    ["I_Heli_Transport_02_F", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Wildcat_AH1_TRN_8A", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Merlin_HC4_32", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Merlin_HC4_18_GPMG", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_Mi8AMT_vvs", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_CH_47F_10", 0, 400, 0, GRLIB_perm_inf],
    ["rhsusf_CH53E_USMC_GAU21_D", 0, 400, 0, GRLIB_perm_inf]   
];

helicopter_cargo_transport = [
    ["RHS_CH_47F_10_cargo", 0, 400, 0, GRLIB_perm_inf],
    ["rhsusf_CH53e_USMC_D_cargo", 0, 400, 0, GRLIB_perm_inf],
    ["O_Heli_Transport_04_F", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Merlin_HC4_Cargo", 0, 400, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_Merlin_HC3_Cargo", 0, 400, 0, GRLIB_perm_inf]
];

helicopter_armed = [
    ["RHS_MELB_AH6M", 0, 900, 0, GRLIB_perm_inf],
    ["RHS_UH60M_ESSS_d", 0, 1200, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_UH1Y_d", 0, 1000, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_AH1Z", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_AH64DGrey", 0, 2000, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_Ka52_vvsc", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["rhs_mi28n_vvsc", 0, 1800, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_Mi24P_vvs", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_Mi24V_vvs", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["RHS_Mi8MTV3_heavy_vvs", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["UK3CB_BAF_Wildcat_AH1_CAS_6A", 0, 1000, 0, GRLIB_perm_inf],
    ["BWA3_Tiger_RMK", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
    ["B_Heli_Attack_01_dynamicloadout_F", 0, 1700, 0, GRLIB_perm_inf]  
];

planes = [
    ["RHS_C130J", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_C130J_Cargo", 0, 400, 0, GRLIB_perm_inf],
    ["USAF_C130J", 0, 400, 0, GRLIB_perm_inf],
    ["USAF_C130J_Cargo", 0, 400, 0, GRLIB_perm_inf],
    ["usaf_kc135", 0, 400, 0, GRLIB_perm_inf],
    ["USAF_C17", 0, 400, 0, GRLIB_perm_inf],
    ["B_T_VtoL_01_infantry_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
    ["B_T_VtoL_01_vehicle_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
    ["B_T_VtoL_01_armed_F", 0, 4000, msu_fuel_heli, GRLIB_perm_inf]
];

jets = [
    ["I_Plane_Fighter_03_dynamicloadout_F", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
    ["I_Plane_Fighter_04_F", 0, 1600, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_F35A_STEALTH", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_F22", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_F22_EWP_AA", 0, 1900, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_F22_Heavy", 0, 1900, msu_fuel_plane, GRLIB_perm_inf],
    ["B_Plane_Fighter_01_Stealth_F", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
    ["B_Plane_Fighter_01_F", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_A10", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
    ["FIR_F35B_Standard", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
    ["USAF_F35A", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
    ["JS_JC_FA18E", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
    ["JS_JC_FA18F", 0, 2200, msu_fuel_plane, GRLIB_perm_inf]
];

drones = [
    ["B_T_UGV_01_olive_F", 0, 150, 0, GRLIB_perm_inf],
    ["USAF_RQ4A", 0, 400, msu_fuel_plane, GRLIB_perm_inf], 
    ["B_T_UGV_01_rcws_olive_F", 0, 600, 0, GRLIB_perm_inf],
    ["USAF_MQ9", 0, 1400, msu_fuel_plane, GRLIB_perm_inf], 
    ["B_UAV_05_F", 0, 1400, msu_fuel_plane, GRLIB_perm_inf]
];

medical_vehicle_ground = [
    ["UK3CB_BAF_landRover_Amb_FFR_Green_A", 0, 400, 0, GRLIB_perm_inf],
    ["Redd_tank_LKW_leicht_gl_Wolf_Flecktarn_San", 0, 400, 0, GRLIB_perm_inf],
    ["Redd_Tank_Fuchs_1A4_San_Flecktarn", 0, 400, 0, GRLIB_perm_inf],
    ["B_Truck_01_medical_F", 0, 400, 0, GRLIB_perm_inf],
    ["rhsusf_M1230a1_usarmy_wd", 0, 400, 0, GRLIB_perm_inf],
    ["rhsusf_m113_usarmy_medical", 0, 400, msu_fuel_ifv, GRLIB_perm_inf],
    ["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", 0, 400, 0, GRLIB_perm_inf]
];

medical_vehicle_air = [
    ["RHS_UH60M_MEV_d", 0, 400, 0, GRLIB_perm_inf],
    ["RHS_UH60M_MEV2_d", 0, 400, 0, GRLIB_perm_inf]
];

logistics_vehicle_ground = [
    ["UK3CB_BAF_MAN_HX60_Transport_Green", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_Transport_Green", 0, 150, 0, GRLIB_perm_inf],
    ["rnt_lkw_5t_mil_gl_kat_i_transport_fleck", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_transport_F", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_covered_F", 0, 150, 0, GRLIB_perm_inf],
    ["rnt_lkw_10t_mil_gl_kat_i_repair_fleck", 0, 150, 0, GRLIB_perm_inf],
    ["rnt_lkw_5t_mil_gl_kat_i_fuel_fleck", 0, 150, 0, GRLIB_perm_inf],
    ["rnt_lkw_7t_mil_gl_kat_i_mun_fleck", 0, 150, 0, GRLIB_perm_inf],
    ["BWA3_Multi_Fleck", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_ammo_F", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_flatbed_F", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_fuel_F", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_Repair_F", 0, 150, 0, GRLIB_perm_inf],
    ["B_Truck_01_box_F", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_fuel_Green", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Repair_Green", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Cargo_Green_A", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Cargo_Green_B", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_fuel_Green", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_Repair_Green", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_Cargo_Green_A", 0, 150, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_Cargo_Green_B", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1084A1R_SOV_M2_D_fmtv_socom", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_B_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_B_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1084A1P2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1084A1P2_B_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_ammo_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_REPAIR_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_BKIT_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_ammo_BKIT_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_BKIT_M2_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_ammo_BKIT_M2_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M978A4_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["rhsusf_M978A4_BKIT_usarmy_wd", 0, 150, 0, GRLIB_perm_inf],
    ["B_APC_Tracked_01_CRV_F", 0, 800, msu_fuel_ifv, GRLIB_perm_inf]
];

boats = [
    ["CUP_B_LCU1600_USMC", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["CUP_B_RHIB_USMC", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
    ["CUP_B_RHIB2Turret_USMC", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
    ["C_Scooter_Transport_01_F", 0, 15, 0, GRLIB_perm_inf],
    ["B_SDV_01_F", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["B_Boat_Transport_01_F", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["B_Lifeboat", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["B_Boat_Armed_01_minigun_F", 0, 125, 0, GRLIB_perm_inf],
    ["ffaa_ar_zodiac_hurricane", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["ffaa_ar_lcm", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["ffaa_ar_zodiac_hurricane_long", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
    ["ffaa_ar_supercat", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
    ["rhsusf_mkvsoc", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_RHIB_HMG", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_RHIB_GPMG", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf]
    
];

static_vehicles = [
    ["rnt_gmw_static_ai", 0, 0, 0, GRLIB_perm_inf],
    ["Redd_Milan_Static", 0, 0, 0, GRLIB_perm_inf],
    ["RHS_Stinger_AA_pod_USMC_WD", 0, 0, 0, GRLIB_perm_inf],
    ["rnt_mg3_static_ai", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_MRS120_Fleck", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_SearchLight_static_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_M2StaticMG_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_M2StaticMG_miniTripod_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_MK19_TriPod_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["RHS_toW_TriPod_D", 0, 0, 0, GRLIB_perm_inf, 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_M252_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["itc_land_COBRA01", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_B_Stinger_AA_pod_Base_USMC", 0, 0, 0, GRLIB_perm_inf],
    ["CUP_WV_B_CRAM", 40, 0, 0, GRLIB_perm_inf],
    ["B_radar_System_01_F", 40, 0, 0, GRLIB_perm_inf],
    ["CUP_WV_B_RAM_Launcher", 150, 0, 0, GRLIB_perm_inf],
    ["CUP_WV_B_SS_Launcher", 250, 0, 0, GRLIB_perm_inf],
    ["B_AAA_System_01_F", 40, 0, 0, GRLIB_perm_inf],
    ["B_SAM_System_01_F", 40, 0, 0, GRLIB_perm_inf],
    ["rnt_mantis_base", 40, 0, 0, GRLIB_perm_inf],
    ["rnt_mantis_radar", 0, 0, 0, GRLIB_perm_inf],
    ["ffaa_lanzador_nasams", 25, 0, 0, GRLIB_perm_inf],
    ["RHS_ZU23_VMF", 0, 300, 0, GRLIB_perm_inf],
    ["rhs_D30_vmf", 0, 300, 0, GRLIB_perm_inf],
    ["RHS_M119_WD", 0, 300, 0, GRLIB_perm_inf],
    ["B_Ship_MRLS_01_F", 0, 5000, 0, GRLIB_perm_inf]
];

// list for vehicle restrictions

transport_air_vehicles = [];
{
    transport_air_vehicles pushBack (_x select 0);
} forEach (helicopter_cargo_transport + helicopter_personal_transport);

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
    // support_crates
    // Ersatzteile
    ["ACE_Track", 0, 0, 0, GRLIB_perm_inf],
    ["ACE_Wheel", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Canisterfuel_F", 0, 0, 0, GRLIB_perm_inf],
    // Kisten
    ["Box_IED_exp_F", 0, 0, 0, GRLIB_perm_inf],
    ["B_CargoNet_01_ammo_F", 0, 0, 0, GRLIB_perm_inf],
    ["CargoNet_01_box_F", 0, 0, 0, GRLIB_perm_inf],
    ["CargoNet_01_barrels_F", 0, 0, 0, GRLIB_perm_inf],
    // Waffen
    ["SNC_Javelin", 0, 450, 0, GRLIB_perm_inf],
    // cratefiller & Container
    ["Land_RepairDepot_01_green_F", 0, 0, 0, GRLIB_perm_inf],
    ["ffaa_UAVStation", 0, 0, 0, GRLIB_perm_inf],
    // Bundeswehr	Fleck
    ["BWA3_WLP14_ammo_Fleck", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Flatbed_Oliv", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_TCK9_fuel_Fleck", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Repair_Fleck", 0, 0, 0, GRLIB_perm_inf],
    // Bundeswehr Tropen
    ["BWA3_WLP14_ammo_Tropen", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Flatbed_Tropen", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_TCK9_fuel_Tropen", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Repair_Tropen", 0, 0, 0, GRLIB_perm_inf],
    // Bundeswehr	Winter
    ["BWA3_WLP14_ammo_Winter", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Flatbed_Winter", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_TCK9_fuel_Winter", 0, 0, 0, GRLIB_perm_inf],
    ["BWA3_WLP14_Repair_Winter", 0, 0, 0, GRLIB_perm_inf],
    // USAF Container
    ["USAF_Slingload_ammo", 0, 0, 0, GRLIB_perm_inf],
    ["USAF_Slingload_Repair", 0, 0, 0, GRLIB_perm_inf],
    ["USAF_Slingload_fuel", 0, 0, 0, GRLIB_perm_inf],
    // Huron Container
    [ammo_sling_typename, 0, 0, 0, GRLIB_perm_inf],
    [repair_sling_typename, 0, 0, 0, GRLIB_perm_inf],
    [fuel_sling_typename, 0, 0, 0, GRLIB_perm_inf],
    [medic_sling_typename, 0, 0, 0, GRLIB_perm_inf],
    // Taru Container
    ["Land_Pod_Heli_Transport_04_medevac_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_covered_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_repair_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_fuel_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_ammo_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_box_F", 0, 0, 0, GRLIB_perm_inf],
    ["Land_Pod_Heli_Transport_04_bench_F", 0, 0, 0, GRLIB_perm_inf],
    // BAF Container
    ["UK3CB_BAF_MAN_HX60_Container_Blue", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX60_Container_Green", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX60_Container_ReArm", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX60_Container_Sand", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX60_Container_logistics_Green", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Container_logistics_Sand", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Container_Servicing_Ground_Green", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Container_Servicing_Ground_Sand", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Container_Servicing_Air_Green", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX60_Container_Servicing_Air_Sand", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_MAN_HX58_Container_Blue", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX58_Container_Green", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX58_Container_ReArm", 0, 0, 0, GRLIB_perm_inf], // Cargo
    ["UK3CB_BAF_MAN_HX58_Container_Sand", 0, 0, 0, GRLIB_perm_inf], // Cargo
    // BAF Station
    ["UK3CB_BAF_vehicles_logistics_Point", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_vehicles_Servicing_Aircraft_Point", 0, 0, 0, GRLIB_perm_inf],
    ["UK3CB_BAF_vehicles_Servicing_Ground_Point", 0, 0, 0, GRLIB_perm_inf],
    // FOB
    [FOB_box_typename, 0, 0, 0, 9999],
    [FOB_truck_typename, 0, 0, 0, 9999]
];

buildings_west = [
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
    ["Land_bunker_garage",0,0,0,GRLIB_perm_inf],
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
    ["Land_HBarrier5",0,0,0,GRLIB_perm_inf],
    ["Land_HBarrier_large",0,0,0,GRLIB_perm_inf],
    ["Land_HBarrier_01_big_4_green_F",0,0,0,GRLIB_perm_inf],
    ["Land_Camping_Light_F",0,0,0,GRLIB_perm_inf],
    ["Target_PopUp4_Moving_90deg_F",0,0,0,GRLIB_perm_inf]
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
    [blufor_squad_inf_light, 10, 300, 0, GRLIB_perm_inf],
    [blufor_squad_inf, 20, 400, 0, GRLIB_perm_inf],
    [blufor_squad_at, 25, 600, 0, GRLIB_perm_inf],
    [blufor_squad_aa, 25, 600, 0, GRLIB_perm_inf],
    [blufor_squad_mix, 25, 600, 0, GRLIB_perm_inf]
];

// All the UAVs must be declared here
uavs = [
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
    "B_SAM_System_01_F",
    "itc_land_COBRA01",
    "UK3CB_BAF_MQ9_Reaper",
    "UK3CB_BAF_MQ9_Reaper_Generic"
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