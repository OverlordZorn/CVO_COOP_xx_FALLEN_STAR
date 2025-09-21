

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
    [ "START" ],
    [ "CODE", { disableUserInput true; }],
    [ "DELAY", 5 ],
    [ "CODE", { playMusic "TheOuterZone_SabledSun" }],
    [ "DELAY", 5 ],
    [ "TEXT", "01:47:34<br/><br/><br/><br/><t color='#690000'>24th Chorni Voron</t><br/>Callsign Dagger"],
    [ "TEXT", "<t color='#690000'>Somewhere</t> in eastern europe..."],
    [ "TEXT", "... near the <t color='#690000'>chernarussian</t> border"],
    [ "CODE", { [_unit] call mission_fnc_giveCBRNKit }],
    [ "CODE", { if (isServer) then { [] call mission_fnc_skipTimeTo } }],
    [ "CODE", { [_unit] call mission_fnc_teleportPlayer }],
    [ "TEXT", "... a <t color='#690000'>star</t> has fallen through the sky..."],
    [ "TEXT", "Our <t color='#690000'>CBRN Task Force</t> has mobilized their QRF..."],
    [ "TEXT", "The Mission:<br/>- Reach the <t color='#690000'>Crashsite</t><br/>- Stay <t color='#690000'>covert</t><br/>- <t color='#690000'>Recover</t> what is possible<br/>- <t color='#690000'>Exfiltrate</t>"],
    [ "TEXT", "One of <t color='#690000'>our recon teams</t> is already in the area but <t color='#690000'>lost contact</t>"],
    [ "TEXT", "First Objective: <t color='#690000'>Investigate</t> their last known position..."],
    [ "END" ],
    [ "CODE", { [_unit] call mission_fnc_playerPlayAnimation; }],
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
            _text = format ["<t size=3 font='EraserRegular'>%1", _text];

            [{ 1 cutText [_this, "PLAIN", 3, false, true, true]; }, _text, _delay] call CBA_fnc_waitAndExecute;
            _delay = _delay + 6;
            [{ 1 cutFadeOut _this; }, 3, _delay] call CBA_fnc_waitAndExecute;
            _delay = _delay + 6;
        };
        
        default { };
    };
    
} forEach _advArray;


