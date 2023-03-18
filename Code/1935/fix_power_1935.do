//Program to fix the power variables for 1935 ice (entered into spreadsheet in odd fashion)

tempvar temp_location_not
tempvar num_new_var

local list_engine_nums steamenginenumber steamturbinesnumber diesselandsemidieselengines internalcombustionenginesnumb waterwheelsnumber
local list_engine_hp steamenginehorsepower steamturbineshorsepower diesselandsemidieselengineshp internalcombustionengineshors waterwheelshorsepower
local list_ck_numbers 1 2 5 6 4 

//A few entries which have extra commas in them and screw up the split
replace diesselandsemidieselengineshp = "1-45 (Generator Units), 125 (Not Driving Generators)" if diesselandsemidieselengineshp == "1-120, 1-45 (Generator Units), 125 (Not Driving Generators)"
replace diesselandsemidieselengineshp = "50(Generator Units), 187.5 (Not Driving Generators)" if diesselandsemidieselengineshp == "100, 37.5, 50(Generator Units), 187.5 (Not Driving Generators)"

//Loop over the five different kinds of power (number)
local count_ck_num = 1
foreach var_to_fix of local list_engine_nums{
	local ck_num : word `count_ck_num' of `list_ck_numbers'
	split `var_to_fix', parse(",")
		local num_split = `r(nvars)' 
		gen hp00`ck_num'gn = ""
		gen hp00`ck_num'on = ""
		if `num_split' == 2{		//This is the normal case, where there are some entries with both non-electrical and electrical motors
			foreach v in `var_to_fix'1 `var_to_fix'2{
				gen `temp_location_not' = strpos(`v', "Not")
				replace hp00`ck_num'gn = `v' if `v' ~= "" & `temp_location_not' == 0
				replace hp00`ck_num'on = `v' if `v' ~= "" & `temp_location_not' ~= 0
				drop `temp_location_not'
			}
			drop `var_to_fix'1 `var_to_fix'2
		}
		if `num_split' == 1{		//Catches case (water) where there are no plants with both
			gen `temp_location_not' = strpos(`var_to_fix'1, "Not")
			replace hp00`ck_num'gn = `var_to_fix'1 if `var_to_fix'1 ~= "" & `temp_location_not' == 0
			replace hp00`ck_num'on = `var_to_fix'1 if `var_to_fix'1 ~= "" & `temp_location_not' ~= 0
			drop `temp_location_not'
			drop `var_to_fix'1 
		}
	local count_ck_num = `count_ck_num' + 1
	drop `var_to_fix'
}

//Then loop over the five kinds of power (horsepower), could possibly combine into one loop		
local count_ck_num = 1
foreach var_to_fix of local list_engine_hp{
	local ck_num : word `count_ck_num' of `list_ck_numbers'
	split `var_to_fix', parse(",")
		local num_split = `r(nvars)' 
		gen hp00`ck_num'gh = ""
		gen hp00`ck_num'oh = ""
		if `num_split' == 2{
			foreach v in `var_to_fix'1 `var_to_fix'2{
				gen `temp_location_not' = strpos(`v', "Not")
				replace hp00`ck_num'gh = `v' if `v' ~= "" & `temp_location_not' == 0
				replace hp00`ck_num'oh = `v' if `v' ~= "" & `temp_location_not' ~= 0
				drop `temp_location_not'
			}
			drop `var_to_fix'1 `var_to_fix'2
		}
		if `num_split' == 1{
			gen `temp_location_not' = strpos(`var_to_fix'1, "Not")
			replace hp00`ck_num'gh = `var_to_fix'1 if `var_to_fix'1 ~= "" & `temp_location_not' == 0
			replace hp00`ck_num'oh = `var_to_fix'1 if `var_to_fix'1 ~= "" & `temp_location_not' ~= 0
			drop `temp_location_not'
			drop `var_to_fix'1 
		}
	local count_ck_num = `count_ck_num' + 1
	drop `var_to_fix'
}

//Drops the extraneous text in the power variables
foreach v of varlist hp001gn-hp004oh{
	egen num_new_var = sieve(`v'), char(0123456789)
	drop `v'
	rename num_new_var `v' 
}
