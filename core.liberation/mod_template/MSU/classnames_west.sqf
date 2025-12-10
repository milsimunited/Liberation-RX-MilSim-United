// *** FRIendlIES ***
GRLIB_side_friendly = west;
GRLIB_color_friendly = "ColorBLUFOR";

// default className: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "B_Heli_Transport_03_F";
// comment to use value from lobby/server.cfg
FOB_typename = "LAV25_HQ_unfolded";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "CUP_B_LAV25_HQ_green";
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
pilot_classname = "BWA3_Helipilot";
crewman_classname = "BWA3_Crew_Fleck";
A3W_BoxWps = "B_CargoNet_01_ammo_F";

units_loadout_overide = [];

// [className, MANPOWER, ammo, fuel, rank]
infantry_units = [
	["BWA3_Medic_Fleck", 0, ai_value, 0, MSU_Rank_Sergeant]
];

small_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Quadbike_01_F", 0, 10, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["C_Offroad_02_unarmed_F", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["B_LSV_01_unarmed_F", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_mrzr4_d", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1043_w", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1151_usarmy_wd", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1165_usarmy_wd", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1152_usarmy_wd", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1152_sicps_usarmy_wd", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["rhsusf_m1152_rsv_usarmy_wd", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_LR_Transport_GB_W", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["CUP_B_nM1025_Unarmed_DF_USA_WDL", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["CUP_B_nM1038_USA_DES", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["CUP_B_nM1038_4s_USA_DES", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	["CUP_I_M151_SYND", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Eagle_Fleck", 0, 100, MSU_Fuel_LightVehicle_Class1, MSU_Rank_Private]
];

small_infantry_transport_armed_HMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1165_asv_m240_usaf_d", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["rhsusf_m1043_w_m2", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["rhsusf_m1165a1_gmv_m2_m240_socom_d", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_Jackal2_L2A1_GB_W", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_Ridgback_HMG_GB_W", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_LR_Special_M2_GB_W", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_nM1025_M2_DF_USA_WDL", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_nM1025_SOV_M2_USA_WDL", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_M1151_Deploy_WDL_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_M1165_GMV_WDL_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_nM1025_M240_DF_USA_WDL", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_HMMWV_DSHKM_GPK_ACR", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_HMMWV_M2_GPK_ACR", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_LR_Special_M2_GB_W", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_HMMWV_Crows_M2_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_HMMWV_M2_GPK_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_nM1025_M240_USA_DES", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_RG31_M2_OD_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_RG31E_M2_OD_USA", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_I_SUV_Armored_ION", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	["CUP_I_M151_M2_SYND", 0, 200, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Eagle_FLW100_Fleck", 0, 250, MSU_Fuel_LightVehicle_Class2, MSU_Rank_Corporal]
];

small_infantry_transport_armed_GMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1165a1_gmv_mk19_m240_socom_d", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_GMG_W", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_LR_Special_GMG_GB_W", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Ridgback_GMG_GB_W", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M1151_Mk19_WDL_USA", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_HMMWV_AGS_GPK_ACR", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Jackal2_GMG_GB_W", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_HMMWV_Crows_MK19_USA", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_nM1025_Mk19_USA_DES", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_nM1025_SOV_Mk19_USA_WDL", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_nM1025_Mk19_DF_USA_WDL", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_RG31_Mk19_OD_USA", 0, 400, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal]
];

small_infantry_transport_armed_AT = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_LSV_01_AT_F", 0, 300, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1045_w", 0, 300, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_nM1036_TOW_DF_USA_WDL", 0, 300, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M1167_WDL_USA", 0, 300, MSU_Fuel_LightVehicle_Class3, MSU_Rank_Corporal]
];

