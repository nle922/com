//clean up variables for industry 610 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_carbonDioxide_Liquified
rename AO gp_v_carbonDioxide_Liquified
rename AP gp_q_carbonDioxide_Made
rename AQ gp_q_carbonDioxide_solid
rename AR gp_v_carbonDioxide_solid
rename AS gp_q_Acetylene
rename AT gp_v_Acetylene
rename AU gp_q_Pintsch
rename AV gp_v_Pintsch
rename AW gp_q_hydrocarbonGas_Other
rename AX gp_v_hydrocarbonGas_Other
rename AY gp_s_hydrocarbonGas_Other
rename AZ gp_q_Hydrogen 
rename BA gp_v_Hydrogen 
rename BB gp_q_Nitrogen 
rename BC gp_v_Nitrogen 
rename BD gp_q_NitrousOxide
rename BE gp_v_NitrousOxide
rename BF gp_q_Oxygen_liquefaction
rename BG gp_v_Oxygen_liquefaction
rename BH gp_q_Oxygen_Electrolytic 
rename BI gp_v_Oxygen_Electrolytic 
rename BJ gp_q_Sulphur_Dioxide
rename BK gp_v_Sulphur_Dioxide
rename BL gp_q_manufacturedGas_Other
rename BM gp_v_manufacturedGas_Other
rename BN gp_s_manufacturedGas_Other
rename BO gp_v_other1
rename BP gp_s_other1
rename BQ g000v
			 																							
