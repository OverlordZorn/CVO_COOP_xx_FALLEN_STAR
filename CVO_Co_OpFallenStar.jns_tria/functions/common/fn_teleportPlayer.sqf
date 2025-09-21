params [
    ["_unit",player, [objNull]]
];


private _lz = getPos LZ;
private _lookTowards = [1921.15,1093.87,0]; 


private _tgt = [_lz, 3, 15, 1, 0, 0, 0, [], _lz] call BIS_fnc_findSafePos;

_unit setPos _tgt;
_unit setDir ( _tgt getDir _tgt );
