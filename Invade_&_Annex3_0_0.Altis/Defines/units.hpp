/*
@filename: enemyInd.hpp
Author:

	BACONMOP
	
Description:
	Units, vehicles and groups, for use elsewhere in the mission.
	Also allows greater control over what is being spawned, and where, yet allows for random composition groups.
	
	Sentry = 2-man
	Team = 4-man
	Squad = 8-man
__________________________________________________*/



class paraMil {
	units[] = {
		"I_C_Soldier_Para_7_F",
		"I_C_Soldier_Para_2_F",
		"I_C_Soldier_Para_3_F",
		"I_C_Soldier_Para_3_F",
		"I_C_Soldier_Para_4_F",
		"I_C_Soldier_Para_6_F",
		"I_C_Soldier_Para_8_F",
		"I_C_Soldier_Para_1_F",
		"I_C_Soldier_Para_5_F"
	};
	Helicopters[] = {
		"I_Heli_Transport_02_F",
		"I_Heli_light_03_F",
		"I_Heli_light_03_unarmed_F"
	};
};

class bandits {
	units[] = {
		"I_C_Soldier_Bandit_7_F",
		"I_C_Soldier_Bandit_3_F",
		"I_C_Soldier_Bandit_2_F",
		"I_C_Pilot_F",
		"I_C_Soldier_Bandit_5_F",
		"I_C_Soldier_Bandit_6_F",
		"I_C_Soldier_Bandit_1_F",
		"I_C_Soldier_Bandit_8_F",
		"I_C_Soldier_Bandit_4_F"
	};
	Helicopters[] = {
		"I_C_Heli_Light_01_civil_F"
	};
};

class FIAIndep {
	units[] = {
		"I_G_Soldier_A_F",
		"I_G_Soldier_AR_F",
		"I_G_medic_F",
		"I_G_engineer_F",
		"I_G_Soldier_exp_F",
		"I_G_Soldier_GL_F",
		"I_G_Soldier_M_F",
		"I_G_officer_F",
		"I_G_Soldier_F",
		"I_G_Soldier_LAT_F",
		"I_G_Soldier_lite_F",
		"I_G_Sharpshooter_F",
		"I_G_Soldier_SL_F",
		"I_G_Soldier_TL_F"
	};
	Helicopters[] = {
		"I_Heli_Transport_02_F",
		"I_Heli_light_03_F",
		"I_Heli_light_03_unarmed_F"
	};
};

class AAF {
	units[] = {
		"I_Soldier_A_F",
		"I_Soldier_AAR_F",
		"I_Soldier_AAA_F",
		"I_Soldier_AAT_F",
		"I_Soldier_AR_F",
		"I_medic_F",
		"I_engineer_F",
		"I_Soldier_exp_F",
		"I_Soldier_GL_F",
		"I_Soldier_M_F",
		"I_Soldier_AA_F",
		"I_Soldier_AT_F",
		"I_officer_F",
		"I_Soldier_repair_F",
		"I_soldier_F",
		"I_Soldier_LAT_F",
		"I_Soldier_lite_F",
		"I_Soldier_SL_F",
		"I_Soldier_TL_F"
	};
	Helicopters[] = {
		"I_Heli_Transport_02_F",
		"I_Heli_light_03_F",
		"I_Heli_light_03_unarmed_F"
	};
};

class CSAT{
	units[] = {
		"O_Soldier_A_F",
		"O_Soldier_AAR_F",
		"O_medic_F",
		"O_crew_F",
		"O_engineer_F",
		"O_soldier_exp_F",
		"O_HeavyGunner_F",
		"O_soldier_M_F",
		"O_Soldier_AA_F",
		"O_Soldier_AT_F",
		"O_officer_F",
		"O_soldier_repair_F",
		"O_Soldier_F",
		"O_Soldier_LAT_F",
		"O_Soldier_lite_F",
		"O_Sharpshooter_F",
		"O_Soldier_SL_F",
		"O_Soldier_TL_F",
		"O_Soldier_AR_F",
		"O_Soldier_GL_F"
	};
	Helicopters[] = {
		"O_Heli_Transport_04_bench_F",
		"O_Heli_Transport_04_covered_F",
		"O_Heli_Attack_02_F",
		"O_Heli_Attack_02_black_F",
		"O_Heli_Light_02_F",
		"O_Heli_Light_02_v2_F",
		"O_Heli_Light_02_unarmed_F"
	};
};

class CSATTropic {
	units[] = {
		"O_T_Soldier_A_F",
		"O_T_Soldier_AAR_F",
		"O_T_Soldier_AR_F",
		"O_T_Medic_F",
		"O_T_Engineer_F",
		"O_T_Soldier_Exp_F",
		"O_T_Soldier_GL_F",
		"O_T_Soldier_M_F",
		"O_T_Soldier_AA_F",
		"O_T_Soldier_AT_F",
		"O_T_Officer_F",
		"O_T_Soldier_Repair_F",
		"O_T_Soldier_F",
		"O_T_Soldier_LAT_F",
		"O_T_Soldier_TL_F"
	};
	Helicopters[] = {
		"O_Heli_Transport_04_bench_F",
		"O_Heli_Transport_04_covered_F",
		"O_Heli_Attack_02_F",
		"O_Heli_Attack_02_black_F",
		"O_Heli_Light_02_F",
		"O_Heli_Light_02_v2_F",
		"O_Heli_Light_02_unarmed_F"
	};
};

