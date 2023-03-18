//Script to rename variables in legacy industries based on CK's conventions
capture confirm variable c001, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" bgndt3 c001
} 
else {
	capture rename bgndt3 c001
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlcost f000
} 
 else {
capture rename totlcost f000
}
*/

capture confirm variable as001, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" change_name as001
} 
 else {
	capture rename change_name as001
}

capture confirm variable hp001h, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" stmenghp hp001h
} 
 else {
	capture rename stmenghp hp001h
}

capture confirm variable d002, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" Numberofhoursplantwasopera d002
} 
 else {
	capture rename Numberofhoursplantwasopera d002
}

capture confirm variable a001, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" nameofplant a001
} 
 else {
	capture rename nameofplant a001
}

capture confirm variable z_form, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" formnm z_form
} 
 else {
	capture rename formnm z_form
}

capture confirm variable e001f, exact
if _rc==0 { 
	do "$rootDir_code/General/fix_rename.do" fpropnm e001f
} 
 else {
capture rename fpropnm e001f
}

capture confirm variable e004m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_male e004m
} 
 else {
capture rename total_salaried_male e004m
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clrkslry e003tcs
} 
 else {
capture rename clrkslry e003tcs
}

capture confirm variable ff003c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coke_cost ff003c
} 
 else {
capture rename coke_cost ff003c
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_costs f000
} 
 else {
capture rename total_costs f000
}
*/

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_may ewemt05
} 
 else {
capture rename wage_earners_may ewemt05
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Normalnumberofhoursperweek d003
} 
 else {
capture rename Normalnumberofhoursperweek d003
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_jun e003tc06
} 
 else {
capture rename clerks_jun e003tc06
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_mar ewemt03
} 
 else {
capture rename wage_earners_mar ewemt03
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" POAddressifDifferent ag008
} 
 else {
capture rename POAddressifDifferent ag008
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weapril ewemt04
} 
 else {
capture rename weapril ewemt04
}

/*
capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_e e003te
} 
 else {
capture rename clerical_e e003te
}
*/

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_march emh03
} 
 else {
capture rename manhours_march emh03
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nwplnt as000
} 
 else {
capture rename nwplnt as000
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaprnm ewemt04
} 
 else {
capture rename weaprnm ewemt04
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" newplant as000
} 
 else {
capture rename newplant as000
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nameofowner a002
} 
 else {
capture rename nameofowner a002
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbinesnumber hp002n
} 
 else {
capture rename Steamturbinesnumber hp002n
}

capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ctlotryn a004
} 
 else {
capture rename ctlotryn a004
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" dieselandsemidieselenginesh he003h
} 
 else {
capture rename dieselandsemidieselenginesh he003h
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesforofficers e002s
} 
 else {
capture rename salariesforofficers e002s
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cjun e003tc06
} 
 else {
capture rename cjun e003tc06
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" f_county ag003
} 
 else {
capture rename f_county ag003
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaug ewemt08
} 
 else {
capture rename weaug ewemt08
}

capture confirm variable as005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" frmrinfo as005
} 
 else {
capture rename frmrinfo as005
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofshiftsperday d004
} 
 else {
capture rename numberofshiftsperday d004
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value_1934 g001v
} 
 else {
capture rename total_output_value_1934 g001v
}

capture confirm variable hp007n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" other_internal_combustion_number hp007n
} 
 else {
capture rename other_internal_combustion_number hp007n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionengineshorsepo hp003h
} 
 else {
capture rename internalcombustionengineshorsepo hp003h
}

capture confirm variable e003t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_ e003t
} 
 else {
capture rename managers_ e003t
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_totldays d003
} 
 else {
capture rename a_totldays d003
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngrnm e003ta
} 
 else {
capture rename mngrnm e003ta
}

capture confirm variable fe002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_purchased_electricity fe002
} 
 else {
capture rename cost_purchased_electricity fe002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wsep ewemt09
} 
 else {
capture rename wsep ewemt09
}

capture confirm variable he002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_generated_hp he002h
} 
 else {
capture rename electric_motors_generated_hp he002h
}

capture confirm variable ag007, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" othrcity ag007
} 
 else {
capture rename othrcity ag007
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bcostofmaterials f001
} 
 else {
capture rename bcostofmaterials f001
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" lnchngyn as002
} 
 else {
capture rename lnchngyn as002
}

capture confirm variable e003f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_female e003f
} 
 else {
capture rename managers_female e003f
}

capture confirm variable ag001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" State ag001
} 
 else {
capture rename State ag001
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" street ag004
} 
 else {
capture rename street ag004
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wmay ewemt05
} 
 else {
capture rename wmay ewemt05
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamturbineNumber hp002n
} 
 else {
capture rename SteamturbineNumber hp002n
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_ownership as003
} 
 else {
capture rename change_ownership as003
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wmar ewemt03
} 
 else {
capture rename wmar ewemt03
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turbines_number hp002n
} 
 else {
capture rename steam_turbines_number hp002n
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedlocation as002
} 
 else {
capture rename changedlocation as002
}

capture confirm variable k004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_retail_owned k004
} 
 else {
capture rename sales_retail_owned k004
}

capture confirm variable ff001q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_anthracite_quantity ff001q
} 
 else {
capture rename coal_anthracite_quantity ff001q
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" normalnumberofhoursperweek d003
} 
 else {
capture rename normalnumberofhoursperweek d003
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesel_horsepower he003h
} 
 else {
capture rename diesel_horsepower he003h
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotal ewemt
} 
 else {
capture rename wetotal ewemt
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cdec e003tc12
} 
 else {
capture rename cdec e003tc12
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesforclerks e003tcs
} 
 else {
capture rename salariesforclerks e003tcs
}

capture confirm variable bp001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" products bp001
} 
 else {
capture rename products bp001
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjul emh07
} 
 else {
capture rename manhoursjul emh07
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Waterwheelshorsepower hp004h
} 
 else {
capture rename Waterwheelshorsepower hp004h
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjun emh06
} 
 else {
capture rename manhoursjun emh06
}

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jan emh01
} 
 else {
capture rename manhours_jan emh01
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natureofbusin as004
} 
 else {
capture rename natureofbusin as004
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages e005s
} 
 else {
capture rename total_wages e005s
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" num_days_operation d001
} 
 else {
capture rename num_days_operation d001
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_oct ewemt10
} 
 else {
capture rename wage_earners_oct ewemt10
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_March ewemt03
} 
 else {
capture rename wage_earners_March ewemt03
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheelshorsepower hp004h
} 
 else {
capture rename waterwheelshorsepower hp004h
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wage e005t
} 
 else {
capture rename total_wage e005t
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ice_ hp003n
} 
 else {
capture rename ice_ hp003n
}

capture confirm variable ff001c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_anthracite_cost ff001c
} 
 else {
capture rename coal_anthracite_cost ff001c
}

capture confirm variable e003m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mmgrnm e003m
} 
 else {
capture rename mmgrnm e003m
}

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value g000v
} 
 else {
capture rename total_output_value g000v
}

capture confirm variable e009s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weslry e009s
} 
 else {
capture rename weslry e009s
}

capture confirm variable am002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mthrinfo am002
} 
 else {
capture rename mthrinfo am002
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalamountpaidtowageearners e005s
} 
 else {
capture rename totalamountpaidtowageearners e005s
}

capture confirm variable (.*), exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_August ewemt08
} 
 else {
capture rename wage_earners_August ewemt08
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weapr ewemt04
} 
 else {
capture rename weapr ewemt04
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeindifferentlocation ag008
} 
 else {
capture rename postofficeindifferentlocation ag008
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesformanagers e003s
} 
 else {
capture rename Salariesformanagers e003s
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Wageearners ewemt
} 
 else {
capture rename Wageearners ewemt
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Managers e003ta
} 
 else {
capture rename Managers e003ta
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners ewemt
} 
 else {
capture rename wage_earners ewemt
}

capture confirm variable emht, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlmh emht
} 
 else {
capture rename totlmh emht
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" offcnm e002t
} 
 else {
capture rename offcnm e002t
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_june ewemt06
} 
 else {
capture rename wage_earners_june ewemt06
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bsalariestomanagers e003s
} 
 else {
capture rename bsalariestomanagers e003s
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nwplntyn as000
} 
 else {
capture rename nwplntyn as000
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" owchngyn as003
} 
 else {
capture rename owchngyn as003
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sbsdryyn am001
} 
 else {
capture rename sbsdryyn am001
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_april emh04
} 
 else {
capture rename manhours_april emh04
}

capture confirm variable c001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Began c001
} 
 else {
capture rename Began c001
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngrslry e003s
} 
 else {
capture rename mngrslry e003s
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ownrname a002
} 
 else {
capture rename ownrname a002
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenovember ewemt11
} 
 else {
capture rename wenovember ewemt11
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_jun e003tc06
} 
 else {
capture rename clerical_employees_jun e003tc06
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poaddressifdifferent ag008
} 
 else {
capture rename poaddressifdifferent ag008
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbineshorsepower hp002h
} 
 else {
capture rename Steamturbineshorsepower hp002h
}

capture confirm variable c002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" end c002
} 
 else {
capture rename end c002
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_march e003tc03
} 
 else {
capture rename clerks_march e003tc03
}

capture confirm variable ff006c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natural_gas_cost ff006c
} 
 else {
capture rename natural_gas_cost ff006c
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Clerks e003tc
} 
 else {
capture rename Clerks e003tc
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value1934 g001v
} 
 else {
capture rename total_output_value1934 g001v
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamenginenumber hp001n
} 
 else {
capture rename steamenginenumber hp001n
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numdaysplantinoperation d001
} 
 else {
capture rename numdaysplantinoperation d001
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesforclerks e004s
} 
 else {
capture rename Salariesforclerks e004s
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_dec e003tc12
} 
 else {
capture rename clerks_dec e003tc12
}

capture confirm variable e003f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fmngrnm e003f
} 
 else {
capture rename fmngrnm e003f
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Total ewemt
} 
 else {
capture rename wage_earners_Total ewemt
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wtrwhlhp hp004h
} 
 else {
capture rename wtrwhlhp hp004h
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" indnm z_indCode
} 
 else {
capture rename indnm z_indCode
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" k_nmchngyn as001
} 
 else {
capture rename k_nmchngyn as001
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wdec ewemt12
} 
 else {
capture rename wdec ewemt12
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_october emh10
} 
 else {
capture rename manhours_october emh10
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_gopoaddr ag008
} 
 else {
capture rename c_gopoaddr ag008
}

