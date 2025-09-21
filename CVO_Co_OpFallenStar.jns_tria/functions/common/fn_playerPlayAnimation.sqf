params [
    ["_unit", player, [objNull] ]
];

private _animations = selectRandom [
    "Acts_Rifle_Operations_Back",
    "Acts_Rifle_Operations_Front",
    "Acts_Rifle_Operations_Left",
    "Acts_Rifle_Operations_Right",
    "Acts_Rifle_Operations_Checking_Chamber",
    "Acts_CrouchingIdleRifle01",
    "Acts_CrouchGetLowGesture",
    "Acts_CrouchingReloadingRifle01",
    "Acts_Peering_Right",
    "Acts_Rifle_Operations_Barrel",
    "Acts_Peering_Left",
    "Acts_Rifle_Operations_Zeroing",
    "Acts_SignalToCheck",
    "Acts_Ambient_Rifle_Drop",
    "Acts_Ambient_Shoelaces",
    "Acts_Ambient_Stretching",
    "Acts_Ambient_Gestures_Yawn",
    "Acts_Ambient_Gestures_Sneeze"
];

if (_animations isEqualType "") then { _animations = [_animations]; };

{ [_unit, _x] call ace_common_fnc_doAnimation; } forEach _animations;


