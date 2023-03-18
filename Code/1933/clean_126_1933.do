//relabel industry 126 for year 1933
//Globals referenced: rootDir_code

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//There is no separate template for this industry-year, all firms use the general schedule
do "$rootDir_code/1933/rename_common_1933_formA.do"

//full list of products
local products="Chickens Ducks Geese Turkeys Dressed_Other Poultry_canned_whole Poultry_canned_parts Chicken_potted Chicken_broth Feathers Rabbits Poultry_Other1 Poultry_Other2 Poultry_Other3"

//products to relabel
local Turkey_products = `""DRESSED POULTRY (TURKEYS)" "40 CARS DRESSED TURKEYS" "50 CARS DRESSED TURKEYS" "12 CARS DRESSED TURKEYS" "20 CARS DRESSED TURKEYS" "28 CARS DRESSED TURKEYS (POUNDS)" "30 CAR DRESSED TURKEYS" "DRESSED TURKEYS" "LIVE & DRESSED TURKEYS" "KILLING & DRESSING TURKEYS""'
local Geese_products = "GEESE"
local Feathers_products =`""FEATHER SALES" "FEATHERS""'
local Chicken_broth_products = `""CHICKEN BROTH" "CANNED CHICKEN SOUP" "BOUILLON CUBES & EXTRACTS""'
local Poultry_canned_whole_products = "CANNED CHICKEN"
local Poultry_canned_parts_products = `""CHICKEN ALA KING IN TIN CANS" "CANNED CHICKEN PRODUCTS, SOUPS" "CANNED CHICKEN PRODUCTS" "BONELESS CHICKEN IN GLASS JARS" "BONELESS CHICKEN IN TIN CANS" "CANNED CHICKEN (PARTS)" "CANNED CHICKEN IN GLASS AND TIN""'
local Poultry_Other1_products = `""MISCL-BY-PRODUCTS" "PLUM PUDDING" "CANNED EGGS" "FEED" "HIDES & WOLL" "HIDES" "FROZEN EGGS, SHELL EGGS & LIVE POULTRY" "EGGS""'
local Ducks_products = `""DRESSED DUCKS" "DRESSED DUCKS & GEESE" "DRESSED DUCKS & GEESE & TURKEYS" "DUCK, GEASSE" "DUCKS" "DUCKS & GEESE" "DUCKS AND GEEESE" "DUCKS, GEESE GUINEAS""'
local Chickens_products = `""BONED CHICKEN" "CHICKENS" "CHICKENS & BOWL" "CHICKENS DUCKS TURKEYS" "CHICKENS, DUCKS, GEESE, TURKEYS" "DR. POULTRY" "DRESSED & SHIPPED" "DRESSED CHICKENS" "DRESSED CHICKENS (LBS)" "DRESSED POULTRY" "DRESSED POULTRY & TURKEYS" "DRESSED POULTRY (90% CHICKENS 1090 TU.." "DRESSED POULTRY ESTIMATED" "DRESSED POULTRY POUNDS" "DRESSED POULTRY, ESTIMATED" "DSD POULTRY" "FOWL" "FOWL AND CHICKENS" "KILLED POULTRY" "KILLING & DRESSING POULTRY" "LIVE & DRESSED POULTRY" "LIVE POULTRY" "LIVE POULTRY DRESSED FOR RESALE" "LIVE POULTRY KILLING" "POLUTRY" "POULTRY""'

local products_to_fix = "Poultry_Other1 Turkey Geese Feathers Chicken_broth Poultry_canned_whole Poultry_canned_parts Chickens Ducks"

//generate some product variables
foreach product in `products'{
	foreach letter in u q v {
		gen gp_`letter'_`product'=""
	}
}

gen gp_s_Dressed_Other = ""
gen gp_s_Poultry_canned_whole = ""
gen gp_s_Poultry_canned_parts = ""
gen gp_s_Rabbits = ""
gen gp_s_Poultry_Other1 = ""
gen gp_s_Poultry_Other2 = ""
gen gp_s_Poultry_Other3 = ""
drop gp_u_Poultry_Other*

forvalues i=1/4{
	replace gp_s_prod`i'=upper(gp_s_prod`i')
}

//replace values depending on the type of product specified
foreach product_to_fix in `products_to_fix'{
	foreach prod_value in ``product_to_fix'_products'{
		forvalues i=1/4{
			replace gp_q_`product_to_fix' = gp_q_prod`i' if gp_s_prod`i'=="`prod_value'"
			replace gp_v_`product_to_fix' = gp_v_prod`i' if gp_s_prod`i'=="`prod_value'"
		}
	}
}

//rename other product variables to other output variables
forvalues i = 1/4{
	rename gp_s_prod`i' gp_s_Other`i'
	rename gp_q_prod`i' gp_q_Other`i'
	rename gp_v_prod`i' gp_v_Other`i'
}

rename BG ewemt