capture confirm variable e005f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fnnwenm e005f
} 
 else {
capture rename fnnwenm e005f
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejul ewemt07
} 
 else {
capture rename wejul ewemt07
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" water_whee hp004n
} 
 else {
capture rename water_whee hp004n
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejun ewemt06
} 
 else {
capture rename wejun ewemt06
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisanewplantwhichstartedopera as000
} 
 else {
capture rename isthisanewplantwhichstartedopera as000
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" receiptcontractwork gcontract
} 
 else {
capture rename receiptcontractwork gcontract
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenov ewemt11
} 
 else {
capture rename wenov ewemt11
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" imageno z_imageNumber
} 
 else {
capture rename imageno z_imageNumber
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ImageNumber z_imageNumber
} 
 else {
capture rename ImageNumber z_imageNumber
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" woct ewemt10
} 
 else {
capture rename woct ewemt10
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" soffcwgs e002s
} 
 else {
capture rename soffcwgs e002s
}

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" purchased_current_kilowatt fe002c
} 
 else {
capture rename purchased_current_kilowatt fe002c
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_october ewemt10
} 
 else {
capture rename wage_earners_october ewemt10
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_sep ewemt09
} 
 else {
capture rename wage_earners_sep ewemt09
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesforofficers e002s
} 
 else {
capture rename Salariesforofficers e002s
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_septemer e003tc09
} 
 else {
capture rename clerks_septemer e003tc09
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursnov emh11
} 
 else {
capture rename manhoursnov emh11
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diessel_horsepower he003h
} 
 else {
capture rename diessel_horsepower he003h
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Officers e002t
} 
 else {
capture rename Officers e002t
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jun ewemt06
} 
 else {
capture rename wage_earners_jun ewemt06
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jul ewemt07
} 
 else {
capture rename wage_earners_jul ewemt07
}

capture confirm variable d006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wrkrhpwk d006
} 
 else {
capture rename wrkrhpwk d006
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_august emh08
} 
 else {
capture rename manhours_august emh08
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nameandaddressofconcern ag008
} 
 else {
capture rename nameandaddressofconcern ag008
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_technical_employees e003tes
} 
 else {
capture rename salaries_technical_employees e003tes
}

capture confirm variable f009, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_materials_energy f009
} 
 else {
capture rename cost_materials_energy f009
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incorporatedconcern a003
} 
 else {
capture rename incorporatedconcern a003
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poaddressifdifferentlocatio ag008
} 
 else {
capture rename poaddressifdifferentlocatio ag008
}

capture confirm variable c002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" End c002
} 
 else {
capture rename End c002
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_april ewemt04
} 
 else {
capture rename wage_earners_april ewemt04
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofallmaterials f001
} 
 else {
capture rename costofallmaterials f001
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Nov ewemt11
} 
 else {
capture rename wage_earners_Nov ewemt11
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamengine_number hp001n
} 
 else {
capture rename steamengine_number hp001n
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoctober ewemt10
} 
 else {
capture rename weoctober ewemt10
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_november ewemt11
} 
 else {
capture rename wage_earners_november ewemt11
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engines_number hp001n
} 
 else {
capture rename steam_engines_number hp001n
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cpaidtowageearners e005s
} 
 else {
capture rename cpaidtowageearners e005s
}

capture confirm variable ff006q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natural_gas_quantity ff006q
} 
 else {
capture rename natural_gas_quantity ff006q
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_June ewemt06
} 
 else {
capture rename wage_earners_June ewemt06
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefeb ewemt02
} 
 else {
capture rename wefeb ewemt02
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofcontractwork f004
} 
 else {
capture rename costofcontractwork f004
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ctrccost f004
} 
 else {
capture rename ctrccost f004
}


capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamEngineHorsepower hp001h
} 
 else {
capture rename SteamEngineHorsepower hp001h
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionenginesnumber hp003n
} 
 else {
capture rename internalcombustionenginesnumber hp003n
}

capture confirm variable e001f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors_female e001f
} 
 else {
capture rename proprietors_female e001f
}

capture confirm variable e005sp, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages_1934 e005sp
} 
 else {
capture rename total_wages_1934 e005sp
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" industrialcode z_indCode
} 
 else {
capture rename industrialcode z_indCode
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlwgs e005s
} 
 else {
capture rename totlwgs e005s
}

capture confirm variable hp007h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" other_internal_combustion_hp hp007h
} 
 else {
capture rename other_internal_combustion_hp hp007h
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_clerks e003tcs
} 
 else {
capture rename salaries_clerks e003tcs
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Jan ewemt01
} 
 else {
capture rename wage_earners_Jan ewemt01
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_contract_work f004
} 
 else {
capture rename cost_contract_work f004
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" NameofPlant a001
} 
 else {
capture rename NameofPlant a001
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejuly ewemt07
} 
 else {
capture rename wejuly ewemt07
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages e005s
} 
 else {
capture rename wages e005s
}

capture confirm variable ag006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incityyn ag006
} 
 else {
capture rename incityyn ag006
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" city ag002
} 
 else {
capture rename city ag002
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wfeb ewemt02
} 
 else {
capture rename wfeb ewemt02
}

capture confirm variable he002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_generated_num he002n
} 
 else {
capture rename electric_motors_generated_num he002n
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ChangedLocation as002
} 
 else {
capture rename ChangedLocation as002
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_aug ewemt08
} 
 else {
capture rename wage_earners_aug ewemt08
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptsforcontractwork gcontract
} 
 else {
capture rename Receiptsforcontractwork gcontract
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_October ewemt10
} 
 else {
capture rename wage_earners_October ewemt10
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamturbines_horsepower hp002h
} 
 else {
capture rename steamturbines_horsepower hp002h
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheels_horsepower hp004h
} 
 else {
capture rename waterwheels_horsepower hp004h
}

capture confirm variable ff005q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gasoline_quantity ff005q
} 
 else {
capture rename gasoline_quantity ff005q
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diessel_number he003n
} 
 else {
capture rename diessel_number he003n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" h_othraddr ag008
} 
 else {
capture rename h_othraddr ag008
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionenginesnumb hp003n
} 
 else {
capture rename internalcombustionenginesnumb hp003n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionengineshors hp003h
} 
 else {
capture rename internalcombustionengineshors hp003h
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_february ewemt02
} 
 else {
capture rename wage_earners_february ewemt02
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_December ewemt12
} 
 else {
capture rename wage_earners_December ewemt12
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ImageNo z_imageNumber
} 
 else {
capture rename ImageNo z_imageNumber
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" intcmbhp hp003h
} 
 else {
capture rename intcmbhp hp003h
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" IndustryCode z_indCode
} 
 else {
capture rename IndustryCode z_indCode
}

capture confirm variable ff005c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gasoline_cost ff005c
} 
 else {
capture rename gasoline_cost ff005c
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_dec ewemt12
} 
 else {
capture rename wage_earners_dec ewemt12
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptsforcontrackwork f004
} 
 else {
capture rename Receiptsforcontrackwork f004
}

capture confirm variable ff007c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manufactured_gas_cost ff007c
} 
 else {
capture rename manufactured_gas_cost ff007c
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totldays d001
} 
 else {
capture rename totldays d001
}

capture confirm variable e004t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaried_employees e004t
} 
 else {
capture rename salaried_employees e004t
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nonwewgs e004s
} 
 else {
capture rename nonwewgs e004s
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemarch ewemt03
} 
 else {
capture rename wemarch ewemt03
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wesepnm ewemt09
} 
 else {
capture rename wesepnm ewemt09
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjan ewemt01
} 
 else {
capture rename wjan ewemt01
}

capture confirm variable e002f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_female e002f
} 
 else {
capture rename officers_female e002f
}

capture confirm variable e002m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" moffcnm e002m
} 
 else {
capture rename moffcnm e002m
}


capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_mar e003tc03
} 
 else {
capture rename clerical_employees_mar e003tc03
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_salaried e002t
} 
 else {
capture rename b_salaried e002t
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bschngyn as004
} 
 else {
capture rename bschngyn as004
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" industrycode z_indCode
} 
 else {
capture rename industrycode z_indCode
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" StreetandNumber ag004
} 
 else {
capture rename StreetandNumber ag004
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers e002t
} 
 else {
capture rename officers e002t
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earne e005t
} 
 else {
capture rename wage_earne e005t
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisanewplantwhichstarte as000
} 
 else {
capture rename isthisanewplantwhichstarte as000
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_december e003tc12
} 
 else {
capture rename clerks_december e003tc12
}

/*
capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clrknm e003te
} 
 else {
capture rename clrknm e003te
}
*/

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjan emh01
} 
 else {
capture rename manhoursjan emh01
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_propriet e001t
} 
 else {
capture rename a_propriet e001t
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_aug emh08
} 
 else {
capture rename manhours_aug emh08
}

capture confirm variable e002f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" foffcnm e002f
} 
 else {
capture rename foffcnm e002f
}

capture confirm variable hp005n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_purchased_number hp005n
} 
 else {
capture rename motor_purchased_number hp005n
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees e003tc
} 
 else {
capture rename clerical_employees e003tc
}

capture confirm variable ff002q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_bituminous_quantity ff002q
} 
 else {
capture rename coal_bituminous_quantity ff002q
}

capture confirm variable k000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_sales k000
} 
 else {
capture rename total_sales k000
}

capture confirm variable e005sp, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" correspondingtotalofwagesin1934 e005sp
} 
 else {
capture rename correspondingtotalofwagesin1934 e005sp
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_december ewemt12
} 
 else {
capture rename wage_earners_december ewemt12
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursdec emh12
} 
 else {
capture rename manhoursdec emh12
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemar ewemt03
} 
 else {
capture rename wemar ewemt03
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_december emh12
} 
 else {
capture rename manhours_december emh12
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemay ewemt05
} 
 else {
capture rename wemay ewemt05
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_November ewemt11
} 
 else {
capture rename wage_earners_November ewemt11
}

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electricity_purchased fe002c
} 
 else {
capture rename electricity_purchased fe002c
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisincorporated a003
} 
 else {
capture rename isthisincorporated a003
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_mar e003tc03
} 
 else {
capture rename clerks_mar e003tc03
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlslry e004s
} 
 else {
capture rename totlslry e004s
}

capture confirm variable e001m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mpropnm e001m
} 
 else {
capture rename mpropnm e001m
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejanuary ewemt01
} 
 else {
capture rename wejanuary ewemt01
}

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_january emh01
} 
 else {
capture rename manhours_january emh01
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofhoursplantwasoperated d002
} 
 else {
capture rename numberofhoursplantwasoperated d002
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_wrkrhpwk d005
} 
 else {
capture rename b_wrkrhpwk d005
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesselandsemidieselengines he003n
} 
 else {
capture rename diesselandsemidieselengines he003n
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedecember ewemt12
} 
 else {
capture rename wedecember ewemt12
}

capture confirm variable e002m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_male e002m
} 
 else {
capture rename officers_male e002m
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Dec ewemt12
} 
 else {
capture rename wage_earners_Dec ewemt12
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks e003tc
} 
 else {
capture rename clerks e003tc
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeindifferentlocatio ag008
} 
 else {
capture rename postofficeindifferentlocatio ag008
}

capture confirm variable g00Mv, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_manufactured g00Mv
} 
 else {
capture rename total_value_manufactured g00Mv
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedownership as003
} 
 else {
capture rename changedownership as003
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" stmtrbhp hp002h
} 
 else {
capture rename stmtrbhp hp002h
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_june emh06
} 
 else {
capture rename manhours_june emh06
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoct ewemt10
} 
 else {
capture rename weoct ewemt10
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" techwgs e003tes
} 
 else {
capture rename techwgs e003tes
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" days_per_week d003
} 
 else {
capture rename days_per_week d003
}

