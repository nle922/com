//fixes mistakes in estabids for industry 216 in 1935

replace estabid_216 = "ga1111" if a001=="Grantville Mills"
replace estabid_216 = "nc93a" if a001=="rockfish mills inc., mill no. 4"
replace estabid_216 ="pa1002a" if ag003=="Philadelphia" & a001=="Ward-Davidson Company"
replace estabid_216 = "pa68" if a001=="Arotex Mills"
