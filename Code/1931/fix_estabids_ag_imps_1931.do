//fixes establishment IDs for agricultural implements in 1931
tempvar year
destring year, force gen(`year')

replace estabid_ag_imps = "28b" if a001=="Gantt Manufacturing Co." & `year'==1931
replace estabid_ag_imps = "32" if a001=="Lilliston Implement Company" & `year'==1931
replace estabid_ag_imps = "35" if a001=="Southern Plow Co.," & `year'==1931
replace estabid_ag_imps = "792" if estabid_ag_imps == "34"  & ag004 == "" & `year'==1931
replace estabid_ag_imps = "793" if estabid_ag_imps == "157"  & ag002 == "Minneapolis" & `year'==1931
replace estabid_ag_imps = "185" if ag001=="New Jersey" & ag003=="Camden" & `year'==1931
replace estabid_ag_imps = "130" if a001=="Castagnon Cane Loader Co ??" & `year'==1931
replace estabid_ag_imps = "59" if a001=="C. S. Norcross & Sons" & `year'==1931
replace estabid_ag_imps = "189" if a001=="David Wadsworth & Son" & `year'==1931
replace estabid_ag_imps = "283b" if a001=="All Cox Menufacturing Co." & `year'==1931
replace estabid_ag_imps = "261" if a001=="Machinery & Draper Company" & `year'==1931
replace estabid_ag_imps = "259" if a001=="The Cheney Weeder Company" & `year'==1931
replace estabid_ag_imps = "764" if a001=="Lindeman Power Equipment Co." & `year'==1931
replace estabid_ag_imps = "33" if a001=="Atlanta Plow Co." & ag003=="Floyd" & `year'==1931
replace estabid_ag_imps = "34" if a001=="Atlanta Plow Co." & ag003=="Fulton" & `year'==1931
replace estabid_ag_imps = "34b" if a001=="Atlanta Plow Co." & ag004=="Rome Floyd Co Ga" & `year'==1931
replace estabid_ag_imps = "789" if a001=="The Bloom Manufacturing Co." & `year'==1931
replace estabid_ag_imps = "164" if a001=="Minneapolis Moline Power Equipment Company" & ag004=="2854 Minnehahs Avenue" & `year'==1931
