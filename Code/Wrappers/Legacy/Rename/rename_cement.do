//renames variables of cement industry //renames variables of malt industry 
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/cement_all.dta", replace

//tostring variables for consistency
tostring *, replace force

//rename and label some cement specific variables
capture rename capacity z_capacity
capture rename construction_contracts zconstruction_contracts 
capture rename consumption_cement_rock j_cr
capture rename marketID z_marketID
capture rename process zprocess

//rename estab and firm ID variables for cement
capture rename firmid_cement plantid_cement
capture rename firmid_cement xfirmid_cement 
capture rename plantid_cement xplantid_cement

//rename and label output variables for cement
capture rename masonry_cement_quantity gp_q_mc
capture rename masonry_cement_value gp_v_mc
capture rename natural_cement_quantity gp_q_nc
capture rename natural_cement_value gp_v_nc
capture rename portland_cement_quantity gp_q_pc
capture rename portland_cement_value gp_v_pc
capture rename puzzolan_cement_quantity gp_n_puc
capture rename puzzolan_cement_value gp_v_puc

//put products into proper categories. 
local key_words_mc = "Masonry"
local key_words_nc = "Natural"
local key_words_pc = "Portland"
local key_words_puc = "Puzzolan"

//count number of kind variables
unab kinds: kind_cement_*
local num_kinds: word count `kinds'

tempvar product_match
gen `product_match' = 0

//first generate output variables
foreach product in mc nc pc puc {
	capture gen gp_q_`product' = ""
	capture gen gp_v_`product' = ""	
	//go thorugh list of all kind variables
	forvalues i = 1/`num_kinds' {		
		replace `product_match' = 0
		//identify which of kinds goes to which products
		foreach key_word in `key_words_`product'' {
			replace  `product_match' = regexm(kind_cement_`i', "`key_word'") if  `product_match' == 0
		}
		//fill in values of quantities and values
		replace gp_q_`product' = quantity_cement_`i' if  `product_match' & gp_q_`product' ==""
		replace gp_v_`product' = value_cement_`i' if  `product_match' & gp_v_`product' == ""
		
		//make these values blank since values have been moved over
		replace value_cement_`i' = "" if  `product_match' & gp_v_`product' == ""
		replace quantity_cement_`i' = "" if  `product_match' & gp_q_`product' == ""
		replace kind_cement_`i' = "" if  `product_match' & gp_v_`product' == ""
	}	
}
drop `product_match'

//rename general cement products
forvalues i=1/4{
	capture rename kind_cement_`i' gp_s_cementGeneral`i'
	label var gp_s_cementGeneral`i' "Output: General Cement `i', Specify"
	capture rename value_cement_`i' gp_v_cementGeneral`i'
	label var gp_v_cementGeneral`i' "Output: General Cement `i', Value"
	capture rename quantity_cement_`i' gp_q_cementGeneral`i'
	label var gp_q_cementGeneral`i' "Output: General Cement `i', Qt."
}

//rename other products
unab others: other_product*_value
local num_others: word count `others'

forvalues i =1/`num_others'{
	capture rename other_product`i'_value gp_v_allOther`i'
	capture rename other_product`i'_specify gp_s_allOther`i'
	capture rename other_product`i'_quantity gp_q_allOther`i'
}

unab others: other_product_value_*
local num_othersB: word count `others'
forvalues i =1/`num_othersB'{
	local iPlusOthers = `i' + `num_others'
	capture rename other_product_value_`i' gp_v_allOther`iPlusOthers'
	capture rename other_product_specify_`i' gp_s_allOther`iPlusOthers'
	capture rename other_product_quantity_`i' gp_q_allOther`iPlusOthers'
}

//drop some useless variables
capture drop v108
capture drop notes
capture drop note



//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label cement vars
do "$rootDir_code/Label/label_cement_vars"
//this save is important
save "$rootDir_dataLegacy/Complete/cement_all.dta", replace

//merge in estab and firm IDs
do "$rootDir_code/General/merge_estabs_legacy" "cement" 1002
label var estabid_cement "Estab ID, Cement" 
//save updated version of data and will overwrite again below
save "$rootDir_dataLegacy/Complete/cement_all.dta", replace
do "$rootDir_code/General/merge_firms_legacy" "cement" 1002
label var firmid_cement "Firm ID, Cement" 

