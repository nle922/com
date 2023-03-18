//rename variables for industry 1502 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_Locomotives_steam		
rename AO gp_v_Locomotives_steam	
rename AP gp_q_Locomotives_electric	
rename AQ gp_v_Locomotives_electric
rename AR gp_v_Repairs_locomotives	
rename AS gp_v_otherCorps_locomotives
rename AT gp_v_all_other_locomotives
rename AU gp_v_Locomotive_dept_Total
rename AV gp_q_passenger_steam_wood	 
rename AW gp_q_passenger_steam_steelUF
rename AX gp_q_passenger_steam_steelBody
rename AY gp_q_passenger_steam_steelAll
rename AZ gp_v_passenger_steam
rename BA gp_q_passenger_electric_wood	 
rename BB gp_q_passenger_electric_steelUF
rename BC gp_q_passenger_electric_steelBod
rename BD gp_q_passenger_electric_steelAll
rename BE gp_v_passenger_electric
rename BF gp_q_freight_steam_wood	 
rename BG gp_q_freight_steam_steelUF	 
rename BH gp_q_freight_steam_steelBody
rename BI gp_q_freight_steam_steelAll
rename BJ gp_v_freight_steam	 
rename BK gp_q_freight_electric_wood	 
rename BL gp_q_freight_electric_steelUF	 
rename BM gp_q_freight_electric_steelBody	 
rename BN gp_q_freight_electric_steelAll	 
rename BO gp_v_freight_electric
rename BP gp_q_other_steam_wood	 
rename BQ gp_q_other_steam_steelUF	 	 
rename BR gp_q_other_steam_steelBody
rename BS gp_q_other_steam_steelAll	 
rename BT gp_v_other_steam
rename BU gp_q_other_electric_wood	 
rename BV gp_q_other_electric_steelUF	 
rename BW gp_q_other_electric_steelBody 
rename BX gp_q_other_electric_steelAll	 
rename BY gp_q_other_electric
rename BZ gp_v_trainCar_Repairs
rename CA gp_v_trainCar_Repairs_other_corp
rename CB gp_v_trainCar_Repairs_All_other
rename CC gp_v_trainCar_Repairs_Total
rename CD gp_v_bridges_Repairs
rename CE gp_v_bridges_other_corps
rename CF gp_v_bridges_other_work	
rename CG gp_v_bridges_Total
rename CH gp_v_All_other
rename CI gp_v_shop_Total

rename CJ ewemt
