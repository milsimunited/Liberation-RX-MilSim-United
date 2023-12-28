// *** FRIendlIES ***
GRLIB_side_friendly = west;
GRLIB_color_friendly = "ColorBLUFOR";

// default className: scripts\shared\default_classnames.sqf
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

// [className, MANPOWER, ammo, fuel, rank]
infantry_units = [
	["BWA3_Medic_Fleck", 0, ai_value, 0, GRLIB_perm_inf]
];

small_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Quadbike_01_F", 0, 10, 0, GRLIB_perm_inf],
	["C_Offroad_02_unarmed_F", 0, 100, 0, GRLIB_perm_inf],
	["B_LSV_01_unarmed_F", 0, 100, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_mrzr4_d", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1043_w", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1151_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1165_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1152_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1152_sicps_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
	["rhsusf_m1152_rsv_usarmy_wd", 0, 100, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_LR_Transport_GB_W", 0, 100, 0, GRLIB_perm_inf],
	["CUP_B_nM1025_Unarmed_DF_USA_WDL", 0, 100, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_USA_DES", 0, 100, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_4s_USA_DES", 0, 100, 0, GRLIB_perm_inf],
	["CUP_I_M151_SYND", 0, 100, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Eagle_Fleck", 0, 100, 0, GRLIB_perm_inf]
];

small_infantry_transport_armed_HMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1165_asv_m240_usaf_d", 0, 200, 0, GRLIB_perm_inf],
	["rhsusf_m1043_w_m2", 0, 200, 0, GRLIB_perm_inf],
	["rhsusf_m1165a1_gmv_m2_m240_socom_d", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_Jackal2_L2A1_GB_W", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Ridgback_HMG_GB_W", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_LR_Special_M2_GB_W", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_M2_DF_USA_WDL", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_SOV_M2_USA_WDL", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_M1151_Deploy_WDL_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_M1165_GMV_WDL_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_M240_DF_USA_WDL", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_DSHKM_GPK_ACR", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_M2_GPK_ACR", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_LR_Special_M2_GB_W", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_Crows_M2_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_M2_GPK_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_M240_USA_DES", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_RG31_M2_OD_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_RG31E_M2_OD_USA", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_I_SUV_Armored_ION", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_I_M151_M2_SYND", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Eagle_FLW100_Fleck", 0, 250, 0, GRLIB_perm_inf]
];

small_infantry_transport_armed_GMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1165a1_gmv_mk19_m240_socom_d", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_GMG_W", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_LR_Special_GMG_GB_W", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Ridgback_GMG_GB_W", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_M1151_Mk19_WDL_USA", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_AGS_GPK_ACR", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Jackal2_GMG_GB_W", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_HMMWV_Crows_MK19_USA", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_Mk19_USA_DES", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_SOV_Mk19_USA_WDL", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_nM1025_Mk19_DF_USA_WDL", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_RG31_Mk19_OD_USA", 0, 400, msu_fuel_apc, GRLIB_perm_inf]
];

small_infantry_transport_armed_AT = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_LSV_01_AT_F", 0, 300, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1045_w", 0, 300, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_nM1036_TOW_DF_USA_WDL", 0, 300, 0, GRLIB_perm_inf],
	["CUP_B_M1167_WDL_USA", 0, 300, 0, GRLIB_perm_inf]
];

big_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_F", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
	["I_MRAP_03_F", 0, 200, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1220_usarmy_wd", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_M1238A1_socom_d", 0, 150, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FENNEK_GER_Wdl", 0, 200, msu_fuel_apc, GRLIB_perm_inf]
];

big_infantry_transport_armed_HMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_HMG_F", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	["I_MRAP_03_hmg_F", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1240a1_m240_uik_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_m1240a1_m2_uik_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_M1230_M2_usarmy_wd", 0, 300, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_M1220_M153_M2_usarmy_wd", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_L2A1_W", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Mastiff_HMG_GB_W", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Wolfhound_HMG_GB_W", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Boxer_HMG_GER_DES", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Dingo_GER_Wdl", 0, 400, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Dingo2_FLW100_MG3_CG13_Fleck", 0, 350, msu_fuel_apc, GRLIB_perm_inf],
	["BWA3_Dingo2_FLW200_M2_CG13_Fleck", 0, 350, msu_fuel_apc, GRLIB_perm_inf]

];

