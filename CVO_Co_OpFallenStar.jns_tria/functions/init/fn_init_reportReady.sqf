if (isServer) then {
    [
        "mission_report_ready",
        {
            private _players = [] call CBA_fnc_players;
            private _players = _players select { ! (_x getVariable ["mission_isReady", false]) };
            if (_players isEqualTo []) then {
                missionNamespace setVariable ["mission_start", true, true];
                [ "mission_notify_players", "Mission begins shortly..." ] call CBA_fnc_globalEvent;
            } else {
                private _notifyArray = [ ["Waiting for players:"] ];
                { _notifyArray pushBack [ name _x ] } forEach _players;
                _notifyArray pushBack true;
                [ "mission_notify_players", _notifyArray ] call CBA_fnc_globalEvent;
            }
        }
    ] call CBA_fnc_addEventHandler;
};


if (!hasInterface) exitWith {};

[
    "mission_notify_players",
    cba_fnc_notify
] call CBA_fnc_addEventHandler;

private _state = {
    params ["_target", "_player", "_actionParams"];
    _actionParams params [""];

    if (missionNamespace getVariable ["mission_start", false]) then {
        // What happens when the mission already started
        // TODO

    } else {
        // what happens when the mission hasnt started yet?
        _player setVariable ["mission_isReady", true, true];
        [["You have reported yourself as ready!"], ["Mission will start once everyone is ready"], true] call cba_fnc_notify;
        ["mission_report_ready", []] call CBA_fnc_serverEvent;
    };
};

private _cond = {
    params ["_target", "_player", "_actionParams"];
    _actionParams params [""];
    !(_player getVariable ["mission_isReady", false])
};


private _aceAction = [
    "My_Action_ID_Name"                             // * 0: Action name <STRING>
    ,"Report Ready for the mission to start"        //  * 1: Name of the action shown in the menu <STRING>
    ,""                                             //  * 2: Icon <STRING> "\A3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa"
    ,_state                                         //  * 3: Statement <CODE>
    ,_cond                                          //  * 4: Condition <CODE>
//    ,{}                                           //  * 5: Insert children code <CODE> (Optional)
//    ,_params                                      //  * 6: Action parameters <ANY> (Optional)
//    ,[0,0,0]                                      //  * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
//    ,20                                           //  * 8: Distance <NUMBER> (Optional)
//    ,[false,false,false,false,false]              //  * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
//    ,{}                                           //  * 10: Modifier function <CODE> (Optional)
] call ace_interact_menu_fnc_createAction;

[
    cvo_whiteboard_report_ready         // * 0: Object the action should be assigned to <OBJECT>
    ,0                         		    // * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
    ,["ACE_MainActions"]             	// * 2: Parent path of the new action <ARRAY> (Example: ["ACE_SelfActions", "ACE_Equipment"])
    ,_aceAction    	         			// * 3: Action <ARRAY>    
] call ace_interact_menu_fnc_addActionToObject;