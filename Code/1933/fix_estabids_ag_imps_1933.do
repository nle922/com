//fix estabids for ag. imps in 1933
tempvar year
destring year, force gen(`year')

replace estabid_ag_imps = "288" if a001=="N. L. N Manufacturing Co." & `year'==1933
replace estabid_ag_imps = "82" if a001=="Seymour Manufacturing Co., Inc." & `year'==1933
replace estabid_ag_imps = "86" if a001=="O. K. Champion" & `year'==1933
replace estabid_ag_imps = "85" if a001=="The Letz Manufacturing Company" & `year'==1933
replace estabid_ag_imps = "85b" if a001=="Keck-Gonnerman Co." & `year'==1933
replace estabid_ag_imps = "91" if a001=="Sta-Tite Snath Co." & `year'==1933
replace estabid_ag_imps = "93" if a001=="Oliver Farm Equipment Company" & `year'==1933
replace estabid_ag_imps = "97" if a001=="Blount Plow Works" & `year'==1933
replace estabid_ag_imps = "96" if a001=="Fergus on-Sherman, Inc.," & `year'==1933
replace estabid_ag_imps = "95" if a001=="Vulcan Plow Division" & `year'==1933
replace estabid_ag_imps = "98" if a001=="The Cyclone Seeder Company" & `year'==1933
replace estabid_ag_imps = "99" if a001=="Richmond Works" & `year'==1933
replace estabid_ag_imps = "105" if a001=="J. S. Bloom Manufacturing Co.," & `year'==1933
replace estabid_ag_imps = "123" if a001=="The Wyatt Mfg Co." & `year'==1933
replace estabid_ag_imps = "127" if a001=="Reschke Machine Works Co." & `year'==1933
replace estabid_ag_imps = "124" if a001=="W. W Feed Grinder Corp" & `year'==1933
replace estabid_ag_imps = "133" if a001=="North Wayne Tool Co" & `year'==1933
replace estabid_ag_imps = "143" if a001=="Parker Plow Company" & `year'==1933
replace estabid_ag_imps = "83b" if a001=="Allis-Chalmers Manufacturing Co. - Laporte Works" & `year'==1933
replace estabid_ag_imps = "99b" if a001=="Richmod Works" & ag004=="520 N. 15th" & `year'==1933
replace estabid_ag_imps = "114" if a001=="Wood Bros Thresher Co." & `year'==1933
replace estabid_ag_imps = "210" if a001=="Oliver Farm Equipment Company" & `year'==1933 & g000v == "2240094" 
replace estabid_ag_imps = "216" if a001=="The Ohio Cultivator Company" & `year'==1933
replace estabid_ag_imps = "238" if a001=="" & ag004=="5 Glenwood Ave." & `year'==1933
replace estabid_ag_imps = "518" if a001=="Collins Manufacturing Company" & `year'==1933
replace estabid_ag_imps = "210" if a001=="Oliver Farm Equipment Company" & `year'==1933 & ag001=="Ohio"
replace estabid_ag_imps = "93" if a001=="Oliver Farm Equipment Company" & `year'==1933 & ag001=="Indiana"
replace estabid_ag_imps = "210b" if a001=="Oliver Farm Equipment Company" & `year'==1933 & g000v == "245848"