big_infantry_transport_armed_GMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_gmg_F", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1220_MK19_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_M1230_MK19_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["rhsusf_m1240a1_mk19_uik_usarmy_wd", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_GMG_W", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Mastiff_GMG_GB_W", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Wolfhound_GMG_GB_W", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Boxer_GMG_GER_DES", 0, 500, msu_fuel_apc, GRLIB_perm_inf],
	["CUP_B_Dingo_GL_GER_Wdl", 0, 500, msu_fuel_apc, GRLIB_perm_inf]
];

armored_infantry_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_stryker_m1126_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["rhsusf_stryker_m1127_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["rhsusf_stryker_m1132_m2_wd", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_BMR_A3_M3_SFOD", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["PRACS_BMR_M2", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV432_Bulldog_GB_W_RWS", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_FV432_Bulldog_GB_W", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M113A3_GER", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M1126_ICV_MK19_Woodland", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M1126_ICV_M2_Woodland", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M1135_ATGMV_Woodland", 0, 450, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_LAV25_HQ_USMC", 0, 450, msu_fuel_ifv, GRLIB_perm_inf]

];

artillery_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MBT_01_arty_F", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
	["I_E_Truck_02_MRL_F", 0, 2500, msu_fuel_mbt, GRLIB_perm_inf],
	["B_MBT_01_mlrs_F", 0, 3000, 0, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m109_usarmy", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
	["rhsusf_M142_usarmy_WD", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M1129_MC_MK19_Woodland", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_FV432_Mortar", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_RM70_CZ", 0, 2500, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M270_HE_BAF_WOOD", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Panzerhaubitze2000_Fleck", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf]
];

apc = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["I_LT_01_scout_F", 0, 200, msu_fuel_ifv, GRLIB_perm_inf],
	["I_LT_01_AA_F", 0, 600, msu_fuel_ifv, GRLIB_perm_inf],
	["I_LT_01_AT_F", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
	["I_LT_01_cannon_F", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
	["B_T_APC_Wheeled_01_cannon_F", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
	["I_APC_tracked_03_cannon_F", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
	["I_APC_Wheeled_03_cannon_F", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_M6_wd", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
	["RHS_M2A3_wd", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
	["RHS_M2A3_BUSKIII_wd", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_FV101", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
	["PRACS_FV107", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
	["PRACS_Pizarro", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	["PRACS_VEC_MGS", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
	["PRACS_VEC_M242", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV510_GB_W_SLAT", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_FV510_GB_W", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_MCV80_GB_W_SLAT", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_MCV80_GB_W", 0, 1300, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M2Bradley_USA_W", 0, 1500, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M2A3Bradley_USA_W", 0, 1600, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_M7Bradley_USA_W", 0, 1800, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_AAV_USMC", 0, 1000, msu_fuel_ifv, GRLIB_perm_inf],
	["CUP_B_LAV25M240_USMC", 0, 1200, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Puma_Fleck", 0, 1400, msu_fuel_ifv, GRLIB_perm_inf]
];

mbt = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_AFV_Wheeled_01_up_cannon_F", 0, 1800, msu_fuel_ifv, GRLIB_perm_inf],
	["B_MBT_01_TUSK_F", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
	["I_MBT_03_cannon_F", 0, 2000, 0, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1a1aim_tuski_wd", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["rhsusf_m1a2sep1tuskiwd_usarmy", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["rhsusf_m1a2sep2wd_usarmy", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["rhsusf_m1a2sep1tuskiiwd_usarmy", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M1A1_AIM", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M60A3", 0, 1500, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M60S", 0, 1700, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M60A3_USMC", 0, 1000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_Challenger2_Woodland_BAF", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_Leopard2A6_GER", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1128_MGS_Woodland", 0, 1000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A1SA_Desert_TUSK_US_Army", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A1FEP_TUSK_Desert_USMC", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A1SA_OD_US_Army", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A2SEP_TUSK_OD_US_Army", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A2C_TUSK_II_OD_US_Army", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M1A2C_TUSK_OD_US_Army", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Leopard2_Fleck", 0, 2000, msu_fuel_mbt, GRLIB_perm_inf]

];

anti_air = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_APC_Tracked_01_AA_F", 0, 700, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_m48_chapparal", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M163_MACHBET", 0, 700, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M548_MPQ64", 0, 200, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M727_SEM_IHAWK", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
	["PRACS_M727_IHAWK", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_nM1097_AVENGER_USA_WDL", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M163_Vulcan_USA", 0, 600, msu_fuel_mbt, GRLIB_perm_inf],
	["CUP_B_M6LineBacker_USA_W", 0, 1200, msu_fuel_mbt, GRLIB_perm_inf]
];

helicopter_personal_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Heli_Transport_01_F", 0, 400, 0, GRLIB_perm_inf],
	["O_Heli_Light_02_unarmed_F", 0, 400, 0, GRLIB_perm_inf],
	["I_Heli_Transport_02_F", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_CH53E_USMC_GAU21_D", 0, 400, 0, GRLIB_perm_inf],
	["rhsusf_CH53E_USMC_D", 0, 400, 0, GRLIB_perm_inf],
	["RHS_MELB_MH6M", 0, 400, 0, GRLIB_perm_inf],
	["RHS_UH1Y_UNARMED_d", 0, 400, 0, GRLIB_perm_inf],
	["RHS_UH60M2_d", 0, 400, 0, GRLIB_perm_inf],
	["RHS_UH60M_d", 0, 400, 0, GRLIB_perm_inf],
	["RHS_CH_47F_10", 0, 400, 0, GRLIB_perm_inf],
	["TF373_SOAR_MH47G", 0, 400, 0, GRLIB_perm_inf],
	["TF373_SOAR_MH47G_EasyActions", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_UH1H", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AW159_Unarmed_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_CH47F_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_Merlin_HC3A_Armed_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_Merlin_HC3A_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_SA330_Puma_HC2_BAF", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_CH53E_GER", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH1D_GER_KSK", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH1D_slick_GER_KSK", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_412_Military_Radar_HIL", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_MH47E_USA", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_MH6M_USA", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_MH6J_USA", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH60M_US", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH60M_Unarmed_US", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH1Y_UNA_USMC", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_MH47E_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_MH60S_USMC", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH60S_USN", 0, 400, 0, GRLIB_perm_inf],
	["CUP_MH60S_Unarmed_FFV_USN", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_NH90_TTH_Fleck", 0, 400, 0, GRLIB_perm_inf],
	["BWA3_NH90_TTH_M3M_Fleck", 0, 400, 0, GRLIB_perm_inf],
        ["vtx_HH60", 0, 400, 0, GRLIB_perm_inf],
        ["vtx_MH60M", 0, 400, 0, GRLIB_perm_inf],
        ["vtx_UH60M", 0, 400, 0, GRLIB_perm_inf],
        ["vtx_UH60M_SLICK", 0, 400, 0, GRLIB_perm_inf]
];

helicopter_cargo_transport = [
	["O_Heli_Transport_04_F", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_CH53e_USMC_cargo", 0, 400, 0, GRLIB_perm_inf],
	["RHS_CH_47F_10_cargo", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_CH53", 0, 400, 0, GRLIB_perm_inf],
	["PRACS_Sa330_Puma", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_CH47F_VIV_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_Merlin_HC3_VIV_GB", 0, 400, 0, GRLIB_perm_inf],
	["CUP_I_MI6T_UN", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_CH53E_VIV_GER", 0, 400, 0, GRLIB_perm_inf]
];

helicopter_armed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Heli_Attack_01_dynamicloadout_F", 0, 1700, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_MELB_AH6M", 0, 900, 0, GRLIB_perm_inf],
	["RHS_UH60M_ESSS_d", 0, 1200, msu_fuel_heli, GRLIB_perm_inf],
	["RHS_UH1Y_d", 0, 1000, msu_fuel_heli, GRLIB_perm_inf],
	["RHS_AH1Z", 0, 1700, msu_fuel_heli, GRLIB_perm_inf],
	["RHS_AH64DGrey", 0, 2000, msu_fuel_heli, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_AH1S", 0, 1700, 0, GRLIB_perm_inf],
	["PRACS_RAH6", 0, 1400, 0, GRLIB_perm_inf],
	["PRACS_Sa330_Puma_SOCAT", 0, 1700, 0, GRLIB_perm_inf],
	["PRACS_UH1H_CAS", 0, 700, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AH1_DL_BAF", 0, 1700, 0, GRLIB_perm_inf],
	["CUP_B_AW159_RN_Blackcat", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_UH1D_armed_GER_KSK", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_412_dynamicLoadout_HIL", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_AH64_DL_USA", 0, 1700, 0, GRLIB_perm_inf],
	["CUP_B_AH64D_DL_USA", 0, 1800, 0, GRLIB_perm_inf],
	["CUP_B_AH6M_USA", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_MH60L_DAP_4x_US", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_MH60L_DAP_2x_US", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_UH1Y_Gunship_Dynamic_USMC", 0, 700, 0, GRLIB_perm_inf],
	["CUP_B_AH1Z_Dynamic_USMC", 0, 1700, 0, GRLIB_perm_inf],
	["CUP_I_Ka60_GL_Blk_ION", 0, 700, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Tiger", 0, 1200, 0, GRLIB_perm_inf],
	["BWA3_Tiger_RMK", 0, 1700, msu_fuel_heli, GRLIB_perm_inf]
];

planes = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_T_VtoL_01_infantry_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["B_T_VtoL_01_vehicle_F", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["B_T_VtoL_01_armed_F", 0, 4000, msu_fuel_heli, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHSGREF_A29B_HIDF", 0, 1400, 0, GRLIB_perm_inf],
	["RHS_C130J", 0, 400, 0, GRLIB_perm_inf],
	["RHS_C130J_Cargo", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_C130", 0, 400, 0, GRLIB_perm_inf],
	["PRACS_E2C", 0, 400, 0, GRLIB_perm_inf],
	["PRACS_Mohawk", 0, 1400, 0, GRLIB_perm_inf],
	["PRACS_P3C", 0, 1400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_I_CESSNA_T41_ARMED_HIL", 0, 900, 0, GRLIB_perm_inf],
	["CUP_B_AC47_Spooky_USA", 0, 1000, 0, GRLIB_perm_inf],
	["CUP_B_C130J_GB", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_B_C130J_Cargo_GB", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_I_CESSNA_T41_UNARMED_HIL", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_B_MV22_VIV_USMC", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_B_MV22_USMC_RAMPGUN", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_B_MV22_USMC", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_I_Plane_ION", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_B_C47_USA", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	["CUP_O_AN2_TK", 0, air_vehicle_price_tier_5, msu_fuel_heli, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_C130J", 0, 400, 0, GRLIB_perm_inf],
	["USAF_C130J_Cargo", 0, 400, 0, GRLIB_perm_inf],
	["usaf_kc135", 0, 400, 0, GRLIB_perm_inf],
	["USAF_C17", 0, 400, 0, GRLIB_perm_inf]
];

jets = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["I_Plane_Fighter_03_dynamicloadout_F", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
	["I_Plane_Fighter_04_F", 0, 1600, msu_fuel_plane, GRLIB_perm_inf],
	["B_Plane_Fighter_01_Stealth_F", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
	["B_Plane_Fighter_01_F", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_A4M", 0, 1600, msu_fuel_plane, GRLIB_perm_inf],
	["PRACS_F16CJ", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
	["PRACS_F16CJR", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
	["PRACS_F16", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
	["PRACS_MIRAGEIII", 0, 1600, msu_fuel_plane, GRLIB_perm_inf],
	["PRACS_MIRAGEV", 0, 1800, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_F35B_BAF", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	["CUP_B_F35B_Stealth_BAF", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	["CUP_B_GR9_DYN_GB", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	["CUP_B_A10_DYN_USA", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_F35A_STEALTH", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_F22", 0, 1700, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_F22_EWP_AA", 0, 1900, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_F22_Heavy", 0, 1900, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_A10", 0, 2000, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_F35A", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_Other],
	["JS_JC_FA18E", 0, 2200, msu_fuel_plane, GRLIB_perm_inf],
	["JS_JC_FA18F", 0, 2200, msu_fuel_plane, GRLIB_perm_inf]
];

drones = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_T_UGV_01_olive_F", 0, 150, 0, GRLIB_perm_inf],
	["B_T_UGV_01_rcws_olive_F", 0, 600, 0, GRLIB_perm_inf],
	["B_UAV_05_F", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
        ["B_T_UAV_03_dynamicLoadout_F", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AH6X_USA", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
	["CUP_B_USMC_DYN_MQ9", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
	["CUP_O_Pchela1T_RU", 0, 1400, msu_fuel_plane, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_RQ4A", 0, 400, msu_fuel_plane, GRLIB_perm_inf],
	["USAF_MQ9", 0, 1400, msu_fuel_plane, GRLIB_perm_inf]
];

medical_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Truck_01_medical_F", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1230a1_usarmy_wd", 0, 400, 0, GRLIB_perm_inf],
	["rhsusf_m113_usarmy_medical", 0, 400, msu_fuel_ifv, GRLIB_perm_inf],
	["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_BMR_AMB", 0, 400, 0, GRLIB_perm_inf],
	["PRACS_M250_AMB", 0, 400, 0, GRLIB_perm_inf],
	["PRACS_M113_MED", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV432_GB_Ambulance", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_nM997_DF_ACR", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_LR_Ambulance_GB_W", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_M113A3_Med_GER", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_M1133_MEV_Woodland", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_nM997_DF_USA_WDL", 0, 400, 0, GRLIB_perm_inf]
];

medical_vehicle_air = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_UH60M_MEV_d", 0, 400, 0, GRLIB_perm_inf],
	["RHS_UH60M_MEV2_d", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_Sa330_Puma_MED", 0, 400, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_UH60M_Unarmed_FFV_MEV_US", 0, 400, 0, GRLIB_perm_inf],
	["CUP_B_UH1Y_MEV_USMC", 0, 400, 0, GRLIB_perm_inf]
];

logistics_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Truck_01_transport_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_covered_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_ammo_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_flatbed_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_fuel_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_Repair_F", 0, 150, 0, GRLIB_perm_inf],
	["B_Truck_01_box_F", 0, 150, 0, GRLIB_perm_inf],
	["B_APC_Tracked_01_CRV_F", 0, 800, msu_fuel_ifv, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
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
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M250", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_Ammo", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_flat_bed", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_fuel", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_open", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_Repair", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_Salvage", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M250_Supply", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M450", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_m548_ammo", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_m548_arty_tender", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_m548", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_m548_fuel", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_HEMMTT_Fueler", 0, 150, 0, GRLIB_perm_inf],
	["PRACS_M88", 0, 700, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_MTVR_BAF_WOOD", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_MTVR_Ammo_BAF_WOOD", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_MTVR_Refuel_BAF_WOOD", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_MTVR_Repair_BAF_WOOD", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_M113A3_Reammo_GER", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_M113A3_Repair_GER", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_Ammo_DF_USA_WDL", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_Repair_DF_USA_WDL", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_DF_USA_WDL", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_nM1038_4s_DF_USA_WDL", 0, 150, 0, GRLIB_perm_inf],
	["CUP_B_TowingTractor_USMC", 0, 150, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Multi_Fleck", 0, 150, 0, GRLIB_perm_inf]
];

boats = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["C_Scooter_Transport_01_F", 0, 15, 0, GRLIB_perm_inf],
	["B_SDV_01_F", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["B_Boat_Transport_01_F", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["B_Lifeboat", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["B_Boat_Armed_01_minigun_F", 0, 125, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_mkvsoc", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_LCU1600_USMC", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["CUP_B_RHIB_USMC", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
	["CUP_B_RHIB2Turret_USMC", 0, light_vehicle_price_tier_2, 0, GRLIB_perm_inf],
	["CUP_B_MK10_GB", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["CUP_B_RHIB2Turret_HIL", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["CUP_B_Zodiac_USMC", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["CUP_B_LCU1600_USMC", 0, light_vehicle_price_tier_1, 0, GRLIB_perm_inf],
	["CUP_B_Frigate_ANZAC", 0, 2000, 0, GRLIB_perm_inf]
];

static_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_radar_System_01_F", 40, 0, 0, GRLIB_perm_inf],
	["B_AAA_System_01_F", 40, 0, 0, GRLIB_perm_inf],
	["B_SAM_System_01_F", 40, 0, 0, GRLIB_perm_inf],
	["B_Ship_MRLS_01_F", 0, 5000, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_ZU23_VMF", 0, 0, 0, GRLIB_perm_inf],
	["RHS_toW_TriPod_D", 0, 0, 0, GRLIB_perm_inf],
	["rhs_D30_vmf", 0, 300, 0, GRLIB_perm_inf],
	["RHS_M119_WD", 0, 300, 0, GRLIB_perm_inf],
	["RHSCUP_B_RBS70_HIL_ZU23_VMF", 0, 0, 0, GRLIB_perm_inf],
	["RHS_Stinger_AA_pod_USMC_WD", 0, 0, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M115", 0, 300, 0, GRLIB_perm_inf],
	["PRACS_M1", 0, 300, 0, GRLIB_perm_inf],
	["PRACS_M101", 0, 300, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M252_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_L111A1_MiniTripod_BAF_DDPM", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_L134A1_TriPod_BAF_DDPM", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_SearchLight_static_BAF_DDPM", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_L16A2_BAF_DDPM", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_M119_HIL", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_SearchLight_static_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_M2StaticMG_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_M2StaticMG_miniTripod_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_MK19_TriPod_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_B_Stinger_AA_pod_Base_USMC", 0, 0, 0, GRLIB_perm_inf],
	["CUP_WV_B_CRAM", 40, 0, 0, GRLIB_perm_inf],
	["CUP_WV_B_RAM_Launcher", 40, 0, 0, GRLIB_perm_inf],
	["CUP_WV_B_SS_Launcher", 40, 0, 0, GRLIB_perm_inf],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_MRS120_Fleck", 0, 0, 0, GRLIB_perm_inf]
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
	    // BundeswehrFleck
	["BWA3_WLP14_ammo_Fleck", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_WLP14_Flatbed_Oliv", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_TCK9_fuel_Fleck", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_WLP14_Repair_Fleck", 0, 0, 0, GRLIB_perm_inf],
	    // Bundeswehr Tropen
	["BWA3_WLP14_ammo_Tropen", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_WLP14_Flatbed_Tropen", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_TCK9_fuel_Tropen", 0, 0, 0, GRLIB_perm_inf],
	["BWA3_WLP14_Repair_Tropen", 0, 0, 0, GRLIB_perm_inf],
	    // BundeswehrWinter
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
	    // FOB
	[FOB_box_typename, 0, 0, 0, 9999],
	[FOB_truck_typename, 0, 0, 0, 9999]
];

buildings_west = [
	["US_WarfareBArtilleryRadar_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_artillery_nest_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Mil_Barracks_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Mil_Barracks_i_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Mil_Barracks_no_interior_EP1_CUP", 0, 0, 0, GRLIB_perm_inf],
	["Land_Mil_Barracks_L_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_fortified_nest_big_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_fortified_nest_small_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Fort_Watchtower_EP1", 0, 0, 0, GRLIB_perm_inf],
	["WarfareBDepot", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBUAVterminal_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_rampart_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBFieldhHospital_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBAircraftFactory_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBVehicleServicePoint_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBBarrier10xTall_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBBarracks_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Barrack2_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBBarrier5x_EP1", 0, 0, 0, GRLIB_perm_inf],
	["WarfareBCamp", 0, 0, 0, GRLIB_perm_inf],
	["76n6ClamShell_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBBarrier10x_EP1", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBHeavyFactory_Base_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_CamoNetB_NATO_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_CamoNet_NATO_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_wall_6_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_line_3_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_big_tower_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_tower_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_wall_corridor_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_wall_corner_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_wall_4_green_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_HBarrier_1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrierWall6_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_3_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrierTower_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrierWall_corridor_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrierWall4_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrierWall_corner_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_CncBarrierMedium_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncBarrierMedium4_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncShelter_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncWall1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncWall4_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncBarrier_stripes_F", 0, 0, 0, GRLIB_perm_inf],
	["Flag_UNO_F", 0, 0, 0, GRLIB_perm_inf],
	["Flag_NATO_F", 0, 0, 0, GRLIB_perm_inf],
	["FlagCarrierGermany_EP1", 0, 0, 0, GRLIB_perm_inf],
	["FlagCarrierRU", 0, 0, 0, GRLIB_perm_inf],
	["Flag_UK_F", 0, 0, 0, GRLIB_perm_inf],
	["Flag_US_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_PortableLight_single_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_Campfire_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CampingChair_V1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_CampingTable_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_bagfence_long", 0, 0, 0, GRLIB_perm_inf],

	["Land_HelipadSquare_F", 0, 0, 0, GRLIB_perm_inf],
	["PortableHelipadLight_01_blue_F", 0, 0, 0, GRLIB_perm_inf],
	["PortableHelipadLight_01_green_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_ClutterCutter_large_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_Hangar_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Cargo_Tower_V1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Medevac_house_V1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Medevac_HQ_V1_F", 0, 0, 0, GRLIB_perm_inf],

	["Land_PortableLight_double_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_LampAirport_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_LampStreet_02_double_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_SandbagBarricade_01_hole_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_fortified_nest_small", 0, 0, 0, GRLIB_perm_inf],
	["Land_fortified_nest_big", 0, 0, 0, GRLIB_perm_inf],
	["Land_BagBunker_Small_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_bunker_garage", 0, 0, 0, GRLIB_perm_inf],
	["Land_Trench_01_grass_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_rampart", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_artillery_nest", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_line_5_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_big_4_green_F", 0, 0, 0, GRLIB_perm_inf],
	["zed2", 0, 0, 0, GRLIB_perm_inf],
	["US_WarfareBBarrier10xTall_EP1", 0, 0, 0, GRLIB_perm_inf],
	["WarfareBCamp", 0, 0, 0, GRLIB_perm_inf],
	["Fortress2", 0, 0, 0, GRLIB_perm_inf],
	["Land_Lampa_sidl_3", 0, 0, 0, GRLIB_perm_inf],
	["Land_TentHangar_V1_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_bagfence_round", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_bagfence_long", 0, 0, 0, GRLIB_perm_inf],
	["Land_fort_bagfence_corner", 0, 0, 0, GRLIB_perm_inf],
	["Land_CzechHedgehog_01_new_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Bunker_01_blocks_3_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Bunker_01_small_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Bunker_01_tall_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_PillboxBunker_01_big_F", 0, 0, 0, GRLIB_perm_inf],
	["SignM_FOB_Revolve_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Shooting_range", 0, 0, 0, GRLIB_perm_inf],
	["Shed", 0, 0, 0, GRLIB_perm_inf],
	["ShedSmall", 0, 0, 0, GRLIB_perm_inf],
	["CampEast_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Mil_WallBig_4m_F", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_t", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_bunker", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_ecke", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_ende", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_stellung", 0, 0, 0, GRLIB_perm_inf],
	["rnt_graben_gerade", 0, 0, 0, GRLIB_perm_inf],
	["MapBoard_stratis_F", 0, 0, 0, GRLIB_perm_inf],
	["MapBoard_altis_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_MapBoard_Enoch_F", 0, 0, 0, GRLIB_perm_inf],
	["MapBoard_Malden_F", 0, 0, 0, GRLIB_perm_inf],
	["MapBoard_Tanoa_F", 0, 0, 0, GRLIB_perm_inf],
	["ClutterCutter", 0, 0, 0, GRLIB_perm_inf],
	["Notice_board_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_CncBlock", 0, 0, 0, GRLIB_perm_inf],
	["Concrete_Wall_EP1", 0, 0, 0, GRLIB_perm_inf],
	["Land_Ind_Shed_02_EP1", 0, 0, 0, GRLIB_perm_inf],
	["HeliH", 0, 0, 0, GRLIB_perm_inf],
	["HeliHRescue", 0, 0, 0, GRLIB_perm_inf],
	["HeliHCivil", 0, 0, 0, GRLIB_perm_inf],
	["Land_strelecky_post_new", 0, 0, 0, GRLIB_perm_inf],
	["Land_GuardTower_01_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier5", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_large", 0, 0, 0, GRLIB_perm_inf],
	["Land_HBarrier_01_big_4_green_F", 0, 0, 0, GRLIB_perm_inf],
	["Land_Camping_Light_F", 0, 0, 0, GRLIB_perm_inf],
	["Target_PopUp4_Moving_90deg_F", 0, 0, 0, GRLIB_perm_inf]
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
