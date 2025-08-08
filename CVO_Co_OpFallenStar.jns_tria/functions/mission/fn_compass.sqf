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


/*
_codeToRun  - <CODE> code to Run stated between {}
_parameters - <ANY> OPTIONAL parameters, will be passed to  code to run, exit code and condition
_exitCode   - <CODE> OPTIONAL exit code between {} code that will be executed upon ending PFEH default is {}
_condition  - <CODE THAT RETURNS BOOLEAN> - OPTIONAL conditions during which PFEH will run default {true}
_delay      - <NUMBER> (optional) delay between each execution in seconds, PFEH executes at most once per frame
*/

if (!hasInterface) exitWith {};

[
    { missionNamespace getVariable ["mission_go", false] },
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
            30
        ] call CBA_fnc_addPerFrameHandler;
    }
] call CBA_fnc_waitUntilAndExecute;
