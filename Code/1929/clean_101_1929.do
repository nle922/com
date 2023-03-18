//clean industry 101 for 1929. The complexities here are that products and inputs are just identified by specify variables. So these need to be 
//mapped into output and input variables based on those names

//these are lists of words to search for in "Specify" that identifies what kind of product it is
local search_word_carbonic = "Carbo"
local search_word_sugar= "Sug"
local search_word_flavoring = "Flavor"
local search_word_hops =  "Hops"
local search_word_coloring= "Coloring"
local search_word_acids ="Acids"
local search_word_corn_syrup ="Corn"
local search_word_malt_purchased ="Malt,p"
local search_word_malt_extract = "Malt, e"

//list of specify variables
local check_vars = "EU EX FA FD FG FJ FM FP FS FV"
//list of quantity variables
local q_vars = "EV EY FB FE FH FK FN FQ FT FW"
//list of cost variables
local v_vars = "EW EZ FC FF FI FL FO FR FU FX"
//list of inputs
local inputs ="carbonic sugar flavoring hops coloring acids corn_syrup malt_purchased malt_extract"


//clean up input variables 
foreach input_type in `inputs' {
	local counter = 1
	local word_length = length("`search_word_`input_type''")
	foreach var_to_check in `check_vars' { 
		//generate a flag for what type of input is
		gen flag`counter' = (substr(trim(`var_to_check'),1,`word_length') == "`search_word_`input_type''")
		replace `var_to_check' = "" if flag`counter'==1
		local ++counter
	}

	foreach var_letter in v q {
		//generate qt. and cost of inputs
		gen j_`var_letter'_`input_type' = "" 
		local counter = 1
		foreach var_to_check in ``var_letter'_vars'{
			//fill in values of this variable using the flags generated
			replace j_`var_letter'_`input_type' = `var_to_check' if flag`counter' == 1
			local ++counter
		}
	}
	drop flag*
}



//rename remaining other input variables
local counter =1
local letter = "s"
//varlist here is beginning and ending of list of variables check_vars and v_vars
foreach var_to_rename of varlist EU-FX{
	rename `var_to_rename' j_`letter'_other`counter'
	if "`letter'"=="v"{
		local ++counter
		local letter = "s"
	}
	else if "`letter'"=="s"{
		local letter = "q"
	}
	else if "`letter'"=="q"{
		local letter = "v"
	}
}

//rename fuel variables using same approach as input variables
drop ff*
local fuels = 1
//this is list of fuels to search for
foreach search_word in "Coal, a" "Coal, b" Coke Fuel Gas Nat Manu{
	local search_word_`fuels' = "`search_word'"
	local ++fuels
}

local check_vars  = "CP CT CX DB"
local q_vars = "CM CQ CU CY"
local v_vars = "CN CR CV CZ"
forvalues fuel = 1/`fuels'{
	local counter = 1
	local word_length = length("`search_word_`fuel''")
	foreach var_to_check in `check_vars' {
		gen flag`counter' = (substr(`var_to_check',1,`word_length') == "`search_word_`fuel''")
		replace `var_to_check' ="" if flag`counter'==1
		local ++counter
	}

	foreach var_letter in v q {
		local counter = 1
		foreach var_to_check in ``var_letter'_vars'{
			capture gen ff00`fuel'`var_letter' = ""
			replace ff00`fuel'`var_letter' = `var_to_check' if flag`counter' == 1
			local ++counter
		}
	}
	drop flag*
}

//drop fuel variables after extracting info
drop CM-DC
rename DD ff000c
rename DE gvadd

drop DF
drop DG


//clean up output variables not beverage related using same approach as for input variables
local search_word_malt_extract = "Malt e"
local search_word_malt_sale = "Malt m"
local search_word_brewers_grains = "Brea"
local search_word_ice_sale = "Ice m"
local search_word_fruit_juice = "Fruit j"

local check_vars = "DS DV DY EB EE"
local q_vars = "DQ DT DW DZ EC"
local v_vars = "DR DU DX EA ED"

foreach output_type in malt_extract malt_sale brewers_grains ice_sale fruit_juice{
	gen gp_q_`output_type' = ""
	gen gp_v_`output_type' = ""
	local counter = 1
	local word_length = length("`search_word_`output_type''")
	foreach var_to_check in `check_vars'{
		gen flag`counter' = (substr(`var_to_check',1,`word_length') == "`search_word_`output_type''")
		local ++counter
	}
	
	foreach var_letter in v q {
		local counter = 1
		foreach var_to_check in ``var_letter'_vars'{
			replace gp_`var_letter'_`output_type' = `var_to_check' if flag`counter' == 1
			local ++counter
		}
	}
	drop flag*
}


gen flag1 = (substr(DH,1,4) == "Carb")
gen gp_q_6oz_carbonated_beverage = ""
replace gp_q_6oz_carbonated_beverage = DI if flag1 == 1
gen gp_q_8oz_carbonated_beverage = ""
replace gp_q_8oz_carbonated_beverage = DJ if flag1 == 1
gen gp_q_12oz_carbonated_beverage = ""
replace gp_q_12oz_carbonated_beverage = DK if flag1 == 1
gen gp_q_16oz_carbonated_beverage = ""
replace gp_q_16oz_carbonated_beverage = DL if flag1 == 1
gen gp_q_24oz_carbonated_beverage = ""
replace gp_q_24oz_carbonated_beverage = DM if flag1 == 1
gen gp_q_bulk_carbonated_beverage = ""
replace gp_q_bulk_carbonated_beverage = DO if flag1 == 1
drop flag1

gen flag1 = (substr(DH,1,5) == "Still")
gen gp_q_6oz_still_beverage = ""
replace gp_q_6oz_still_beverage = DI if flag1 == 1
gen gp_q_8oz_still_beverage = ""
replace gp_q_8oz_still_beverage = DJ if flag1 == 1
gen gp_q_12oz_still_beverage = ""
replace gp_q_12oz_still_beverage = DK if flag1 == 1
gen gp_q_16oz_still_beverage = ""
replace gp_q_16oz_still_beverage = DL if flag1 == 1
gen gp_q_24oz_still_beverage = ""
replace gp_q_24oz_still_beverage = DM if flag1 == 1
gen gp_q_bulk_still_beverage = ""
replace gp_q_bulk_still_beverage = DO if flag1 == 1
drop flag1


/*

//rename remaining "other" output variables
local counter =1
local letter = "q"
//varlist here is beginning and ending of list of variables check_vars and v_vars
foreach var_to_rename of varlist DS-EE{
	rename `var_to_rename' gp_`letter'_other`counter'
	if "`letter'"=="s"{
		local ++counter
		local letter = "q"
	}
	else if "`letter'"=="v"{
		local letter = "s"
	}
	else if "`letter'"=="q"{
		local letter = "v"
	}
}

