//Labeling variables for beverages industry (101)

//label output variables
local product_types "wort malt_liquors vinous_liquors brewers_grains malt_extract malt_sale ice_sale fruit_juice ice_cream yeast"

foreach product_type in `product_types'{
	local clean_product_type = proper(subinstr("`product_type'","_"," ", .))
	capture label var gp_q_`product_type' "Output: `clean_product_type', qt."
	capture label var gp_v_`product_type' "Output: `clean_product_type', value"
}

//label products with a size attached
local sizes = "6oz 8oz 12oz 16oz 24oz special bulk"
local drinks = "carbonated_beverage still_beverage cereal_beverage cider grape_juice"

foreach size in `sizes'{
	foreach drink in `drinks'{
		local clean_product_type = proper(subinstr("`drink'","_"," ", .))
		capture label var gp_q_`size'_`drink' "Output: `clean_product_type' `size', qt."
		capture label var gp_v_`size'_`drink' "Output: `clean_product_type' `size', value"
	}
}

//label input variables
local input_types "carbonic sugar corn_syrup coloring flavoring acids hops malt_purchased malt_extract crowns labels"

foreach input_type in `input_types'{
	local clean_product_type = proper(subinstr("`input_type'","_"," ", .))
	capture label var j_q_`input_type' "Input: `clean_product_type', qt."
	capture label var j_v_`input_type' "Input: `clean_product_type', value"
}

forvalues i=1/12{
	capture label var j_s_other`i' "Input: Other `i', specify"
	capture label var j_v_other`i' "Input: Other `i', value"
	capture label var j_q_other`i' "Input: Other `i', qt."
}

capture label var j_q_malt_consumed "Input: Malt produced and consumed in establishment, qt."