class FIAOpfor {
	units[] = {
		"O_G_Soldier_A_F",
		"O_G_Soldier_AR_F",
		"O_G_medic_F",
		"O_G_engineer_F",
		"O_G_Soldier_exp_F",
		"O_G_Soldier_GL_F",
		"O_G_Soldier_M_F",
		"O_G_officer_F",
		"O_G_Soldier_F",
		"O_G_Soldier_LAT_F",
		"O_G_Soldier_lite_F",
		"O_G_Sharpshooter_F",
		"O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F"
	};
	Helicopters[] = {
		"O_Heli_Transport_04_covered_F",
		"O_Heli_Light_02_F",
		"O_Heli_Light_02_v2_F",
		"O_Heli_Light_02_unarmed_F"
	};
};

class NATO {
	units[] = {
		"B_Soldier_A_F",
		"B_soldier_AAR_F",
		"B_soldier_AR_F",
		"B_medic_F",
		"B_soldier_exp_F",
		"B_Soldier_GL_F",
		"B_HeavyGunner_F",
		"B_soldier_M_F",
		"B_soldier_AA_F",
		"B_soldier_AT_F",
		"B_Soldier_F",
		"B_soldier_LAT_F",
		"B_Soldier_lite_F",
		"B_Sharpshooter_F",
		"B_Soldier_SL_F",
		"B_Soldier_TL_F",
		"B_officer_F",
		"B_soldier_repair_F"
	};
	Helicopters[] = {
		"B_CTRG_Heli_Transport_01_sand_F",
		"B_CTRG_Heli_Transport_01_tropic_F",
		"B_Heli_Transport_03_F",
		"B_Heli_Transport_03_unarmed_F",
		"B_Heli_Light_01_F",
		"B_Heli_Transport_01_F",
		"B_Heli_Transport_01_camo_F"
	};
};

class NATOTropic {
	units[] = {
		"B_T_Soldier_A_F",
		"B_T_Soldier_AR_F",
		"B_T_Medic_F",
		"B_T_Engineer_F",
		"B_T_Soldier_AAR_F",
		"B_T_Crew_F",
		"B_T_Soldier_Exp_F",
		"B_T_Soldier_GL_F",
		"B_T_soldier_M_F",
		"B_T_Soldier_AT_F",
		"B_T_Officer_F",
		"B_T_Soldier_Repair_F",
		"B_T_Soldier_F",
		"B_T_Soldier_LAT_F",
		"B_T_Soldier_SL_F",
		"B_T_Soldier_TL_F",
		"B_T_Soldier_AA_F"
	};
	Helicopters[] = {
		"B_CTRG_Heli_Transport_01_sand_F",
		"B_CTRG_Heli_Transport_01_tropic_F",
		"B_Heli_Transport_03_F",
		"B_Heli_Transport_03_unarmed_F",
		"B_Heli_Light_01_F",
		"B_Heli_Transport_01_F",
		"B_Heli_Transport_01_camo_F"
	};
};

class FIABlufor {
	units[] = {
		"B_G_Soldier_A_F,",
		"B_G_Soldier_AR_F",
		"B_G_medic_F",
		"B_G_engineer_F",
		"B_G_Soldier_GL_F",
		"B_G_officer_F",
		"B_G_Soldier_F",
		"B_G_Soldier_LAT_F",
		"B_G_Soldier_lite_F",
		"B_G_Sharpshooter_F",
		"B_G_Soldier_SL_F",
		"B_G_Soldier_TL_F",
		"B_G_Soldier_exp_F",
		"B_G_Soldier_M_F"
	};
	Helicopters[] = {
		"B_Heli_Light_01_F",
		"B_Heli_Transport_01_F",
		"B_Heli_Transport_01_camo_F"
	};
};

class CTRG {
	units[] = {
		"B_CTRG_Soldier_AR_tna_F",
		"B_CTRG_Soldier_Exp_tna_F",
		"B_CTRG_Soldier_JTAC_tna_F",
		"B_CTRG_Soldier_M_tna_F",
		"B_CTRG_Soldier_Medic_tna_F",
		"B_CTRG_Soldier_tna_F",
		"B_CTRG_Soldier_LAT_tna_F",
		"B_CTRG_Soldier_TL_tna_F"
	};
	Helicopters[] = {
		"B_CTRG_Heli_Transport_01_sand_F",
		"B_CTRG_Heli_Transport_01_tropic_F",
		"B_Heli_Transport_03_F",
		"B_Heli_Transport_03_unarmed_F",
		"B_Heli_Light_01_F",
		"B_Heli_Transport_01_F",
		"B_Heli_Transport_01_camo_F"
	};
};

class Gendarmerie {
	units[] = {
		"B_GEN_Commander_F",
		"B_GEN_Soldier_F"
	};
	Helicopters[] = {
		"B_Heli_Light_01_F"
	};
	cars[] = {
		"B_GEN_Offroad_01_gen_F"
	};
};