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

params [
    ["_unit", player, [objNull] ]
];

if (backpack _unit isNotEqualTo "") then { removeBackpack _unit };

_unit addBackpack "cvo_Kitbag_blk";
private _bp = backpackContainer _unit;
_bp addBackpackCargoGlobal ["B_SCBA_01_F", 1];
_bp addItemCargoGlobal ["G_RegulatorMask_F", 1];

_bp addItemCargoGlobal ["rhs_1PN138", 1];

if ("leadership" in ([player] call cvo_arsenal_fnc_getUnitRoles)) then { _bp addItemCargoGlobal ["ACE_DAGR", 1]; };

nil // return
