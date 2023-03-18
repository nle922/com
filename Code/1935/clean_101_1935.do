//rename variables for industry 101 in year 1935
//rename input variables
gen j_q_carbonic = "" 
gen j_v_carbonic = "" 

gen flag1 = (substr(EF,1,5) == "Carbo")
gen flag2 = (substr(EI,1,5) == "Carbo")
gen flag3 = (substr(EL,1,5) == "Carbo")
gen flag4 = (substr(EO,1,5) == "Carbo")
gen flag5 = (substr(ER,1,5) == "Carbo")
gen flag6 = (substr(EU,1,5) == "Carbo")
gen flag7 = (substr(EX,1,5) == "Carbo")
gen flag8 = (substr(FA,1,5) == "Carbo")

replace j_q_carbonic = EG if flag1 == 1
replace j_q_carbonic = EJ if flag2 == 1
replace j_q_carbonic = EM if flag3 == 1
replace j_q_carbonic = EP if flag4 == 1
replace j_q_carbonic = ES if flag5 == 1
replace j_q_carbonic = EV if flag6 == 1
replace j_q_carbonic = EY if flag7 == 1
replace j_q_carbonic = FB if flag8 == 1


replace j_v_carbonic = EH if flag1 == 1
replace j_v_carbonic = EK if flag2 == 1
replace j_v_carbonic = EN if flag3 == 1
replace j_v_carbonic = EQ if flag4 == 1
replace j_v_carbonic = ET if flag5 == 1
replace j_v_carbonic = EW if flag6 == 1
replace j_v_carbonic = EZ if flag7 == 1
replace j_v_carbonic = FB if flag8 == 1


drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_q_sugar = "" 
gen j_v_sugar = "" 


gen flag1 = (substr(EF,1,3) == "Sug")
gen flag2 = (substr(EI,1,3) == "Sug")
gen flag3 = (substr(EL,1,3) == "Sug")
gen flag4 = (substr(EO,1,3) == "Sug")
gen flag5 = (substr(ER,1,3) == "Sug")
gen flag6 = (substr(EU,1,3) == "Sug")
gen flag7 = (substr(EX,1,3) == "Sug")
gen flag8 = (substr(FA,1,3) == "Sug")

replace j_q_sugar = EG if flag1 == 1
replace j_q_sugar = EJ if flag2 == 1
replace j_q_sugar = EM if flag3 == 1
replace j_q_sugar = EP if flag4 == 1
replace j_q_sugar = ES if flag5 == 1
replace j_q_sugar = EV if flag6 == 1
replace j_q_sugar = EY if flag7 == 1
replace j_q_sugar = FB if flag8 == 1


replace j_v_sugar = EH if flag1 == 1
replace j_v_sugar = EK if flag2 == 1
replace j_v_sugar = EN if flag3 == 1
replace j_v_sugar = EQ if flag4 == 1
replace j_v_sugar = ET if flag5 == 1
replace j_v_sugar = EW if flag6 == 1
replace j_v_sugar = EZ if flag7 == 1
replace j_v_sugar = FB if flag8 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_q_flavoring = "" 
gen j_v_flavoring = "" 


gen flag1 = (substr(EF,1,6) == "Flavor")
gen flag2 = (substr(EI,1,6) == "Flavor")
gen flag3 = (substr(EL,1,6) == "Flavor")
gen flag4 = (substr(EO,1,6) == "Flavor")
gen flag5 = (substr(ER,1,6) == "Flavor")
gen flag6 = (substr(EU,1,6) == "Flavor")
gen flag7 = (substr(EX,1,6) == "Flavor")
gen flag8 = (substr(FA,1,6) == "Flavor")

replace j_q_flavoring = EG if flag1 == 1
replace j_q_flavoring = EJ if flag2 == 1
replace j_q_flavoring = EM if flag3 == 1
replace j_q_flavoring = EP if flag4 == 1
replace j_q_flavoring = ES if flag5 == 1
replace j_q_flavoring = EV if flag6 == 1
replace j_q_flavoring = EY if flag7 == 1
replace j_q_flavoring = FB if flag8 == 1

replace j_v_flavoring = EH if flag1 == 1
replace j_v_flavoring = EK if flag2 == 1
replace j_v_flavoring = EN if flag3 == 1
replace j_v_flavoring = EQ if flag4 == 1
replace j_v_flavoring = ET if flag5 == 1
replace j_v_flavoring = EW if flag6 == 1
replace j_v_flavoring = EZ if flag7 == 1
replace j_v_flavoring = FB if flag8 == 1


drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_q_crowns = "" 
gen j_v_crowns = "" 

gen flag1 = (substr(EF,1,6) == "Crowns")
gen flag2 = (substr(EI,1,6) == "Crowns")
gen flag3 = (substr(EL,1,6) == "Crowns")
gen flag4 = (substr(EO,1,6) == "Crowns")
gen flag5 = (substr(ER,1,6) == "Crowns")
gen flag6 = (substr(EU,1,6) == "Crowns")
gen flag7 = (substr(EX,1,6) == "Crowns")
gen flag8 = (substr(FA,1,6) == "Crowns")

replace j_q_crowns = EG if flag1 == 1
replace j_q_crowns = EJ if flag2 == 1
replace j_q_crowns = EM if flag3 == 1
replace j_q_crowns = EP if flag4 == 1
replace j_q_crowns = ES if flag5 == 1
replace j_q_crowns = EV if flag6 == 1
replace j_q_crowns = EY if flag7 == 1
replace j_q_crowns = FB if flag8 == 1

replace j_v_crowns = EH if flag1 == 1
replace j_v_crowns = EK if flag2 == 1
replace j_v_crowns = EN if flag3 == 1
replace j_v_crowns = EQ if flag4 == 1
replace j_v_crowns = ET if flag5 == 1
replace j_v_crowns = EW if flag6 == 1
replace j_v_crowns = EZ if flag7 == 1
replace j_v_crowns = FB if flag8 == 1


drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8


gen j_q_coloring = "" 
gen j_v_coloring = "" 


gen flag1 = (substr(EF,1,8) == "Coloring")
gen flag2 = (substr(EI,1,8) == "Coloring")
gen flag3 = (substr(EL,1,8) == "Coloring")
gen flag4 = (substr(EO,1,8) == "Coloring")
gen flag5 = (substr(ER,1,8) == "Coloring")
gen flag6 = (substr(EU,1,8) == "Coloring")
gen flag7 = (substr(EX,1,8) == "Coloring")
gen flag8 = (substr(FA,1,8) == "Coloring")

replace j_q_coloring = EG if flag1 == 1
replace j_q_coloring = EJ if flag2 == 1
replace j_q_coloring = EM if flag3 == 1
replace j_q_coloring = EP if flag4 == 1
replace j_q_coloring = ES if flag5 == 1
replace j_q_coloring = EV if flag6 == 1
replace j_q_coloring = EY if flag7 == 1
replace j_q_coloring = FB if flag8 == 1

replace j_v_coloring = EH if flag1 == 1
replace j_v_coloring = EK if flag2 == 1
replace j_v_coloring = EN if flag3 == 1
replace j_v_coloring = EQ if flag4 == 1
replace j_v_coloring = ET if flag5 == 1
replace j_v_coloring = EW if flag6 == 1
replace j_v_coloring = EZ if flag7 == 1
replace j_v_coloring = FB if flag8 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_q_acids = "" 
gen j_v_acids = "" 

gen flag1 = (substr(EF,1,5) == "Acids")
gen flag2 = (substr(EI,1,5) == "Acids")
gen flag3 = (substr(EL,1,5) == "Acids")
gen flag4 = (substr(EO,1,5) == "Acids")
gen flag5 = (substr(ER,1,5) == "Acids")
gen flag6 = (substr(EU,1,5) == "Acids")
gen flag7 = (substr(EX,1,5) == "Acids")
gen flag8 = (substr(FA,1,5) == "Acids")

replace j_q_acids = EG if flag1 == 1
replace j_q_acids = EJ if flag2 == 1
replace j_q_acids = EM if flag3 == 1
replace j_q_acids = EP if flag4 == 1
replace j_q_acids = ES if flag5 == 1
replace j_q_acids = EV if flag6 == 1
replace j_q_acids = EY if flag7 == 1
replace j_q_acids = FB if flag8 == 1

replace j_v_acids = EH if flag1 == 1
replace j_v_acids = EK if flag2 == 1
replace j_v_acids = EN if flag3 == 1
replace j_v_acids = EQ if flag4 == 1
replace j_v_acids = ET if flag5 == 1
replace j_v_acids = EW if flag6 == 1
replace j_v_acids = EZ if flag7 == 1
replace j_v_acids = FB if flag8 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_q_corn_syrup = "" 
gen j_v_corn_syrup = "" 

