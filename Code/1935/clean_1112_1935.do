//Cleaning script for BR spreadsheet: 1112_1935. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/1112"
import excel "`data_dir'/111235A0.xls", allstring sheet("111235A0") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture rename C filenm1
capture rename D filenm2
capture rename E tempid
capture rename F comment
capture rename G statenm
capture rename H cntynm
capture rename I citynm
capture rename J indarea
capture rename K indnm
capture rename L formnm
capture rename M firm_code
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
capture rename AC lnchngyn
capture rename AD owchngyn
capture rename AE bschngyn
capture rename AF frmrinfo
capture rename AG a_products
capture rename AH b_mtlsusd1
capture rename AI mtlsusd2

//rename utilization variables
capture rename AJ d001
capture rename AK d008
capture rename AL d004
capture rename AM d006

//rename employment variables
capture rename AN a_propriet
capture rename AO b_salaried
capture rename AP offcslry
capture rename AQ supervisors
capture rename AR e003tas
capture rename AS d_technica
capture rename AT techwgs
capture rename AU cmar
capture rename AV cjun
capture rename AW csep
capture rename AX cdec
capture rename AY e003tcs
capture drop AZ
capture drop BA
capture rename BB number
capture rename BC wages4
capture drop BD //diffn
capture drop BE //diffw
capture rename BF wejannm
capture rename BG wemaynm
capture rename BH wesepnm
capture rename BI wefebnm
capture rename BJ wejunnm
capture rename BK weoctnm
capture rename BL wemarnm
capture rename BM wejulnm
capture rename BN wenovnm
capture rename BO weaprnm
capture rename BP weaugnm
capture rename BQ wedecnm
capture rename BR ewemt
capture drop BS
capture drop BT //diff
capture rename BU e005s
capture rename BV e005sp

capture drop BW //xm1
capture drop BX //xm1wenm
capture drop BY //xm3
capture drop BZ //xm3wenm
capture drop CA //xm5
capture drop CB //xm5wenm
capture drop CC //xm2
capture drop CD //xm2wenm
capture drop CE //xm4
capture drop CF //xm4wenm
capture drop CG //xm6
capture drop CH //xm6wenm

//rename manhours variables
capture rename CI emh01
capture rename CJ emh02
capture rename CK emh03
capture rename CL emh04
capture rename CM emh05
capture rename CN emh06
capture rename CO emh07
capture rename CP emh08
capture rename CQ emh09
capture rename CR emh10
capture rename CS emh11
capture rename CT emh12
capture rename CU emht
capture drop CV
capture drop CW //diff1

//rename costs of inputs variables
capture rename CX f005z
capture rename CY f005f
capture rename CZ f001
capture rename DA f002
capture rename DB f003
capture rename DC cost_of_co
capture drop DD
capture rename DE f004
capture rename DF f009

//not exactly sure why all of these are being dropped
capture drop DG
capture drop DH
capture drop DI
capture drop DJ
capture drop DK
capture drop DL
capture drop DM
capture drop DN
capture drop DO
capture drop DP
capture drop DQ
capture drop DR
capture drop DS
capture drop DT
capture drop DU
capture drop DV
capture drop DW
capture drop DX

replace record = upper(record)
save "$rootDir_dataBR/1935/1112/1112_1935_clean", replace

//now clean B spreadsheets
do "$rootDir_code/1935/clean_1112_1935_B"



//merge with existing dataset
clear
use "$rootDir_dataBR/1935/1112/1112_1935_clean", replace
merge 1:1 record using "$rootDir_dataBR/1935/1112/1112_1935_clean_B"
//this should really be a 1-1 mapping
drop _merge

//now clean C spreadsheets
save "$rootDir_dataBR/1935/1112/1112_1935_clean", replace

do "$rootDir_code/1935/clean_1112_1935_C"

//merge with existing dataset
clear
use "$rootDir_dataBR/1935/1112/1112_1935_clean", replace
merge 1:1 record using "$rootDir_dataBR/1935/1112/1112_1935_clean_C"
//this should really be a 1-1 mapping
drop _merge

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1935/1112/1112_1935_clean", replace
