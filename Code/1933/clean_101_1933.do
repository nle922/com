//clean industry 101 in year 1933
//Need to chck that the variable numbering is correct. For example, in line 44, should it be AR?


//rename non-beverage output variables
rename AZ gp_q_cereal
rename BA gp_v_cereal
rename BB gp_q_malt_liquors
rename BC gp_v_malt_liquors
rename BD gp_q_vinous_liquors
rename BE gp_v_vinous_liquors
rename BF gp_q_wort
rename BG gp_v_wort
rename BH gp_q_malt_extract
rename BI gp_v_malt_extract
rename BJ j_q_malt_consumed
rename BK gp_q_malt_sale
rename BL gp_v_malt_sale
rename BM gp_q_yeast
rename BN gp_v_yeast
rename BO gp_v_brewers_grains
rename BP gp_q_ice_sale
rename BQ gp_v_ice_sale
rename BR gp_q_grape_juice
rename BS gp_v_grape_juice
rename BT gp_q_fruit_juice
rename BU gp_v_fruit_juice
rename BV gp_s_other1
rename BW gp_v_other1
rename BX gp_s_other2
rename BY gp_v_other2
rename BZ gp_s_other3
rename CA gp_v_other3
rename CB gp_v_other4

rename CC g000v
rename CD c001
rename CE c002
rename CF Signature
rename CG ag005
rename CH Remarks
rename CI Notes
rename CJ bp001
rename CK bm001

rename CL e005t

//all of the remaining code parses the specifiy variables to identifyin what type of products are present
split AR, parse(",")gen (six_oz)
replace six_oz1 = subinstr(six_oz1, "(","",.)
replace six_oz1 = subinstr(six_oz1, ")","",.)
replace six_oz2 = subinstr(six_oz2, "(","",.)
replace six_oz2 = subinstr(six_oz2, ")","",.)

replace six_oz1 = trim(six_oz1)
replace six_oz2 = trim(six_oz2)

split AS, parse(",")gen(e_split)
replace e_split1 = subinstr(e_split1, "(","",.)
replace e_split1 = subinstr(e_split1, ")","",.)
replace e_split2 = subinstr(e_split2, "(","",.)
replace e_split2 = subinstr(e_split2, ")","",.)

replace e_split1 = trim(e_split1)
replace e_split2 = trim(e_split2)

split AT, parse(",")gen(t_split)
replace t_split1 = subinstr(t_split1, "(","",.)
replace t_split1 = subinstr(t_split1, ")","",.)
replace t_split2 = subinstr(t_split2, "(","",.)
replace t_split2 = subinstr(t_split2, ")","",.)

replace t_split1 = trim(t_split1)
replace t_split2 = trim(t_split2)

split AU, parse(",")gen(s_split)
replace s_split1 = subinstr(s_split1, "(","",.)
replace s_split1 = subinstr(s_split1, ")","",.)

replace s_split1 = trim(s_split1)

split AV, parse(",")gen(tw_split)
replace tw_split1 = subinstr(tw_split1, "(","",.)
replace tw_split1 = subinstr(tw_split1, ")","",.)
//replace tw_split2 = subinstr(tw_split2, "(","",.)
//replace tw_split2 = subinstr(tw_split2, ")","",.)

replace tw_split1 = trim(tw_split1)
//replace tw_split2 = trim(tw_split2)

split AW, parse(",")gen(bulk_split)
replace bulk_split1 = subinstr(bulk_split1, "(","",.)
replace bulk_split1 = subinstr(bulk_split1, ")","",.)
replace bulk_split2 = subinstr(bulk_split2, "(","",.)
replace bulk_split2 = subinstr(bulk_split2, ")","",.)

replace bulk_split1 = trim(bulk_split1)
replace bulk_split2 = trim(bulk_split2)

