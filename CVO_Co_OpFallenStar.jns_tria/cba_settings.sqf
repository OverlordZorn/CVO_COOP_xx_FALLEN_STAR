/*  CBA_SETTINGS.SQF
*   
*   FORCE Description
*   0x force: Client can control this Setting
*   1x force: Mission overwrites Client
*   2x force:  Server overwrites Client and Mission
*
*   These Settings here can be changed by the Mission Maker.
* 
*/

// CVO - Core
// Enables the DynamicGroups Menu through CVO AUX
force cvo_core_set_enable_dynamicGroups = true;

// CVO - Arsenal - Kits
// false to disable CVO Arsenal Base Kits
force cvo_arsenal_ACE_FieldRations_Enabled = true;
force cvo_arsenal_ACE_Hearing_Enabled = true;
force cvo_arsenal_ACE_Overheating_Enabled = true;

force cvo_arsenal_GreenMag_Loaded = false;
force cvo_arsenal_ImmersionCigs_Loaded = false;

force cvo_arsenal_BaseKit_Medical = true;
force cvo_arsenal_BaseKit_Orientation = false;
force cvo_arsenal_BaseKit_Utility = false;

force cvo_arsenal_BaseRoleKit_Machinegunner = false;
force cvo_arsenal_BaseRoleKit_Marksman = false;
force cvo_arsenal_BaseRoleKit_RTO = false;

force cvo_arsenal_BaseRoleKit_Engineer = false;
force cvo_arsenal_BaseRoleKit_AdvEngineer = false;

force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist = true;
force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist_IEDD = true;

force cvo_arsenal_BaseRoleKit_UAV = false;
force cvo_arsenal_BaseRoleKit_EWSpecialist = false;

force cvo_arsenal_BaseRoleKit_Medic = true;
force cvo_arsenal_BaseRoleKit_Doctor = true;

force cvo_arsenal_BaseRoleKit_Medic_suture = true;
force cvo_arsenal_BaseRoleKit_ExplosiveSpecialist_convertFuses = true;

// CVO - Arsenal
// Save Player Loadout and Restores it on Respawn
force cvo_arsenal_set_load_onRespawn = true;
force cvo_arsenal_set_save_arsenalClose = true;
force cvo_arsenal_set_save_missionStart = true;
force cvo_arsenal_set_save_missionStart_delay = 30;

// CVO - Insignia
// Autodefines the Insigina for players
force cvo_insignia_set_on_arsenalClosed = true;
force cvo_insignia_set_on_missionStart = true;
force cvo_insignia_set_threshold_SL = 5;


// AET Unit Voice Over
force AET_UVO_BLUFOR_LANGUAGE = "WEST";
force AET_UVO_GUER_LANGUAGE = "GUER";
force AET_UVO_OPFOR_LANGUAGE = "EAST";
force AET_UVO_CIV_LANGUAGE = "NONE";

/* UVO Languages Guide
"NONE" = Disabled
"WEST" = WEST [English]
"EAST" = EAST [English]
"GUER" = GUER [English]
"AMER" = American & British [English]
"BRIT" = British [English]
"ASIA" = Chinese
"FREN" = French
"GERM" = German
"RUSS" = Russian
"ARAB" = Arabic
"CZ" = Czech
"POL" = Polish
"JP" = Japanese
*/


// ACE Field Rations
force acex_field_rations_enabled = true;

force acex_field_rations_affectAdvancedFatigue = true;
force acex_field_rations_terrainObjectActions = true;

force acex_field_rations_hungerSatiated = 3;
force acex_field_rations_thirstQuenched = 2.5;

force acex_field_rations_timeWithoutFood = 6;
force acex_field_rations_timeWithoutWater = 2.5;

force acex_field_rations_waterSourceActions = 2;


// ACE Advanced Balistics -> Advanced Ballistics = true or false //
force ace_advanced_ballistics_enabled = true;


