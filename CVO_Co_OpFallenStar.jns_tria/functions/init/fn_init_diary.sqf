/*
* Author: Stolen from AET, reworked by Zorn.
* Function to add default Diary Entries.
* *** indicates a placeholder and should be removed after the Mission Maker is done adding his data.
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

//// ################# COMMENT LINE BELOW TO ENABLE BABEL #################
if (true) exitWith {};
//// ################# COMMENT LINE ABOVE TO ENABLE BABEL #################


params [["_player", player, [objNull]]];

player createDiaryRecord ["Diary", ["Command / Signal","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Command / Signal
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>You operate autonomously.
<br/>
<br/>No contact with HQ expected during mission.
<br/>
<br/>Exfil at 034-136 at 03:24 AM sharp. One bird. One shot.
"
]];

player createDiaryRecord ["Diary", ["Administration","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Current CVO Contract Details
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>Loadout is fully blacked out. No markings, no ID, minimal signatures.
<br/>
<br/>CBRN equipment is mandatory. Intel suggest residual chemical contamination near the crashsite.
<br/>
<br/>No resupply expected.
<br/>
<br/>Comms limited to local squad channels. Long-range jamming is in effect.
<br/>
<br/>Map access is denied. Use GPS and visual landmarks. 
"
]];


player createDiaryRecord ["Diary", ["Execution","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
EXECUTION
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>Transport to AO via civilian charter flight. Insert the Last Mile on Foot. Deniability is key.
<br/>
<br/>Infiltrate the swamp and retrieve the recon team's cache at Grid 030-119.
<br/>
<br/>Utilize the recovered SIGINT equipment to locate their hidden post using 526 MHz.
<br/>
<br/>Investigate signal traffic at the post. Intel suggests the satellite may be broadcasting an emergency beacon on 755 MHz.
<br/>
<br/>Recover the flight recorder and reach exfil site at Grid 034-136 by 03:24 AM. If you miss the window, you're on your own. 
<br/>
"
]];

player createDiaryRecord ["Diary", ["Mission","
<font size=11 face='EtelkaMonospacePro'>
*** Insert general information about the tasking here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
PRIMARY OBJECTIVES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>Your team is to infiltrate the swamp zone covertly, retrieve and utilize SIGINT equipment left by the recon element, locate the satellite crashsite, and recover the flight data recorder. You must avoid all contact with the Kyrgistani military. Engagement with insurgent elements is authorized only if necessary.
<br/>
<br/>Maintain full deniability. No insignia, no comms, no backup. 
</font>
"
]];

player createDiaryRecord ["Diary", ["Situation","
<font size=11 face='EtelkaMonospacePro'>
<br/>At approximately 19:40 Zulu, an experimental, western reconnaissance satellite experienced a catastrophic failure, cause unkown.The payload is presumed to have survived and impacted in a swamp, inside a restricted military zone along the in Kyrgistan, close to the Chernarussian Border. The region is under low-level control by local forces, but there are reports of insurgent presence in the area. Due to regional sensitivities and SIGINT risks, a direct military response was deemed politically unacceptable.
<br/>
<br/>This is where we come into the play. One of our recon elements was deployed earlier but has since gone dark. Their last transmission indicated they had established a signal detection site and left behind a cache of intel and equipment before contact was lost.
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
ENEMY FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
Local Militia Fighter or Alike - Details unkown
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
NEUTRAL FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
Kyrgistan Military - AVOID CONTACT AT ALL COST
</font>
<br/>
"
]];