gen flag1 = (substr(AR,1,4) == "Carb")
gen gp_q_6oz_carbonated_beverage = ""
replace gp_q_6oz_carbonated_beverage = AS if flag1 == 1
gen gp_q_8oz_carbonated_beverage = ""
replace gp_q_8oz_carbonated_beverage = AT if flag1 == 1
gen gp_q_12oz_carbonated_beverage = ""
replace gp_q_12oz_carbonated_beverage = AU if flag1 == 1
gen gp_q_16oz_carbonated_beverage = ""
replace gp_q_16oz_carbonated_beverage = AV if flag1 == 1
gen gp_q_24oz_carbonated_beverage = ""
replace gp_q_24oz_carbonated_beverage = AW if flag1 == 1
gen gp_q_bulk_carbonated_beverage = ""
replace gp_q_bulk_carbonated_beverage = AX if flag1 == 1
drop flag1

gen dummy1 = (substr(six_oz1,1,4) == "Carb")
gen dummy2 = (substr(six_oz2,1,4) == "Carb")
gen flagcarb = word(six_oz1,3) if dummy1 == 1
replace flagcarb = word(six_oz2,3) if dummy2 == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(six_oz1,1,4) == "Caro")
gen dummy2 = (substr(six_oz2,1,4) == "Caro")
gen flagcarb = word(six_oz1,3) if dummy1 == 1
replace flagcarb = word(six_oz2,3) if dummy2 == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(e_split1,1,4) == "Carb")
gen dummy2 = (substr(e_split2,1,4) == "Carb")
gen flagcarb = word(e_split1,3) if dummy1 == 1
replace flagcarb = word(e_split2,3) if dummy2 == 1
replace gp_q_8oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_8oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(e_split1,1,4) == "Caro")
gen dummy2 = (substr(e_split2,1,4) == "Caro")
gen flagcarb = word(e_split1,3) if dummy1 == 1
replace flagcarb = word(e_split2,3) if dummy2 == 1
replace gp_q_8oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_8oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(t_split1,1,4) == "Carb")
gen dummy2 = (substr(t_split2,1,4) == "Carb")
gen flagcarb = word(t_split1,3) if dummy1 == 1
replace flagcarb = word(t_split2,3) if dummy2 == 1
replace gp_q_12oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_12oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(s_split1,1,4) == "Carb")
gen flagcarb = word(s_split1,3) if dummy1 == 1
replace gp_q_16oz_carbonated_beverage = flagcarb if dummy1 == 1
drop dummy1 flagcarb

gen dummy1 = (substr(tw_split1,1,4) == "Carb")
capture gen dummy2 = (substr(tw_split2,1,4) == "Carb")
gen flagcarb = word(tw_split1,3) if dummy1 == 1
capture replace flagcarb = word(tw_split2,3) if dummy2 == 1
replace gp_q_24oz_carbonated_beverage = flagcarb if dummy1 == 1
capture replace gp_q_24oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy* flagcarb

gen dummy1 = (substr(bulk_split1,1,4) == "Carb")
gen dummy2 = (substr(bulk_split2,1,4) == "Carb")
gen flagcarb = word(bulk_split1,3) if dummy1 == 1
replace flagcarb = word(bulk_split2,3) if dummy2 == 1
replace gp_q_bulk_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_bulk_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen flag1 = (substr(AR,1,5) == "Still")
gen gp_q_6oz_still_beverage = ""
replace gp_q_6oz_still_beverage = AS if flag1 == 1
gen gp_q_8oz_still_beverage = ""
replace gp_q_8oz_still_beverage = AT if flag1 == 1
gen gp_q_12oz_still_beverage = ""
replace gp_q_12oz_still_beverage = AU if flag1 == 1
gen gp_q_16oz_still_beverage = ""
replace gp_q_16oz_still_beverage = AV if flag1 == 1
gen gp_q_24oz_still_beverage = ""
replace gp_q_24oz_still_beverage = AW if flag1 == 1
gen gp_q_bulk_still_beverage = ""
replace gp_q_bulk_still_beverage = AX if flag1 == 1
drop flag1

