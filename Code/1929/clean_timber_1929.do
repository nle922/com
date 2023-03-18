*NLZ: Program to create and clean the 1929 timber data
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/311/1929_timber_Output 19102011.xls", sheet("Sheet1") cellrange(A3:ED2948) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//make all variable names lower case
foreach i of varlist *{
	local lower_name = lower("`i'")
	rename `i' `lower_name'
}

//rename identifying information variables 
rename industriescode industrycode
rename state state_timber
rename postoffice city_timber
rename county county_timber
rename i state_mill
rename city city_mill
rename k county_mill
rename nameof name_parent_firm
rename subsidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother

//rename employment variables
rename hoursperweek hours_per_wage_earner
rename male proprietors_male
rename female proprietors_female
rename ac officers_male
rename ad officers_female 
rename ae managers_male
rename af managers_female
rename ag wageearners_male
rename ah wageearners_female
rename av salaries_officers
rename aw salaries_managers
rename ax total_wages
rename ay total_wages_salaries

//rename some cost and output variables
rename timber cost_timber_cut
rename logsused cost_timber_cut_excess
rename miscellaneous cost_other
rename fuel cost_fuel
rename current cost_purchased_current
rename aggregate total_cost
rename quantity quantity_logs_produced
rename bh quantity_logs_used
rename bi quanity_logs_sold
rename value value_logs_sold
rename totalvalueofproducts total_output_value

//rename monthly wage earners variables
foreach i in "jan" "feb" "mar" "apr" "may" "june" "july" "aug" "sept" "oct" "nov" "dec" "total"{
	tostring `i', replace force
	replace `i' = "0" if `i'=="None"
	destring `i', replace force
	rename `i' wage_earners_`i'
}

//This renames the varlist to v`counter', which will make it easier to rename to products later
local counter = 1
foreach i of varlist bl-ds{
	rename `i' v`counter'
	local counter = `counter'+1
}

//rename the variable list v* to output variables (qt. and value)
local counter = 1
//list of trees
local trees "balsam_fir cedar douglas_fir cypress hemlock southern_pine spruce white_pine learch lodgepole_pine port_orford_cedar sugar_pine western_pine white_fir alder ash basswood beech birch chestnut cottonwood elm gum hickory maple oak sycamore tupelo walnut yellow_poplar"
foreach tree of local trees{
	forvalues i=1/2{ 
		if(`i'==1){
			rename v`counter' gp_q_`tree'
		}
		else{
			rename v`counter' gp_v_`tree'
		}
		local counter = `counter'+1
	}
}
//finish renaming all other products
rename specify all_other_specify_1
rename du all_other_quantity_1
rename dv all_other_value_1
rename dw all_other_specify_2
rename dx all_other_quantity_2
rename dy all_other_value_2
rename dz all_other_specify_3
rename ea all_other_quantity_3
rename eb all_other_value_3
rename ec total_value_logged
drop ed


//generate year variable
capture drop year
capture gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1929/timber_1929_clean", replace
