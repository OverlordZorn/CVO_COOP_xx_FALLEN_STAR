// Cfg Functions - https://community.bistudio.com/wiki/CfgFunctions
class CfgFunctions {
    class mission // TAG
    {

        class Mission // Category
        {
            class diary { preInit = 1; };
            class babel_init { postInit = 1; };
            
            class init_intel { postInit = 1; };
            
            class compass { postInit = 1; };
            class postInit { postInit = 1; };
            class athomsphereClues { postInit = 1; };
        };
        class Common // Category
        {
            // class example {};
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