gen dummy1 = (substr(six_oz1,1,4) == "Stil")
gen dummy2 = (substr(six_oz2,1,4) == "Stil")
gen flagcarb = word(six_oz1,3) if dummy1 == 1
replace flagcarb = word(six_oz2,3) if dummy2 == 1
replace gp_q_6oz_still_beverage = flagcarb if dummy1 == 1
replace gp_q_6oz_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(e_split1,1,4) == "Stil")
gen dummy2 = (substr(e_split2,1,4) == "Stil")
gen flagcarb = word(e_split1,3) if dummy1 == 1
replace flagcarb = word(e_split2,3) if dummy2 == 1
replace gp_q_8oz_still_beverage = flagcarb if dummy1 == 1
replace gp_q_8oz_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(t_split1,1,4) == "Stil")
gen dummy2 = (substr(t_split2,1,4) == "Stil")
gen flagcarb = word(t_split1,3) if dummy1 == 1
replace flagcarb = word(t_split2,3) if dummy2 == 1
replace gp_q_12oz_still_beverage = flagcarb if dummy1 == 1
replace gp_q_12oz_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(s_split1,1,4) == "Stil")
gen flagcarb = word(s_split1,3) if dummy1 == 1
replace gp_q_16oz_still_beverage = flagcarb if dummy1 == 1
drop dummy1 flagcarb

gen dummy1 = (substr(tw_split1,1,4) == "Stil")
capture gen dummy2 = (substr(tw_split2,1,4) == "Stil")
gen flagcarb = word(tw_split1,3) if dummy1 == 1
capture replace flagcarb = word(tw_split2,3) if dummy2 == 1
replace gp_q_24oz_still_beverage = flagcarb if dummy1 == 1
capture replace gp_q_24oz_still_beverage = flagcarb if dummy2 == 1
drop dummy* flagcarb

gen dummy1 = (substr(bulk_split1,1,4) == "Stil")
capture gen dummy2 = (substr(bulk_split2,1,4) == "Stil")
gen flagcarb = word(bulk_split1,3) if dummy1 == 1
capture replace flagcarb = word(bulk_split2,3) if dummy2 == 1
replace gp_q_bulk_still_beverage = flagcarb if dummy1 == 1
replace gp_q_bulk_still_beverage = flagcarb if dummy2 == 1
drop dummy* flagcarb


/*
split AY, parse(",")gen (value)
replace value1 = subinstr(value1, "(","",.)
replace value1 = subinstr(value1, ")","",.)
replace value2 = subinstr(value2, "(","",.)
replace value2 = subinstr(value2, ")","",.)

gen dummy1 = (substr(value1,1,4) == "Carb")
gen dummy2 = (substr(value2,1,4) == "Carb")
gen flagcarb = word(value1,3) if dummy1 == 1
replace flagcarb = word(value2,3) if dummy2 == 1
gen gp_v_carbonated_beverage = ""
replace gp_v_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_v_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(value1,1,4) == "Stil")
gen dummy2 = (substr(value2,1,4) == "Stil")
gen flagcarb = word(value1,3) if dummy1 == 1
replace flagcarb = word(value2,3) if dummy2 == 1
gen gp_v_still_beverage = ""
replace gp_v_still_beverage = flagcarb if dummy1 == 1
replace gp_v_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb
*/

//Value of total beverages produced
rename AY gp_v_beverages
label var gp_v_beverages "Output: Beverages, value"

//drop some unnecessary variables
drop CM  
drop CN 
drop CO 
drop Signature 
drop Notes 
drop Remarks
drop six_oz* 
drop e_split* 
drop t_split*
drop s_split*
drop tw_split*
drop bulk_split*
drop AR 
drop AS 
drop AT 
drop AU 
drop AV 
drop AW 
drop AX
