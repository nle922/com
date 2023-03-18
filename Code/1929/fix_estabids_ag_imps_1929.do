//fix estabids for ag. imps in 1929
tempvar year
destring year, force gen(`year')

replace estabid_ag_imps = "247" if a001=="Sargent, Osgood & Roundy Company" & `year'==1929
replace estabid_ag_imps = "248" if a001=="Ayers Peanut Machinery Corp" & `year'==1929
replace estabid_ag_imps = "255" if a001=="P. Bradley & Sons Inc" & `year'==1929
replace estabid_ag_imps = "518" if a001=="Calkins Manufacturing Company" & `year'==1929
replace estabid_ag_imps = "259" if a001=="Cheney Weeder Company" & `year'==1929
replace estabid_ag_imps = "267" if a001=="Madison Plow Co" & `year'==1929
replace estabid_ag_imps = "303" if a001=="Allis-Chalmers Mfg. Co" & `year'==1929
replace estabid_ag_imps = "700" if a001=="The I. B. Rowell Company, Incorporated" & `year'==1929
replace estabid_ag_imps = "227b" if a001=="Ideal Grady & Nursery" & `year'==1929
replace estabid_ag_imps = "270b" if a001=="Helix Walkers" & `year'==1929
replace estabid_ag_imps = "285" if a001=="University Plow & Fdry. Co."  & `year'==1929
replace estabid_ag_imps = "515" if a001=="A. H. Patch Co., Inc."  & `year'==1929
replace estabid_ag_imps = "256" if a001=="P. Bradley & Sons Inc" & `year'==1929
replace estabid_ag_imps = "721b" if a001=="Oliver Farm Equipment Company" & `year'==1929 & ag003=="Wisconsin"
replace estabid_ag_imps = "303b" if a001=="Oliver Farm Equipment Company" & `year'==1929 & ag003=="Wisconsin"
replace estabid_ag_imps = "275b" if a001=="Schruth Bros Manuf Co." & `year'==1929
replace estabid_ag_imps = "193" if a001=="The Massey-Harris Co., Inc." & `year'==1929 & ag001=="New York"
replace estabid_ag_imps = "503" if a001=="The Massey-Harris Co., Inc." & `year'==1929 & ag001=="Wisconsin"
replace estabid_ag_imps = "525" if a001=="Brix Bros Mfg Co" & `year'==1929
