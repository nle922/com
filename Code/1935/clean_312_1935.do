//Cleaning script for BR spreadsheet: 312_1935. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/312"
import excel "`data_dir'/031235A0.xls", allstring sheet("031235A0") clear

drop in 1 //first row is variables names
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
capture rename M a_plntname
capture rename N b_ownrname
capture rename O incyn
capture rename P ctlotryn
capture rename Q a004
capture rename R state
capture rename S city
capture rename T f_county
capture rename U street
capture rename V h_othraddr
capture rename W i_incityyn
capture rename X j_sbsdryyn
capture rename Y mthrinfo
capture rename Z as001
capture rename AA as002
capture rename AB as003
capture rename AC as004
capture rename AD as005
capture rename AE a_products
capture rename AF b_mtlsusd1
capture rename AG mtlsusd2

//rename utilization variables
capture rename AH d001
capture rename AI d008
capture rename AJ d004
capture rename AK d006

//rename employmentvariables
capture rename AL a_propriet
capture rename AM wages
capture rename AN b_salaried
capture rename AO offcslry
capture rename AP c_supervis
capture rename AQ e003tas
capture rename AR d_technica
capture rename AS techwgs
capture rename AT cmar
capture rename AU cjun
capture rename AV csep
capture rename AW cdec
capture rename AX e003tcs
capture drop AY
capture drop AZ
capture rename BA nonwenm
capture rename BB nonwegs
capture drop BC //diff
capture drop BD //diff1
capture rename BE wejannm
capture rename BF wemaynm
capture rename BG wesepnm
capture rename BH wefebnm
capture rename BI wejunnm
capture rename BJ weoctnm
capture rename BK wemarnm
capture rename BL wejulnm
capture rename BM wenovnm
capture rename BN weaprnm
capture rename BO weaugnm
capture rename BP wedecnm
capture drop BQ
capture rename BR wetotlnm
capture rename BS diff2
capture rename BT e005s
capture rename BU e005sp

capture drop BV //xm1
capture drop BW //xm1wenm
capture drop BX //xm3
capture drop BY //xm3wenm
capture drop BZ //xm5
capture drop CA //xm5wenm
capture drop CB //xm2
capture drop CC //xm2wenm
capture drop CD //xm4
capture drop CE //xm4wenm
capture drop CF //xm6
capture drop CG //xm6wenm

//rename costs of inputs variables
capture rename CH f001
capture rename CI f002
capture rename CJ f003
capture drop CK //diff3
capture drop CL
capture rename CM f009
capture rename CN f004

//rename output variables
capture rename CO gp_u_match_boxes_100
capture rename CP gp_q_match_boxes_100
capture rename CQ gp_v_match_boxes_100
capture rename CR gp_u_match_boxes_ls10
capture rename CS gp_q_match_boxes_ls10
capture rename CT gp_v_match_boxes_ls10
capture rename CU gp_u_match_boxes_ls10_1
capture rename CV gp_q_match_boxes_ls10_1
capture rename CW gp_v_match_boxes_ls10_1
capture rename CX gp_u_match_boxes_ls10_2
capture rename CY gp_q_match_boxes_ls10_2
capture rename CZ gp_v_match_boxes_ls10_2
capture rename DA gp_u_match_books
capture rename DB gp_q_match_books
capture rename DC gp_v_match_books
capture rename DD gp_u_allOther
capture rename DE gp_q_allOther
capture rename DF gp_v_allOther
capture drop DG 
capture rename DH receipts_for_contract_work
capture drop DI
capture drop DJ //val6
capture drop DK //diff4
capture rename DL total_manufactured_output
capture rename DM total_output_value
capture rename DN totalpm
capture rename DO totalem

capture drop DP /remark1
capture drop DQ //remark2
capture drop DR //remark3
capture drop DS //remark4
capture drop DT //remark5
capture drop DU //remark6
capture drop DV //remark7
capture rename DW tothp
capture rename DX hp001n

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace

save "$rootDir_dataBR/1935/312/312_1935", replace