capture confirm variable k005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_industrial k005
} 
 else {
capture rename sales_industrial k005
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" branchofsubidiary am001
} 
 else {
capture rename branchofsubidiary am001
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" streetandnumber ag004
} 
 else {
capture rename streetandnumber ag004
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamengine_horsepower hp001h
} 
 else {
capture rename steamengine_horsepower hp001h
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_sept ewemt09
} 
 else {
capture rename wage_earners_sept ewemt09
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" contcost f004
} 
 else {
capture rename contcost f004
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemarnm ewemt03
} 
 else {
capture rename wemarnm ewemt03
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_April ewemt04
} 
 else {
capture rename wage_earners_April ewemt04
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_dec e003tc12
} 
 else {
capture rename clerical_employees_dec e003tc12
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Proprietors e001t
} 
 else {
capture rename Proprietors e001t
}

capture confirm variable ag001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" state ag001
} 
 else {
capture rename state ag001
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_ e003te
} 
 else {
capture rename technical_ e003te
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plnthpdy 
} 
 else {
capture rename plnthpdy 
}

capture confirm variable fe001k, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" generated_current_kilowatt fe001k
} 
 else {
capture rename generated_current_kilowatt fe001k
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_nov ewemt11
} 
 else {
capture rename wage_earners_nov ewemt11
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ccostofcontractwork f004
} 
 else {
capture rename ccostofcontractwork f004
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wapr ewemt03
} 
 else {
capture rename wapr ewemt03
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursapr emh04
} 
 else {
capture rename manhoursapr emh04
}

capture confirm variable emht, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_total emht
} 
 else {
capture rename manhours_total emht
}

capture confirm variable d006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_per_wage_earner d006
} 
 else {
capture rename hours_per_wage_earner d006
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" workdpwk d005
} 
 else {
capture rename workdpwk d005
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" NameofOwner a002
} 
 else {
capture rename NameofOwner a002
}

capture confirm variable fe002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_pu fe002
} 
 else {
capture rename cost_of_pu fe002
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejannm ewemt01
} 
 else {
capture rename wejannm ewemt01
}

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursmar emh03
} 
 else {
capture rename manhoursmar emh03
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_dec emh12
} 
 else {
capture rename manhours_dec emh12
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheels_number hp004n
} 
 else {
capture rename waterwheels_number hp004n
}

capture confirm variable emh05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursmay emh05
} 
 else {
capture rename manhoursmay emh05
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_apr ewemt04
} 
 else {
capture rename wage_earners_apr ewemt04
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_operation_day d002
} 
 else {
capture rename hours_operation_day d002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_september ewemt09
} 
 else {
capture rename wage_earners_september ewemt09
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" d_wrkrdpwk d005
} 
 else {
capture rename d_wrkrdpwk d005
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_ownrname a002
} 
 else {
capture rename b_ownrname a002
}

capture confirm variable ff0033q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coke_quantity ff0033q
} 
 else {
capture rename coke_quantity ff0033q
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_salary e002s
} 
 else {
capture rename officers_salary e002s
}

capture confirm variable ff002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_bituminous_cost ff002c
} 
 else {
capture rename coal_bituminous_cost ff002c
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaugust ewemt08
} 
 else {
capture rename weaugust ewemt08
}

capture confirm variable he001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_purchased_num he001n
} 
 else {
capture rename electric_motors_purchased_num he001n
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamenginehorsepower hp001h
} 
 else {
capture rename steamenginehorsepower hp001h
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nmchngyn as001
} 
 else {
capture rename nmchngyn as001
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_sep emh09
} 
 else {
capture rename manhours_sep emh09
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jul emh07
} 
 else {
capture rename manhours_jul emh07
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jun emh06
} 
 else {
capture rename manhours_jun emh06
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wnov ewemt11
} 
 else {
capture rename wnov ewemt11
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbinehorsepower hp002h
} 
 else {
capture rename Steamturbinehorsepower hp002h
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gopoaddr ag008
} 
 else {
capture rename gopoaddr ag008
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejunnm ewemt06
} 
 else {
capture rename wejunnm ewemt06
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_employees_salary e003tes
} 
 else {
capture rename technical_employees_salary e003tes
}

capture confirm variable k003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_retail_not_owned k003
} 
 else {
capture rename sales_retail_not_owned k003
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jan ewemt01
} 
 else {
capture rename wage_earners_jan ewemt01
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejulnm ewemt07
} 
 else {
capture rename wejulnm ewemt07
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietor e001t
} 
 else {
capture rename proprietor e001t
}

capture confirm variable bm001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mtlsusd1 bm001
} 
 else {
capture rename mtlsusd1 bm001
}

capture confirm variable bm002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mtlsusd2 bm002
} 
 else {
capture rename mtlsusd2 bm002
}

capture confirm variable e005m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mwenm e005m
} 
 else {
capture rename mwenm e005m
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedec ewemt12
} 
 else {
capture rename wedec ewemt12
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sftsprdy d004
} 
 else {
capture rename sftsprdy d004
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" matlcost f001
} 
 else {
capture rename matlcost f001
}

capture confirm variable ff004q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuel_oils_quantity ff004q
} 
 else {
capture rename fuel_oils_quantity ff004q
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turbines_hp hp002h
} 
 else {
capture rename steam_turbines_hp hp002h
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustion_number hp003n
} 
 else {
capture rename internalcombustion_number hp003n
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" propietors e001t
} 
 else {
capture rename propietors e001t
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_location as002
} 
 else {
capture rename change_location as002
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" subsidiaryofanother am001
} 
 else {
capture rename subsidiaryofanother am001
}

capture confirm variable g00Mv, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value_man g00Mv
} 
 else {
capture rename total_output_value_man g00Mv
}

capture confirm variable am002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" name_parent_firm am002
} 
 else {
capture rename name_parent_firm am002
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhourssept emh09
} 
 else {
capture rename manhourssept emh09
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engines_hp hp001h
} 
 else {
capture rename steam_engines_hp hp001h
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_cost_contract_work f004
} 
 else {
capture rename total_cost_contract_work f004
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefebnm ewemt02
} 
 else {
capture rename wefebnm ewemt02
}

capture confirm variable e009s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages_salaries e009s
} 
 else {
capture rename total_wages_salaries e009s
}

capture confirm variable k006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_home k006
} 
 else {
capture rename sales_home k006
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_feb ewemt02
} 
 else {
capture rename wage_earners_feb ewemt02
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustion_horsepower hp003h
} 
 else {
capture rename internalcombustion_horsepower hp003h
}

capture confirm variable year, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" censusyear year
} 
 else {
capture rename censusyear year
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waug ewemt08
} 
 else {
capture rename waug ewemt08
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" principal_ e002t
} 
 else {
capture rename principal_ e002t
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamEngineNumber hp001n
} 
 else {
capture rename SteamEngineNumber hp001n
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursaug emh08
} 
 else {
capture rename manhoursaug emh08
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Hoursperday d002
} 
 else {
capture rename Hoursperday d002
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_plntname a001
} 
 else {
capture rename a_plntname a001
}

capture confirm variable hp006h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_generated_horsepower hp006h
} 
 else {
capture rename motor_generated_horsepower hp006h
}

capture confirm variable c001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" began c001
} 
 else {
capture rename began c001
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_wages_pa e005s
} 
 else {
capture rename c_wages_pa e005s
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ewe e005t
} 
 else {
capture rename ewe e005t
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" csep e003tc09
} 
 else {
capture rename csep e003tc09
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hoursperweek d003
} 
 else {
capture rename hoursperweek d003
}

capture confirm variable ff007q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manufactured_gas_quantity ff007q
} 
 else {
capture rename manufactured_gas_quantity ff007q
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofmaterials f001
} 
 else {
capture rename costofmaterials f001
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_november emh11
} 
 else {
capture rename manhours_november emh11
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors e001t
} 
 else {
capture rename proprietors e001t
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_employees e003te
} 
 else {
capture rename technical_employees e003te
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_feb emh02
} 
 else {
capture rename manhours_feb emh02
}

capture confirm variable fe002k, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electricity_generated_plant_used fe002k
} 
 else {
capture rename electricity_generated_plant_used fe002k
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_august ewemt08
} 
 else {
capture rename wage_earners_august ewemt08
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wagenm e005s
} 
 else {
capture rename wagenm e005s
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_total ewemt
} 
 else {
capture rename wage_earners_total ewemt
}

capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" oneormoreother a004
} 
 else {
capture rename oneormoreother a004
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" citytownorvillage ag002
} 
 else {
capture rename citytownorvillage ag002
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_May ewemt05
} 
 else {
capture rename wage_earners_May ewemt05
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_oct emh10
} 
 else {
capture rename manhours_oct emh10
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_september emh09
} 
 else {
capture rename manhours_september emh09
}

capture confirm variable ag006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" i_incityyn ag006
} 
 else {
capture rename i_incityyn ag006
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_September ewemt09
} 
 else {
capture rename wage_earners_September ewemt09
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_fuel f002
} 
 else {
capture rename cost_fuel f002
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engi hp001n
} 
 else {
capture rename steam_engi hp001n
}

capture confirm variable k001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_wholesale_not_owned k001
} 
 else {
capture rename sales_wholesale_not_owned k001
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaugnm ewemt08
} 
 else {
capture rename weaugnm ewemt08
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incyn a003
} 
 else {
capture rename incyn a003
}

capture confirm variable k002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_wholesale_owned k002
} 
 else {
capture rename sales_wholesale_owned k002
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" po_address_if_different ag008
} 
 else {
capture rename po_address_if_different ag008
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_ma f001
} 
 else {
capture rename cost_of_ma f001
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedname as001
} 
 else {
capture rename changedname as001
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalcost f000
} 
 else {
capture rename totalcost f000
}
*/

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalval g000v
} 
 else {
capture rename totalval g000v
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Nameandaddressofconcern ag008
} 
 else {
capture rename Nameandaddressofconcern ag008
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeaddress ag008
} 
 else {
capture rename postofficeaddress ag008
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" receipts_contract_work gcontract
} 
 else {
capture rename receipts_contract_work gcontract
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_salary e003tcs
} 
 else {
capture rename clerical_employees_salary e003tcs
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_sep e003tc09
} 
 else {
capture rename clerical_employees_sep e003tc09
}

capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Oneormoreother a004
} 
 else {
capture rename Oneormoreother a004
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_managers e003s
} 
 else {
capture rename salaries_managers e003s
}

capture confirm variable hp006n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_generated_number hp006n
} 
 else {
capture rename motor_generated_number hp006n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" PostOfficeAddress ag008
} 
 else {
capture rename PostOfficeAddress ag008
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotl ewemt
} 
 else {
capture rename wetotl ewemt
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" j_sbsdryyn am001
} 
 else {
capture rename j_sbsdryyn am001
}

