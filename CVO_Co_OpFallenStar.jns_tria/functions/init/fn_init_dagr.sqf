// Init DAGR Waypoints

private _fnc = {
    params [
        ["_pos",    [0,0],      [[]],   [2,3]   ],
        ["_name",   "Waypoint", [""]            ],
        ["_index",  true,       [0]             ]
    ];

    if (_index isEqualTo true) then { _index = ace_dagr_numWaypoints; };
    _index = 0 max _index min 4;
    ace_dagr_numWaypoints = _index + 1;

    private _arr = [_pos] call ace_common_fnc_getMapGridFromPos apply { _x select [0,4] } apply { parseNumber _x };
    private _posNum = _arr#0 * 10000 + _arr#1;

    missionNamespace setVariable [
        format ["ace_dagr_wpString%1",_index],
        _name
    ];
    missionNamespace setVariable [
        format ["ace_dagr_wp%1",_index],
        _posNum
    ];
};

[
    { ! isNil "ace_dagr_numWaypoints" },
    {
        [ [1423.11,747.692,0], "INFIL"        ] call _this;
        [ [3019.93,1754.82,0], "Last Contact" ] call _this;
        [ [3404.54,3452.75,0], "EXFIL"        ] call _this;
    },
    _fnc
] call CBA_fnc_waitUntilAndExecute;
