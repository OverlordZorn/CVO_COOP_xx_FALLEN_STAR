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
    [ "rhs_item_flightrecorder", "Sattelite Blackbox Sattelite" ] call cba_fnc_renameInventoryItem;
};
