leaflet setObjectTexture [0,'#(rgb,512,512,3)text(1,1,"shaffilastri",0.1,"#ffffff","#000000","Find the morse code...")'];

// Groups:
// Exfil Site
// Recon Team
// Bandit Camps

[
    leaflet,
    "Mysterious Note on the Wall",
    "You found a strange note that has been stuck to the wall of the construction site near your exfil. It reads as follows:<br/><font size='34' face='shaffilastri'>Find the morse code...<br/>",
    "Exfil Site",
    true,
    "Investigate the strange paper on the wall..."
] call cvo_intel_fnc_createIntel;



private _stashNote = "
You found the stash in a small abandoned settlement. With it are some kitbags with supplies and a small waterproof notebook. Handwriting is fast but legible. The note reads as follows:
<br/><font size='28' face='shaffilastri'>
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
<face='EtelkaMonospacePro'>
<br/>23:33 - Error - Uplink - Systemfailue - Fallback to Local Recording
<br/>23:34 - Reciever Device detected
<br/>23:34 - Starting Continous Signal Sweep
<br/>23:34 - North East - Strong Jamming Patterns on multiple Frequencies.
<br/>23:34 - Starting Signal Modulation Routine - this may take several minutes...
<br/>23:53 - North West - Weak Signal detected -  230MHz - Unkown - Signal irregular and fading
<br/>00:22 - North East - Weak Signal isolated - 770MHz - Fluctuating - Unkown.
<br/>00:31 - North West - Weak Signal detected -  230MHz - Unkown - Morse Code
<br/>00:35 - North - Weak Signal - 223 MHz - Radio Chatter 
<br/>00:53 - Error - System Failure detected - Cause unkown.
<br/>01:35 - Error - Battery Low - Enabling Energy Save Mode
<font/>
";

private _note_listeningPost = "
Some sort of protocol. Last parts are Scribbled hastly and the paper is blood-stained:
<br/><font size='24' face='shaffilastri'>
<br/>23:34 - Listen Post is is scanning.
<br/>00:33 - Lookout reports voices.
<br/>00:38 - Bandits or Looters nearby. Coming from North.
<br/>00:50 - Heard chatter — they're talking about 'fire from the sky' - seems they might know something.
<br/>Firefight - Compromised - Dropped most of them - Some of us got hit but walking.
<br/>We are EXFIL - Leaving Comms Kit behind - Must be destroyed.
<br/>Good Luck.
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
<br/><font size='24' face='shaffilastri'>
<br/>Something burning fell out of the sky. Saw it go down not far from here in the north east.
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
<br/><font size='24' face='shaffilastri'>
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