// ACE Advanced Balistics -> Advanced Ballistics = true or false //
force ace_advanced_ballistics_enabled = true;
// ACE Artillery -> Artillery Computer Disabled = true or false //
force ace_artillerytables_disableArtilleryComputer = false;
// ACE Headless -> Enabled = true or false
force acex_headless_enabled = false;
// ACE Logistics -> Rearm Amount = 0, 1, or 2 [0 = Entire Vehicle, 1 = Entire Magazine, 2 = Amount based on caliber] //
force ace_rearm_level = 1;

// ACE Medical -> Self Stitching = 0 or 1 [0 = No, 1 = Yes] //
force ace_medical_treatment_allowSelfStitch = 0;

// ACE Overheating -> Suppressor Coefficient = 0.00 to 5.00 //
force ace_overheating_suppressorCoef = 1;

// ACE Pylons -> Enable Pylons Menu from Ammo Trucks = true or false //
force ace_pylons_enabledFromAmmoTrucks = true;

// ACE Hearing  // Todo post first session: switch back to true and false
force ace_hearing_enableCombatDeafness = true;
force ace_hearing_disableEarRinging = false;


// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 1;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 1;
force ace_nightvision_fogScaling = 1.1;
force ace_nightvision_noiseScaling = 1;
force ace_nightvision_shutterEffects = true;

// TSP Breach
force tsp_cba_breach_lock_house = 0;
force tsp_cba_breach_lock_door = 0;



// IEDD Handbook

force iedd_ied_failChance = 0.25;
force iedd_ied_failChanceEOD = 0.05;
force iedd_ied_failExploseChance = 0.05;

force iedd_ied_maxRange = 10;
force iedd_ied_minRange = 5;


// Diwako
force diwako_dui_nametags_enabled = false;
force diwako_dui_nametags_useSideIsFriendly = false;

force diwako_dui_linecompass_enabled = false;
force diwako_dui_enable_compass_dir = 1;


// ZEN Factions

