//Cleaning script for BR spreadsheet: 1110_1935. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/1110"
import excel "`data_dir'/111035A1_PDSPL.xls", allstring sheet("111035A1")  clear

drop in 1/2 //first row is blank and seocnd row is variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture rename C filenm1
capture rename D filenm2
capture rename E id
capture rename F tempid
capture rename G comment
capture rename H statenm
capture rename I cntynm
capture rename J citynm
capture rename K indarea
capture rename L indnm
capture rename M formnm
capture rename N how_many_p
capture rename O a_plntname
capture rename P b_ownrname
capture rename Q incyn
capture rename R ctlotryn
capture rename S a004
capture rename T state
capture rename U city
capture rename V f_county
capture rename W street
capture rename X h_othraddr
capture rename Y i_incityyn
capture rename Z j_sbsdryyn
capture rename AA mthrinfo
capture rename AB k_nmchngyn
capture rename AC as002
capture rename AD owchngyn
capture rename AE as004
capture rename AF frmrinfo
capture rename AG a_products
capture rename AH b_mtlsusd1
capture rename AI mtlsusd2

//rename utilization variables
capture rename AJ d001
capture rename AK d008
capture rename AL d004
capture rename AM d006
capture drop AN
capture drop AO

//rename employment variables
capture rename AP b_salaried
capture rename AQ offcslry
capture rename AR e003c
capture rename AS e003tas
capture rename AT d_technica
capture rename AU e003tes
capture rename AV cmar
capture rename AW cjun
capture rename AX csep
capture rename AY cdec
capture rename AZ e003tcs
capture drop BA //diffn
capture drop BB
capture drop BC
capture drop BD diffw
capture rename BE nonwenm
capture rename BF totlslry

//rename wage earners variables
capture rename BG wejannm
capture rename BH wemaynm
capture rename BI wesepnm
capture rename BJ wefebnm
capture rename BK wejunnm
capture rename BL weoctnm
capture rename BM wemarnm
capture rename BN wejulnm
capture rename BO wenovnm
capture drop BP //diff
capture rename BQ weaprnm
capture rename BR weaugnm
capture rename BS wedecnm
capture drop BT
capture rename BU wetotlnm
capture rename BV e005s
capture rename BW e005sp

capture drop BX //xm1
capture drop BY //xm1wenm
capture drop BZ //xm3
capture drop CA //xm3wenm
capture drop CB //xm5
capture drop CC //xm5wenm
capture drop CD //xm2
capture drop CE //xm2wenm
capture drop CF //xm4
capture drop CG //xm4wenm
capture drop CH //xm6
capture drop CI //xm6wenm

//rename manhours variables
capture rename CJ emh01
capture rename CK emh02
capture rename CL emh03
capture rename CM emh04
capture rename CN emh05
capture rename CO emh06
capture rename CP emh07
capture rename CQ emh08
capture rename CR emh09
capture rename CS emh10
capture rename CT emh11
capture rename CU emh12
capture drop CV //diff1
capture drop CW
capture rename CX emht

//rename costs of inputs variables
capture rename CY f005z
capture rename CZ f005f
capture rename DA f001
capture rename DB f002
capture rename DC f003
capture rename DD f004
capture drop DE
capture rename DF totlcost
capture rename DG f009


//rename output variables
capture rename DH gp_q_coke_ip
capture rename DI gp_v_coke_ip
capture rename DJ gp_q_coke_fs
capture rename DK gp_v_coke_fs
capture rename DL gp_v_coke
capture rename DM gp_q_charcoal_ip
capture rename DN gp_v_charcoal_ip
capture rename DO gp_q_charcoal_fs
capture rename DP gp_v_charcoal_fs
capture rename DQ gp_v_charcoal
capture rename DR gp_s_otherfuel1
capture rename DS gp_q_otherfuel1_ip
capture rename DT gp_v_otherfuel1_ip
capture rename DU gp_q_otherfuel1_fs
capture rename DV gp_v_otherfuel1_fs
capture rename DW gp_v_otherfuel2
capture rename DX gp_s_otherfuel2
//MISSING A FEW OUTPUT VARIABLES HERE
capture rename DZ gp_q_pigiron_foundry_ip
capture rename EA gp_q_pigiron_foundry_fs
capture rename EB gp_q_pigiron_basic_ip
capture rename EC gp_q_pigiron_basic_fs
capture rename ED gp_q_pigiron_bessemer_ip
capture rename EE gp_q_pigiron_bessemer_fs
capture rename EF gp_q_pigiron_lowPhosphorus_ip
capture rename EG gp_q_pigiron_lowPhosphorus_fs
capture rename EH gp_q_pigiron_malleable_ip
capture rename EI gp_q_pigiron_malleable_fs
capture rename EJ gp_q_pigiron_forge_ip
capture rename EK gp_q_pigiron_forge_fs
capture rename EL gp_q_pigiron_white_ip
capture rename EM gp_q_pigiron_white_fs
capture rename EN gp_q_directCasting_pipe_ip
capture rename EO gp_q_directCasting_pipe_fs
capture rename EP gp_q_directCasting_other_ip
capture rename EQ gp_q_directCasting_other_fs
capture rename ER gp_q_spiegeleisen_consumption_ip
capture rename ES gp_q_spiegeleisen_fs
capture rename ET gp_v_spiegeleisen
capture rename EU gp_q_ferromanganese_ip
capture rename EV gp_q_ferromanganese_fs
capture rename EW gp_v_ferromanganese
capture rename EX gp_q_ferrophosphorus_ip
capture rename EY gp_q_ferrophosphorus_fs
capture rename EZ gp_v_ferrophosphorus
capture rename FA gp_q_ferrosillicon_ip
capture rename FB gp_q_ferrosillicon_fs
capture rename FC gp_v_ferrosillicon
capture rename FD gp_q_ferroalloy_other_ip
capture rename FE gp_q_ferroalloy_other_fs
capture rename FF gp_v_ferroalloy_other
capture rename FJ gp_q_machine_cast
capture rename FK gp_q_sand_cast
capture rename FL gp_q_chill_cast
capture rename FM gp_q_delivered_molton

save "$rootDir_dataBR/1935/1110/1110_1935_clean", replace

//now clean C\B spreadsheets
do "$rootDir_code/1935/clean_1110_1935_B"

//merge with existing dataset
clear
use "$rootDir_dataBR/1935/1110/1110_1935_clean", replace
merge 1:1 record using "$rootDir_dataBR/1935/1110/1110_1935_clean_B"
//this should really be a 1-1 mapping
drop _merge

//rename "common" set of variables
do "$rootDir_code/General/basic_rename"

//make sure indCode is consistent
capture replace z_indCode = "1110"

//fix some mistakes in the ids
do "$rootDir_code/1935/fix_estabids_1110_1935"

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace

save "$rootDir_dataBR/1935/1110/1110_1935_clean", replace
