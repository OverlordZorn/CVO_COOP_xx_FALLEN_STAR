

params [ ["_unit", player] ];


mission_dui_cache = missionNameSpace getVariable ["diwako_dui_main_toggled_off", false];

private _advArray = [
    [ "CODE", {
        diwako_dui_main_toggled_off = true;
        0 fadeMusic 2;
        8 fadeRadio 0;
        8 fadeSound 0;
        8 fadeEnvironment 0;
        openMap [false, true];
        [0.05] call acre_api_fnc_setGlobalVolume;
    }],
    [ "START", 6 ],
    [ "CODE", { disableUserInput true; }],
    [ "DELAY", 3 ],
    [ "CODE", { playMusic "Lustmord_OfBonesOfMen" }],
    [ "DELAY", 3 ],
    [ "TEXT", "01:47:34<br/><br/><br/><br/><t color='#ffffff'>24th Chorni Voron</t><br/><br/><br/>Callsign Dagger"],
    [ "TEXT", "<t color='#ffffff'>Somewhere</t> in eastern europe..."],
    [ "CODE", { [_unit] call mission_fnc_giveCBRNKit }],
    [ "TEXT", "... near the <t color='#ffffff'>kyrgistan</t> border"],
    [ "TEXT", "... a <t color='#ffffff'>star</t> has fallen through the sky..."],
    [ "CODE", { [_unit] call mission_fnc_teleportPlayer }],
    [ "TEXT", "CVO's <t color='#ffffff'>CBRN Task Force</t> has mobilized their QRF..."],
    [ "TEXT", "The Mission:<br/>- Stay <t color='#ffffff'>undetected</t><br/>- Reach the <t color='#ffffff'>Crashsite</t><br/>- <t color='#ffffff'>Recover</t> what is possible<br/>- <t color='#ffffff'>Exfiltrate</t>"],
    [ "CODE", { if (isServer) then { [] call mission_fnc_skipTimeTo } }],
    [ "TEXT", "One of <t color='#ffffff'>our recon teams</t> is already in the area but <t color='#ffffff'>lost contact</t>"],
    [ "TEXT", "First Objective: <t color='#ffffff'>Investigate</t> their last known position..."],
    [ "END" ],
    //[ "CODE", { [_unit] call mission_fnc_playerPlayAnimation; }],
    [ "DELAY", 7 ],
    [ "CODE", { while {userInputDisabled} do {disableUserInput false;}; }],
    [ "DELAY", 7 ],
    [ "CODE", {
        10 fadeRadio 1;
        10 fadeSound 1;
        60 fadeEnvironment 1;
        [1] call acre_api_fnc_setGlobalVolume;
        openMap [false, false];
        60 fadeMusic 1;
    }],
    [ "DELAY", 30 ],
    [ "CODE", {
        diwako_dui_main_toggled_off = mission_dui_cache;
        mission_dui_cache = nil;
    }]
];



private _delay = 1;
{
    _x params ["_type", ["_args", []] ];

    switch (_type) do {

        case "START": {
            _args params [ ["_duration",6, [0]] ];
            [{ 0 cutText ["", "BLACK OUT", _this, true, false, true]; }, _duration, _delay] call CBA_fnc_waitAndExecute;            
            _delay = _delay + _duration;
        };

        case "END": {
            _args params [ ["_duration", 15, [0]] ];
            [{ 0 cutFadeOut _this; }, _duration, _delay] call CBA_fnc_waitAndExecute;
            _delay = _delay + _duration;
        };

        case "CODE": {
            _args params [ ["_code", {}, [{}]], "_params"];
            [ _code, _params, _delay] call CBA_fnc_waitAndExecute;
        };
        case "DELAY": {
            _args params [ ["_addDelay", 5, [5]] ];
            _delay = _delay + _addDelay;
        };

        case "TEXT": {
            _args params [ ["_text", "", [""]], "_params" ];
            _text = format ["<t size=3 color='#690000' font='EraserRegular'>%1", _text];

            [{ 1 cutText [_this, "PLAIN", 5, true, true, true]; }, _text, _delay] call CBA_fnc_waitAndExecute;
            _delay = _delay + 6;
            [{ 1 cutFadeOut 5; }, "", _delay] call CBA_fnc_waitAndExecute;
            _delay = _delay + 6;
        };
        
        default { };
    };
    
} forEach _advArray;


