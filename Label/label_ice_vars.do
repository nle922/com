//label variables for ice industry

//capital variables
local hp_ranges "10_20 20_30 30_50 50_100 100_more less_than_10 total_capacity"
foreach i in `hp_ranges'{
	capture label var  z_absorption_`i' "Absorption: HP `i'"
	capture label var  z_compression_`i' "Compression: HP `i'"
}

local types "electric gasoline horsedrawn"
foreach i in `types'{
	capture label var z_delivery_`i'_number "Number of Delivery Vehicles: `i'"
}

//label output variables
forvalues i =1/3{
	capture label var gp_n_general`i' "Output: General Product `i', Name"
	capture label var gp_v_general`i' "Output: General Product `i', value"
}

local outputs "can_distilled can_raw plate_raw plate_distilled"
foreach i in `outputs'{
	capture  label var gp_q_`i' "Output: `i', qt" 
	capture  label var gp_v_`i' "Output: `i', value"
 }
 
capture label var gp_v_coldstorage "Output: Coldstorage, receipts"
capture label var gp_v_plate "Output: Total plate ice, value"
capture label var gp_v_can "Output: Total can ice, value"

//input variables
local inputs "ammonia calcium_chloride sodium_chloride"
foreach i in `inputs'{
	capture label var j_v_`i' "Input: `i', value"
	capture label var j_q_`i' "Input: `i', qt"
}
capture label var j_v_water "Input: water, value"
