
[{
    diag_log "[CVO](debug)(fn_init) inital remove";
    [ allUnits - allPlayers, true, true, false, false, false ] call mission_fnc_removeNavItems;

} , [], 1] call CBA_fnc_waitAndExecute;


addMissionEventHandler ["EntityCreated", {
	params ["_entity"];
    if (_entity isKindOf "CAManBase") then { [ { [ _this#0, true, true, false, false, false ] call mission_fnc_removeNavItems; }, [ _entity ], 1 ] call CBA_fnc_waitAndExecute; };
}];