// Zeus Enhanced - Faction Filter
zen_faction_filter_0_OPF_F = true;
zen_faction_filter_0_OPF_G_F = true;
zen_faction_filter_0_OPF_GEN_F = true;
zen_faction_filter_0_OPF_R_F = true;
zen_faction_filter_0_OPF_SFIA_lxWS = true;
zen_faction_filter_0_OPF_T_F = true;
zen_faction_filter_0_OPF_TURA_lxWS = true;
zen_faction_filter_0_rhs_faction_msv = true;
zen_faction_filter_0_rhs_faction_rva = true;
zen_faction_filter_0_rhs_faction_tv = true;
zen_faction_filter_0_rhs_faction_vdv = true;
zen_faction_filter_0_rhs_faction_vmf = true;
zen_faction_filter_0_rhs_faction_vpvo = true;
zen_faction_filter_0_rhs_faction_vv = true;
zen_faction_filter_0_rhs_faction_vvs = true;
zen_faction_filter_0_rhs_faction_vvs_c = true;
zen_faction_filter_0_rhsgref_faction_chdkz = true;
zen_faction_filter_0_rhsgref_faction_chdkz_groups = true;
zen_faction_filter_0_rhsgref_faction_tla = true;
zen_faction_filter_0_rhssaf_faction_airforce_opfor = true;
zen_faction_filter_0_rhssaf_faction_army_opfor = true;
zen_faction_filter_0_UK3CB_AAF_O = true;
zen_faction_filter_0_UK3CB_ADA_O = true;
zen_faction_filter_0_UK3CB_ADC_O = true;
zen_faction_filter_0_UK3CB_ADE_O = true;
zen_faction_filter_0_UK3CB_ADG_O = true;
zen_faction_filter_0_UK3CB_ADM_O = true;
zen_faction_filter_0_UK3CB_ADP_O = true;
zen_faction_filter_0_UK3CB_ADR_O = true;
zen_faction_filter_0_UK3CB_APD_O = true;
zen_faction_filter_0_UK3CB_ARD_O = true;
zen_faction_filter_0_UK3CB_CCM_O = true;
zen_faction_filter_0_UK3CB_CHC_O = true;
zen_faction_filter_0_UK3CB_CHD_O = true;
zen_faction_filter_0_UK3CB_CHD_O_groups = true;
zen_faction_filter_0_UK3CB_CHD_W_O = true;
zen_faction_filter_0_UK3CB_CHD_W_O_groups = true;
zen_faction_filter_0_UK3CB_CPD_O = true;
zen_faction_filter_0_UK3CB_CSAT_A_O = true;
zen_faction_filter_0_UK3CB_CSAT_A_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_B_O = true;
zen_faction_filter_0_UK3CB_CSAT_B_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_F_O = true;
zen_faction_filter_0_UK3CB_CSAT_F_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_G_O = true;
zen_faction_filter_0_UK3CB_CSAT_G_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_M_O = true;
zen_faction_filter_0_UK3CB_CSAT_M_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_N_O = true;
zen_faction_filter_0_UK3CB_CSAT_N_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_S_O = true;
zen_faction_filter_0_UK3CB_CSAT_S_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_U_O = true;
zen_faction_filter_0_UK3CB_CSAT_U_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_W_O = true;
zen_faction_filter_0_UK3CB_CSAT_W_O_groups = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_EARLY = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_LATE = true;
zen_faction_filter_0_UK3CB_FIA_O = true;
zen_faction_filter_0_UK3CB_GAF_O = true;
zen_faction_filter_0_UK3CB_ION_O_Desert = true;
zen_faction_filter_0_UK3CB_ION_O_Urban = true;
zen_faction_filter_0_UK3CB_ION_O_Winter = true;
zen_faction_filter_0_UK3CB_ION_O_Woodland = true;
zen_faction_filter_0_UK3CB_KDF_O = true;
zen_faction_filter_0_UK3CB_KRG_O = true;
zen_faction_filter_0_UK3CB_LDF_O = true;
zen_faction_filter_0_UK3CB_LDF_O_groups = true;
zen_faction_filter_0_UK3CB_LFR_O = true;
zen_faction_filter_0_UK3CB_LNM_O = true;
zen_faction_filter_0_UK3CB_LNM_O_groups = true;
zen_faction_filter_0_UK3CB_LSM_O = true;
zen_faction_filter_0_UK3CB_MDF_O = true;
zen_faction_filter_0_UK3CB_MEC_O = true;
zen_faction_filter_0_UK3CB_MEE_O = true;
zen_faction_filter_0_UK3CB_MEI_O = true;
zen_faction_filter_0_UK3CB_NAP_O = true;
zen_faction_filter_0_UK3CB_NAP_O_groups = true;
zen_faction_filter_0_UK3CB_NFA_O = true;
zen_faction_filter_0_UK3CB_NFA_O_groups = true;
zen_faction_filter_0_UK3CB_NPD_O = true;
zen_faction_filter_0_UK3CB_TKA_O = true;
zen_faction_filter_0_UK3CB_TKC_O = true;
zen_faction_filter_0_UK3CB_TKM_O = true;
zen_faction_filter_0_UK3CB_TKP_O = true;