capture confirm variable bp001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_products bp001
} 
 else {
capture rename a_products bp001
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poboxifdifferent ag008
} 
 else {
capture rename poboxifdifferent ag008
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesformanagers e003s
} 
 else {
capture rename salariesformanagers e003s
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_nov emh11
} 
 else {
capture rename manhours_nov emh11
}

capture confirm variable ff004c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuel_oils_cost ff004c
} 
 else {
capture rename fuel_oils_cost ff004c
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" dieselandsemidieselenginesn he003n
} 
 else {
capture rename dieselandsemidieselenginesn he003n
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_february emh02
} 
 else {
capture rename manhours_february emh02
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_operation_week d003
} 
 else {
capture rename hours_operation_week d003
}

capture confirm variable emh05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_may emh05
} 
 else {
capture rename manhours_may emh05
}

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_mar emh03
} 
 else {
capture rename manhours_mar emh03
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" CityTownorVillage ag002
} 
 else {
capture rename CityTownorVillage ag002
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursoct emh10
} 
 else {
capture rename manhoursoct emh10
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_cost f000
} 
 else {
capture rename total_cost f000
}
*/

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_officers e002s
} 
 else {
capture rename salaries_officers e002s
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofhoursplantwasopera d002
} 
 else {
capture rename numberofhoursplantwasopera d002
}

capture confirm variable g00VAa, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_added g00VAa
} 
 else {
capture rename total_value_added g00VAa
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedecnm ewemt12
} 
 else {
capture rename wedecnm ewemt12
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hoursperday d002
} 
 else {
capture rename hoursperday d002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wesep ewemt09
} 
 else {
capture rename wesep ewemt09
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turb hp002n
} 
 else {
capture rename steam_turb hp002n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeaddressofgeneralo ag008
} 
 else {
capture rename postofficeaddressofgeneralo ag008
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plnthpwk d003
} 
 else {
capture rename plnthpwk d003
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_sala e004s
} 
 else {
capture rename total_sala e004s
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_july ewemt07
} 
 else {
capture rename wage_earners_july ewemt07
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoctnm ewemt10
} 
 else {
capture rename weoctnm ewemt10
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" awages e005s
} 
 else {
capture rename awages e005s
}

capture confirm variable e002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" moffcm e002n
} 
 else {
capture rename moffcm e002n
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cmar e003tc03
} 
 else {
capture rename cmar e003tc03
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_fu f002
} 
 else {
capture rename cost_of_fu f002
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wrkrdpwk d005
} 
 else {
capture rename wrkrdpwk d005
}

capture confirm variable e003t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers e003t
} 
 else {
capture rename managers e003t
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" shiftsperday d004
} 
 else {
capture rename shiftsperday d004
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemaynm ewemt05
} 
 else {
capture rename wemaynm ewemt05
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" d_technica e003te
} 
 else {
capture rename d_technica e003te
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisory_employees_salary e003s
} 
 else {
capture rename supervisory_employees_salary e003s
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisory_employees e003ta
} 
 else {
capture rename supervisory_employees e003ta
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefebruary ewemt02
} 
 else {
capture rename wefebruary ewemt02
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_march ewemt03
} 
 else {
capture rename wage_earners_march ewemt03
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages3 e003tes
} 
 else {
capture rename wages3 e003tes
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages1 e002t
} 
 else {
capture rename wages1 e002t
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheelsnumber hp004n
} 
 else {
capture rename waterwheelsnumber hp004n
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Internalcombustionenginesnumb hp003n
} 
 else {
capture rename Internalcombustionenginesnumb hp003n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Internalcombustionengineshors hp003h
} 
 else {
capture rename Internalcombustionengineshors hp003h
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesselandsemidieselengineshp he003h
} 
 else {
capture rename diesselandsemidieselengineshp he003h
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_o e002t
} 
 else {
capture rename officers_o e002t
}

capture confirm variable bm001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_mtlsusd1 bm001
} 
 else {
capture rename b_mtlsusd1 bm001
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_january ewemt01
} 
 else {
capture rename wage_earners_january ewemt01
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursfeb emh02
} 
 else {
capture rename manhoursfeb emh02
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_July ewemt07
} 
 else {
capture rename wage_earners_July ewemt07
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_sept e003tc09
} 
 else {
capture rename clerks_sept e003tc09
}

capture confirm variable he001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_purchased_hp he001h
} 
 else {
capture rename electric_motors_purchased_hp he001h
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_sftsprdy d004
} 
 else {
capture rename c_sftsprdy d004
}

capture confirm variable e004t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_employees e004t
} 
 else {
capture rename total_salaried_employees e004t
}

capture confirm variable e004f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_female e004f
} 
 else {
capture rename total_salaried_female e004f
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" county ag003
} 
 else {
capture rename county ag003
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" subsidiary am001
} 
 else {
capture rename subsidiary am001
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weseptembe ewemt09
} 
 else {
capture rename weseptembe ewemt09
}

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_purchased_current fe002c
} 
 else {
capture rename cost_purchased_current fe002c
}

capture confirm variable e001m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors_male e001m
} 
 else {
capture rename proprietors_male e001m
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjul ewemt07
} 
 else {
capture rename wjul ewemt07
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Feb ewemt02
} 
 else {
capture rename wage_earners_Feb ewemt02
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjun ewemt06
} 
 else {
capture rename wjun ewemt06
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotlnm ewemt
} 
 else {
capture rename wetotlnm ewemt
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" correspondingtotalvaluefor1934 g001v
} 
 else {
capture rename correspondingtotalvaluefor1934 g001v
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" County ag003
} 
 else {
capture rename County ag003
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" othraddr ag008
} 
 else {
capture rename othraddr ag008
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_nature_bus as004
} 
 else {
capture rename change_nature_bus as004
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_apr emh04
} 
 else {
capture rename manhours_apr emh04
}

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totval g000v
} 
 else {
capture rename totval g000v
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supvwgs e003s
} 
 else {
capture rename supvwgs e003s
}

capture confirm variable e003c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisor e003c
} 
 else {
capture rename supervisor e003c
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenovnm ewemt11
} 
 else {
capture rename wenovnm ewemt11
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_sep e003tc09
} 
 else {
capture rename clerks_sep e003tc09
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesel_number he003n
} 
 else {
capture rename diesel_number he003n
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejune ewemt06
} 
 else {
capture rename wejune ewemt06
}

capture confirm variable e005f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fwenm e005f
} 
 else {
capture rename fwenm e005f
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuelcost f002
} 
 else {
capture rename fuelcost f002
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" offcslry e002s
} 
 else {
capture rename offcslry e002s
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_materials f001
} 
 else {
capture rename cost_materials f001
}

capture confirm variable e005m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mnnwenm e005m
} 
 else {
capture rename mnnwenm e005m
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" propnm e001t
} 
 else {
capture rename propnm e001t
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Costofcontractwork f004
} 
 else {
capture rename Costofcontractwork f004
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_employees_salary e004s
} 
 else {
capture rename total_salaried_employees_salary e004s
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Waterwheelsnumber hp004n
} 
 else {
capture rename Waterwheelsnumber hp004n
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" asalariestoprincipalofficie e002s
} 
 else {
capture rename asalariestoprincipalofficie e002s
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamturbines_number hp002n
} 
 else {
capture rename steamturbines_number hp002n
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Numberofshiftsperday d004
} 
 else {
capture rename Numberofshiftsperday d004
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plntname a001
} 
 else {
capture rename plntname a001
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages_paid e005s
} 
 else {
capture rename wages_paid e005s
}

capture confirm variable hp005h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_purchased_horsepower hp005h
} 
 else {
capture rename motor_purchased_horsepower hp005h
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" asalariestoprincipalofficiers e002s
} 
 else {
capture rename asalariestoprincipalofficiers e002s
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_co f004
} 
 else {
capture rename cost_of_co f004
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" imagenumber z_imageNumber
} 
 else {
capture rename imagenumber z_imageNumber
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_1934 g001v
} 
 else {
capture rename total_value_1934 g001v
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Oct ewemt10
} 
 else {
capture rename wage_earners_Oct ewemt10
}

capture confirm variable e003m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_male e003m
} 
 else {
capture rename managers_male e003m
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejan ewemt01
} 
 else {
capture rename wejan ewemt01
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptcontractwork gcontract
} 
 else {
capture rename Receiptcontractwork gcontract
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Sept ewemt09
} 
 else {
capture rename wage_earners_Sept ewemt09
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natureofbusiness as004
} 
 else {
capture rename natureofbusiness as004
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_july emh07
} 
 else {
capture rename manhours_july emh07
}