//rename output variables that are beverage related. have to handle both sizes and types of beverages
//split some variable names
local name_DI = "six_oz"
local name_DJ = "e_split"
local name_DK = "t_split"
local name_DL = "s_split"
local name_DM = "tw_split"
local name_DN = "special_split"
local name_DO = "bulk_split"
local vars_to_split = "DI DJ DK DL DM DN DO"

//split the words specifying the product and then will search for key words to identify product types and sizes
foreach var_to_split in `vars_to_split'{
	split `var_to_split', parse(",") gen(`name_`var_to_split'')
	foreach var_to_fix of varlist `name_`var_to_split''*{
		replace `var_to_fix' = subinstr(`var_to_fix', "(","",.)
		replace `var_to_fix' = subinstr(`var_to_fix', ")","",.)
		replace `var_to_fix' = trim(`var_to_fix')
	}
}


//clean up more output variables
local sizes = "6oz 8oz 12oz 16oz 24oz special bulk"
local types = "carbonated_beverage still_beverage cereal_beverage cider grape_juice"
local word_carbonated_beverage = "Carb"
local word_still_beverage = "Still"
local word_cereal_beverage = "Cereal"
local word_cider ="Cider"
local word_grape_juice ="Grape"

//follow same strategy as for inputs and other products. generate flags to identify observations that match and then generate variables to store the values
foreach type in `types'{
	local word_length = length("`word_`type'")
	gen flag`type' = (substr(DH,1,`word_length') == "`word_`type'")

	foreach size in `sizes'{
		gen gp_q_`size'_`type' = ""
	}
	drop flag*
}

//split output into proper size and product groups
local triples_cereal =`""special_split Cere special" "bulk_split Cere bulk" "six_oz Cere 6oz" "e_split Cere 8oz" "t_split Cere 12oz" "s_split Cere 16oz" "tw_split Cere 24oz""'
local triples_carbonated = `""bulk_split Card bulk" "tw_split Carb 240z" "special_split Carb special" "six_oz Carb 6oz" "six_oz Caro 6oz" "e_split Carb size" "t_split Carb 120z" "s_split Carb 16oz""'
local triples_still = `""bulk_split Stil bulk" "special_split Stil special" "tw_split Stil 24oz" "six_oz Stil 6oz" "e_split Stil 8oz" "t_split Stil 12oz" "s_split Stil 16ox""'
local triples_cider = `""bulk_split Cide bulk" "tw_split Cide 24oz" "special_split Cide special" "tw_split Cide 12oz" "s_split Cide 16oz" "six_oz Cide 6oz" "e_split Cide 8oz""'
local triples_grape_juice = `""special_split Gap special" "bulk_split Grab bulk" "tw_split Grap 24oz" "six_oz Grap 6oz" "e_split Grap 8oz" "t_split Grap 12oz" "s_split Grap 16oz""'

foreach type in `types'{
	foreach triple in `triples_`type''{
		tokenize `triple'
		local kind = "`1'"
		local word = "`2'"
		local size = "`3'"
		local word_length = length("`word'")
		unab vars: `kind'*
		forvalues counter = 1/`: word count `vars'' {
			replace gp_q_`size'_`type' = word(`kind'`counter',3) if (substr(`kind'`counter',1,`word_length') == "`word'")
		}
	}
}
*/



//Value of total beverages produced
rename DP gp_v_beverages
label var gp_v_beverages "Output: Beverages, value"

//drop these variables after having parsed them
drop DH `vars_to_split'
foreach var_to_split in `vars_to_split'{
	drop `name_`var_to_split''*
}



//final cleaning
rename EG ag006
rename EH ag007
rename EI as004
rename EJ as005
rename EK bp001
rename EL bm001
drop EM
rename EN e005m
rename EO e005f
rename EP e004s
drop EQ
rename ER ewemt
rename ES g000v
rename ET g001v
rename FY f000

//rename capital variables
rename FZ z_horse_number
rename GA z_horse_capacity
rename GB z_gasoline_number
rename GC z_gasoline_capacity 
rename GD z_electric_number
rename GE z_electric_capacity
rename GF z_ice_compression_number 
rename GG z_ice_compression_capacity
rename GH z_ice_absorption_number
rename GI z_ice_absorption_capacity
rename GJ z_crowns

//Not sure why these are dropped?
drop EF
drop GK 
drop GL 
drop GM 
drop GN
