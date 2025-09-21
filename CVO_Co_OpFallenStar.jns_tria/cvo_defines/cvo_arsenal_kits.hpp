/*
*   CVO Arsenal Define File
*   https://github.com/CVO-Org/CVO-Auxiliary/blob/main/addons/arsenal/readme.md
*   Example File: https://github.com/CVO-Org/CVO-Auxiliary/blob/main/.hemtt/missions/Arsenal.Altis/cvo_arsenal_kits.hpp
*/

class cvo_arsenal_kits
{
    editor_layer_name = "";
    object_variable_names[] = {"cvo_arsenal"};

    // Imports Base from configFile
    import baseKit from cvo_arsenal_kits;

    class Rations: baseKit {
        condition = "missionNamespace getVariable ['ace_field_rations_enabled', true]";
        class items {
	        class ACE_MRE_BeefStew {};
	        class ACE_MRE_ChickenTikkaMasala {};
	        class ACE_MRE_ChickenHerbDumplings {};
	        class ACE_MRE_CreamChickenSoup {};
	        class ACE_MRE_CreamTomatoSoup {};
	        class ACE_MRE_LambCurry {};
	        class ACE_MRE_MeatballsPasta {};
	        class ACE_MRE_SteakVegetables {};
        };
    };

    class Binoculars: baseKit {
        class items {
            class Binocular {};

            class Nikon_DSLR_HUD {};
            class Nikon_DSLR {};
            class ACE_Yardage450 {};
        };
    };

    class NVG: baseKit {
        class items {
            class rhs_acc_perst1ik {};
            // class rhs_1PN138 {};
        };
    };

    class Utility: baseKit {
        class items {
            class ItemRadio {};
            class ItemCompass {};
            class ChemicalDetector_01_watch_F {};

            class ACE_SpraypaintWhite {};
            class ACE_CableTie {};

            class ACE_adenosine {};
        };
    };

    // RADIOS
    class Radios_Base: baseKit {
        class items {
            class ACRE_PRC343 {};
        };
    };

    // Wearables / Gear
    class Base_Uniforms: baseKit {
        class items {
            // Vests
            class UK3CB_V_Carrier_Rig_Light_BLK {};
            class UK3CB_V_Carrier_Rig_Heavy_BLK {};
            class UK3CB_V_Carrier_Rig_Compact_BLK {};
            class UK3CB_V_Carrier_Rig_CQB_BLK {};
            class UK3CB_V_Carrier_Rig_CREW_BLK {};
            class UK3CB_V_Carrier_Rig_RECON_BLK {};
            class UK3CB_V_Carrier_Rig_TACTICAL_BLK {};
            class UK3CB_V_Carrier_Rig_BLK {};
            
            class UK3CB_V_Carrier_Rig_Light_GRN {};
            class UK3CB_V_Carrier_Rig_Heavy_GRN {};
            class UK3CB_V_Carrier_Rig_Compact_GRN {};
            class UK3CB_V_Carrier_Rig_CQB_GRN {};
            class UK3CB_V_Carrier_Rig_CREW_GRN {};
            class UK3CB_V_Carrier_Rig_RECON_GRN {};
            class UK3CB_V_Carrier_Rig_TACTICAL_GRN {};
            class UK3CB_V_Carrier_Rig_GRN {};
            
            class UK3CB_V_Carrier_Rig_Light_Light_Tan {};
            class UK3CB_V_Carrier_Rig_Heavy_Light_Tan {};
            class UK3CB_V_Carrier_Rig_Compact_Light_Tan {};
            class UK3CB_V_Carrier_Rig_CQB_Light_Tan {};
            class UK3CB_V_Carrier_Rig_CREW_Light_Tan {};
            class UK3CB_V_Carrier_Rig_RECON_Light_Tan {};
            class UK3CB_V_Carrier_Rig_TACTICAL_Light_Tan {};
            class UK3CB_V_Carrier_Rig_Light_Tan {};
            

            // Gloves
            class UK3CB_Tactical_Gloves_tan_NVG {};
            class UK3CB_Tactical_Gloves_green_NVG {};
            class UK3CB_Tactical_Gloves_black_NVG {};

            // Uniforms
            class UK3CB_LSM_B_U_Crew_CombatSmock_02 {};
            class UK3CB_LSM_B_U_Crew_CombatSmock_03 {};
            class UK3CB_LSM_B_U_Crew_CombatSmock_08 {};
            class UK3CB_LSM_B_U_Crew_CombatSmock_09 {};
            class UK3CB_LSM_B_U_CombatSmock_02 {};
            class UK3CB_LSM_B_U_CombatSmock_07 {};
            class UK3CB_LSM_B_U_CombatSmock_08 {};

            // Head            
            class rhs_6b7_1m_olive {};
            class UK3CB_ANP_B_H_6b27m_BLK {};
            class UK3CB_TKA_O_H_6b7_1m_bala1_TAN {};

            // Face
            class G_RegulatorMask_F {};

            // Backpack            
            // class B_SCBA_01_F {};
            // class B_CombinationUnitRespirator_01_F {};
        };
    };

    // Weapons
    class Weapons: baseKit {
        class items {
            // Pistol
            class hgun_Rook40_F {};
            class muzzle_snds_L {};
            class 30Rnd_9x21_Mag {};

            class rhs_weap_ak74m {};
            class rhs_weap_ak104 {};
            class rhs_weap_ak105 {};
            class rhs_weap_ak74m_zenitco01 {};
            class rhs_weap_ak104_zenitco01 {};
            class rhs_weap_ak105_zenitco01 {};
            
            
            class rhs_30Rnd_545x39_7N10_AK {};
            class rhs_30Rnd_545x39_7N22_plum_AK {};
            class rhs_30Rnd_545x39_7N10_plum_AK {};
            class rhs_30Rnd_545x39_AK_plum_green {};
            class rhs_30Rnd_545x39_7N10_camo_AK {};
            class rhs_30Rnd_545x39_7N22_camo_AK {};
            class rhs_weap_vss {};
            class rhs_weap_vss_grip {};
            class rhs_weap_asval {};
            class rhs_weap_asval_grip {};
            class rhs_20rnd_9x39mm_SP6 {};
            class rhs_20rnd_9x39mm_SP5 {};

            class rhs_acc_tgpa {};
            
            class rhs_acc_okp7_dovetail {};
            class rhs_acc_1p78 {};
            class rhs_acc_1p63 {};
            class rhs_acc_pkas {};


            class rhs_acc_dtk3 {};
            class rhs_acc_grip_ffg2 {};
            class rhs_acc_grip_rk6 {};
            class rhs_acc_grip_rk2 {};



        };
    };

    class Weapons_Throwables: baseKit {
        class items {
            class Chemlight_yellow {};
        };
    };

    // ROLE KITS
    class EOD: baseKit {
        role = "ExplosiveSpecialist";
        class items {
			class ACE_wirecutter {};
			class ACE_DefusalKit {};

            class DemoCharge_Remote_Mag {};

			//Minesweepers
			class ACE_VMM3 {};
			class ACE_VMH3 {};
        };
    };

    class MG: baseKit {
        role = "Machinegunner";
        class items {

            class rhs_weap_rpk74m {};
            class rhs_acc_dtkrpk {};
            class UK3CB_RPK74_60rnd_545x39_WM {};
            class UK3CB_RPK74_60rnd_545x39 {};
        };
    };
    class Leadership: baseKit {
        role = "Leadership";
        class items {

            class ACE_DAGR {};
        };
    };
};
