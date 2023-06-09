//fixes establishment IDs for malt in 1929
//Makes all of these estabids unique and then will recode with our estabID later

replace estabid_malt = "1" if a001 =="Bauer-Schweitzer  Stop and Malt Co." & year=="1929"
replace estabid_malt = "2" if a001 =="Pioneer Malt Home" & year=="1929"
replace estabid_malt = "4" if a001=="Albert Schwill & Company" & year=="1929"
replace estabid_malt = "6" if a001=="Concrete Elevator" & year=="1929"
replace estabid_malt = "3" if a001=="Premier Malt Products Co. Plant #2." & year=="1929"
replace estabid_malt = "9" if a001=="H. W. Rickel & Co." & year=="1929"
replace estabid_malt = "10" if a001=="The Fleischmann Malting Company" & ag003=="Goodhue" & year=="1929"
replace estabid_malt = "13" if a001=="Interior Malt & Grain Company" & year=="1929"
replace estabid_malt = "14" if a001=="Froedtert Grain & Malting Co." & year=="1929"
replace estabid_malt = "16" if a001=="George J. Meyer Malt & Grain Corporation" & year=="1929"
replace estabid_malt = "15" if a001=="Kreiner & Lehr" & year=="1929"
replace estabid_malt = "17" if a001=="The Francis Perot's Sons Malting Company" & year=="1929"
replace estabid_malt = "19" if a001=="Chilton Malting Company" & year=="1929"
replace estabid_malt = "55" if ag001=="Wisconsin" & a001=="The Fleischmann Malting Company" & year=="1929"
replace estabid_malt = "22" if a001=="Cereal Products Co." & year=="1929"
replace estabid_malt = "56" if a001=="The Manitowoc Malting Co." & year=="1929"
replace estabid_malt = "24" if a001=="Calumet Elevator" & year=="1929"
replace estabid_malt = "26" if a001=="Milwaukee Western Malt Co." & year=="1929"
replace estabid_malt = "25" if a001=="The Kurth Malting Company" & year=="1929"
replace estabid_malt = "28" if a001=="L Rosenheimer Malt & Grain Co." & year=="1929"
replace estabid_malt = "5" if a001=="The Fleischmann Malting Company" & ag002=="Chicago" & year=="1929"
replace estabid_malt = "7" if a001=="The Fleishhmann Malting Company" & ag002=="Davenport" & year=="1929"
replace estabid_malt = "12" if a001=="The Fleischmann Malting Company" & ag002=="Minneapolis (Erie)" & year=="1929"
replace estabid_malt = "11" if a001=="The Fleischmann Malting Company" & ag002=="Minneapolis (North Star)" & year=="1929"
replace estabid_malt = "18" if a001=="The Fleischmann Malting Company" & ag002=="Buffalo" & year=="1929"
replace estabid_malt = "21" if a001=="The Ladish Stoppenbach Co."  & year=="1929"
replace estabid_malt = "61" if a001=="Jefferson Products Co. Inc." & year=="1929"

drop if year=="1929" & estabid_malt=="" & ag001==""

/* These should be fixed for firmids
replace firmid_malt = "1" if year=="1929" & estabid_malt=="1"
replace firmid_malt = "100" if year=="1929" & estabid_malt=="10"
replace firmid_malt = "100" if year=="1929" & estabid_malt=="11"
replace firmid_malt = "100" if year=="1929" & estabid_malt=="12"
replace firmid_malt = "13" if year=="1929" & estabid_malt=="13"
replace firmid_malt = "14" if year=="1929" & estabid_malt=="14"
replace firmid_malt = "15" if year=="1929" & estabid_malt=="15"
replace firmid_malt = "16" if year=="1929" & estabid_malt=="16"
replace firmid_malt = "17" if year=="1929" & estabid_malt=="17"
replace firmid_malt = "18" if year=="1929" & estabid_malt=="18"
replace firmid_malt = "19" if year=="1929" & estabid_malt=="19"
replace firmid_malt = "2" if year=="1929" & estabid_malt=="2"
replace firmid_malt = "21" if year=="1929" & estabid_malt=="21"
replace firmid_malt = "22" if year=="1929" & estabid_malt=="22"
replace firmid_malt = "24" if year=="1929" & estabid_malt=="24"
replace firmid_malt = "25" if year=="1929" & estabid_malt=="25"
replace firmid_malt = "26" if year=="1929" & estabid_malt=="26"
replace firmid_malt = "28" if year=="1929" & estabid_malt=="28"
replace firmid_malt = "3" if year=="1929" & estabid_malt=="3"
replace firmid_malt = "4" if year=="1929" & estabid_malt=="4"
replace firmid_malt = "100" if year=="1929" & estabid_malt=="5"
replace firmid_malt = "55" if year=="1929" & estabid_malt=="55"
replace firmid_malt = "6" if year=="1929" & estabid_malt=="6"
replace firmid_malt = "61" if year=="1929" & estabid_malt=="61"
replace firmid_malt = "100" if year=="1929" & estabid_malt=="7"
replace firmid_malt = "9" if year=="1929" & estabid_malt=="9"
*/
