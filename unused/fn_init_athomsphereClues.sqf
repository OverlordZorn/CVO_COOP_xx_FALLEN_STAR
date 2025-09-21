/*
* Author: Zorn
* Function to provide the player with random athomsperhic clues throught the mission.
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


if (!hasInterface) exitWith {};

[
    { missionNamespace getVariable ["mission_start", false] },
    {
        private _code = {
            params ["_code"];

            [
                "",
                selectRandom [
                    "For a moment, you hear static whispering on your comm — then silence.",
                    "The Geiger counter clicks… once… then stops.",
                    "You feel a sudden drop in temperature. Brief. Just long enough to notice.",
                    "In the distance: metal groans. Could be wind. Could be something else.",
                    "A faint strobe of red light flickers across the treeline. It doesn't return.",
                    "Your comms crackle: two syllables in a language you don't recognize.",
                    "You hear what sounds like distant footsteps in shallow water — but no one's nearby.",
                    "A soft beeping sound echoes briefly through the swamp, then fades.",
                    "Something just moved in the water — but it was gone before you turned your head.",
                    "You smell burnt plastic for a moment. The wind changes. It's gone.",
                    "Your boots sink deeper than expected. The ground beneath feels… hollow.",
                    "Your radio lights up. No transmission. Just static.",
                    "You hear a faint metallic ping, like something cooling down. But nothing's around.",
                    "A crow caws once, violently — and then nothing. Just silence.",
                    "Your night vision flickers for a second, just enough to disorient you.",
                    "Water ripples — no wind. Nothing touched it.",
                    "The air smells like ozone, sharp and dry, like before a storm.",
                    "A tree creaks like it's bearing weight — but nothing's on it.",
                    "You hear whispering — or is it wind through reeds?",
                    "There's a light… no, just a reflection. Maybe.",
                    "Your vision blurs slightly — like your eyes didn't track something fast enough.",
                    "A distant dog bark. One. Then silence again.",
                    "You swear you just heard a voice call your name.",
                    "You catch a glimpse of something white in the trees. Cloth? Bone? Gone now.",
                    "A gust of wind kicks up dust that wasn't there a second ago.",
                    "There's a low, distant rumble. Could be thunder. Sky's clear."
                ]
            ] call cvo_common_fnc_subtitles;

            // Interval
            [
                _code,
                [_code],
                60 * (10 + random 10)
            ] call CBA_fnc_waitAndExecute;
        };

        // Initial Delay
        [
            _code,
            [_code],
            60 * (30 + random 10)
        ] call CBA_fnc_waitAndExecute;
    }
] call CBA_fnc_waitUntilAndExecute;

