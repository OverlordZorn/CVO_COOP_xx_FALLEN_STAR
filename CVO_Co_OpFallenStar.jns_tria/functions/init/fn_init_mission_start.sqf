[ "player_intro", mission_fnc_playerCutscene ] call CBA_fnc_addEventHandler;

if !(isServer) exitWith {};

[
    {
        missionNamespace getVariable ["mission_start", false]
    }, 
    {
        // Enabling Layers is being done via internal WUAE

        // Start Player intro
        [CBA_fnc_globalEvent, ["player_intro"], 3] call CBA_fnc_waitAndExecute;

        // Delayed start for Start ambient sound system
        [cvo_ambient_fnc_startServerLoop, ["ALL"], 15 * 60 ] call CBA_fnc_waitAndExecute;


    }
] call CBA_fnc_waitUntilAndExecute;
