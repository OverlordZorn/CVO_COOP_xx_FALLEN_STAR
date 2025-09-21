/*
* Author: Zorn
* Function to do things
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

if (isServer) then { setTimeMultiplier 0.01 };

// Renames the inventory Item
if (hasInterface) then {
    [ "rhs_item_flightrecorder", "Sattelite's Data Cartridge" ] call cba_fnc_renameInventoryItem;
};

// Setup Default ACE Arsenal Loadout
[
    "Base Loadout - Unarmed",
    [[[],[],["hgun_Rook40_F","muzzle_snds_L","","",["30Rnd_9x21_Mag",30],[],""],["UK3CB_LSM_B_U_Crew_CombatSmock_09",[["ACE_packingBandage",10],["ACE_fieldDressing",10],["ACE_epinephrine",2],["ACE_tourniquet",2],["ACE_splint",2],["ACE_personalAidKit",1],["ACE_adenosine",2],["ACE_EarPlugs",2],["ACE_CableTie",2],["ACE_salineIV_500",1],["ACE_painkillers",1,10]]],["UK3CB_V_Carrier_Rig_Light_GRN",[["ACRE_PRC343",1],["ACE_SpraypaintWhite",1],["cigs_Voron_cigpack",1,24],["cigs_lighter",1,100]]],[],"H_HelmetSpecB_wdl","",[],["","","ItemRadio","ItemCompass","ChemicalDetector_01_watch_F",""]],[["hoa_sling_slungHelmetItems",[]]]]
] call ace_arsenal_fnc_addDefaultLoadout;
