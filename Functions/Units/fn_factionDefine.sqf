/*
Author: BACONMOP
Description: for defining the faction
*/

if (AW_PARAM_MainEnemyFaction == 1) then {
	mainFaction = "CSAT";
};
if (AW_PARAM_MainEnemyFaction == 2) then {
	mainFaction = "CSATTropic";
};
if (AW_PARAM_MainEnemyFaction == 3) then {
	mainFaction = "AAF";
};
if (AW_PARAM_MainEnemyFaction == 4) then {
	mainFaction = "paraMil";
};
if (AW_PARAM_MainEnemyFaction == 5) then {
	mainFaction = "bandits";
};
if (AW_PARAM_MainEnemyFaction == 6) then {
	mainFaction = "FIAIndep";
};
if (AW_PARAM_MainEnemyFaction == 7) then {
	mainFaction = "FIAOpfor";
};

if (AW_PARAM_SecondaryEnemyFaction == 1) then {
	secondaryMainFaction = "CSAT";
};
if (AW_PARAM_SecondaryEnemyFaction == 2) then {
	secondaryMainFaction = "CSATTropic";
};
if (AW_PARAM_SecondaryEnemyFaction == 3) then {
	secondaryMainFaction = "AAF";
};
if (AW_PARAM_SecondaryEnemyFaction == 4) then {
	secondaryMainFaction = "paraMil";
};
if (AW_PARAM_SecondaryEnemyFaction == 5) then {
	secondaryMainFaction = "bandits";
};
if (AW_PARAM_SecondaryEnemyFaction == 6) then {
	secondaryMainFaction = "FIAIndep";
};
if (AW_PARAM_SecondaryEnemyFaction == 7) then {
	secondaryMainFaction = "FIAOpfor";
};

publicVariable "mainFaction";
publicVariable "secondaryMainFaction";