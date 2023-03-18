//label industry codes. Update this as new industries are added.

//Note that not all of 1303 is radio, and it varies by year. So we have created a new industry category for it (99999)
label define industry_codes ///
	101 "Beverages" ///	Non-durable 
	118 "Ice cream" ///	Non-durable 
	119 "Ice, manufactured" /// Non-durable
	121 "Macaroni" /// Non-durable
	122 "Malt" /// Non-durable
	130 "Sugar, cane" /// Non-durable
	131 "Sugar, refining" /// Non-durable
	216 "Cotton goods" /// Non-durable
	237 "Linoleum" /// Durable
	311 "Lumber and timber products" /// Durable
	312 "Matches" ///  Non-durable
	314 "Planing mills" ///Durable
	606 "Bone black" ///  Non-durable
	631 "Soap" /// Non-durable
	705 "Petroleum refining" ///  Non-durable
	803 "Rubber tires" /// Durable
	1002 "Cement" /// Durable
	1005 "Concrete products" /// Durable
	1008 "Glass" /// Durable
	1110 "Blast furnaces" /// Durable
	1112 "Steel works" ///  Durable
	1301 "Agricultural implements" /// Durable
	1401 "Aircraft and parts" /// Durable
	1408 "Motor vehicles" /// Durable
	1608 "Cigars and cigarettes" /// Non-durable
	99999 "Radio equipment" /// Durable

rename z_indCode industry_code_num
replace industry_code_num = "99999" if industry_code_num == "RADIO"
replace industry_code_num = "1408" if industry_code_num == "AUTO"
destring industry_code_num, replace
label values industry_code_num industry_codes
label var industry_code_num "Industry (CoM code)"
label save industry_codes using "$rootDir_code/Label/indlabel", replace


//define durable vs. non-durable industry categories
gen durable = .
label var durable "Durable goods industry"
//Non-durable goods
local non_durable_industries 101 118 119 121 122 130 131 216 1608 631 312 606 705
foreach non_durable_industry in `non_durable_industries'{
	replace durable = 0 if industry_code_num == `non_durable_industry'
}
//Durable goods
local durable_industries 1002 1301 1401 1408 1112 1110 1008 1005 237 803 314 311 99999
foreach durable_industry in `durable_industries' {
	replace durable = 1 if industry_code_num==`durable_industry'
}

//define tradeable vs. non-tradeable industry categories based on weight / value 
//gen tradeable = .


//generate SIC codes from CoM codes
gen sic_code = .	
label var sic_code "Industry SIC Code"	
quietly replace sic_code = 2086 if industry_code_num== 101 	//beverages
quietly replace sic_code = 2024 if industry_code_num== 118 	//ice cream
quietly replace sic_code = 2097 if industry_code_num== 119	//manufactured ice
quietly replace sic_code = 2098 if industry_code_num== 121	//macaroni and pasta
quietly replace sic_code = 2083 if industry_code_num== 122	//malt
quietly replace sic_code = 2061 if industry_code_num== 130	//cane sugar except refining
quietly replace sic_code = 2062 if industry_code_num== 131	//cane sugar regining
quietly replace sic_code = 2211 if industry_code_num== 216	//cotton mills
quietly replace sic_code = 3996 if industry_code_num== 237	//lineoleum
quietly replace sic_code = 399904 if industry_code_num== 312	//matches
quietly replace sic_code = 2421 if industry_code_num== 314	//planing mills (SIC includes sawmills)
quietly replace sic_code = . if industry_code_num== 606		//cannot find bone black or bone char 
quietly replace sic_code = 2841 if industry_code_num== 631	//soap
quietly replace sic_code = 2911 if industry_code_num== 705	//petroleum refining
quietly replace sic_code = 3011 if industry_code_num== 803	//tires
quietly replace sic_code = 3241 if industry_code_num== 1002	//cement
quietly replace sic_code = 3272 if industry_code_num== 1005	//concrete (possibly 3271 instead?)
quietly replace sic_code = 322 if industry_code_num== 1008	//glass
quietly replace sic_code = 3312 if industry_code_num== 1110	//blast furnaces
quietly replace sic_code = 3312 if industry_code_num== 1112	//steel works 
quietly replace sic_code = 3523 if industry_code_num== 1301	//agricultural implements
quietly replace sic_code = 372 if industry_code_num== 1401	//aircraft and parts 
quietly replace sic_code = 3361 if industry_code_num== 1408	//motor vehicles (possibly should be 336)
quietly replace sic_code = . if industry_code_num== 1606		//2111 (cigarettes) and 2121 (cigars)