zen_faction_filter_1_BLU_CTRG_F = false;
zen_faction_filter_1_BLU_F = false;
zen_faction_filter_1_BLU_G_F = false;
zen_faction_filter_1_BLU_GEN_F = false;
zen_faction_filter_1_BLU_ION_lxWS = false;
zen_faction_filter_1_BLU_NATO_lxWS = false;
zen_faction_filter_1_BLU_T_F = false;
zen_faction_filter_1_BLU_TURA_lxWS = false;
zen_faction_filter_1_BLU_UN_lxWS = false;
zen_faction_filter_1_BLU_W_F = false;
zen_faction_filter_1_rhs_faction_socom = false;
zen_faction_filter_1_rhs_faction_usaf = false;
zen_faction_filter_1_rhs_faction_usarmy_d = false;
zen_faction_filter_1_rhs_faction_usarmy_wd = false;
zen_faction_filter_1_rhs_faction_usmc_d = false;
zen_faction_filter_1_rhs_faction_usmc_wd = false;
zen_faction_filter_1_rhs_faction_usn = false;
zen_faction_filter_1_rhsgref_faction_cdf_air_b = false;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b = false;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b_groups = false;
zen_faction_filter_1_rhsgref_faction_cdf_ng_b = false;
zen_faction_filter_1_rhsgref_faction_hidf = false;
zen_faction_filter_1_UK3CB_AAF_B = false;
zen_faction_filter_1_UK3CB_ADA_B = false;
zen_faction_filter_1_UK3CB_ADC_B = false;
zen_faction_filter_1_UK3CB_ADG_B = false;
zen_faction_filter_1_UK3CB_ADM_B = false;
zen_faction_filter_1_UK3CB_ADP_B = false;
zen_faction_filter_1_UK3CB_ADR_B = false;
zen_faction_filter_1_UK3CB_ANA_B = false;
zen_faction_filter_1_UK3CB_ANP_B = false;
zen_faction_filter_1_UK3CB_APD_B = false;
zen_faction_filter_1_UK3CB_ARD_B = false;
zen_faction_filter_1_UK3CB_CCM_B = false;
zen_faction_filter_1_UK3CB_CHC_B = false;
zen_faction_filter_1_UK3CB_CHD_B = false;
zen_faction_filter_1_UK3CB_CHD_B_groups = false;
zen_faction_filter_1_UK3CB_CHD_W_B = false;
zen_faction_filter_1_UK3CB_CHD_W_B_groups = false;
zen_faction_filter_1_UK3CB_CPD_B = false;
zen_faction_filter_1_UK3CB_CW_US_B_EARLY = false;
zen_faction_filter_1_UK3CB_CW_US_B_LATE = false;
zen_faction_filter_1_UK3CB_FIA_B = false;
zen_faction_filter_1_UK3CB_GAF_B = false;
zen_faction_filter_1_UK3CB_ION_B_Desert = false;
zen_faction_filter_1_UK3CB_ION_B_Urban = false;
zen_faction_filter_1_UK3CB_ION_B_Winter = false;
zen_faction_filter_1_UK3CB_ION_B_Woodland = false;
zen_faction_filter_1_UK3CB_KDF_B = false;
zen_faction_filter_1_UK3CB_KRG_B = false;
zen_faction_filter_1_UK3CB_LDF_B = false;
zen_faction_filter_1_UK3CB_LDF_B_groups = false;
zen_faction_filter_1_UK3CB_LFR_B = false;
zen_faction_filter_1_UK3CB_LNM_B = false;
zen_faction_filter_1_UK3CB_LNM_B_groups = false;
zen_faction_filter_1_UK3CB_LSM_B = false;
zen_faction_filter_1_UK3CB_MDF_B = false;
zen_faction_filter_1_UK3CB_MEC_B = false;
zen_faction_filter_1_UK3CB_MEI_B = false;
zen_faction_filter_1_UK3CB_NAP_B = false;
zen_faction_filter_1_UK3CB_NAP_B_groups = false;
zen_faction_filter_1_UK3CB_NFA_B = false;
zen_faction_filter_1_UK3CB_NFA_B_groups = false;
zen_faction_filter_1_UK3CB_NPD_B = false;
zen_faction_filter_1_UK3CB_TKA_B = false;
zen_faction_filter_1_UK3CB_TKC_B = false;
zen_faction_filter_1_UK3CB_TKM_B = false;
zen_faction_filter_1_UK3CB_TKP_B = false;
zen_faction_filter_1_UK3CB_UN_B = false;

