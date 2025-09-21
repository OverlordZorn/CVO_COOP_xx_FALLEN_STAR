if !(hasInterface) exitWith {};

private _text = switch (true) do {
	case ([player, 2] call ace_common_fnc_isMedic): { "Role Infos:\nDOCTOR\n\nADESONINE vs CBRN toxin" };
	case ( "leadership" in ([player] call cvo_arsenal_fnc_getUnitRoles) ): { "Secret Role Info:\nSQUADLEAD\nKEEP SECRET\nAllied Asset in the Area\nHandshake: applepie" };
	default { "Secret Role Info:\n" };
};


cvo_whiteboard_special_info setObjectTexture [
	0,
	format ['#(rgb,512,512,3)text(1,1,"EraserRegular",0.06,"#ffffff","#000000","%1")', _text]
];