//Additional fixes to data. These come from clean_all_cement, which was used to generate this dataset used in the paper by Chicu et al. (2012)
destring gp_v_pc gp_q_pc estabid_cement year e005s, replace force
replace gp_q_pc = 322329 if estabid_cement==31 & year==1933
replace gp_v_pc = 383075 if estabid_cement==31 & year==1933
replace gp_q_pc = 233427 if ag002=="Wampum" & ag001=="Pennsylvania" & year==1933
replace gp_v_pc = 263378 if ag002=="Wampum" & ag001=="Pennsylvania" & year==1933
replace gp_q_pc = 184803 if ag002=="York" & ag001=="Pennsylvania" & year==1933
replace gp_v_pc = 245484 if ag002=="York" & ag001=="Pennsylvania" & year==1933
replace gp_q_pc = 1240948 if ag002=="Colton" & ag001=="California" & year==1933
replace gp_v_pc = 1867396 if ag002=="Colton" & ag001=="California" & year==1933
replace gp_q_pc = 786770 if ag002=="Speed" & ag001=="Indiana" & year==1933
replace gp_v_pc = 969118 if ag002=="Speed" & ag001=="Indiana" & year==1933
replace gp_q_pc = 305398 if ag002=="Superior" & ag001=="Ohio" & year==1933
replace gp_v_pc = 351207 if ag002=="Superior" & ag001=="Ohio" & year==1933
replace gp_q_pc = 434377 if a001=="Southwestern Portland Cement Company" & ag001=="Ohio" & year==1933
replace gp_v_pc = 590313 if a001=="Southwestern Portland Cement Company" & ag001=="Ohio" & year==1933
replace gp_q_pc = 290884 if a001=="Southwestern Portland Cement Company" & ag001=="Texas" & year==1933
replace gp_v_pc = 525177 if a001=="Southwestern Portland Cement Company" & ag001=="Texas" & year==1933
replace gp_q_pc = 312245 if estabid_cement==89 & year==1929
replace gp_q_pc = 511976 if estabid_cement==9 & year==1935
replace gp_q_pc = 312245 if year==1929 & estabid_cement==89
replace gp_q_pc = 511976 if year==1935 & estabid_cement==9
replace gp_q_pc = 652061 if year==1929 & estabid_cement==62
replace gp_q_pc = 714250 if year==1929 & estabid_cement==68
replace gp_q_pc = 960319 if year==1929 & estabid_cement==153
replace gp_q_pc = 293487 if year==1933 & estabid_cement==113
replace gp_v_pc = 394756 if year==1933 & estabid_cement==113
replace gp_q_pc = 322329 if year==1933 & estabid_cement==32
replace gp_v_pc = 383075 if year==1933 & estabid_cement==32
replace gp_v_pc = 186782 if year==1933 & estabid_cement==145
replace gp_v_pc = 208877 if estabid_cement==172 & year==1933
replace gp_q_pc = 142803 if estabid_cement==172 & year==1933
replace gp_q_pc = 401726 if	year==1929 & estabid_cement==12
replace gp_v_pc = 763434 if	year==1929	& estabid_cement==12
replace gp_q_pc = 852061 if	year==1929	& estabid_cement==62
replace gp_v_pc = 2179964 if year==1929	& estabid_cement==62
replace gp_q_pc = 714950 if	year==1929	& estabid_cement==68
replace gp_v_pc = 1299361 if	year==1929	& estabid_cement==68
replace gp_q_pc = 713395 if	year==1929	& estabid_cement==89
replace gp_v_pc = 1310137 if	year==1929	& estabid_cement==89
replace gp_q_pc = 455923 if	year==1929	& estabid_cement==142
replace gp_v_pc = 709667	if	year==1929	& estabid_cement==142
replace gp_q_pc = 760319 if	year==1929	& estabid_cement==153
replace gp_v_pc = 1507593 if	year==1929	& estabid_cement==153
replace gp_q_pc = 480000 if	year==1929	& estabid_cement==181
replace gp_v_pc = 629000	if	year==1929	& estabid_cement==181
replace gp_q_pc = 322329 if	year==1933	& estabid_cement==32
replace gp_v_pc = 383075	if	year==1933	& estabid_cement==32
replace gp_q_pc = 848384 if	year==1933	& estabid_cement==88
replace gp_v_pc = 590983	if	year==1933	& estabid_cement==88
replace gp_q_pc = 293487 if	year==1933	& estabid_cement==113
replace gp_v_pc = 394756	if	year==1933	& estabid_cement==113
replace gp_q_pc = 511976 if	year==1935	& estabid_cement==9
replace gp_v_pc = 850719 if	year==1935	& estabid_cement==9

replace e005s = 37022 if estabid_cement == 67 & year == 1929 & e005s == 84546                                

//Need to merge together estabid_cement=123 and 124 in 1929. 
gen id_foo = (estabid_cement==123|estabid_cement==124) & year==1929
bysort id_foo: egen portland_cement_value_large = total(gp_v_pc) 
bysort id_foo: egen portland_cement_quantity_large = total(gp_q_pc) 
replace portland_cement_quantity = portland_cement_quantity_large if id_foo==1
replace portland_cement_value = portland_cement_value_large if id_foo==1
drop if estabid_cement==124 & year==1929
drop id_foo portland_cement_value_large portland_cement_quantity_large

drop if estabid_cement==179 & year==1933
replace estabid_cement= 10000 if estabid_cement==1 & year==1933
replace estabid_cement = 181 if estabid_cement==123 & year==1933
replace estabid_cement = 123 if estabid_cement==1 & year==1931
replace estabid_cement = 123 if estabid_cement==1 & year==1935
replace estabid_cement = 123 if estabid_cement==10000 & year==1933
replace estabid_cement = 90 if estabid_cement==203 & year==1935 & a002=="North American Cement Corp."
replace estabid_cement = 10000 if year==1933 & estabid_cement==123
replace estabid_cement = 123 if year==1933 & estabid_cement==181
replace estabid_cement = 139 if estabid_cement==184
replace estabid_cement = 181 if year==1933 & estabid_cement==10000

//Merge in the capacities data
merge 1:1 estabid_cement year using "$rootDir_dataStata/Legacy/1929/cement_capacities.dta"
drop if _merge==2
drop _merge

drop if estabid_cement==180
replace capacity = 6000 if estabid_cement==2 & year==1929
replace capacity = 6500 if estabid_cement==2 & year==1933
replace capacity = 5300 if estabid_cement==32 & year==1933
replace capacity = 4000 if estabid_cement==42 & year==1933
replace capacity = 4000 if estabid_cement==42 & year==1929
replace capacity = 3000 if estabid_cement==75 & year==1929
replace capacity = 3300 if estabid_cement==75 & year==1933
replace capacity = 2775 if estabid_cement==119 & year==1933
replace capacity = 6700 if year==1933 & estabid_cement==139
rename capacity z_capacity

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "1002" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_cement" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state names
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "1002"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//put variables in order
aorder *

save "$rootDir_dataLegacy/Complete/cement_all.dta", replace
