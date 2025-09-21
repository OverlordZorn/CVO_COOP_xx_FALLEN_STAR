/*
* Author: Zorn
* function to make the compass go crazy based on distance from player to pos
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



if (!hasInterface) exitWith {};

[
    { missionNamespace getVariable ["mission_start", false] },
    {
        [
            {
                private _position = [5445.24,2797.03,0];
                setCompassOscillation [
                    rad linearConversion [0, 4000, ace_player distance2D _position, 10 + ceil random 35, 0.1 ],
                    0.01,
                    1
                ];
            },
            10
        ] call CBA_fnc_addPerFrameHandler;
    }
] call CBA_fnc_waitUntilAndExecute;
