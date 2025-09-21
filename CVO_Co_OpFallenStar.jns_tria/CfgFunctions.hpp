// Cfg Functions - https://community.bistudio.com/wiki/CfgFunctions
class CfgFunctions {
    class mission // TAG
    {

        class init // Category
        {
            class init_babel { postInit = 1; };
            class init_compass { postInit = 1; };

            class init_diary { postInit = 1; };
            class init_intel { postInit = 1; };
            
            class init_mission_start { postInit = 1; };
            class init_missionLayersDisable { postInit = 1; };

            class init_removeMaps { preInit = 1; };
            
            class init_reportReady { postInit = 1; };
            class init_whiteboards { postInit = 1; };
            
            class postInit { postInit = 1; };
        };
        class Common // Category
        {
            class giveCBRNKit {};
            class playerCutscene {};
            class skipTimeTo {};
            class teleportPlayer {};
        };
    };

    class cbrn {
        tag="cbrn";
        class functions {
            file = "scripts\cbrn\functions";
            class preInit { preInit = 1; };
            class postInit{ postInit = 1; };
            class startOxygen {};
            class addZone {};
            class createZone {};
            class threatPFH {};
            class handleDamage {};
            class toggleShower {};
            class setUpDeconShower {};
            class getFatigue {};
            class detectorBeepPFH {};
            class detectorGeigerPFH {};
            class checkOxygen {};
            class loadoutEH {};
            class fogPFH {};
        };
    };
};