local counter = 1
 foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {
 capture rename `i'_cost ff00`counter'c
capture label var ff00`counter'c "Fuel used: `i', cost"
 capture rename `i'_quantity ff00`counter'q
 capture label var ff00`counter'q "Fuel used: `i', quantity"
 local counter = `counter'+1
 }
local counter = 1
 foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {
 capture rename `i'_value ff00`counter'c
capture label var ff00`counter'c "Fuel used: `i', cost"
 capture rename `i'_quantity ff00`counter'q
 capture label var ff00`counter'q "Fuel used: `i', quantity"
 local counter = `counter'+1
 }
//Script to rename variables in legacy industries to CK convention
/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlcost f000
} 
 else {
capture rename totlcost f000
}
*/

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_name as001
} 
 else {
capture rename change_name as001
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" stmenghp hp001h
} 
 else {
capture rename stmenghp hp001h
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Numberofhoursplantwasopera d002
} 
 else {
capture rename Numberofhoursplantwasopera d002
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nameofplant a001
} 
 else {
capture rename nameofplant a001
}

capture confirm variable z_form, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" formnm z_form
} 
 else {
capture rename formnm z_form
}

capture confirm variable e001f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fpropnm e001f
} 
 else {
capture rename fpropnm e001f
}

capture confirm variable e004m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_male e004m
} 
 else {
capture rename total_salaried_male e004m
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clrkslry e003tcs
} 
 else {
capture rename clrkslry e003tcs
}

capture confirm variable ff003c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coke_cost ff003c
} 
 else {
capture rename coke_cost ff003c
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_costs f000
} 
 else {
capture rename total_costs f000
}
*/

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_may ewemt05
} 
 else {
capture rename wage_earners_may ewemt05
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Normalnumberofhoursperweek d003
} 
 else {
capture rename Normalnumberofhoursperweek d003
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_jun e003tc06
} 
 else {
capture rename clerks_jun e003tc06
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_mar ewemt03
} 
 else {
capture rename wage_earners_mar ewemt03
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" POAddressifDifferent ag008
} 
 else {
capture rename POAddressifDifferent ag008
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weapril ewemt04
} 
 else {
capture rename weapril ewemt04
}

/*
capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_e e003te
} 
 else {
capture rename clerical_e e003te
}
*/

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_march emh03
} 
 else {
capture rename manhours_march emh03
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nwplnt as000
} 
 else {
capture rename nwplnt as000
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaprnm ewemt04
} 
 else {
capture rename weaprnm ewemt04
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" newplant as000
} 
 else {
capture rename newplant as000
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nameofowner a002
} 
 else {
capture rename nameofowner a002
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbinesnumber hp002n
} 
 else {
capture rename Steamturbinesnumber hp002n
}

capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ctlotryn a004
} 
 else {
capture rename ctlotryn a004
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" dieselandsemidieselenginesh he003h
} 
 else {
capture rename dieselandsemidieselenginesh he003h
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesforofficers e002s
} 
 else {
capture rename salariesforofficers e002s
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cjun e003tc06
} 
 else {
capture rename cjun e003tc06
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" f_county ag003
} 
 else {
capture rename f_county ag003
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaug ewemt08
} 
 else {
capture rename weaug ewemt08
}

capture confirm variable as005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" frmrinfo as005
} 
 else {
capture rename frmrinfo as005
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofshiftsperday d004
} 
 else {
capture rename numberofshiftsperday d004
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value_1934 g001v
} 
 else {
capture rename total_output_value_1934 g001v
}

capture confirm variable hp007n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" other_internal_combustion_number hp007n
} 
 else {
capture rename other_internal_combustion_number hp007n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionengineshorsepo hp003h
} 
 else {
capture rename internalcombustionengineshorsepo hp003h
}

capture confirm variable e003t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_ e003t
} 
 else {
capture rename managers_ e003t
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_totldays d003
} 
 else {
capture rename a_totldays d003
}

capture confirm variable e003t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngrnm e003t
} 
 else {
capture rename mngrnm e003t
}

capture confirm variable fe002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_purchased_electricity fe002
} 
 else {
capture rename cost_purchased_electricity fe002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wsep ewemt09
} 
 else {
capture rename wsep ewemt09
}

capture confirm variable he002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_generated_hp he002h
} 
 else {
capture rename electric_motors_generated_hp he002h
}

capture confirm variable ag007, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" othrcity ag007
} 
 else {
capture rename othrcity ag007
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bcostofmaterials f001
} 
 else {
capture rename bcostofmaterials f001
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" lnchngyn as002
} 
 else {
capture rename lnchngyn as002
}

capture confirm variable e003f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_female e003f
} 
 else {
capture rename managers_female e003f
}

capture confirm variable ag001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" State ag001
} 
 else {
capture rename State ag001
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" street ag004
} 
 else {
capture rename street ag004
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wmay ewemt05
} 
 else {
capture rename wmay ewemt05
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamturbineNumber hp002n
} 
 else {
capture rename SteamturbineNumber hp002n
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_ownership as003
} 
 else {
capture rename change_ownership as003
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wmar ewemt03
} 
 else {
capture rename wmar ewemt03
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turbines_number hp002n
} 
 else {
capture rename steam_turbines_number hp002n
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedlocation as002
} 
 else {
capture rename changedlocation as002
}

capture confirm variable k004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_retail_owned k004
} 
 else {
capture rename sales_retail_owned k004
}

capture confirm variable ff001q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_anthracite_quantity ff001q
} 
 else {
capture rename coal_anthracite_quantity ff001q
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" normalnumberofhoursperweek d003
} 
 else {
capture rename normalnumberofhoursperweek d003
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesel_horsepower he003h
} 
 else {
capture rename diesel_horsepower he003h
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotal ewemt
} 
 else {
capture rename wetotal ewemt
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cdec e003tc12
} 
 else {
capture rename cdec e003tc12
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesforclerks e003tcs
} 
 else {
capture rename salariesforclerks e003tcs
}

capture confirm variable bp001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" products bp001
} 
 else {
capture rename products bp001
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjul emh07
} 
 else {
capture rename manhoursjul emh07
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Waterwheelshorsepower hp004h
} 
 else {
capture rename Waterwheelshorsepower hp004h
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjun emh06
} 
 else {
capture rename manhoursjun emh06
}

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jan emh01
} 
 else {
capture rename manhours_jan emh01
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natureofbusin as004
} 
 else {
capture rename natureofbusin as004
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages e005s
} 
 else {
capture rename total_wages e005s
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" num_days_operation d001
} 
 else {
capture rename num_days_operation d001
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_oct ewemt10
} 
 else {
capture rename wage_earners_oct ewemt10
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_March ewemt03
} 
 else {
capture rename wage_earners_March ewemt03
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheelshorsepower hp004h
} 
 else {
capture rename waterwheelshorsepower hp004h
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wage e005t
} 
 else {
capture rename total_wage e005t
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ice_ hp003n
} 
 else {
capture rename ice_ hp003n
}

capture confirm variable ff001c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_anthracite_cost ff001c
} 
 else {
capture rename coal_anthracite_cost ff001c
}

capture confirm variable e003m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mmgrnm e003m
} 
 else {
capture rename mmgrnm e003m
}

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value g000v
} 
 else {
capture rename total_output_value g000v
}

capture confirm variable e009s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weslry e009s
} 
 else {
capture rename weslry e009s
}

capture confirm variable am002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mthrinfo am002
} 
 else {
capture rename mthrinfo am002
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalamountpaidtowageearners e005s
} 
 else {
capture rename totalamountpaidtowageearners e005s
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_August ewemt08
} 
 else {
capture rename wage_earners_August ewemt08
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weapr ewemt04
} 
 else {
capture rename weapr ewemt04
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeindifferentlocation ag008
} 
 else {
capture rename postofficeindifferentlocation ag008
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesformanagers e003s
} 
 else {
capture rename Salariesformanagers e003s
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Wageearners ewemt
} 
 else {
capture rename Wageearners ewemt
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Managers e003ta
} 
 else {
capture rename Managers e003ta
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners ewemt
} 
 else {
capture rename wage_earners ewemt
}

capture confirm variable emht, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlmh emht
} 
 else {
capture rename totlmh emht
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" offcnm e002t
} 
 else {
capture rename offcnm e002t
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_june ewemt06
} 
 else {
capture rename wage_earners_june ewemt06
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bsalariestomanagers e003s
} 
 else {
capture rename bsalariestomanagers e003s
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nwplntyn as000
} 
 else {
capture rename nwplntyn as000
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" owchngyn as003
} 
 else {
capture rename owchngyn as003
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sbsdryyn am001
} 
 else {
capture rename sbsdryyn am001
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_april emh04
} 
 else {
capture rename manhours_april emh04
}

capture confirm variable c001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Began c001
} 
 else {
capture rename Began c001
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngrslry e003s
} 
 else {
capture rename mngrslry e003s
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ownrname a002
} 
 else {
capture rename ownrname a002
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenovember ewemt11
} 
 else {
capture rename wenovember ewemt11
}

capture confirm variable e003tc06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_jun e003tc06
} 
 else {
capture rename clerical_employees_jun e003tc06
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poaddressifdifferent ag008
} 
 else {
capture rename poaddressifdifferent ag008
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbineshorsepower hp002h
} 
 else {
capture rename Steamturbineshorsepower hp002h
}

capture confirm variable c002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" end c002
} 
 else {
capture rename end c002
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_march e003tc03
} 
 else {
capture rename clerks_march e003tc03
}

capture confirm variable ff006c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natural_gas_cost ff006c
} 
 else {
capture rename natural_gas_cost ff006c
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Clerks e003tc
} 
 else {
capture rename Clerks e003tc
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value1934 g001v
} 
 else {
capture rename total_output_value1934 g001v
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamenginenumber hp001n
} 
 else {
capture rename steamenginenumber hp001n
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numdaysplantinoperation d001
} 
 else {
capture rename numdaysplantinoperation d001
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesforclerks e004s
} 
 else {
capture rename Salariesforclerks e004s
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_dec e003tc12
} 
 else {
capture rename clerks_dec e003tc12
}

capture confirm variable e003f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fmngrnm e003f
} 
 else {
capture rename fmngrnm e003f
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Total ewemt
} 
 else {
capture rename wage_earners_Total ewemt
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wtrwhlhp hp004h
} 
 else {
capture rename wtrwhlhp hp004h
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" indnm z_indCode
} 
 else {
capture rename indnm z_indCode
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" k_nmchngyn as001
} 
 else {
capture rename k_nmchngyn as001
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wdec ewemt12
} 
 else {
capture rename wdec ewemt12
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_october emh10
} 
 else {
capture rename manhours_october emh10
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_gopoaddr ag008
} 
 else {
capture rename c_gopoaddr ag008
}

capture confirm variable e005f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fnnwenm e005f
} 
 else {
capture rename fnnwenm e005f
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejul ewemt07
} 
 else {
capture rename wejul ewemt07
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" water_whee hp004n
} 
 else {
capture rename water_whee hp004n
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejun ewemt06
} 
 else {
capture rename wejun ewemt06
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisanewplantwhichstartedopera as000
} 
 else {
capture rename isthisanewplantwhichstartedopera as000
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" receiptcontractwork gcontract
} 
 else {
capture rename receiptcontractwork gcontract
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenov ewemt11
} 
 else {
capture rename wenov ewemt11
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" imageno z_imageNumber
} 
 else {
capture rename imageno z_imageNumber
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ImageNumber z_imageNumber
} 
 else {
capture rename ImageNumber z_imageNumber
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" woct ewemt10
} 
 else {
capture rename woct ewemt10
}

/*
capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" soffcwgs e002t
} 
 else {
capture rename soffcwgs e002t
}
*/

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" purchased_current_kilowatt fe002c
} 
 else {
capture rename purchased_current_kilowatt fe002c
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_october ewemt10
} 
 else {
capture rename wage_earners_october ewemt10
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_sep ewemt09
} 
 else {
capture rename wage_earners_sep ewemt09
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Salariesforofficers e002s
} 
 else {
capture rename Salariesforofficers e002s
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_septemer e003tc09
} 
 else {
capture rename clerks_septemer e003tc09
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursnov emh11
} 
 else {
capture rename manhoursnov emh11
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diessel_horsepower he003h
} 
 else {
capture rename diessel_horsepower he003h
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Officers e002t
} 
 else {
capture rename Officers e002t
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jun ewemt06
} 
 else {
capture rename wage_earners_jun ewemt06
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jul ewemt07
} 
 else {
capture rename wage_earners_jul ewemt07
}

capture confirm variable d006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wrkrhpwk d006
} 
 else {
capture rename wrkrhpwk d006
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_august emh08
} 
 else {
capture rename manhours_august emh08
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nameandaddressofconcern ag008
} 
 else {
capture rename nameandaddressofconcern ag008
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_technical_employees e003tes
} 
 else {
capture rename salaries_technical_employees e003tes
}

capture confirm variable f009, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_materials_energy f009
} 
 else {
capture rename cost_materials_energy f009
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incorporatedconcern a003
} 
 else {
capture rename incorporatedconcern a003
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incorporated a003
} 
 else {
capture rename incorporated a003
}


capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poaddressifdifferentlocatio ag008
} 
 else {
capture rename poaddressifdifferentlocatio ag008
}

capture confirm variable c002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" End c002
} 
 else {
capture rename End c002
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_april ewemt04
} 
 else {
capture rename wage_earners_april ewemt04
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofallmaterials f001
} 
 else {
capture rename costofallmaterials f001
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Nov ewemt11
} 
 else {
capture rename wage_earners_Nov ewemt11
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamengine_number hp001n
} 
 else {
capture rename steamengine_number hp001n
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoctober ewemt10
} 
 else {
capture rename weoctober ewemt10
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_november ewemt11
} 
 else {
capture rename wage_earners_november ewemt11
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engines_number hp001n
} 
 else {
capture rename steam_engines_number hp001n
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cpaidtowageearners e005s
} 
 else {
capture rename cpaidtowageearners e005s
}

capture confirm variable ff006q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natural_gas_quantity ff006q
} 
 else {
capture rename natural_gas_quantity ff006q
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_June ewemt06
} 
 else {
capture rename wage_earners_June ewemt06
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefeb ewemt02
} 
 else {
capture rename wefeb ewemt02
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofcontractwork f004
} 
 else {
capture rename costofcontractwork f004
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamEngineHorsepower hp001h
} 
 else {
capture rename SteamEngineHorsepower hp001h
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionenginesnumber hp003n
} 
 else {
capture rename internalcombustionenginesnumber hp003n
}

capture confirm variable e001f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors_female e001f
} 
 else {
capture rename proprietors_female e001f
}

capture confirm variable e005sp, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages_1934 e005sp
} 
 else {
capture rename total_wages_1934 e005sp
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" industrialcode z_indCode
} 
 else {
capture rename industrialcode z_indCode
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlwgs e005s
} 
 else {
capture rename totlwgs e005s
}

capture confirm variable hp007h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" other_internal_combustion_hp hp007h
} 
 else {
capture rename other_internal_combustion_hp hp007h
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_clerks e003tcs
} 
 else {
capture rename salaries_clerks e003tcs
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Jan ewemt01
} 
 else {
capture rename wage_earners_Jan ewemt01
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_contract_work f004
} 
 else {
capture rename cost_contract_work f004
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" NameofPlant a001
} 
 else {
capture rename NameofPlant a001
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejuly ewemt07
} 
 else {
capture rename wejuly ewemt07
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages e005s
} 
 else {
capture rename wages e005s
}

capture confirm variable ag006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incityyn ag006
} 
 else {
capture rename incityyn ag006
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" city ag002
} 
 else {
capture rename city ag002
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wfeb ewemt02
} 
 else {
capture rename wfeb ewemt02
}

capture confirm variable he002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_generated_num he002n
} 
 else {
capture rename electric_motors_generated_num he002n
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ChangedLocation as002
} 
 else {
capture rename ChangedLocation as002
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_aug ewemt08
} 
 else {
capture rename wage_earners_aug ewemt08
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptsforcontractwork gcontract
} 
 else {
capture rename Receiptsforcontractwork gcontract
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_October ewemt10
} 
 else {
capture rename wage_earners_October ewemt10
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamturbines_horsepower hp002h
} 
 else {
capture rename steamturbines_horsepower hp002h
}

capture confirm variable hp004h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheels_horsepower hp004h
} 
 else {
capture rename waterwheels_horsepower hp004h
}

capture confirm variable ff005q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gasoline_quantity ff005q
} 
 else {
capture rename gasoline_quantity ff005q
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diessel_number he003n
} 
 else {
capture rename diessel_number he003n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" h_othraddr ag008
} 
 else {
capture rename h_othraddr ag008
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionenginesnumb hp003n
} 
 else {
capture rename internalcombustionenginesnumb hp003n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustionengineshors hp003h
} 
 else {
capture rename internalcombustionengineshors hp003h
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_february ewemt02
} 
 else {
capture rename wage_earners_february ewemt02
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_December ewemt12
} 
 else {
capture rename wage_earners_December ewemt12
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ImageNo z_imageNumber
} 
 else {
capture rename ImageNo z_imageNumber
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" intcmbhp hp003h
} 
 else {
capture rename intcmbhp hp003h
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" IndustryCode z_indCode
} 
 else {
capture rename IndustryCode z_indCode
}

capture confirm variable ff005c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gasoline_cost ff005c
} 
 else {
capture rename gasoline_cost ff005c
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_dec ewemt12
} 
 else {
capture rename wage_earners_dec ewemt12
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptsforcontrackwork f004
} 
 else {
capture rename Receiptsforcontrackwork f004
}

capture confirm variable ff007c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manufactured_gas_cost ff007c
} 
 else {
capture rename manufactured_gas_cost ff007c
}

capture confirm variable d001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totldays d001
} 
 else {
capture rename totldays d001
}

capture confirm variable e004t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaried_employees e004t
} 
 else {
capture rename salaried_employees e004t
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemarch ewemt03
} 
 else {
capture rename wemarch ewemt03
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wesepnm ewemt09
} 
 else {
capture rename wesepnm ewemt09
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjan ewemt01
} 
 else {
capture rename wjan ewemt01
}

capture confirm variable e002f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_female e002f
} 
 else {
capture rename officers_female e002f
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_mar e003tc03
} 
 else {
capture rename clerical_employees_mar e003tc03
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_salaried e002t
} 
 else {
capture rename b_salaried e002
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" bschngyn as004
} 
 else {
capture rename bschngyn as004
}

capture confirm variable z_indCode, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" industrycode z_indCode
} 
 else {
capture rename industrycode z_indCode
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" StreetandNumber ag004
} 
 else {
capture rename StreetandNumber ag004
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers e002t
} 
 else {
capture rename officers e002t
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earne e005t
} 
 else {
capture rename wage_earne e005t
}

capture confirm variable as000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisanewplantwhichstarte as000
} 
 else {
capture rename isthisanewplantwhichstarte as000
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_december e003tc12
} 
 else {
capture rename clerks_december e003tc12
}

/*
capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clrknm e003te
} 
 else {
capture rename clrknm e003te
}
*/

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursjan emh01
} 
 else {
capture rename manhoursjan emh01
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_propriet e001t
} 
 else {
capture rename a_propriet e001t
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_aug emh08
} 
 else {
capture rename manhours_aug emh08
}

capture confirm variable e002f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" foffcnm e002f
} 
 else {
capture rename foffcnm e002f
}

capture confirm variable hp005n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_purchased_number hp005n
} 
 else {
capture rename motor_purchased_number hp005n
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees e003tc
} 
 else {
capture rename clerical_employees e003tc
}

capture confirm variable ff002q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_bituminous_quantity ff002q
} 
 else {
capture rename coal_bituminous_quantity ff002q
}

capture confirm variable k000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_sales k000
} 
 else {
capture rename total_sales k000
}

capture confirm variable e005sp, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" correspondingtotalofwagesin1934 e005sp
} 
 else {
capture rename correspondingtotalofwagesin1934 e005sp
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_december ewemt12
} 
 else {
capture rename wage_earners_december ewemt12
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursdec emh12
} 
 else {
capture rename manhoursdec emh12
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemar ewemt03
} 
 else {
capture rename wemar ewemt03
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_december emh12
} 
 else {
capture rename manhours_december emh12
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemay ewemt05
} 
 else {
capture rename wemay ewemt05
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_November ewemt11
} 
 else {
capture rename wage_earners_November ewemt11
}

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electricity_purchased fe002c
} 
 else {
capture rename electricity_purchased fe002c
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" isthisincorporated a003
} 
 else {
capture rename isthisincorporated a003
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_mar e003tc03
} 
 else {
capture rename clerks_mar e003tc03
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totlslry e004s
} 
 else {
capture rename totlslry e004s
}

capture confirm variable e001m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mpropnm e001m
} 
 else {
capture rename mpropnm e001m
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejanuary ewemt01
} 
 else {
capture rename wejanuary ewemt01
}

capture confirm variable emh01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_january emh01
} 
 else {
capture rename manhours_january emh01
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofhoursplantwasoperated d002
} 
 else {
capture rename numberofhoursplantwasoperated d002
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_wrkrhpwk d005
} 
 else {
capture rename b_wrkrhpwk d005
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesselandsemidieselengines he003n
} 
 else {
capture rename diesselandsemidieselengines he003n
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedecember ewemt12
} 
 else {
capture rename wedecember ewemt12
}

capture confirm variable e002m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_male e002m
} 
 else {
capture rename officers_male e002m
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Dec ewemt12
} 
 else {
capture rename wage_earners_Dec ewemt12
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks e003tc
} 
 else {
capture rename clerks e003tc
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeindifferentlocatio ag008
} 
 else {
capture rename postofficeindifferentlocatio ag008
}

capture confirm variable g00Mv, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_manufactured g00Mv
} 
 else {
capture rename total_value_manufactured g00Mv
}

capture confirm variable as003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedownership as003
} 
 else {
capture rename changedownership as003
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" stmtrbhp hp002h
} 
 else {
capture rename stmtrbhp hp002h
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_june emh06
} 
 else {
capture rename manhours_june emh06
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoct ewemt10
} 
 else {
capture rename weoct ewemt10
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" techwgs e003tes
} 
 else {
capture rename techwgs e003tes
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" days_per_week d003
} 
 else {
capture rename days_per_week d003
}

capture confirm variable k005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_industrial k005
} 
 else {
capture rename sales_industrial k005
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" branchofsubidiary am001
} 
 else {
capture rename branchofsubidiary am001
}

capture confirm variable ag004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" streetandnumber ag004
} 
 else {
capture rename streetandnumber ag004
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamengine_horsepower hp001h
} 
 else {
capture rename steamengine_horsepower hp001h
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_sept ewemt09
} 
 else {
capture rename wage_earners_sept ewemt09
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" contcost f004
} 
 else {
capture rename contcost f004
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemarnm ewemt03
} 
 else {
capture rename wemarnm ewemt03
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_April ewemt04
} 
 else {
capture rename wage_earners_April ewemt04
}

capture confirm variable e003tc12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_dec e003tc12
} 
 else {
capture rename clerical_employees_dec e003tc12
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Proprietors e001t
} 
 else {
capture rename Proprietors e001t
}

capture confirm variable ag001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" state ag001
} 
 else {
capture rename state ag001
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_ e003te
} 
 else {
capture rename technical_ e003te
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plnthpdy 
} 
 else {
capture rename plnthpdy 
}

capture confirm variable fe001k, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" generated_current_kilowatt fe001k
} 
 else {
capture rename generated_current_kilowatt fe001k
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_nov ewemt11
} 
 else {
capture rename wage_earners_nov ewemt11
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ccostofcontractwork f004
} 
 else {
capture rename ccostofcontractwork f004
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wapr ewemt03
} 
 else {
capture rename wapr ewemt03
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursapr emh04
} 
 else {
capture rename manhoursapr emh04
}

capture confirm variable emht, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_total emht
} 
 else {
capture rename manhours_total emht
}

capture confirm variable d006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_per_wage_earner d006
} 
 else {
capture rename hours_per_wage_earner d006
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" workdpwk d005
} 
 else {
capture rename workdpwk d005
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" NameofOwner a002
} 
 else {
capture rename NameofOwner a002
}

capture confirm variable fe002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_pu fe002
} 
 else {
capture rename cost_of_pu fe002
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejannm ewemt01
} 
 else {
capture rename wejannm ewemt01
}

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursmar emh03
} 
 else {
capture rename manhoursmar emh03
}

capture confirm variable emh12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_dec emh12
} 
 else {
capture rename manhours_dec emh12
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheels_number hp004n
} 
 else {
capture rename waterwheels_number hp004n
}

capture confirm variable emh05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursmay emh05
} 
 else {
capture rename manhoursmay emh05
}

capture confirm variable ewemt04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_apr ewemt04
} 
 else {
capture rename wage_earners_apr ewemt04
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_operation_day d002
} 
 else {
capture rename hours_operation_day d002
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plnthpdy d002
} 
 else {
capture rename plnthpdy d002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_september ewemt09
} 
 else {
capture rename wage_earners_september ewemt09
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" d_wrkrdpwk d005
} 
 else {
capture rename d_wrkrdpwk d005
}

capture confirm variable a002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_ownrname a002
} 
 else {
capture rename b_ownrname a002
}

capture confirm variable ff0033q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coke_quantity ff0033q
} 
 else {
capture rename coke_quantity ff0033q
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_salary e002s
} 
 else {
capture rename officers_salary e002s
}

capture confirm variable ff002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" coal_bituminous_cost ff002c
} 
 else {
capture rename coal_bituminous_cost ff002c
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaugust ewemt08
} 
 else {
capture rename weaugust ewemt08
}

capture confirm variable he001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_purchased_num he001n
} 
 else {
capture rename electric_motors_purchased_num he001n
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamenginehorsepower hp001h
} 
 else {
capture rename steamenginehorsepower hp001h
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nmchngyn as001
} 
 else {
capture rename nmchngyn as001
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_sep emh09
} 
 else {
capture rename manhours_sep emh09
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jul emh07
} 
 else {
capture rename manhours_jul emh07
}

capture confirm variable emh06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_jun emh06
} 
 else {
capture rename manhours_jun emh06
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wnov ewemt11
} 
 else {
capture rename wnov ewemt11
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Steamturbinehorsepower hp002h
} 
 else {
capture rename Steamturbinehorsepower hp002h
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" gopoaddr ag008
} 
 else {
capture rename gopoaddr ag008
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejunnm ewemt06
} 
 else {
capture rename wejunnm ewemt06
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_employees_salary e003tes
} 
 else {
capture rename technical_employees_salary e003tes
}

capture confirm variable k003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_retail_not_owned k003
} 
 else {
capture rename sales_retail_not_owned k003
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_jan ewemt01
} 
 else {
capture rename wage_earners_jan ewemt01
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejulnm ewemt07
} 
 else {
capture rename wejulnm ewemt07
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietor e001t
} 
 else {
capture rename proprietor e001t
}

capture confirm variable bm001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mtlsusd1 bm001
} 
 else {
capture rename mtlsusd1 bm001
}

capture confirm variable bm002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mtlsusd2 bm002
} 
 else {
capture rename mtlsusd2 bm002
}

capture confirm variable e005m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mwenm e005m
} 
 else {
capture rename mwenm e005m
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedec ewemt12
} 
 else {
capture rename wedec ewemt12
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sftsprdy d004
} 
 else {
capture rename sftsprdy d004
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" matlcost f001
} 
 else {
capture rename matlcost f001
}

capture confirm variable ff004q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuel_oils_quantity ff004q
} 
 else {
capture rename fuel_oils_quantity ff004q
}

capture confirm variable hp002h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turbines_hp hp002h
} 
 else {
capture rename steam_turbines_hp hp002h
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustion_number hp003n
} 
 else {
capture rename internalcombustion_number hp003n
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" propietors e001t
} 
 else {
capture rename propietors e001t
}

capture confirm variable as002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_location as002
} 
 else {
capture rename change_location as002
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" subsidiaryofanother am001
} 
 else {
capture rename subsidiaryofanother am001
}

capture confirm variable g00Mv, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_output_value_man g00Mv
} 
 else {
capture rename total_output_value_man g00Mv
}

capture confirm variable am002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" name_parent_firm am002
} 
 else {
capture rename name_parent_firm am002
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhourssept emh09
} 
 else {
capture rename manhourssept emh09
}

capture confirm variable hp001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engines_hp hp001h
} 
 else {
capture rename steam_engines_hp hp001h
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_cost_contract_work f004
} 
 else {
capture rename total_cost_contract_work f004
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefebnm ewemt02
} 
 else {
capture rename wefebnm ewemt02
}

capture confirm variable e009s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_wages_salaries e009s
} 
 else {
capture rename total_wages_salaries e009s
}

capture confirm variable k006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_home k006
} 
 else {
capture rename sales_home k006
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_feb ewemt02
} 
 else {
capture rename wage_earners_feb ewemt02
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" internalcombustion_horsepower hp003h
} 
 else {
capture rename internalcombustion_horsepower hp003h
}

capture confirm variable year, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" censusyear year
} 
 else {
capture rename censusyear year
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waug ewemt08
} 
 else {
capture rename waug ewemt08
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" principal_ e002t
} 
 else {
capture rename principal_ e002t
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" SteamEngineNumber hp001n
} 
 else {
capture rename SteamEngineNumber hp001n
}

capture confirm variable emh08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursaug emh08
} 
 else {
capture rename manhoursaug emh08
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Hoursperday d002
} 
 else {
capture rename Hoursperday d002
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_plntname a001
} 
 else {
capture rename a_plntname a001
}

capture confirm variable hp006h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_generated_horsepower hp006h
} 
 else {
capture rename motor_generated_horsepower hp006h
}

capture confirm variable c001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" began c001
} 
 else {
capture rename began c001
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_wages_pa e005s
} 
 else {
capture rename c_wages_pa e005s
}

capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" ewe e005t
} 
 else {
capture rename ewe e005t
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" csep e003tc09
} 
 else {
capture rename csep e003tc09
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hoursperweek d003
} 
 else {
capture rename hoursperweek d003
}

capture confirm variable ff007q, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manufactured_gas_quantity ff007q
} 
 else {
capture rename manufactured_gas_quantity ff007q
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" costofmaterials f001
} 
 else {
capture rename costofmaterials f001
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_november emh11
} 
 else {
capture rename manhours_november emh11
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors e001t
} 
 else {
capture rename proprietors e001t
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" technical_employees e003te
} 
 else {
capture rename technical_employees e003te
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_feb emh02
} 
 else {
capture rename manhours_feb emh02
}

capture confirm variable fe002k, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electricity_generated_plant_used fe002k
} 
 else {
capture rename electricity_generated_plant_used fe002k
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_august ewemt08
} 
 else {
capture rename wage_earners_august ewemt08
}

/*
capture confirm variable e005t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wagenm e005t
} 
 else {
capture rename wagenm e005t
}
*/

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_total ewemt
} 
 else {
capture rename wage_earners_total ewemt
}

capture confirm variable wettl, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_total wettl
} 
 else {
capture rename wage_earners_total wettl
}


capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" oneormoreother a004
} 
 else {
capture rename oneormoreother a004
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" citytownorvillage ag002
} 
 else {
capture rename citytownorvillage ag002
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_May ewemt05
} 
 else {
capture rename wage_earners_May ewemt05
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_oct emh10
} 
 else {
capture rename manhours_oct emh10
}

capture confirm variable emh09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_september emh09
} 
 else {
capture rename manhours_september emh09
}

capture confirm variable ag006, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" i_incityyn ag006
} 
 else {
capture rename i_incityyn ag006
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_September ewemt09
} 
 else {
capture rename wage_earners_September ewemt09
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_fuel f002
} 
 else {
capture rename cost_fuel f002
}

capture confirm variable hp001n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_engi hp001n
} 
 else {
capture rename steam_engi hp001n
}

capture confirm variable k001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_wholesale_not_owned k001
} 
 else {
capture rename sales_wholesale_not_owned k001
}

capture confirm variable ewemt08, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weaugnm ewemt08
} 
 else {
capture rename weaugnm ewemt08
}

capture confirm variable a003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" incyn a003
} 
 else {
capture rename incyn a003
}

capture confirm variable k002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" sales_wholesale_owned k002
} 
 else {
capture rename sales_wholesale_owned k002
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" po_address_if_different ag008
} 
 else {
capture rename po_address_if_different ag008
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_ma f001
} 
 else {
capture rename cost_of_ma f001
}

capture confirm variable as001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" changedname as001
} 
 else {
capture rename changedname as001
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalcost f000
} 
 else {
capture rename totalcost f000
}
*/

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totalval g000v
} 
 else {
capture rename totalval g000v
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Nameandaddressofconcern ag008
} 
 else {
capture rename Nameandaddressofconcern ag008
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeaddress ag008
} 
 else {
capture rename postofficeaddress ag008
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" receipts_contract_work gcontract
} 
 else {
capture rename receipts_contract_work gcontract
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_salary e003tcs
} 
 else {
capture rename clerical_employees_salary e003tcs
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_employees_sep e003tc09
} 
 else {
capture rename clerical_employees_sep e003tc09
}

capture confirm variable a004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Oneormoreother a004
} 
 else {
capture rename Oneormoreother a004
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_managers e003s
} 
 else {
capture rename salaries_managers e003s
}

capture confirm variable hp006n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_generated_number hp006n
} 
 else {
capture rename motor_generated_number hp006n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" PostOfficeAddress ag008
} 
 else {
capture rename PostOfficeAddress ag008
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotl ewemt
} 
 else {
capture rename wetotl ewemt
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" j_sbsdryyn am001
} 
 else {
capture rename j_sbsdryyn am001
}

capture confirm variable bp001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_products bp001
} 
 else {
capture rename a_products bp001
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" poboxifdifferent ag008
} 
 else {
capture rename poboxifdifferent ag008
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salariesformanagers e003s
} 
 else {
capture rename salariesformanagers e003s
}

capture confirm variable emh11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_nov emh11
} 
 else {
capture rename manhours_nov emh11
}

capture confirm variable ff004c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuel_oils_cost ff004c
} 
 else {
capture rename fuel_oils_cost ff004c
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" dieselandsemidieselenginesn he003n
} 
 else {
capture rename dieselandsemidieselenginesn he003n
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_february emh02
} 
 else {
capture rename manhours_february emh02
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hours_operation_week d003
} 
 else {
capture rename hours_operation_week d003
}

capture confirm variable emh05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_may emh05
} 
 else {
capture rename manhours_may emh05
}

capture confirm variable emh03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_mar emh03
} 
 else {
capture rename manhours_mar emh03
}

capture confirm variable ag002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" CityTownorVillage ag002
} 
 else {
capture rename CityTownorVillage ag002
}

capture confirm variable emh10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursoct emh10
} 
 else {
capture rename manhoursoct emh10
}

/*
capture confirm variable f000, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_cost f000
} 
 else {
capture rename total_cost f000
}
*/

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" salaries_officers e002s
} 
 else {
capture rename salaries_officers e002s
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" numberofhoursplantwasopera d002
} 
 else {
capture rename numberofhoursplantwasopera d002
}

capture confirm variable gvadd, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_added gvadd
} 
 else {
capture rename total_value_added gvadd
}

capture confirm variable ewemt12, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wedecnm ewemt12
} 
 else {
capture rename wedecnm ewemt12
}

capture confirm variable d002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" hoursperday d002
} 
 else {
capture rename hoursperday d002
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wesep ewemt09
} 
 else {
capture rename wesep ewemt09
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steam_turb hp002n
} 
 else {
capture rename steam_turb hp002n
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" postofficeaddressofgeneralo ag008
} 
 else {
capture rename postofficeaddressofgeneralo ag008
}

capture confirm variable d003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plnthpwk d003
} 
 else {
capture rename plnthpwk d003
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_sala e004s
} 
 else {
capture rename total_sala e004s
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_july ewemt07
} 
 else {
capture rename wage_earners_july ewemt07
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weoctnm ewemt10
} 
 else {
capture rename weoctnm ewemt10
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" awages e005s
} 
 else {
capture rename awages e005s
}

capture confirm variable e002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" moffcm e002n
} 
 else {
capture rename moffcm e002n
}

capture confirm variable e003tc03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cmar e003tc03
} 
 else {
capture rename cmar e003tc03
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_fu f002
} 
 else {
capture rename cost_of_fu f002
}

capture confirm variable d005, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wrkrdpwk d005
} 
 else {
capture rename wrkrdpwk d005
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers e003ta
} 
 else {
capture rename managers e003ta
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" shiftsperday d004
} 
 else {
capture rename shiftsperday d004
}

capture confirm variable ewemt05, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wemaynm ewemt05
} 
 else {
capture rename wemaynm ewemt05
}

capture confirm variable e003te, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" d_technica e003te
} 
 else {
capture rename d_technica e003te
}

capture confirm variable e003tas, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisory_employees_salary e003tas
} 
 else {
capture rename supervisory_employees_salary e003tas
}

capture confirm variable e003c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisory_employees e003c
} 
 else {
capture rename supervisory_employees e003c
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wefebruary ewemt02
} 
 else {
capture rename wefebruary ewemt02
}

capture confirm variable ewemt03, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_march ewemt03
} 
 else {
capture rename wage_earners_march ewemt03
}

capture confirm variable e003tes, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages3 e003tes
} 
 else {
capture rename wages3 e003tes
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages1 e002t
} 
 else {
capture rename wages1 e002t
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" waterwheelsnumber hp004n
} 
 else {
capture rename waterwheelsnumber hp004n
}

capture confirm variable hp003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Internalcombustionenginesnumb hp003n
} 
 else {
capture rename Internalcombustionenginesnumb hp003n
}

capture confirm variable hp003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Internalcombustionengineshors hp003h
} 
 else {
capture rename Internalcombustionengineshors hp003h
}

capture confirm variable he003h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesselandsemidieselengineshp he003h
} 
 else {
capture rename diesselandsemidieselengineshp he003h
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_o e002t
} 
 else {
capture rename officers_o e002t
}

capture confirm variable bm001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_mtlsusd1 bm001
} 
 else {
capture rename b_mtlsusd1 bm001
}

capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_january ewemt01
} 
 else {
capture rename wage_earners_january ewemt01
}

capture confirm variable emh02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhoursfeb emh02
} 
 else {
capture rename manhoursfeb emh02
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_July ewemt07
} 
 else {
capture rename wage_earners_July ewemt07
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_sept e003tc09
} 
 else {
capture rename clerks_sept e003tc09
}

capture confirm variable he001h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" electric_motors_purchased_hp he001h
} 
 else {
capture rename electric_motors_purchased_hp he001h
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_sftsprdy d004
} 
 else {
capture rename c_sftsprdy d004
}

capture confirm variable e004t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_employees e004t
} 
 else {
capture rename total_salaried_employees e004t
}

capture confirm variable e004t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" nonwenm e004t
} 
 else {
capture rename nonwenm e004t
}

capture confirm variable e004f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_female e004f
} 
 else {
capture rename total_salaried_female e004f
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" county ag003
} 
 else {
capture rename county ag003
}

capture confirm variable am001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" subsidiary am001
} 
 else {
capture rename subsidiary am001
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" weseptembe ewemt09
} 
 else {
capture rename weseptembe ewemt09
}

capture confirm variable fe002c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_purchased_current fe002c
} 
 else {
capture rename cost_purchased_current fe002c
}

capture confirm variable e001m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" proprietors_male e001m
} 
 else {
capture rename proprietors_male e001m
}

capture confirm variable ewemt07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjul ewemt07
} 
 else {
capture rename wjul ewemt07
}

capture confirm variable ewemt02, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Feb ewemt02
} 
 else {
capture rename wage_earners_Feb ewemt02
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wjun ewemt06
} 
 else {
capture rename wjun ewemt06
}

capture confirm variable ewemt, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wetotlnm ewemt
} 
 else {
capture rename wetotlnm ewemt
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" correspondingtotalvaluefor1934 g001v
} 
 else {
capture rename correspondingtotalvaluefor1934 g001v
}

capture confirm variable ag003, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" County ag003
} 
 else {
capture rename County ag003
}

capture confirm variable ag008, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" othraddr ag008
} 
 else {
capture rename othraddr ag008
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" change_nature_bus as004
} 
 else {
capture rename change_nature_bus as004
}

capture confirm variable emh04, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_apr emh04
} 
 else {
capture rename manhours_apr emh04
}

capture confirm variable g000v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" totval g000v
} 
 else {
capture rename totval g000v
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supvwgs e003s
} 
 else {
capture rename supvwgs e003s
}

capture confirm variable e003c, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisor e003c
} 
 else {
capture rename supervisor e003c
}

capture confirm variable ewemt11, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wenovnm ewemt11
} 
 else {
capture rename wenovnm ewemt11
}

capture confirm variable e003tc09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerks_sep e003tc09
} 
 else {
capture rename clerks_sep e003tc09
}

capture confirm variable he003n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" diesel_number he003n
} 
 else {
capture rename diesel_number he003n
}

capture confirm variable ewemt06, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejune ewemt06
} 
 else {
capture rename wejune ewemt06
}

capture confirm variable e005f, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fwenm e005f
} 
 else {
capture rename fwenm e005f
}

capture confirm variable f002, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" fuelcost f002
} 
 else {
capture rename fuelcost f002
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" offcslry e002s
} 
 else {
capture rename offcslry e002s
}

capture confirm variable f001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_materials f001
} 
 else {
capture rename cost_materials f001
}

capture confirm variable e005m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mnnwenm e005m
} 
 else {
capture rename mnnwenm e005m
}

capture confirm variable e001t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" propnm e001t
} 
 else {
capture rename propnm e001t
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Costofcontractwork f004
} 
 else {
capture rename Costofcontractwork f004
}

capture confirm variable e004s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_salaried_employees_salary e004s
} 
 else {
capture rename total_salaried_employees_salary e004s
}

capture confirm variable hp004n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Waterwheelsnumber hp004n
} 
 else {
capture rename Waterwheelsnumber hp004n
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" asalariestoprincipalofficie e002s
} 
 else {
capture rename asalariestoprincipalofficie e002s
}

capture confirm variable hp002n, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" steamturbines_number hp002n
} 
 else {
capture rename steamturbines_number hp002n
}

capture confirm variable d004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Numberofshiftsperday d004
} 
 else {
capture rename Numberofshiftsperday d004
}

capture confirm variable a001, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" plntname a001
} 
 else {
capture rename plntname a001
}

capture confirm variable e005s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wages_paid e005s
} 
 else {
capture rename wages_paid e005s
}

capture confirm variable hp005h, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" motor_purchased_horsepower hp005h
} 
 else {
capture rename motor_purchased_horsepower hp005h
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" asalariestoprincipalofficiers e002s
} 
 else {
capture rename asalariestoprincipalofficiers e002s
}

capture confirm variable f004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cost_of_co f004
} 
 else {
capture rename cost_of_co f004
}

capture confirm variable z_imageNumber, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" imagenumber z_imageNumber
} 
 else {
capture rename imagenumber z_imageNumber
}

capture confirm variable g001v, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" total_value_1934 g001v
} 
 else {
capture rename total_value_1934 g001v
}

capture confirm variable ewemt10, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Oct ewemt10
} 
 else {
capture rename wage_earners_Oct ewemt10
}

capture confirm variable e003m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_male e003m
} 
 else {
capture rename managers_male e003m
}


capture confirm variable e003m, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mmngrnm e003m
} 
 else {
capture rename mmngrnm e003m
}


capture confirm variable ewemt01, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wejan ewemt01
} 
 else {
capture rename wejan ewemt01
}

capture confirm variable gcontract, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" Receiptcontractwork gcontract
} 
 else {
capture rename Receiptcontractwork gcontract
}

capture confirm variable ewemt09, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" wage_earners_Sept ewemt09
} 
 else {
capture rename wage_earners_Sept ewemt09
}

capture confirm variable as004, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" natureofbusiness as004
} 
 else {
capture rename natureofbusiness as004
}

capture confirm variable emh07, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" manhours_july emh07
} 
 else {
capture rename manhours_july emh07
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_officers e002t
} 
 else {
capture rename b_officers e002t
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_managers e003ta
} 
 else {
capture rename c_managers e003ta
}


capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" d_clerical e003tc
} 
 else {
capture rename d_clerical e003tc
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clrknm e003tc
} 
 else {
capture rename clrknm e003tc
}

capture confirm variable e003tc, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" clerical_e e003tc
} 
 else {
capture rename clerical_e e003tc
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" managers_ e003ta
} 
 else {
capture rename managers_ e003ta
}

capture confirm variable e002t, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" officers_o e002t
} 
 else {
capture rename officers_o e002t
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_supervis e003ta
} 
 else {
capture rename c_supervis e003ta
}

capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" supervisors e003ta
} 
 else {
capture rename supervisors e003ta
}


capture confirm variable e003ta, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" e003c e003ta
} 
 else {
capture rename e003c e003ta
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_salaries e003s
} 
 else {
capture rename b_salaries e003s
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngslry e003s
} 
 else {
capture rename mngslry e003s
}

capture confirm variable e003s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" mngrslry e003s
} 
 else {
capture rename mngrslry e003s
}

capture confirm variable e003tas, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" b_total_am e003tas
} 
 else {
capture rename b_total_am e003tas
}

capture confirm variable e002s, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" a_total_am e002s
} 
 else {
capture rename a_total_am e002s
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" c_total_am e003tcs
} 
 else {
capture rename c_total_am e003tcs
}

capture confirm variable e003tcs, exact
if _rc==0 { 
do "$rootDir_code/General/fix_rename.do" cwgs e003tcs
} 
 else {
capture rename cwgs e003tcs
}






local counter = 1
 foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {
 capture rename `i'_cost ff00`counter'c
capture label var ff00`counter'c "Fuel used: `i', cost"
 capture rename `i'_quantity ff00`counter'q
 capture label var ff00`counter'q "Fuel used: `i', quantity"
 local counter = `counter'+1
 }
local counter = 1
 foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {
 capture rename `i'_value ff00`counter'c
capture label var ff00`counter'c "Fuel used: `i', cost"
 capture rename `i'_quantity ff00`counter'q
 capture label var ff00`counter'q "Fuel used: `i', quantity"
 local counter = `counter'+1
 }