zen_faction_filter_2_IND_C_F = false;
zen_faction_filter_2_IND_E_F = false;
zen_faction_filter_2_IND_F = false;
zen_faction_filter_2_IND_G_F = false;
zen_faction_filter_2_IND_L_F = false;
zen_faction_filter_2_IND_SFIA_lxWS = false;
zen_faction_filter_2_IND_TURA_lxWS = false;
zen_faction_filter_2_rhsgref_faction_cdf_air = false;
zen_faction_filter_2_rhsgref_faction_cdf_ground = false;
zen_faction_filter_2_rhsgref_faction_cdf_ground_groups = false;
zen_faction_filter_2_rhsgref_faction_cdf_ng = false;
zen_faction_filter_2_rhsgref_faction_cdf_ng_groups = false;
zen_faction_filter_2_rhsgref_faction_chdkz_g = true;
zen_faction_filter_2_rhsgref_faction_chdkz_g_groups = true;
zen_faction_filter_2_rhsgref_faction_nationalist = false;
zen_faction_filter_2_rhsgref_faction_nationalist_groups = false;
zen_faction_filter_2_rhsgref_faction_tla_g = false;
zen_faction_filter_2_rhsgref_faction_un = false;
zen_faction_filter_2_rhssaf_faction_airforce = false;
zen_faction_filter_2_rhssaf_faction_army = false;
zen_faction_filter_2_rhssaf_faction_un = false;
zen_faction_filter_2_UK3CB_AAF_I = false;
zen_faction_filter_2_UK3CB_ADA_I = false;
zen_faction_filter_2_UK3CB_ADC_I = false;
zen_faction_filter_2_UK3CB_ADE_I = false;
zen_faction_filter_2_UK3CB_ADG_I = false;
zen_faction_filter_2_UK3CB_ADM_I = false;
zen_faction_filter_2_UK3CB_ADP_I = false;
zen_faction_filter_2_UK3CB_ADR_I = false;
zen_faction_filter_2_UK3CB_APD_I = false;
zen_faction_filter_2_UK3CB_ARD_I = false;
zen_faction_filter_2_UK3CB_CCM_I = false;
zen_faction_filter_2_UK3CB_CHC_I = false;
zen_faction_filter_2_UK3CB_CHD_I = false;
zen_faction_filter_2_UK3CB_CHD_I_groups = false;
zen_faction_filter_2_UK3CB_CHD_W_I = false;
zen_faction_filter_2_UK3CB_CHD_W_I_groups = false;
zen_faction_filter_2_UK3CB_CPD_I = false;
zen_faction_filter_2_UK3CB_FIA_I = false;
zen_faction_filter_2_UK3CB_GAF_I = false;
zen_faction_filter_2_UK3CB_ION_I_Desert = false;
zen_faction_filter_2_UK3CB_ION_I_Urban = false;
zen_faction_filter_2_UK3CB_ION_I_Winter = false;
zen_faction_filter_2_UK3CB_ION_I_Woodland = false;
zen_faction_filter_2_UK3CB_KDF_I = true;
zen_faction_filter_2_UK3CB_KRG_I = false;
zen_faction_filter_2_UK3CB_LDF_I = false;
zen_faction_filter_2_UK3CB_LDF_I_groups = false;
zen_faction_filter_2_UK3CB_LFR_I = false;
zen_faction_filter_2_UK3CB_LNM_I = false;
zen_faction_filter_2_UK3CB_LNM_I_groups = false;
zen_faction_filter_2_UK3CB_LSM_I = false;
zen_faction_filter_2_UK3CB_MDF_I = false;
zen_faction_filter_2_UK3CB_MEC_I = false;
zen_faction_filter_2_UK3CB_MEE_I = false;
zen_faction_filter_2_UK3CB_MEI_I = false;
zen_faction_filter_2_UK3CB_NAP_I = false;
zen_faction_filter_2_UK3CB_NAP_I_groups = false;
zen_faction_filter_2_UK3CB_NFA_I = false;
zen_faction_filter_2_UK3CB_NFA_I_groups = false;
zen_faction_filter_2_UK3CB_NPD_I = false;
zen_faction_filter_2_UK3CB_TKA_I = false;
zen_faction_filter_2_UK3CB_TKC_I = false;
zen_faction_filter_2_UK3CB_TKM_I = false;
zen_faction_filter_2_UK3CB_TKP_I = false;
zen_faction_filter_2_UK3CB_UN_I = false;

zen_faction_filter_3_CIV_F = true;
zen_faction_filter_3_CIV_IDAP_F = true;
zen_faction_filter_3_IND_L_F = true;
zen_faction_filter_3_UK3CB_ADC_C = true;
zen_faction_filter_3_UK3CB_CHC_C = true;
zen_faction_filter_3_UK3CB_MEC_C = true;
zen_faction_filter_3_UK3CB_TKC_C = true;


// Helmet on Ass

// Helmet on Ass
force hoa_sling_allowedModesSetting = "[1, 3]";
force hoa_sling_canHideHelmet = false;
force hoa_sling_enabled = true;



// Cigs on AI
force cigs_ai_set_cigsonai_chance = 0.75