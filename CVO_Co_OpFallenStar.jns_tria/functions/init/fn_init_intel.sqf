intel_exfil_leaflet_2 setObjectTexture [0,'#(rgb,512,512,3)text(1,1,"EraserRegular",0.1,"#ffffff","#000000","Follow the song\nof dots and dashes...\nFriends of travesty are near")'];


// Groups:
// Exfil Site
// Recon Team
// Bandit Camps

[
    intel_exfil_leaflet_1,
    "Mysterious Note on the Wall",
"You found a note stuck to the wall of the construction site. It reads as follows:
<br/><font size='12' face='EraserRegular'>
<br/>Search the Light which only is seen by worriors of the night...",
    "Exfil Site",
    true,
    "Investigate the strange paper on the wall..."
] call cvo_intel_fnc_createIntel;


if (isServer) then {
    // Create strobe once leaflet 1 has been picked up, deletes it when the 2. leaflet has been picked up
    [
        { isNull intel_exfil_leaflet_1 },
        {
            private _strobe = "ACE_IR_Strobe_Effect" createVehicle [0,0,1];
            _strobe setPos ( getPos intel_exfil_leaflet_2 vectorAdd [-0.1,0.4,0.5] );
            [{ isNull intel_exfil_leaflet_2 }, { deleteVehicle _this }, _strobe] call CBA_fnc_waitUntilAndExecute;
        }
    ] call CBA_fnc_waitUntilAndExecute;
};


[
    intel_exfil_leaflet_2,
    "Mysterious Note on the Wall",
"You found another note on a dead tree outside of the construction site. It reads as follows:
<br/><font size='12' face='EraserRegular'>
<br/>Follow the song of dots and dashes...
<br/>Friends of travesty are near",
    "Exfil Site",
    true,
    "Investigate the strange paper on the wall..."
] call cvo_intel_fnc_createIntel;



private _stashNote = "
You found the stash in a small abandoned settlement. With it are some kitbags with supplies and a small waterproof notebook. Handwriting is fast but legible. The note reads as follows:
<br/><font size='12' face='EraserRegular'>
<br/>No joy on comms. Jamming's stronger the deeper we go.
<br/>CommsKit damaged. Established LP not far from here.
<br/>Need to move light - we stashed spare kit here - Take what you need.
<br/>Follow 526 MHz.
";

[
    intel_01_notepad_stash,
    "Notebook at Stashsite",
    _stashNote,
    "Recon Team",
    true,
    "Check out the note which has been left behind..."
] call cvo_intel_fnc_createIntel;


private _laptop_listenPost = "
<font size=9 face='EtelkaMonospacePro'>
<br/>23:33 - Error - Uplink - Fallback to Local Recording
<br/>23:34 - Reciever Device detected
<br/>23:34 - Starting Continous Signal Sweep
<br/>23:34 - North East - Strong Jamming - multiple Frequencies
<br/>23:34 - Starting Signal Cleanup Routine ...
<br/>23:53 - North West - Weak - detected - 230MHz - irregular, fading
<br/>00:22 - North East - Weak - isolated - 770MHz - Uncategorized
<br/>00:31 - North West - Weak - detected - 230MHz - Morse Code
<br/>00:35 - North West - Strong - traffic - 223 MHz - Radio Chatter 
<br/>00:53 - Error - Code: 842 - Rx inoperable
<br/>01:35 - Error - Battery Low - Enabling Energy Save Mode
<font/>
";

private _note_listeningPost = "
Some sort of protocol. Last parts are Scribbled hastly and the paper is blood-stained:
<br/><font size='12' face='EraserRegular'>
<br/>23:34 - Listen Post is is scanning.
<br/>00:33 - Lookout reports voices.
<br/>00:38 - Bandits or Looters nearby. Coming from North.
<br/>00:50 - Heard chatter — they're talking about 'fire from the sky' - seems they might know something.
<br/><br/>Firefight - Compromised - Dropped most of them - Some of us got hit but walking - We are EXFIL - Leaving Comms Kit behind - Must be destroyed.
<br/><br/>Good Luck.
<font/>
";

[
    intel_02_notepad_listeningPost,
    "Notepad from Recon Team",
    _note_listeningPost,
    "Recon Team",
    true,
    "Check out the Notepad left behind..."
] call cvo_intel_fnc_createIntel;

[
    intel_02_laptop_listeningPost,
    "Protocol from the Listening Post",
    _laptop_listenPost,
    "Recon Team",
    true,
    "Check the Device for any useful Data..."
] call cvo_intel_fnc_createIntel;


// Bandit Camp
private _bandit_note_1 = "
<br/>Torn notebook page from some sort of commanders journal. 
<br/><font size='12' face='EraserRegular'>
<br/>Something burning fell out of the sky. Saw it go down not far from here in the north east - 60° to 80° i'd say.
<br/>Simil claims he saw a missle being launched from the military SAM site shortly before but Anton says its aliens.
<br/>Non the less, the guys are curious and wanna know what went down. Whatever it is, there will be something valuable.
<br/>I just hope they remember to avoid the marsh pits. Too soft. Yuri got stuck there last time.
<font/>
";

[
    intel_03_notepad_bandits,
    "Note from the Bandit camp",
    _bandit_note_1,
    "Bandit Camp",
    true,
    "Check out the papers on the Desk..."
] call cvo_intel_fnc_createIntel;




// Bandit Camp
private _dead_bandit_note = "
<br/>Torn notebook page from some sort of commanders journal. 
<br/><font size='12' face='EraserRegular'>
<br/>The thing's giving off heat. I saw it through scope.
<br/>Weird red glow under water... and the taste... somethings in the air
<br/>Don't touch ...
<font/>
";

[
    intel_04_dead_bandit_note,
    "Note from the Dead Bandit near the crashsite",
    _dead_bandit_note,
    "Crashsite",
    true,
    "Check out the bandits note..."
] call cvo_intel_fnc_createIntel;
