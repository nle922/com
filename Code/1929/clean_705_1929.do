//Cleaning script for BR spreadsheet: 705_1929. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $rootDir_code .
//Globals referenced: $rootDir_sheets, $rootDir_

local data_dir = "$rootDir_sheets/1929/705"
import excel "`data_dir'/070529A0_PDSPL.xls", allstring sheet("070529A0") clear

drop in 2 //this is row with variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture rename C fileno1
capture rename D fileno2
capture rename E tempid
capture rename F comment
capture rename G statenm
capture rename H cntynm
capture rename I citynm
capture rename J indnm
capture rename K formnm
capture rename L plntname
capture rename M ownrname
capture rename N incyn
capture rename O state
capture rename P city
capture rename Q county
capture rename R street
capture rename S ag008
capture rename T incityyn
capture rename U othrcity
capture rename V nwplntyn
capture rename W nmchngyn
capture rename X lnchngyn
capture rename Y owchngyn
capture rename Z bschngyn
capture rename AA frmrinfo
capture rename AB sbsdryyn
capture rename AC mthrinfo
capture rename AD products
capture rename AE mtlsusd1
capture rename AF mtlsusd2
capture rename AG bgndt3
capture rename AH enddt3

//rename utilization variables
capture rename AI d001
capture rename AJ d002
capture rename AK d003
capture rename AL d004
capture rename AM d005
capture rename AN d006
capture rename AO d007

capture rename AP pttminf2

//rename employment variables
capture rename AQ empldate
capture rename AR e001m
capture rename AS e001f
capture rename AT e002m
capture rename AU e002f
capture rename AV e003m
capture rename AW e003f
capture rename AX nonwenm
capture rename AY fnnwenm
capture drop AZ
capture drop BA
capture rename BB e005m
capture rename BC e005f
capture drop BD
capture rename BE wetotal
capture rename BF wejanuary
capture rename BG wefebruary
capture rename BH wemarch
capture rename BI weapril
capture rename BJ wemay
capture rename BK wejune
capture rename BL wejuly
capture rename BM weaugust
capture rename BN weseptembe
capture rename BO weoctober
capture rename BP wenovember
capture rename BQ wedecember
capture rename BR offcslry
capture rename BS b_salaries
capture rename BT c_wages_pa
capture drop BU
capture rename BV e009s
capture rename BW mtlusdyn
capture rename BX mtlpcdyn

//make the ff00up variable consistent with ours
gen f00up = ""
replace f00up = "Used" if mtlusdyn == "Yes"
replace f00up = "Purchased" if mtlpcdyn == "Yes"
drop mtlusdyn mtlpcdyn

//rename fuel variables
capture rename BY f001
capture rename BZ f002
capture rename CA f003
capture drop CB
capture rename CC f009

//rename output variables
capture rename CD gp_q_gasoline
capture rename CE gp_v_gasoline
capture rename CF gp_q_naphtha
capture rename CG gp_v_naphtha
capture rename CH gp_q_benzine
capture rename CI gp_v_benzine
capture rename CJ gp_q_tops
capture rename CK gp_v_tops
capture rename CL gp_s_otherLightDistillate1
capture rename CM gp_q_otherLightDistillate1
capture rename CN gp_v_otherLightDistillate1
capture rename CO gp_s_otherLightDistillate2
capture rename CP gp_q_otherLightDistillate2
capture rename CQ gp_v_otherLightDistillate2
capture rename CR gp_s_otherLightDistillate3
capture rename CS gp_q_otherLightDistillate3
capture rename CT gp_v_otherLightDistillate3
capture rename CU gp_q_illuminating_oil
capture rename CV gp_v_illuminating_oil
capture rename CW gp_q_distillates
capture rename CX gp_v_distillates
capture rename CY gp_q_gas_oils
capture rename CZ gp_v_gas_oils
capture rename DA gp_q_residual_fuel_oils
capture rename DB gp_v_residual_fuel_oils
capture rename DC gp_q_above_fuel_oil
capture rename DD gp_v_above_fuel_oil
capture rename DE gp_q_at_fuel_oil
capture rename DF gp_v_at_fuel_oil
capture rename DG gp_q_below_fuel_oil
capture rename DH gp_v_below_fuel_oil
capture rename DI gp_q_red_lubricating_oil
capture rename DJ gp_v_red_lubricating_oil
capture rename DK gp_q_black_lubricating_oil
capture rename DL gp_v_black_lubricating_oil
capture rename DM gp_q_paraffin //this is a guess
capture rename DN gp_v_paraffin
capture rename DO gp_q_all_other_lubricating_oil
capture rename DP gp_v_all_other_lubricating_oil
capture rename DQ gp_q_liquid_asphalt
capture rename DR gp_v_liquid_asphalt
capture rename DS gp_q_residuum_or_tar
capture rename DT gp_v_residuum_or_tar
capture rename DU gp_q_petrolatum
capture rename DV gp_v_petrolatum
capture rename DW gp_q_petrolatum_lubricating
capture rename DX gp_v_petrolatum_lubricating
capture drop DY
capture rename DZ gp_q_axle_grease
capture rename EA gp_v_axle_grease
capture rename EB gp_q_paraffin_wax
capture rename EC gp_v_paraffin_wax
capture rename ED gp_q_acid_oil
capture rename EE gp_v_acid_oil
capture rename EF gp_q_asphalt_other
capture rename EG gp_v_asphalt_other
capture rename EH gp_q_coke
capture rename EI gp_v_coke
capture rename EJ gp_q_acid_oil_reclaimed
capture rename EK gp_v_acid_oil_reclaimed
capture rename EL gp_q_candles
capture rename EM gp_v_candles
capture rename EN gp_q_insecticides
capture rename EO gp_v_insecticides
capture rename EP gp_q_otherRefinery1
capture rename EQ gp_v_otherRefinery1
capture rename ER gp_v_allOtherProducts
capture rename ES contract_work
capture drop ET EU

save "$rootDir_dataBR/1929/705/705_1929", replace

//now clean B spreadsheets
do "$rootDir_code/1929/clean_705_1929_B"

//merge with existing dataset
clear
use "$rootDir_dataBR/1929/705/705_1929", replace
merge 1:1 record using "$rootDir_dataBR/1929/705/705_1929_clean_B"
//this should really be a 1-1 mapping
drop _merge

capture drop year
gen year = 1929
//rename variables consistent with CK naming convention
do "$rootDir_code/General/basic_rename"
//tostring all variables to make sure consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1929/705/705_1929", replace
