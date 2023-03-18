//rename variables for industry 118 in year 1931

//rename output variables
capture rename AN gp_q_ice_cream
capture rename AO gp_v_ice_cream
capture rename AP gp_q_ices_sherbets
capture rename AQ gp_v_ices_sherbets
capture rename AR gp_q_specialties
capture rename AS gp_v_specialties
capture rename AT gp_q_ice_cream_mix
capture rename AU gp_v_ice_cream_mix
capture rename AV gp_q_ice_sale
capture rename AW gp_v_ice_sale
capture rename AX gp_q_ice_consumed
capture rename AY gp_q_butter
capture rename AZ gp_v_butter
capture rename BA gp_q_cheese
capture rename BB gp_v_cheese
capture rename BC gp_q_condensed_milk
capture rename BD gp_v_condensed_milk
capture rename BE gp_q_evaporated_milk
capture rename BF gp_v_evaporated_milk
capture rename BG gp_q_confectionery
capture rename BH gp_v_confectionery
capture rename BI gp_q_beverages
capture rename BJ gp_v_beverages
capture rename BK gp_v_bakery
capture rename BL gp_s_other1
capture rename BM gp_v_other1
capture rename BN gp_s_other2
capture rename BO gp_q_other2
capture rename BP gp_v_other2
capture rename BQ gp_s_other3
capture rename BR gp_v_other3
capture rename BS gp_v_other4
capture rename BS fe001ks //????
drop BT 
drop BU 
capture rename BV g000v

*rename retail outlet variables
capture rename BW wholesale_exclusive
capture rename BX retail_exclusive
capture rename BY wholesale_and_retail

//rename input variables
capture rename BZ j_q_milk_fluid
capture rename CA j_v_milk_fluid
capture rename CB j_q_milk_powdered
capture rename CC j_v_milk_powdered
capture rename CD j_q_milk_evaporated
capture rename CE j_v_milk_evaporated
capture rename CF j_q_cream
capture rename CG j_v_cream
capture rename CH j_q_ice_cream_mix
capture rename CI j_v_ice_cream_mix
capture rename CJ j_q_creamery_butter
capture rename CK j_v_creamery_butter
capture rename CL j_v_flavors
capture rename CM j_v_eggs
capture rename CN j_q_butter_fat
capture rename CO j_v_butter_fat
capture rename CP j_s_other1
capture rename CQ j_q_other1
capture rename CR j_v_other1
capture rename CS j_s_other2
capture rename CT j_q_other2
capture rename CU j_v_other2
drop CV

//rename capital variables
capture rename CW z_vehicles_horse 
capture rename CX z_vehicles_gasoline
capture rename CY z_vehicles_electric
capture rename CZ manufacture_ice
capture rename DA z_capacity

drop DB
capture rename DC f008

//there are some duplicates for NY. This will drop these.
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1597 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2491 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1620 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2508 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2514 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2515 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1594 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1886 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1623 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1609 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1616 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1646 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1650 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1657 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1602 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1608 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2504 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1893 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2497 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1612 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2505 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2501 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States NHND - Firm 1604 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2512 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2506 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2495 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2499 - Page 1" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2507 - Page 1.JPG" //original image deleted
drop if z_imagenumber=="1931 - Industry 118 - States RIWY - Firm 2496 - Page 1" //original image deleted
