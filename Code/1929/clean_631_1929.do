//Cleaning script for BR spreadsheet: 631_1929. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $rootDir_code .
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1929/631"
import excel "`data_dir'/063129A1.xls", allstring sheet("063129A1") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "B"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture rename C fileno1
capture rename D fileno2
capture rename E tempid
capture rename F statenm
capture rename G cntynm
capture rename H citynm
capture rename I indnm
capture rename J formnm
capture rename K plntname
capture rename L ownrname
capture rename M incyn
capture rename N state
capture rename O city
capture rename P county
capture rename Q street
capture rename R ag008
capture rename S incityyn
capture rename T othrcity
capture rename U nwplntyn
capture rename V nmchngyn
capture rename W lnchngyn
capture rename X owchngyn
capture rename Y as004
capture rename Z frmrinfo
capture rename AA sbsdryyn
capture rename AB mthrinfo
capture rename AC products
capture rename AD mtlsusd1
capture rename AE mtlsusd2
capture rename AF bgndt3
capture rename AG enddt3

//rename utilization variables
capture rename AH d001
capture rename AI d002
capture rename AJ d003
capture rename AK d004
capture rename AL d005
capture rename AM d006
capture rename AN d007
capture rename AO pttminf2

//rename employment variables
capture rename AP empldate
capture rename AQ e001m
capture rename AR e001f
capture rename AS e002m
capture rename AT e002f
capture rename AU e003m
capture rename AV e003f
capture rename e002t
capture rename e003t
capture drop AY
capture drop AZ
capture rename BA //Column name: diff
capture rename BB //Column name: diff1
capture rename BC e005m
capture rename BD e005f
capture drop BE
capture rename BF wetotal
capture rename BG diff2
capture rename BH wejanuary
capture rename BI wefebruary
capture rename BJ wemarch
capture rename BK weapril
capture rename BL wemay
capture rename BM wejune
capture rename BN wejuly
capture rename BO weaugust
capture rename BP weseptembe
capture rename BQ weoctober
capture rename BR wenovember
capture rename BS wedecember
capture rename BT e002s
capture rename BU e003s
capture rename BV wages_paid
capture drop BW
capture rename BX e009s
capture drop BY //Column name: diff3

//fuel variables
capture rename BZ mtlusdyn
capture rename CA mtlpcdyn

//make the ff00up variable consistent with ours
gen f00up = ""
replace f00up = "Used" if mtlusdyn == "Yes"
replace f00up = "Purchased" if mtlpcdyn == "Yes"
drop mtlusdyn mtlpcdyn


capture rename CB f001
capture rename CC f002
capture rename CD f003
capture drop CE
capture rename CF f009
capture drop CG //Column name: diff4

//rename output variables
capture rename CH gp_q_toilet_soap
capture rename CI gp_v_toilet_soap
capture rename CJ gp_q_shaving_soap
capture rename CK gp_v_shaving_soap
capture rename CL gp_q_laundry_soap_white
capture rename CM gp_v_laundry_soap_white
capture rename CN gp_q_laundry_soap_yellow
capture rename CO gp_v_laundry_soap_yellow
capture rename CP gp_q_foot_soap
capture rename CQ gp_v_foot_soap
capture rename CR gp_q_soap_chip
capture rename CS gp_v_soap_chip
capture rename CT gp_q_granulated_soap
capture rename CU gp_v_granulated_soap
capture rename CV gp_s_other_hard_soap1
capture rename CW gp_q_other_hard_soap1
capture rename CX gp_v_other_hard_soap1
capture rename CY gp_s_other_hard_soap2
capture rename CZ gp_q_other_hard_soap2
capture rename DA gp_v_other_hard_soap2
capture rename DB gp_s_other_hard_soap3
capture rename DC gp_q_other_hard_soap3
capture rename DD gp_v_other_hard_soap3
capture rename DE gp_s_other_soap_powder1
capture rename DF gp_q_other_soap_powder1
capture rename DG gp_v_other_soap_powder1
capture rename DH gp_s_other_soap_powder2
capture rename DI gp_q_other_soap_powder2
capture rename DJ gp_v_other_soap_powder2
capture rename DK gp_s_other_soap_powder2
capture rename DL gp_q_other_soap_powder2
capture rename DM gp_v_other_soap_powder3
capture rename DN gp_q_liquid_soap
capture rename DO gp_v_liquid_soap
capture rename DP gp_q_paste_soap
capture rename DQ gp_v_paste_soap
capture rename DR gp_q_soft_soap
capture rename DS gp_v_soft_soap
capture rename DT gp_s_other_soap1
capture rename DU gp_q_other_soap1
capture rename DV gp_v_other_soap1
capture rename DW gp_s_other_soap2
capture rename DX gp_q_other_soap2

save "$rootDir_dataBR/1929/631/631_1929", replace

//now clean B spreadsheets
do "$rootDir_code/1929/clean_631_1929_B"

//merge with existing dataset
clear
use "$rootDir_dataBR/1929/631/631_1929", replace
merge 1:1 record using "$rootDir_dataBR/1929/631/631_1929_clean_B"

//this should really be a 1-1 mapping
drop _merge

capture drop year
gen year = 1929
//rename variables consistent with CK naming convention
do "$rootDir_code/General/basic_rename"
//tostring all variables to make sure consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1929/631/631_1929", replace