gen flag1 = (substr(EF,1,4) == "Corn")
gen flag2 = (substr(EI,1,4) == "Corn")
gen flag3 = (substr(EL,1,4) == "Corn")
gen flag4 = (substr(EO,1,4) == "Corn")
gen flag5 = (substr(ER,1,4) == "Corn")
gen flag6 = (substr(EU,1,4) == "Corn")
gen flag7 = (substr(EX,1,4) == "Corn")
gen flag8 = (substr(FA,1,4) == "Corn")

replace j_q_corn_syrup = EG if flag1 == 1
replace j_q_corn_syrup = EJ if flag2 == 1
replace j_q_corn_syrup = EM if flag3 == 1
replace j_q_corn_syrup = EP if flag4 == 1
replace j_q_corn_syrup = ES if flag5 == 1
replace j_q_corn_syrup = EV if flag6 == 1
replace j_q_corn_syrup = EY if flag7 == 1
replace j_q_corn_syrup = FB if flag8 == 1

replace j_v_corn_syrup = EH if flag1 == 1
replace j_v_corn_syrup = EK if flag2 == 1
replace j_v_corn_syrup = EN if flag3 == 1
replace j_v_corn_syrup = EQ if flag4 == 1
replace j_v_corn_syrup = ET if flag5 == 1
replace j_v_corn_syrup = EW if flag6 == 1
replace j_v_corn_syrup = EZ if flag7 == 1
replace j_v_corn_syrup = FB if flag8 == 1


drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

gen j_v_labels = "" 
gen j_q_labels = "" 


gen flag1 = (substr(EF,1,6) == "Labels")
gen flag2 = (substr(EI,1,6) == "Labels")
gen flag3 = (substr(EL,1,6) == "Labels")
gen flag4 = (substr(EO,1,6) == "Labels")
gen flag5 = (substr(ER,1,6) == "Labels")
gen flag6 = (substr(EU,1,6) == "Labels")
gen flag7 = (substr(EX,1,6) == "Labels")
gen flag8 = (substr(FA,1,6) == "Labels")

replace j_q_labels = EG if flag1 == 1
replace j_q_labels = EJ if flag2 == 1
replace j_q_labels = EM if flag3 == 1
replace j_q_labels = EP if flag4 == 1
replace j_q_labels = ES if flag5 == 1
replace j_q_labels = EV if flag6 == 1
replace j_q_labels = EY if flag7 == 1
replace j_q_labels = FB if flag8 == 1

replace j_v_labels = EH if flag1 == 1
replace j_v_labels = EK if flag2 == 1
replace j_v_labels = EN if flag3 == 1
replace j_v_labels = EQ if flag4 == 1
replace j_v_labels = ET if flag5 == 1
replace j_v_labels = EW if flag6 == 1
replace j_v_labels = EZ if flag7 == 1
replace j_v_labels = FB if flag8 == 1


drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8

//rename output variables

gen gp_q_cider = "" 
gen gp_v_cider = "" 

gen flag1 = (substr(DN,1,5) == "Cider")
gen flag2 = (substr(DQ,1,5) == "Cider")
gen flag3 = (substr(DT,1,5) == "Cider")
gen flag4 = (substr(DW,1,5) == "Cider")
gen flag5 = (substr(DZ,1,5) == "Cider")

replace gp_q_cider = DL if flag1 == 1
replace gp_q_cider = DO if flag2 == 1
replace gp_q_cider = DR if flag3 == 1
replace gp_q_cider = DU if flag4 == 1
replace gp_q_cider = DX if flag5 == 1

replace gp_v_cider = DM if flag1 == 1
replace gp_v_cider = DP if flag2 == 1
replace gp_v_cider = DS if flag3 == 1
replace gp_v_cider = DV if flag4 == 1
replace gp_v_cider = DY if flag5 == 1


drop flag1 flag2 flag3 flag4 flag5 

gen gp_q_ice_sale = "" 
gen gp_v_ice_sale = "" 

gen flag1 = (substr(DN,1,8) == "Ice made")
gen flag2 = (substr(DQ,1,8) == "Ice made")
gen flag3 = (substr(DT,1,8) == "Ice made")
gen flag4 = (substr(DW,1,8) == "Ice made")
gen flag5 = (substr(DZ,1,8) == "Ice made")

replace gp_q_ice_sale = DL if flag1 == 1
replace gp_q_ice_sale = DO if flag2 == 1
replace gp_q_ice_sale = DR if flag3 == 1
replace gp_q_ice_sale = DU if flag4 == 1
replace gp_q_ice_sale = DX if flag5 == 1


