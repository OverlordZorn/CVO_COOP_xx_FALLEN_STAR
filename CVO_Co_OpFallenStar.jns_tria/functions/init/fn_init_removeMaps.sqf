if (isServer) then {

    addMissionEventHandler ["EntityCreated", {
        params ["_entity"];
        if ([_entity, "ItemMap"] call BIS_fnc_hasItem) then { _entity removeItem "ItemMap"; };
    }];

};
