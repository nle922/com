//fix estabids for ag. imps in 1935
tempvar year
destring year, force gen(`year')

replace estabid_ag_imps = "27" if a001=="Winsted Manufacturing Co." & `year'==1935
replace estabid_ag_imps = "28" if a001=="Cutaway Harrow Co" & `year'==1935
replace estabid_ag_imps = "80" if a001=="J. W. Manufacturing Co." & `year'==1935
replace estabid_ag_imps = "85" if a001=="The Letz Manufacturing Company" & `year'==1935
replace estabid_ag_imps = "90" if a001=="Hoosier Corn Turners Co." & `year'==1935
replace estabid_ag_imps = "99" if a001=="Richmond Works" & `year'==1935
replace estabid_ag_imps = "103" if a001=="Litchfield Manufacturing Co." & `year'==1935
replace estabid_ag_imps = "113" if a001=="Farm Machinery Mfg Co Inc." & `year'==1935
replace estabid_ag_imps = "118" if a001=="Boiler Manufacturing Company" & `year'==1935
replace estabid_ag_imps = "130" if a001=="Cartagenas Cane Loader Co. Inc" & `year'==1935
replace estabid_ag_imps = "134" if a001=="Emerson & Stevens Mfg Co Inc" & `year'==1935
replace estabid_ag_imps = "133" if a001=="North Wayne Tool Co" & `year'==1935
replace estabid_ag_imps = "137" if a001=="Hayden Cranberry Separator Mfg Co." & `year'==1935
replace estabid_ag_imps = "135" if a001=="The Hamilton Mfg Co" & `year'==1935
replace estabid_ag_imps = "143" if a001=="Parker Plant" & `year'==1935
replace estabid_ag_imps = "153" if a001=="Martin Manufacturing Co Inc" & `year'==1935
replace estabid_ag_imps = "154" if a001=="Detroit Lakes, Minnesota" & `year'==1935
replace estabid_ag_imps = "170" if a001=="Eckard Mfg Co" & `year'==1935
replace estabid_ag_imps = "182" if a001=="Chase Plow Company" & `year'==1935
replace estabid_ag_imps = "202" if a001=="Syracuse Chilled Plow Co. Inc." & `year'==1935
replace estabid_ag_imps = "293" if a001=="Harrington Manufacturing Company" & `year'==1935
replace estabid_ag_imps = "304" if a001=="The John A. McKay Mfg. Co. Inc." & `year'==1935
replace estabid_ag_imps = "283b" if a001=="A. G. Cox Mfg Co." & `year'==1935
replace estabid_ag_imps = "90b" if a001=="Mullins Wilson Mfg. Co," & `year'==1935
replace estabid_ag_imps = "705" if a001=="Cowell Mfg Co" & `year'==1935
replace estabid_ag_imps = "114" if a001=="Wood Brothers Thresher Company" & `year'==1935
replace estabid_ag_imps = "139" if a001=="Nichols & Shepard Plant" & `year'==1935
replace estabid_ag_imps = "747b" if a001=="American Standard Platner Co." & `year'==1935
replace estabid_ag_imps = "151b" if a001=="John R Kauai Mfg Co Inc" & `year'==1935
replace estabid_ag_imps = "164" if a001=="Minneapolis Moline Power Equipment Company" & ag004=="2854 Minnehaha Avenue" & `year'==1935
replace estabid_ag_imps = "70b" if a001=="American Farm Machinery Company" & `year'==1935
replace estabid_ag_imps = "178" if a001=="Jenkins Hay Rake & Stacker Co." & `year'==1935
replace estabid_ag_imps = "304b" if a001=="Turner Manufacturing Co Machine Shop and Foundry" & `year'==1935
replace estabid_ag_imps = "210" if a001=="Oliver Farm Equipment Company" & `year'==1935 & ag001=="Ohio"
replace estabid_ag_imps = "93" if a001=="Oliver Farm Equipment Company" & `year'==1935 & ag001=="Indiana"
replace estabid_ag_imps = "216" if a001=="The Ohio Cultivator Company" & `year'==1935
replace estabid_ag_imps = "227" if a001=="The Ney Manufacturing Co." & `year'==1935
replace estabid_ag_imps = "240" if a001=="Chattanooga Works" & `year'==1935
replace estabid_ag_imps = "243" if a001=="The Harriman Manufacturing Company, Inc." & `year'==1935
replace estabid_ag_imps = "250" if a001=="Benthall Machine Company, Inc." & `year'==1935
replace estabid_ag_imps = "251" if a001=="The Ferguson Manufacturing Co., Inc" & `year'==1935
replace estabid_ag_imps = "254" if a001=="Vesuvius Plow Works" & `year'==1935
replace estabid_ag_imps = "265" if a001=="Brillion Pulverizer Co." & `year'==1935
replace estabid_ag_imps = "266" if a001=="F. W. Schridt Pea Harvester Co." & `year'==1935
replace estabid_ag_imps = "271" if a001=="Smalley Corporation" & `year'==1935
replace estabid_ag_imps = "503" if a001=="The Massey-Harris Co." & `year'==1935
replace estabid_ag_imps = "503b" if a001=="The Massey-Harris Co., Racine, Wisconsin" & `year'==1935



