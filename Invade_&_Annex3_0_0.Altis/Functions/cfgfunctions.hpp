class AW
{
	tag = "AW";
	class functions
	{
		file = "functions";
	};
	
	class vehicleFunctions
	{
		file = "functions\Vehicle";
		class vsetup02 {};
		class vmonitor {};
		class vBasemonitor {};
		class baseHunter {};
		class SMhintSUCCESS {};
	};
	
	class unitFunctions
	{
		file = "functions\Units";
		class setskill1 {};
		class setskill2 {};
		class setskill3 {};
		class setskill4 {};
        class buildingDefenders {};
        class underwaterBuildingDefenders {};
        class cqbPlacement {};
		class underwaterTangos {};
		class ai_spawn {};
		class smenemyeast {};
		class smenemyeastintel {};
		class airCav {};
	};
	
	class supportFunctions
	{
		file = "functions\Supports";
		class createCas {};
		class createOrdenanceStrike {};
		class ArtyStrike {};
		class supportRequest {};
		class airfieldJet {};
	};
	
	class locationFunctions
	{
		file = "functions\Location";
		class findWaterLocation {};
		class getAo {};
		class getDefAO {};
		class getDefFrom {};
		class getEnemyAO {};
	};
	
	class messageFunctions
	{
		file = "functions\Messages";
		class globalHint {};
		class globalnotification {};
	};
	
	class cleanupFunctions
	{
		file = "functions\Cleanup";
		class smdelete {};
		class aodelete {};
	};
	
	class baseFunctions
	{
		file = "functions\Base";
		class BaseManager {};
	};
	
	class miscFunctions
	{
		file = "functions\Misc";
		class aoenemy {};
		class aaCampPlacement {};
		class objGrabber {};
		class sideMissionCamp {};
		class addScore {};
		class conditionuh80turretactionlockl {};
		class conditionuh80turretactionlockr {};
		class conditionuh80turretactions {};
		class conditionuh80turretactionunlockl {};
		class conditionuh80turretactionunlockr {};
		class conditionuh80turretcontrol {};
		class addaction {};
		class addactiongetintel {};
		class addactionsurrender {};
		class taskPatrol {};
	};
};

class derp
{
	tag = "derp";
	class arsenalFunctions
	{
		file = "functions\Arsenal";
		class findItemList {};
		class gearLimitations {};
		class Va_filter {};
		class vaserver {};
	};
	
	class CBA {
        file = "functions\portedFuncs\cba";
        class pfhPreInit { preInit = 1; };
        class addPerFrameHandler {};
        class removePerFrameHandler {};
        class execNextFrame {};
        class waitAndExecute {};
        class waitUntilAndExecute {};
        class pfhPostInit { postInit = 1; };
        class getTurret {};
    };

    class ACE3 {
        file = "functions\portedFuncs\ace3";
        class progressBar {};
    };
	
	class AI {
        file = "functions\AI";
        class mainAOSpawnHandler {};
        class AISkill {};
        class AIOccupyBuilding {};
		class arrayShuffle {};
    };
};

class derp_revive {

	tag = "derp_revive";
    class Revive {
        file = "functions\revive";
        class onPlayerKilled {};
        class onPlayerRespawn {};
        class executeTemplates {};
        class switchState {};
        class reviveTimer {};
        class reviveActions {};
        class startDragging {};
        class startCarrying {};
        class dragging {};
        class carrying {};
        class dropPerson {};
        class hotkeyHandler {};
        class uiElements {};
        class animChanged {};
        class drawDowned {};
    };
};