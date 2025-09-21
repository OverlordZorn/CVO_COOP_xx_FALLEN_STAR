/*
* Author: Zorn
* Function to disable simulation on mission start
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

if !(isServer) exitWith {};

private _layers = getMissionLayers select { "ZEIC Garrison" in _x };
_layers append [ "Random Patrols" ];

// Disable Layers before Mission Start
{ [_x, "DISABLE"] call cvo_common_fnc_layerObjects; } forEach _layers;

// Re-Enable all layers after mission_start
[
    { missionNamespace getVariable ["mission_start", false] },
    {
        params ["_layers"];
        { [_x, "ENABLE"] call cvo_common_fnc_layerObjects; } forEach _layers;
    },
    [_layers]
] call CBA_fnc_waitUntilAndExecute;