replace gp_v_ice_sale = DM if flag1 == 1
replace gp_v_ice_sale = DP if flag2 == 1
replace gp_v_ice_sale = DS if flag3 == 1
replace gp_v_ice_sale = DV if flag4 == 1
replace gp_v_ice_sale = DY if flag5 == 1



drop flag1 flag2 flag3 flag4 flag5 

gen gp_q_ice_cream = "" 
gen gp_v_ice_cream = "" 

gen flag1 = (substr(DN,1,9) == "Ice cream")
gen flag2 = (substr(DQ,1,9) == "Ice cream")
gen flag3 = (substr(DT,1,9) == "Ice cream")
gen flag4 = (substr(DW,1,9) == "Ice cream")
gen flag5 = (substr(DZ,1,9) == "Ice cream")

replace gp_q_ice_cream = DL if flag1 == 1
replace gp_q_ice_cream = DO if flag2 == 1
replace gp_q_ice_cream = DR if flag3 == 1
replace gp_q_ice_cream = DU if flag4 == 1
replace gp_q_ice_cream = DX if flag5 == 1


replace gp_v_ice_cream = DM if flag1 == 1
replace gp_v_ice_cream = DP if flag2 == 1
replace gp_v_ice_cream = DS if flag3 == 1
replace gp_v_ice_cream = DV if flag4 == 1
replace gp_v_ice_cream = DY if flag5 == 1


drop flag1 flag2 flag3 flag4 flag5 

gen gp_q_fruit_juice = "" 
gen gp_v_fruit_juice = "" 

gen flag1 = (substr(DN,1,5) == "Fruit")
gen flag2 = (substr(DQ,1,5) == "Fruit")
gen flag3 = (substr(DT,1,5) == "Fruit")
gen flag4 = (substr(DW,1,5) == "Fruit")
gen flag5 = (substr(DZ,1,5) == "Fruit")

replace gp_q_fruit_juice = DL if flag1 == 1
replace gp_q_fruit_juice = DO if flag2 == 1
replace gp_q_fruit_juice = DR if flag3 == 1
replace gp_q_fruit_juice = DU if flag4 == 1
replace gp_q_fruit_juice = DX if flag5 == 1


replace gp_v_fruit_juice = DM if flag1 == 1
replace gp_v_fruit_juice = DP if flag2 == 1
replace gp_v_fruit_juice = DS if flag3 == 1
replace gp_v_fruit_juice = DV if flag4 == 1
replace gp_v_fruit_juice = DY if flag5 == 1


drop flag1 flag2 flag3 flag4 flag5 


*RJ Note: EA and EB are Total PM rating and Total EM Rating
rename EB g000v
*RJ note: DZ is corresponding total value of products for 1934. Not sure what that is

rename FE Signature
rename FF ag005
rename FG c001
rename FH c002



//rename Fuel variables
gen flag1 = (substr(FN,1,7) == "Coal, a")
gen flag2 = (substr(FR,1,7) == "Coal, a")
gen flag3 = (substr(FV,1,7) == "Coal, a")
gen flag4 = (substr(FZ,1,7) == "Coal, a")

replace ff001q = FK if flag1 == 1
replace ff001q = FO if flag2 == 1
replace ff001q = FS if flag3 == 1
replace ff001q = FW if flag4 == 1

replace ff001v = FL if flag1 == 1
replace ff001v = FP if flag2 == 1
replace ff001v = FT if flag3 == 1
replace ff001v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

gen flag1 = (substr(FN,1,7) == "Coal, b")
gen flag2 = (substr(FR,1,7) == "Coal, b")
gen flag3 = (substr(FV,1,7) == "Coal, b")
gen flag4 = (substr(FZ,1,7) == "Coal, b")

replace ff002q = FK if flag1 == 1
replace ff002q = FO if flag2 == 1
replace ff002q = FS if flag3 == 1
replace ff002q = FW if flag4 == 1

replace ff002v = FL if flag1 == 1
replace ff002v = FP if flag2 == 1
replace ff002v = FT if flag3 == 1
replace ff002v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

gen flag1 = (substr(FN,1,4) == "Coke")
gen flag2 = (substr(FR,1,4) == "Coke")
gen flag3 = (substr(FV,1,4) == "Coke")
gen flag4 = (substr(FZ,1,4) == "Coke")

replace ff003q = FK if flag1 == 1
replace ff003q = FO if flag2 == 1
replace ff003q = FS if flag3 == 1
replace ff003q = FW if flag4 == 1

replace ff003v = FL if flag1 == 1
replace ff003v = FP if flag2 == 1
replace ff003v = FT if flag3 == 1
replace ff003v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