big_infantry_transport_unarmed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_F", 0, 150, MSU_Fuel_HeavyVehicle_Class1, MSU_Rank_Private],
	["I_MRAP_03_F", 0, 200, MSU_Fuel_HeavyVehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1220_usarmy_wd", 0, 150, MSU_Fuel_HeavyVehicle_Class1, MSU_Rank_Private],
	["rhsusf_M1238A1_socom_d", 0, 150, MSU_Fuel_HeavyVehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FENNEK_GER_Wdl", 0, 200, MSU_Fuel_HeavyVehicle_Class1, MSU_Rank_Private]
];

big_infantry_transport_armed_HMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_HMG_F", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["I_MRAP_03_hmg_F", 0, 400, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1240a1_m240_uik_usarmy_wd", 0, 300, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["rhsusf_m1240a1_m2_uik_usarmy_wd", 0, 300, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["rhsusf_M1230_M2_usarmy_wd", 0, 300, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["rhsusf_M1220_M153_M2_usarmy_wd", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_L2A1_W", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_Mastiff_HMG_GB_W", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_Wolfhound_HMG_GB_W", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_Boxer_HMG_GER_DES", 0, 400, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["CUP_B_Dingo_GER_Wdl", 0, 400, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Dingo2_FLW100_MG3_CG13_Fleck", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["BWA3_Dingo2_FLW100_MG3_Fleck", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal],
	["BWA3_Dingo2_FLW200_M2_CG13_Fleck", 0, 350, MSU_Fuel_HeavyVehicle_Class2, MSU_Rank_Corporal]

];

big_infantry_transport_armed_GMG = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MRAP_01_gmg_F", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1220_MK19_usarmy_wd", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["rhsusf_M1230_MK19_usarmy_wd", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["rhsusf_m1240a1_mk19_uik_usarmy_wd", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_BAF_Coyote_GMG_W", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Mastiff_GMG_GB_W", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Wolfhound_GMG_GB_W", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Boxer_GMG_GER_DES", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_Dingo_GL_GER_Wdl", 0, 500, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal]
];

armored_infantry_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_stryker_m1126_m2_wd", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["rhsusf_stryker_m1127_m2_wd", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["rhsusf_stryker_m1132_m2_wd", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_BMR_A3_M3_SFOD", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["PRACS_BMR_M2", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV432_Bulldog_GB_W_RWS", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_FV432_Bulldog_GB_W", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M113A3_GER", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M1126_ICV_MK19_Woodland_Slat", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M1126_ICV_M2_Woodland_Slat", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_M1135_ATGMV_Woodland_Slat", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal],
	["CUP_B_LAV25_HQ_USMC", 0, 450, MSU_Fuel_HeavyVehicle_Class3, MSU_Rank_Corporal]

];

artillery_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_MBT_01_arty_F", 0, 1500, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant],
	["I_E_Truck_02_MRL_F", 0, 2500, MSU_Fuel_Artillery_Class2, MSU_Rank_Sergeant],
	// ["B_MBT_01_mlrs_F", 0, 3000, MSU_Fuel_Artillery_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m109_usarmy", 0, 1500, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant],
	["rhsusf_M142_usarmy_WD", 0, 2000, MSU_Fuel_Artillery_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M1129_MC_MK19_Woodland_Slat", 0, 1500, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant],
	["CUP_B_FV432_Mortar", 0, 1500, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant],
	["CUP_B_RM70_CZ", 0, 2500, MSU_Fuel_Artillery_Class2, MSU_Rank_Sergeant],
	["CUP_B_M270_HE_BAF_WOOD", 0, 1300, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Panzerhaubitze2000_Fleck", 0, 1500, MSU_Fuel_Artillery_Class1, MSU_Rank_Sergeant]
];

apc = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["I_LT_01_scout_F", 0, 200, MSU_Fuel_APC_Class1, MSU_Rank_Sergeant],
	["I_LT_01_AA_F", 0, 600, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["I_LT_01_AT_F", 0, 1000, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["I_LT_01_cannon_F", 0, 1000, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["B_T_APC_Wheeled_01_cannon_F", 0, 1200, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["I_APC_tracked_03_cannon_F", 0, 1200, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["I_APC_Wheeled_03_cannon_F", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_M6_wd", 0, 800, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["RHS_M2A3_wd", 0, 1000, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["RHS_M2A3_BUSKIII_wd", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_FV101", 0, 1000, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["PRACS_FV107", 0, 1200, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["PRACS_Pizarro", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["PRACS_VEC_MGS", 0, 800, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["PRACS_VEC_M242", 0, 800, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV510_GB_W_SLAT", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_FV510_GB_W", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_MCV80_GB_W_SLAT", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_MCV80_GB_W", 0, 1300, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_M2Bradley_USA_W", 0, 1500, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_M2A3Bradley_USA_W", 0, 1600, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_M7Bradley_USA_W", 0, 1800, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	["CUP_B_AAV_USMC", 0, 1000, MSU_Fuel_APC_Class1, MSU_Rank_Sergeant],
	["CUP_B_LAV25M240_USMC", 0, 1200, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Puma_Fleck", 0, 1400, MSU_Fuel_APC_Class2, MSU_Rank_Sergeant]
];

mbt = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_AFV_Wheeled_01_up_cannon_F", 0, 1800, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	// ["B_MBT_01_TUSK_F", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	// ["I_MBT_03_cannon_F", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_m1a1aim_tuski_wd", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["rhsusf_m1a2sep1tuskiwd_usarmy", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["rhsusf_m1a2sep2wd_usarmy", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["rhsusf_m1a2sep1tuskiiwd_usarmy", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M1A1_AIM", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["PRACS_M60A3", 0, 1500, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["PRACS_M60S", 0, 1700, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M60A3_USMC", 0, 1000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_Challenger2_Woodland_BAF", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_Leopard2A6_GER", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1128_MGS_Woodland_Slat", 0, 1000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A1SA_Desert_TUSK_US_Army", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A1FEP_TUSK_Desert_USMC", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A1SA_OD_US_Army", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A2SEP_TUSK_OD_US_Army", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A2C_TUSK_II_OD_US_Army", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	["CUP_B_M1A2C_TUSK_OD_US_Army", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Leopard2_Fleck", 0, 2000, MSU_Fuel_MBT_Class1, MSU_Rank_Sergeant]

];

anti_air = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_APC_Tracked_01_AA_F", 0, 700, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_m48_chapparal", 0, 600, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["PRACS_M163_MACHBET", 0, 700, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["PRACS_M548_MPQ64", 0, 200, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["PRACS_M727_SEM_IHAWK", 0, 600, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["PRACS_M727_IHAWK", 0, 600, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_nM1097_AVENGER_USA_WDL", 0, 600, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["CUP_B_M163_Vulcan_USA", 0, 600, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant],
	["CUP_B_M6LineBacker_USA_W", 0, 1200, MSU_Fuel_AA_Class1, MSU_Rank_Sergeant]
];

helicopter_personal_transport = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Heli_Transport_01_F", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["O_Heli_Light_02_unarmed_F", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["I_Heli_Transport_02_F", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_CH53E_USMC_GAU21_D", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["rhsusf_CH53E_USMC_D", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["RHS_MELB_MH6M", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["RHS_UH1Y_UNARMED_d", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["RHS_UH60M2_d", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["RHS_UH60M_d", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["RHS_CH_47F_10", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_UH1H", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AW159_Unarmed_GB", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_CH47F_GB", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_Merlin_HC3A_Armed_GB", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_Merlin_HC3A_GB", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_SA330_Puma_HC2_BAF", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_CH53E_GER", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_UH1D_GER_KSK", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_UH1D_slick_GER_KSK", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_412_Military_Radar_HIL", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_MH47E_USA", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_MH6M_USA", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_MH6J_USA", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_UH60M_US", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_UH60M_Unarmed_US", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_UH60M_Unarmed_FFV_US", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_UH60M_FFV_US", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_UH1Y_UNA_USMC", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["CUP_B_MH47E_GB", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_MH60S_USMC", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_B_UH60S_USN", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["CUP_MH60S_Unarmed_FFV_USN", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_NH90_TTH_Fleck", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private],
	["BWA3_NH90_TTH_M3M_Fleck", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_Other],
	["vtx_HH60", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["vtx_MH60M", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["vtx_UH60M", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class2, MSU_Rank_Private],
	["vtx_UH60M_MEDEVAC", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private],
	["vtx_UH60M_SLICK", 0, 400, MSU_Fuel_TransportHeli_Infantry_Class1, MSU_Rank_Private]
];

helicopter_cargo_transport = [
	["O_Heli_Transport_04_F", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_CH53e_USMC_cargo", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class1, MSU_Rank_Private],
	["RHS_CH_47F_10_cargo", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_CH53", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_Sa330_Puma", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_CH47F_VIV_GB", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class2, MSU_Rank_Private],
	["CUP_B_Merlin_HC3_VIV_GB", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class1, MSU_Rank_Private],
	["CUP_I_MI6T_UN", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class1, MSU_Rank_Private],
	["CUP_B_CH53E_VIV_GER", 0, 400, MSU_Fuel_TransportHeli_Vehicle_Class1, MSU_Rank_Private]
];

helicopter_armed = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Heli_Attack_01_dynamicloadout_F", 0, 1700, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major],  // Groß
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_MELB_AH6M", 0, 900, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["RHS_UH60M_ESSS_d", 0, 1200, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["RHS_UH1Y_d", 0, 1000, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["RHS_AH1Z", 0, 1700, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	["RHS_AH64DGrey", 0, 2000, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_AH1S", 0, 1700, MSU_PlaceholderFuel, MSU_Rank_Major], // Groß
	["PRACS_RAH6", 0, 1400, MSU_PlaceholderFuel, MSU_Rank_Major], // Groß
	["PRACS_Sa330_Puma_SOCAT", 0, 1700, MSU_PlaceholderFuel, MSU_Rank_Major], // Groß
	["PRACS_UH1H_CAS", 0, 700, MSU_PlaceholderFuel, MSU_Rank_Captain], // Klein
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AH1_DL_BAF", 0, 2000, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	["CUP_B_AW159_RN_Blackcat", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_UH1D_armed_GER_KSK", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_412_dynamicLoadout_HIL", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_AH64_DL_USA", 0, 1700, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	["CUP_B_AH64D_DL_USA", 0, 2000, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	["CUP_B_AH6M_USA", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_MH60L_DAP_4x_US", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_MH60L_DAP_2x_US", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_UH1Y_Gunship_Dynamic_USMC", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	["CUP_B_AH1Z_Dynamic_USMC", 0, 1700, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major], // Groß
	["CUP_I_Ka60_GL_Blk_ION", 0, 700, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Captain], // Klein
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Tiger", 0, 1200, MSU_Fuel_AttackHeli_Class1, MSU_Rank_Major], // Groß
	["BWA3_Tiger_RMK", 0, 1700, MSU_Fuel_AttackHeli_Class2, MSU_Rank_Major] // Groß
];

planes = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_T_VtoL_01_infantry_F", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class2, MSU_Rank_Private],
	["B_T_VtoL_01_vehicle_F", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class2, MSU_Rank_Private],
	["B_T_VtoL_01_armed_F", 0, 4000, MSU_Fuel_ArmedPlane_Class2, MSU_Rank_Captain], // CAS
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHSGREF_A29B_HIDF", 0, 1400, MSU_Fuel_ArmedPlane_Class1, MSU_Rank_Captain], // CAS
	["RHS_C130J", 0, 400, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["RHS_C130J_Cargo", 0, 400, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_C130", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_E2C", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_Mohawk", 0, 1400, MSU_PlaceholderFuel, MSU_Rank_Captain], // CAS
	["PRACS_P3C", 0, 1400, MSU_PlaceholderFuel, MSU_Rank_Captain], // CAS
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_I_CESSNA_T41_ARMED_HIL", 0, 900, MSU_Fuel_ArmedPlane_Class1, MSU_Rank_Captain], // CAS
	["CUP_B_AC47_Spooky_USA", 0, 1000, MSU_Fuel_ArmedPlane_Class1, MSU_Rank_Captain], // CAS
	["CUP_B_C130J_GB", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["CUP_B_C130J_Cargo_GB", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["CUP_I_CESSNA_T41_UNARMED_HIL", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["CUP_B_MV22_VIV_USMC", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class2 , MSU_Rank_Private],
	["CUP_B_MV22_USMC_RAMPGUN", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class2 , MSU_Rank_Private],
	["CUP_B_MV22_USMC", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class2, MSU_Rank_Private],
	["CUP_I_Plane_ION", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["CUP_B_C47_USA", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["CUP_O_AN2_TK", 0, air_vehicle_price_tier_5, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_C130J", 0, 400, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["USAF_C130J_Cargo", 0, 400, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["usaf_kc135", 0, 400, MSU_Fuel_TransportPlane_Class1, MSU_Rank_Private],
	["USAF_C17", 0, 400, MSU_Fuel_TransportPlane_Class2, MSU_Rank_Private]
];

jets = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["I_Plane_Fighter_03_dynamicloadout_F", 0, 1400, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["I_Plane_Fighter_04_F", 0, 1600, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["B_Plane_Fighter_01_Stealth_F", 0, 1700, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["B_Plane_Fighter_01_F", 0, 2000, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_A4M", 0, 1600, MSU_PlaceholderFuel, MSU_Rank_Major],
	["PRACS_F16CJ", 0, 2000, MSU_PlaceholderFuel, MSU_Rank_Major],
	["PRACS_F16CJR", 0, 2000, MSU_PlaceholderFuel, MSU_Rank_Major],
	["PRACS_F16", 0, 2000, MSU_PlaceholderFuel, MSU_Rank_Major],
	["PRACS_MIRAGEIII", 0, 1600, MSU_PlaceholderFuel, MSU_Rank_Major],
	["PRACS_MIRAGEV", 0, 1800, MSU_PlaceholderFuel, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_F35B_BAF", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["CUP_B_F35B_Stealth_BAF", 0, 2200, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["CUP_B_GR9_DYN_GB", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["CUP_B_A10_DYN_USA", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_F35A_STEALTH", 0, 1700, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["USAF_F22", 0, 1700, MSU_Fuel_FighterJet_Class1, MSU_Rank_Major],
	["USAF_F22_EWP_AA", 0, 1900, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["USAF_F22_Heavy", 0, 1900, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["USAF_A10", 0, 2000, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["USAF_F35A", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_Other],
	["JS_JC_FA18E", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major],
	["JS_JC_FA18F", 0, 2200, MSU_Fuel_FighterJet_Class2, MSU_Rank_Major]
];

drones = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_T_UGV_01_olive_F", 0, 150, MSU_Fuel_Drones_Class1, MSU_Rank_Private],
	["B_T_UGV_01_rcws_olive_F", 0, 600, MSU_Fuel_Drones_Class2, MSU_Rank_Captain],
	["B_UAV_05_F", 0, 1400, MSU_Fuel_Drones_Class2, MSU_Rank_Captain],
	["B_T_UAV_03_dynamicLoadout_F", 0, 1400, MSU_Fuel_Drones_Class2, MSU_Rank_Captain],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_AH6X_USA", 0, 600, MSU_Fuel_Drones_Class1, MSU_Rank_Private],
	["CUP_B_USMC_DYN_MQ9", 0, 1400, MSU_Fuel_Drones_Class2, MSU_Rank_Captain],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_USAF],
	["USAF_RQ4A", 0, 400, MSU_Fuel_Drones_Class1, MSU_Rank_Private],
	["USAF_MQ9", 0, 1400, MSU_Fuel_Drones_Class2, MSU_Rank_Captain]
];

medical_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Truck_01_medical_F", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1230a1_usarmy_wd", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["rhsusf_m113_usarmy_medical", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_BMR_AMB", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_AMB", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M113_MED", 0, 400, MSU_PlaceholderFuel, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_FV432_GB_Ambulance", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["CUP_B_nM997_DF_ACR", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["CUP_B_LR_Ambulance_GB_W", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["CUP_B_M113A3_Med_GER", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["CUP_B_M1133_MEV_Woodland_Slat", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private],
	["CUP_B_nM997_DF_USA_WDL", 0, 400, MSU_Fuel_MedicVehicles_Class1, MSU_Rank_Private]
];

medical_vehicle_air = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_UH60M_MEV_d", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private],
	["RHS_UH60M_MEV2_d", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_Sa330_Puma_MED", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_UH60M_Unarmed_FFV_MEV_US", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private],
	["CUP_B_UH1Y_MEV_USMC", 0, 400, MSU_Fuel_MedicVehicles_Class2, MSU_Rank_Private]
];

logistics_vehicle_ground = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_Truck_01_transport_F", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["B_Truck_01_covered_F", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["B_Truck_01_ammo_F", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["B_Truck_01_flatbed_F", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["B_Truck_01_fuel_F", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["B_Truck_01_Repair_F", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["B_Truck_01_box_F", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M1084A1R_SOV_M2_D_fmtv_socom", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_B_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_B_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1084A1P2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1084A1P2_B_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M977A4_ammo_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M977A4_REPAIR_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M977A4_BKIT_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M977A4_ammo_BKIT_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M977A4_ammo_BKIT_M2_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["rhsusf_M978A4_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["rhsusf_M978A4_BKIT_usarmy_wd", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M250", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_Ammo", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_flat_bed", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_fuel", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_open", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_Repair", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_Salvage", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M250_Supply", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M450", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_m548_ammo", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_m548_arty_tender", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_m548", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_m548_fuel", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_HEMMTT_Fueler", 0, 150, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M88", 0, 700, MSU_PlaceholderFuel, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_MTVR_BAF_WOOD", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_MTVR_Ammo_BAF_WOOD", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_MTVR_Refuel_BAF_WOOD", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_MTVR_Repair_BAF_WOOD", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_M113A3_Reammo_GER", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_M113A3_Repair_GER", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_nM1038_Ammo_DF_USA_WDL", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_nM1038_Repair_DF_USA_WDL", 0, 150, MSU_Fuel_LogisticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_nM1038_DF_USA_WDL", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_nM1038_4s_DF_USA_WDL", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_TowingTractor_USMC", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_Multi_Fleck", 0, 150, MSU_Fuel_LogisticVehicles_Class1, MSU_Rank_Private]
];

boats = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["C_Scooter_Transport_01_F", 0, 15, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["B_SDV_01_F", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["B_Boat_Transport_01_F", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["B_Lifeboat", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["B_Boat_Armed_01_minigun_F", 0, 125, MSU_Fuel_Boats_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["rhsusf_mkvsoc", 0, light_vehicle_price_tier_2, MSU_Fuel_Boats_Class2, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_LCU1600_USMC", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["CUP_B_RHIB_USMC", 0, light_vehicle_price_tier_2, MSU_Fuel_Boats_Class2, MSU_Rank_Private],
	["CUP_B_RHIB2Turret_USMC", 0, light_vehicle_price_tier_2, MSU_Fuel_Boats_Class2, MSU_Rank_Private],
	["CUP_B_MK10_GB", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["CUP_B_RHIB2Turret_HIL", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class2, MSU_Rank_Private],
	["CUP_B_Zodiac_USMC", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["CUP_B_LCU1600_USMC", 0, light_vehicle_price_tier_1, MSU_Fuel_Boats_Class1, MSU_Rank_Private],
	["CUP_B_Frigate_ANZAC", 0, 2000, MSU_Fuel_Boats_Class2, MSU_Rank_Major]
];

static_vehicles = [
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_A3],
	["B_radar_System_01_F", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["B_AAA_System_01_F", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["B_SAM_System_01_F", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["B_Ship_MRLS_01_F", 0, 5000, MSU_Fuel_StaticVehicles_Class3, MSU_Rank_Major],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_RHS],
	["RHS_ZU23_VMF", 0, 0, MSU_PlaceholderFuel, MSU_Rank_Private],
	["RHS_toW_TriPod_D", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["rhs_D30_vmf", 0, 300, MSU_PlaceholderFuel, MSU_Rank_Private],
	["RHS_M119_WD", 0, 300, MSU_Fuel_StaticVehicles_Class2, MSU_Rank_Private],
	["RHSCUP_B_RBS70_HIL_ZU23_VMF", 0, 0, MSU_PlaceholderFuel, MSU_Rank_Private],
	["RHS_Stinger_AA_pod_USMC_WD", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankInvisible, MSU_Placeholder_Mod_PRACS],
	["PRACS_M115", 0, 300, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M1", 0, 300, MSU_PlaceholderFuel, MSU_Rank_Private],
	["PRACS_M101", 0, 300, MSU_PlaceholderFuel, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_CUP],
	["CUP_B_M252_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_L111A1_MiniTripod_BAF_DDPM", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_L134A1_TriPod_BAF_DDPM", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_SearchLight_static_BAF_DDPM", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_L16A2_BAF_DDPM", 0, 0, MSU_Fuel_StaticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_M119_HIL", 0, 0, MSU_Fuel_StaticVehicles_Class2, MSU_Rank_Private],
	["CUP_B_SearchLight_static_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_M2StaticMG_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_M2StaticMG_miniTripod_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_MK19_TriPod_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_B_Stinger_AA_pod_Base_USMC", 0, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_WV_B_CRAM", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_WV_B_RAM_Launcher", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	["CUP_WV_B_SS_Launcher", 40, 0, MSU_Fuel_StaticVehicles_Class1, MSU_Rank_Private],
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible, MSU_Placeholder_Mod_BWMOD],
	["BWA3_MRS120_Fleck", 0, 0, MSU_Fuel_StaticVehicles_Class2, MSU_Rank_Private]
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
	["Land_RepairDepot_01_green_F", 0, 0, 0, MSU_Rank_Sergeant],
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
	["B_supplyCrate_F", 0, 0, 0, MSU_Rank_Sergeant],
	// FOB
	[FOB_box_typename, 0, 0, 0, 9999],
	[FOB_truck_typename, 0, 0, 0, 9999]
];

buildings_west = [
	// Mauern,Türme
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_Barricade],
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
	["Land_Fort_Watchtower", 0, 0, 0, MSU_Rank_Private],
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
	["Flag_UNO_F", 0, 0, 0, MSU_Rank_Private],
	["Flag_NATO_F", 0, 0, 0, MSU_Rank_Private],
	["FlagCarrierGermany_EP1", 0, 0, 0, MSU_Rank_Private],
	["FlagCarrierRU", 0, 0, 0, MSU_Rank_Private],
	["Flag_UK_F", 0, 0, 0, MSU_Rank_Private],
	["Flag_US_F", 0, 0, 0, MSU_Rank_Private],
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
	// Schießstand Ziele
	[MSU_PlaceholderClassname, MSU_PlaceholderManpower, MSU_PlaceholderAmmo, MSU_PlaceholderFuel, MSU_Placeholder_RankVisible,MSU_Placeholder_Category_ShootingRange],
	["TargetP_Civ_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Civ2_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Civ3_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf2_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf2_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf3_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf3_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Zom_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Zom_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetBootcampHumanSimple_F", 0, 0, 0, MSU_Rank_Private],
	["TargetBootcampHuman_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf4_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf4_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_HVT1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_HVT2_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf7_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf7_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf8_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf8_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf9_F", 0, 0, 0, MSU_Rank_Private],
	["TargetP_Inf9_Acc1_F", 0, 0, 0, MSU_Rank_Private],
	["Target_F", 0, 0, 0, MSU_Rank_Private],
	["Target_Swivel_01_ground_F", 0, 0, 0, MSU_Rank_Private],
	["Target_Swivel_01_left_F", 0, 0, 0, MSU_Rank_Private],
	["Target_Swivel_01_right_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Oval_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Dueling_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Concrete_Support_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Concrete_01_v1_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Concrete_01_v2_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Single_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Pistol_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Line_01_F", 0, 0, 0, MSU_Rank_Private],
	["Land_Target_Line_PaperTargets_01_F", 0, 0, 0, MSU_Rank_Private],
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
	"CUP_B_USMC_DYN_MQ9",
	"B_UAV_01_F",
	"B_UAV_02_dynamicloadout_F",
	"B_T_UAV_03_dynamicLoadout_F",
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