gen flag1 = (substr(FN,1,4) == "Fuel")
gen flag2 = (substr(FR,1,4) == "Fuel")
gen flag3 = (substr(FV,1,4) == "Fuel")
gen flag4 = (substr(FZ,1,4) == "Fuel")

replace ff004q = FK if flag1 == 1
replace ff004q = FO if flag2 == 1
replace ff004q = FS if flag3 == 1
replace ff004q = FW if flag4 == 1

replace ff004v = FL if flag1 == 1
replace ff004v = FP if flag2 == 1
replace ff004v = FT if flag3 == 1
replace ff004v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

gen flag1 = (substr(FN,1,6) == "Gas, n")
gen flag2 = (substr(FR,1,6) == "Gas, n")
gen flag3 = (substr(FV,1,6) == "Gas, n")
gen flag4 = (substr(FZ,1,6) == "Gas, n")

replace ff006q = FK if flag1 == 1
replace ff006q = FO if flag2 == 1
replace ff006q = FS if flag3 == 1
replace ff006q = FW if flag4 == 1

replace ff006v = FL if flag1 == 1
replace ff006v = FP if flag2 == 1
replace ff006v = FT if flag3 == 1
replace ff006v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

gen flag1 = (substr(FN,1,6) == "Gas, o")
gen flag2 = (substr(FR,1,6) == "Gas, o")
gen flag3 = (substr(FV,1,6) == "Gas, o")
gen flag4 = (substr(FZ,1,6) == "Gas, o")

replace ff007q = FK if flag1 == 1
replace ff007q = FO if flag2 == 1
replace ff007q = FS if flag3 == 1
replace ff007q = FW if flag4 == 1

replace ff007v = FL if flag1 == 1
replace ff007v = FP if flag2 == 1
replace ff007v = FT if flag3 == 1
replace ff007v = FX if flag4 == 1

drop flag1 flag2 flag3 flag4

rename GB fe002c
rename GC Remarks
rename GD Notes
rename GF howmanyp
rename GH as002



gen flag1 = (substr(DD,1,4) == "Carb")
gen gp_q_6oz_carbonated_beverage = ""
replace gp_q_6oz_carbonated_beverage = DE if flag1 == 1
gen gp_q_8oz_carbonated_beverage = ""
replace gp_q_8oz_carbonated_beverage = DF if flag1 == 1
gen gp_q_12oz_carbonated_beverage = ""
replace gp_q_12oz_carbonated_beverage = DG if flag1 == 1
gen gp_q_16oz_carbonated_beverage = ""
replace gp_q_16oz_carbonated_beverage = DH if flag1 == 1
gen gp_q_24oz_carbonated_beverage = ""
replace gp_q_24oz_carbonated_beverage = DI if flag1 == 1
gen gp_q_bulk_carbonated_beverage = ""
replace gp_q_bulk_carbonated_beverage = DJ if flag1 == 1
drop flag1

gen flag1 = (substr(DD,1,5) == "Still")
gen gp_q_6oz_still_beverage = ""
replace gp_q_6oz_still_beverage = DE if flag1 == 1
gen gp_q_8oz_still_beverage = ""
replace gp_q_8oz_still_beverage = DF if flag1 == 1
gen gp_q_12oz_still_beverage = ""
replace gp_q_12oz_still_beverage = DG if flag1 == 1
gen gp_q_16oz_still_beverage = ""
replace gp_q_16oz_still_beverage = DH if flag1 == 1
gen gp_q_24oz_still_beverage = ""
replace gp_q_24oz_still_beverage = DI if flag1 == 1
gen gp_q_bulk_still_beverage = ""
replace gp_q_bulk_still_beverage = DJ if flag1 == 1
drop flag1

//Value of total beverages produced
rename DK gp_v_beverages
label var gp_v_beverages "Output: Beverages, value"



*RJ Note: idled_pm_hp and idled_generators. IDK BR names.
*RJ Note: not clear if energy_purchased is fe002k (quantity) or fe002v
*RJ note: fe002c already exists, elsewhere. So presumably the above is fe002k?
drop Notes
drop Remarks Signature
rename DZ g001v
capture drop GG GH GI GJ GK GL GM GN GO GP GQ GR GS GT GU GV GW GX GY GZ
capture drop HA HB HC HD HE HF HG HH HI HJ HK HL HM HN HO HP HQ HR HS HT HU HV HW HX HY HZ
capture drop IA IB IC ID EA EB FA FF FG DE howmanyp
