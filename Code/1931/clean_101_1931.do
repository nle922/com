//rename variables for industry 101 in year 1931.
//This code was written by RJ and it is an absolute nightmare. 



//fix up input variables
gen j_q_carbonic = "" 

gen flag1 = (substr(BV,1,5) == "Carbo")
gen flag2 = (substr(BY,1,5) == "Carbo")
gen flag3 = (substr(CB,1,5) == "Carbo")
gen flag4 = (substr(CE,1,5) == "Carbo")
gen flag5 = (substr(CH,1,5) == "Carbo")
gen flag6 = (substr(CK,1,5) == "Carbo")
gen flag7 = (substr(CN,1,5) == "Carbo")
gen flag8 = (substr(CQ,1,5) == "Carbo")
gen flag9 = (substr(CT,1,5) == "Carbo")
gen flag10 = (substr(CW,1,5) == "Carbo")
gen flag11 = (substr(CZ,1,5) == "Carbo")
gen flag12 = (substr(DC,1,5) == "Carbo")

replace j_q_carbonic = BW if flag1 == 1
replace j_q_carbonic = BZ if flag2 == 1
replace j_q_carbonic = CC if flag3 == 1
replace j_q_carbonic = CF if flag4 == 1
replace j_q_carbonic = CI if flag5 == 1
replace j_q_carbonic = CL if flag6 == 1
replace j_q_carbonic = CO if flag7 == 1
replace j_q_carbonic = CR if flag8 == 1
replace j_q_carbonic = CU if flag9 == 1
replace j_q_carbonic = CX if flag10 == 1
replace j_q_carbonic = DA if flag11 == 1
replace j_q_carbonic = DD if flag12 == 1

gen j_v_carbonic = "" 

replace j_v_carbonic = BX if flag1 == 1
replace j_v_carbonic = CA if flag2 == 1
replace j_v_carbonic = CD if flag3 == 1
replace j_v_carbonic = CG if flag4 == 1
replace j_v_carbonic = CJ if flag5 == 1
replace j_v_carbonic = CM if flag6 == 1
replace j_v_carbonic = CP if flag7 == 1
replace j_v_carbonic = CS if flag8 == 1
replace j_v_carbonic = CV if flag9 == 1
replace j_v_carbonic = CY if flag10 == 1
replace j_v_carbonic = DB if flag11 == 1
replace j_v_carbonic = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_sugar = ""

gen flag1 = (substr(BV,1,3) == "Sug")
gen flag2 = (substr(BY,1,3) == "Sug")
gen flag3 = (substr(CB,1,3) == "Sug")
gen flag4 = (substr(CE,1,3) == "Sug")
gen flag5 = (substr(CH,1,3) == "Sug")
gen flag6 = (substr(CK,1,3) == "Sug")
gen flag7 = (substr(CN,1,3) == "Sug")
gen flag8 = (substr(CQ,1,3) == "Sug")
gen flag9 = (substr(CT,1,3) == "Sug")
gen flag10 = (substr(CW,1,3) == "Sug")
gen flag11 = (substr(CZ,1,3) == "Sug")
gen flag12 = (substr(DC,1,3) == "Sug")

replace j_q_sugar = BW if flag1 == 1
replace j_q_sugar = BZ if flag2 == 1
replace j_q_sugar = CC if flag3 == 1
replace j_q_sugar = CF if flag4 == 1
replace j_q_sugar = CI if flag5 == 1
replace j_q_sugar = CL if flag6 == 1
replace j_q_sugar = CO if flag7 == 1
replace j_q_sugar = CR if flag8 == 1
replace j_q_sugar = CU if flag9 == 1
replace j_q_sugar = CX if flag10 == 1
replace j_q_sugar = DA if flag11 == 1
replace j_q_sugar = DD if flag12 == 1

gen j_v_sugar = ""

replace j_v_sugar = BX if flag1 == 1
replace j_v_sugar = CA if flag2 == 1
replace j_v_sugar = CD if flag3 == 1
replace j_v_sugar = CG if flag4 == 1
replace j_v_sugar = CJ if flag5 == 1
replace j_v_sugar = CM if flag6 == 1
replace j_v_sugar = CP if flag7 == 1
replace j_v_sugar = CS if flag8 == 1
replace j_v_sugar = CV if flag9 == 1
replace j_v_sugar = CY if flag10 == 1
replace j_v_sugar = DB if flag11 == 1
replace j_v_sugar = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12


gen j_q_corn_syrup = ""

gen flag1 = (substr(BV,1,6) == "Corn s")
gen flag2 = (substr(BY,1,6) == "Corn s")
gen flag3 = (substr(CB,1,6) == "Corn s")
gen flag4 = (substr(CE,1,6) == "Corn s")
gen flag5 = (substr(CH,1,6) == "Corn s")
gen flag6 = (substr(CK,1,6) == "Corn s")
gen flag7 = (substr(CN,1,6) == "Corn s")
gen flag8 = (substr(CQ,1,6) == "Corn s")
gen flag9 = (substr(CT,1,6) == "Corn s")
gen flag10 = (substr(CW,1,6) == "Corn s")
gen flag11 = (substr(CZ,1,6) == "Corn s")
gen flag12 = (substr(DC,1,6) == "Corn s")

replace j_q_corn_syrup = BW if flag1 == 1
replace j_q_corn_syrup = BZ if flag2 == 1
replace j_q_corn_syrup = CC if flag3 == 1
replace j_q_corn_syrup = CF if flag4 == 1
replace j_q_corn_syrup = CI if flag5 == 1
replace j_q_corn_syrup = CL if flag6 == 1
replace j_q_corn_syrup = CO if flag7 == 1
replace j_q_corn_syrup = CR if flag8 == 1
replace j_q_corn_syrup = CU if flag9 == 1
replace j_q_corn_syrup = CX if flag10 == 1
replace j_q_corn_syrup = DA if flag11 == 1
replace j_q_corn_syrup = DD if flag12 == 1

gen j_v_corn_syrup = ""

replace j_v_corn_syrup = BX if flag1 == 1
replace j_v_corn_syrup = CA if flag2 == 1
replace j_v_corn_syrup = CD if flag3 == 1
replace j_v_corn_syrup = CG if flag4 == 1
replace j_v_corn_syrup = CJ if flag5 == 1
replace j_v_corn_syrup = CM if flag6 == 1
replace j_v_corn_syrup = CP if flag7 == 1
replace j_v_corn_syrup = CS if flag8 == 1
replace j_v_corn_syrup = CV if flag9 == 1
replace j_v_corn_syrup = CY if flag10 == 1
replace j_v_corn_syrup = DB if flag11 == 1
replace j_v_corn_syrup = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen flag1 = (substr(BV,1,4) == "Flav")
gen flag2 = (substr(BY,1,4) == "Flav")
gen flag3 = (substr(CB,1,4) == "Flav")
gen flag4 = (substr(CE,1,4) == "Flav")
gen flag5 = (substr(CH,1,4) == "Flav")
gen flag6 = (substr(CK,1,4) == "Flav")
gen flag7 = (substr(CN,1,4) == "Flav")
gen flag8 = (substr(CQ,1,4) == "Flav")
gen flag9 = (substr(CT,1,4) == "Flav")
gen flag10 = (substr(CW,1,4) == "Flav")
gen flag11 = (substr(CZ,1,4) == "Flav")
gen flag12 = (substr(DC,1,4) == "Flav")

gen j_v_flavoring = ""

replace j_v_flavoring = BX if flag1 == 1
replace j_v_flavoring = CA if flag2 == 1
replace j_v_flavoring = CD if flag3 == 1
replace j_v_flavoring = CG if flag4 == 1
replace j_v_flavoring = CJ if flag5 == 1
replace j_v_flavoring = CM if flag6 == 1
replace j_v_flavoring = CP if flag7 == 1
replace j_v_flavoring = CS if flag8 == 1
replace j_v_flavoring = CV if flag9 == 1
replace j_v_flavoring = CY if flag10 == 1
replace j_v_flavoring = DB if flag11 == 1
replace j_v_flavoring = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen flag1 = (substr(BV,1,5) == "Color")
gen flag2 = (substr(BY,1,5) == "Color")
gen flag3 = (substr(CB,1,5) == "Color")
gen flag4 = (substr(CE,1,5) == "Color")
gen flag5 = (substr(CH,1,5) == "Color")
gen flag6 = (substr(CK,1,5) == "Color")
gen flag7 = (substr(CN,1,5) == "Color")
gen flag8 = (substr(CQ,1,5) == "Color")
gen flag9 = (substr(CT,1,5) == "Color")
gen flag10 = (substr(CW,1,5) == "Color")
gen flag11 = (substr(CZ,1,5) == "Color")
gen flag12 = (substr(DC,1,5) == "Color")

gen j_v_coloring = ""

replace j_v_coloring = BX if flag1 == 1
replace j_v_coloring = CA if flag2 == 1
replace j_v_coloring = CD if flag3 == 1
replace j_v_coloring = CG if flag4 == 1
replace j_v_coloring = CJ if flag5 == 1
replace j_v_coloring = CM if flag6 == 1
replace j_v_coloring = CP if flag7 == 1
replace j_v_coloring = CS if flag8 == 1
replace j_v_coloring = CV if flag9 == 1
replace j_v_coloring = CY if flag10 == 1
replace j_v_coloring = DB if flag11 == 1
replace j_v_coloring = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_acids = ""

gen flag1 = (substr(BV,1,4) == "Acid")
gen flag2 = (substr(BY,1,4) == "Acid")
gen flag3 = (substr(CB,1,4) == "Acid")
gen flag4 = (substr(CE,1,4) == "Acid")
gen flag5 = (substr(CH,1,4) == "Acid")
gen flag6 = (substr(CK,1,4) == "Acid")
gen flag7 = (substr(CN,1,4) == "Acid")
gen flag8 = (substr(CQ,1,4) == "Acid")
gen flag9 = (substr(CT,1,4) == "Acid")
gen flag10 = (substr(CW,1,4) == "Acid")
gen flag11 = (substr(CZ,1,4) == "Acid")
gen flag12 = (substr(DC,1,4) == "Acid")

replace j_q_acids = BW if flag1 == 1
replace j_q_acids = BZ if flag2 == 1
replace j_q_acids = CC if flag3 == 1
replace j_q_acids = CF if flag4 == 1
replace j_q_acids = CI if flag5 == 1
replace j_q_acids = CL if flag6 == 1
replace j_q_acids = CO if flag7 == 1
replace j_q_acids = CR if flag8 == 1
replace j_q_acids = CU if flag9 == 1
replace j_q_acids = CX if flag10 == 1
replace j_q_acids = DA if flag11 == 1
replace j_q_acids = DD if flag12 == 1

gen j_v_acids = ""

replace j_v_acids = BX if flag1 == 1
replace j_v_acids = CA if flag2 == 1
replace j_v_acids = CD if flag3 == 1
replace j_v_acids = CG if flag4 == 1
replace j_v_acids = CJ if flag5 == 1
replace j_v_acids = CM if flag6 == 1
replace j_v_acids = CP if flag7 == 1
replace j_v_acids = CS if flag8 == 1
replace j_v_acids = CV if flag9 == 1
replace j_v_acids = CY if flag10 == 1
replace j_v_acids = DB if flag11 == 1
replace j_v_acids = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_hops = ""

gen flag1 = (substr(BV,1,4) == "Hops")
gen flag2 = (substr(BY,1,4) == "Hops")
gen flag3 = (substr(CB,1,4) == "Hops")
gen flag4 = (substr(CE,1,4) == "Hops")
gen flag5 = (substr(CH,1,4) == "Hops")
gen flag6 = (substr(CK,1,4) == "Hops")
gen flag7 = (substr(CN,1,4) == "Hops")
gen flag8 = (substr(CQ,1,4) == "Hops")
gen flag9 = (substr(CT,1,4) == "Hops")
gen flag10 = (substr(CW,1,4) == "Hops")
gen flag11 = (substr(CZ,1,4) == "Hops")
gen flag12 = (substr(DC,1,4) == "Hops")

replace j_q_hops = BW if flag1 == 1
replace j_q_hops = BZ if flag2 == 1
replace j_q_hops = CC if flag3 == 1
replace j_q_hops = CF if flag4 == 1
replace j_q_hops = CI if flag5 == 1
replace j_q_hops = CL if flag6 == 1
replace j_q_hops = CO if flag7 == 1
replace j_q_hops = CR if flag8 == 1
replace j_q_hops = CU if flag9 == 1
replace j_q_hops = CX if flag10 == 1
replace j_q_hops = DA if flag11 == 1
replace j_q_hops = DD if flag12 == 1

gen j_v_hops = ""

replace j_v_hops = BX if flag1 == 1
replace j_v_hops = CA if flag2 == 1
replace j_v_hops = CD if flag3 == 1
replace j_v_hops = CG if flag4 == 1
replace j_v_hops = CJ if flag5 == 1
replace j_v_hops = CM if flag6 == 1
replace j_v_hops = CP if flag7 == 1
replace j_v_hops = CS if flag8 == 1
replace j_v_hops = CV if flag9 == 1
replace j_v_hops = CY if flag10 == 1
replace j_v_hops = DB if flag11 == 1
replace j_v_hops = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_malt_purchased = ""

gen flag1 = (substr(BV,1,7) == "Malt, p")
gen flag2 = (substr(BY,1,7) == "Malt, p")
gen flag3 = (substr(CB,1,7) == "Malt, p")
gen flag4 = (substr(CE,1,7) == "Malt, p")
gen flag5 = (substr(CH,1,7) == "Malt, p")
gen flag6 = (substr(CK,1,7) == "Malt, p")
gen flag7 = (substr(CN,1,7) == "Malt, p")
gen flag8 = (substr(CQ,1,7) == "Malt, p")
gen flag9 = (substr(CT,1,7) == "Malt, p")
gen flag10 = (substr(CW,1,7) == "Malt, p")
gen flag11 = (substr(CZ,1,7) == "Malt, p")
gen flag12 = (substr(DC,1,7) == "Malt, p")

replace j_q_malt_purchased = BW if flag1 == 1
replace j_q_malt_purchased = BZ if flag2 == 1
replace j_q_malt_purchased = CC if flag3 == 1
replace j_q_malt_purchased = CF if flag4 == 1
replace j_q_malt_purchased = CI if flag5 == 1
replace j_q_malt_purchased = CL if flag6 == 1
replace j_q_malt_purchased = CO if flag7 == 1
replace j_q_malt_purchased = CR if flag8 == 1
replace j_q_malt_purchased = CU if flag9 == 1
replace j_q_malt_purchased = CX if flag10 == 1
replace j_q_malt_purchased = DA if flag11 == 1
replace j_q_malt_purchased = DD if flag12 == 1

gen j_v_malt_purchased = ""

replace j_v_malt_purchased = BX if flag1 == 1
replace j_v_malt_purchased = CA if flag2 == 1
replace j_v_malt_purchased = CD if flag3 == 1
replace j_v_malt_purchased = CG if flag4 == 1
replace j_v_malt_purchased = CJ if flag5 == 1
replace j_v_malt_purchased = CM if flag6 == 1
replace j_v_malt_purchased = CP if flag7 == 1
replace j_v_malt_purchased = CS if flag8 == 1
replace j_v_malt_purchased = CV if flag9 == 1
replace j_v_malt_purchased = CY if flag10 == 1
replace j_v_malt_purchased = DB if flag11 == 1
replace j_v_malt_purchased = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_malt_extract = ""

gen flag1 = (substr(BV,1,6) == "Malt e")
gen flag2 = (substr(BY,1,6) == "Malt e")
gen flag3 = (substr(CB,1,6) == "Malt e")
gen flag4 = (substr(CE,1,6) == "Malt e")
gen flag5 = (substr(CH,1,6) == "Malt e")
gen flag6 = (substr(CK,1,6) == "Malt e")
gen flag7 = (substr(CN,1,6) == "Malt e")
gen flag8 = (substr(CQ,1,6) == "Malt e")
gen flag9 = (substr(CT,1,6) == "Malt e")
gen flag10 = (substr(CW,1,6) == "Malt e")
gen flag11 = (substr(CZ,1,6) == "Malt e")
gen flag12 = (substr(DC,1,6) == "Malt e")

replace j_q_malt_extract = BW if flag1 == 1
replace j_q_malt_extract = BZ if flag2 == 1
replace j_q_malt_extract = CC if flag3 == 1
replace j_q_malt_extract = CF if flag4 == 1
replace j_q_malt_extract = CI if flag5 == 1
replace j_q_malt_extract = CL if flag6 == 1
replace j_q_malt_extract = CO if flag7 == 1
replace j_q_malt_extract = CR if flag8 == 1
replace j_q_malt_extract = CU if flag9 == 1
replace j_q_malt_extract = CX if flag10 == 1
replace j_q_malt_extract = DA if flag11 == 1
replace j_q_malt_extract = DD if flag12 == 1

gen j_v_malt_extract = ""

replace j_v_malt_extract = BX if flag1 == 1
replace j_v_malt_extract = CA if flag2 == 1
replace j_v_malt_extract = CD if flag3 == 1
replace j_v_malt_extract = CG if flag4 == 1
replace j_v_malt_extract = CJ if flag5 == 1
replace j_v_malt_extract = CM if flag6 == 1
replace j_v_malt_extract = CP if flag7 == 1
replace j_v_malt_extract = CS if flag8 == 1
replace j_v_malt_extract = CV if flag9 == 1
replace j_v_malt_extract = CY if flag10 == 1
replace j_v_malt_extract = DB if flag11 == 1
replace j_v_malt_extract = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen j_q_crowns = ""

gen flag1 = (substr(BV,1,5) == "Crown")
gen flag2 = (substr(BY,1,5) == "Crown")
gen flag3 = (substr(CB,1,5) == "Crown")
gen flag4 = (substr(CE,1,5) == "Crown")
gen flag5 = (substr(CH,1,5) == "Crown")
gen flag6 = (substr(CK,1,5) == "Crown")
gen flag7 = (substr(CN,1,5) == "Crown")
gen flag8 = (substr(CQ,1,5) == "Crown")
gen flag9 = (substr(CT,1,5) == "Crown")
gen flag10 = (substr(CW,1,5) == "Crown")
gen flag11 = (substr(CZ,1,5) == "Crown")
gen flag12 = (substr(DC,1,5) == "Crown")

replace j_q_crowns = BW if flag1 == 1
replace j_q_crowns = BZ if flag2 == 1
replace j_q_crowns = CC if flag3 == 1
replace j_q_crowns = CF if flag4 == 1
replace j_q_crowns = CI if flag5 == 1
replace j_q_crowns = CL if flag6 == 1
replace j_q_crowns = CO if flag7 == 1
replace j_q_crowns = CR if flag8 == 1
replace j_q_crowns = CU if flag9 == 1
replace j_q_crowns = CX if flag10 == 1
replace j_q_crowns = DA if flag11 == 1
replace j_q_crowns = DD if flag12 == 1

gen j_v_crowns = ""

replace j_v_crowns = BX if flag1 == 1
replace j_v_crowns = CA if flag2 == 1
replace j_v_crowns = CD if flag3 == 1
replace j_v_crowns = CG if flag4 == 1
replace j_v_crowns = CJ if flag5 == 1
replace j_v_crowns = CM if flag6 == 1
replace j_v_crowns = CP if flag7 == 1
replace j_v_crowns = CS if flag8 == 1
replace j_v_crowns = CV if flag9 == 1
replace j_v_crowns = CY if flag10 == 1
replace j_v_crowns = DB if flag11 == 1
replace j_v_crowns = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

gen flag1 = (substr(BV,1,5) == "Label")
gen flag2 = (substr(BY,1,5) == "Label")
gen flag3 = (substr(CB,1,5) == "Label")
gen flag4 = (substr(CE,1,5) == "Label")
gen flag5 = (substr(CH,1,5) == "Label")
gen flag6 = (substr(CK,1,5) == "Label")
gen flag7 = (substr(CN,1,5) == "Label")
gen flag8 = (substr(CQ,1,5) == "Label")
gen flag9 = (substr(CT,1,5) == "Label")
gen flag10 = (substr(CW,1,5) == "Label")
gen flag11 = (substr(CZ,1,5) == "Label")
gen flag12 = (substr(DC,1,5) == "Label")

gen j_v_labels = ""

replace j_v_labels = BX if flag1 == 1
replace j_v_labels = CA if flag2 == 1
replace j_v_labels = CD if flag3 == 1
replace j_v_labels = CG if flag4 == 1
replace j_v_labels = CJ if flag5 == 1
replace j_v_labels = CM if flag6 == 1
replace j_v_labels = CP if flag7 == 1
replace j_v_labels = CS if flag8 == 1
replace j_v_labels = CV if flag9 == 1
replace j_v_labels = CY if flag10 == 1
replace j_v_labels = DB if flag11 == 1
replace j_v_labels = DE if flag12 == 1

replace BV = "" if flag1 == 1
replace BW = "" if flag1 == 1
replace BX = "" if flag1 == 1
replace BY = "" if flag2 == 1
replace BZ = "" if flag2 == 1
replace CA = "" if flag2 == 1
replace CB = "" if flag3 == 1
replace CC = "" if flag3 == 1
replace CD = "" if flag3 == 1
replace CE = "" if flag4 == 1
replace CF = "" if flag4 == 1
replace CG = "" if flag4 == 1
replace CH = "" if flag5 == 1
replace CI = "" if flag5 == 1
replace CJ = "" if flag5 == 1
replace CK = "" if flag6 == 1
replace CL = "" if flag6 == 1
replace CM = "" if flag6 == 1
replace CN = "" if flag7 == 1
replace CO = "" if flag7 == 1
replace CP = "" if flag7 == 1
replace CQ = "" if flag8 == 1
replace CR = "" if flag8 == 1
replace CS = "" if flag8 == 1
replace CT = "" if flag9 == 1
replace CU = "" if flag9 == 1
replace CV = "" if flag9 == 1
replace CW = "" if flag10 == 1
replace CX = "" if flag10 == 1
replace CY = "" if flag10 == 1
replace CZ = "" if flag11 == 1
replace DA = "" if flag11 == 1
replace DB = "" if flag11 == 1
replace DC = "" if flag12 == 1
replace DD = "" if flag12 == 1
replace DE = "" if flag12 == 1

drop flag1 flag2 flag3 flag4 flag5 flag6 flag7 flag8 flag9 flag10 flag11 flag12

rename BV j_s_other1
rename BW j_q_other1
rename BX j_v_other1
rename BY j_s_other2
rename BZ j_q_other2
rename CA j_v_other2
rename CB j_s_other3
rename CC j_q_other3
rename CD j_v_other3
rename CE j_s_other4
rename CF j_q_other4
rename CG j_v_other4
rename CH j_s_other5
rename CI j_q_other5
rename CJ j_v_other5
rename CK j_s_other6
rename CL j_q_other6
rename CM j_v_other6
rename CN j_s_other7
rename CO j_q_other7
rename CP j_v_other7
rename CQ j_s_other8
rename CR j_q_other8
rename CS j_v_other8
rename CT j_s_other9
rename CU j_q_other9
rename CV j_v_other9
rename CW j_s_other10
rename CX j_q_other10
rename CY j_v_other10
rename CZ j_s_other11
rename DA j_q_other11
rename DB j_v_other11
rename DC j_s_other12
rename DD j_q_other12
rename DE j_v_other12

//rename output variables
rename AV gp_q_cereal_beverages
rename AW gp_v_cereal_beverages
rename AX gp_q_cider
rename AY gp_v_cider
rename AZ gp_q_grape_juice
rename BA gp_v_grape_juice
rename BB gp_q_malt_extract
rename BC gp_v_malt_extract
rename BD j_q_malt_consumed
rename BE gp_q_malt_sale
rename BF gp_v_malt_sale
rename BG gp_v_brewers_grains
rename BH gp_q_ice_sale
rename BI gp_v_ice_sale
rename BJ gp_q_fruit_juice
rename BK gp_v_fruit_juice
rename BL gp_s_other1
rename BM gp_v_other1
rename BN gp_s_other2
rename BO gp_v_other2
rename BP gp_s_other3
rename BQ gp_v_other3
rename BR gp_v_other4
rename BS contract_work
rename BT custom_work
rename BU g000v

//rename capital variables
rename DF f000
*RJ Note: the above is true if f000 is total cost of materials
rename DG z_horse_number
label var z_horse_number "Delivery vehicles: horse drawn, number"
rename DH z_horse_capacity
label var z_horse_capacity "Delivery vehicles: horse drawn, capacity (tons)"
rename DI z_gasoline_number
label var z_gasoline_number "Delivery vehicles: gasoline, number"
rename DJ z_gasoline_capacity 
label var z_gasoline_capacity "Delivery vehicles: gasoline, capacity (tons)"
rename DK z_electric_number
label var z_electric_number "Delivery vehicles: electric, number"
rename DL z_electric_capacity
label var z_electric_capacity "Delivery vehicless: electric, capacity (tons)" 

rename DM z_ice_compression_number 
label var z_ice_compression_number "Ice machines used: compression, number"
rename DN z_ice_compression_capacity
label var z_ice_compression_capacity "Ice machines used: compression, capacity per day"
rename DO z_ice_absorption_number
label var z_ice_absorption_number "Ice machines used: absorption, number"
rename DP z_ice_absorption_capacity

rename DQ Signatures 
rename DR ag005
rename DS Remarks
rename DT Notes
rename DU bp001
rename DV bm001
rename DW f008

split AO, parse(",")gen (six_oz)
replace six_oz1 = subinstr(six_oz1, "(","",.)
replace six_oz1 = subinstr(six_oz1, ")","",.)
replace six_oz2 = subinstr(six_oz2, "(","",.)
replace six_oz2 = subinstr(six_oz2, ")","",.)

replace six_oz1 = trim(six_oz1)
replace six_oz2 = trim(six_oz2)

split AP, parse(",")gen(e_split)
replace e_split1 = subinstr(e_split1, "(","",.)
replace e_split1 = subinstr(e_split1, ")","",.)
replace e_split2 = subinstr(e_split2, "(","",.)
replace e_split2 = subinstr(e_split2, ")","",.)

replace e_split1 = trim(e_split1)
replace e_split2 = trim(e_split2)

split AQ, parse(",")gen(t_split)
replace t_split1 = subinstr(t_split1, "(","",.)
replace t_split1 = subinstr(t_split1, ")","",.)
replace t_split2 = subinstr(t_split2, "(","",.)
replace t_split2 = subinstr(t_split2, ")","",.)

replace t_split1 = trim(t_split1)
replace t_split2 = trim(t_split2)

split AR, parse(",")gen(s_split)
replace s_split1 = subinstr(s_split1, "(","",.)
replace s_split1 = subinstr(s_split1, ")","",.)
replace s_split2 = subinstr(s_split2, "(","",.)
replace s_split2 = subinstr(s_split2, ")","",.)

replace s_split1 = trim(s_split1)
replace s_split2 = trim(s_split2)

split AS, parse(",")gen(tw_split)
replace tw_split1 = subinstr(tw_split1, "(","",.)
replace tw_split1 = subinstr(tw_split1, ")","",.)
replace tw_split2 = subinstr(tw_split2, "(","",.)
replace tw_split2 = subinstr(tw_split2, ")","",.)

replace tw_split1 = trim(tw_split1)
replace tw_split2 = trim(tw_split2)

split AT, parse(",")gen(bulk_split)
replace bulk_split1 = subinstr(bulk_split1, "(","",.)
replace bulk_split1 = subinstr(bulk_split1, ")","",.)
replace bulk_split2 = subinstr(bulk_split2, "(","",.)
replace bulk_split2 = subinstr(bulk_split2, ")","",.)

replace bulk_split1 = trim(bulk_split1)
replace bulk_split2 = trim(bulk_split2)

gen flag1 = (substr(AN,1,4) == "Carb")
gen gp_q_6oz_carbonated_beverage = ""
replace gp_q_6oz_carbonated_beverage = AO if flag1 == 1
gen gp_q_8oz_carbonated_beverage = ""
replace gp_q_8oz_carbonated_beverage = AP if flag1 == 1
gen gp_q_12oz_carbonated_beverage = ""
replace gp_q_12oz_carbonated_beverage = AQ if flag1 == 1
gen gp_q_16oz_carbonated_beverage = ""
replace gp_q_16oz_carbonated_beverage = AR if flag1 == 1
gen gp_q_24oz_carbonated_beverage = ""
replace gp_q_24oz_carbonated_beverage = AS if flag1 == 1
gen gp_q_bulk_carbonated_beverage = ""
replace gp_q_bulk_carbonated_beverage = AT if flag1 == 1
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
gen dummy2 = (substr(s_split2,1,4) == "Carb")
gen flagcarb = word(s_split1,3) if dummy1 == 1
replace flagcarb = word(s_split2,3) if dummy2 == 1
replace gp_q_16oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_16oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(tw_split1,1,4) == "Carb")
gen dummy2 = (substr(tw_split2,1,4) == "Carb")
gen flagcarb = word(tw_split1,3) if dummy1 == 1
replace flagcarb = word(tw_split2,3) if dummy2 == 1
replace gp_q_24oz_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_24oz_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(bulk_split1,1,4) == "Carb")
gen dummy2 = (substr(bulk_split2,1,4) == "Carb")
gen flagcarb = word(bulk_split1,3) if dummy1 == 1
replace flagcarb = word(bulk_split2,3) if dummy2 == 1
replace gp_q_bulk_carbonated_beverage = flagcarb if dummy1 == 1
replace gp_q_bulk_carbonated_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

/* RJ Note: Carbonated is often spelled carobonated

gen dummyA = (substr(six_oz1,1,4) == "Caro")
gen dummyB = (substr(six_oz2,1,4) == "Caro")
gen dummyC = (substr(six_oz3,1,4) == "Caro")
drop flagcarb
gen flagcarb = word(six_oz1,3) if dummyA == 1
replace flagcarb = word(six_oz2,3) if dummyB == 1
replace flagcarb = word(six_oz3,3) if dummyC == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummyA == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummyB == 1
replace gp_q_6oz_carbonated_beverage = flagcarb if dummyC == 1
drop dummyA dummyB dummyC flagcarb

*/

gen flag1 = (substr(AN,1,5) == "Still")
gen gp_q_6oz_still_beverage = ""
replace gp_q_6oz_still_beverage = AO if flag1 == 1
gen gp_q_8oz_still_beverage = ""
replace gp_q_8oz_still_beverage = AP if flag1 == 1
gen gp_q_12oz_still_beverage = ""
replace gp_q_12oz_still_beverage = AQ if flag1 == 1
gen gp_q_16oz_still_beverage = ""
replace gp_q_16oz_still_beverage = AR if flag1 == 1
gen gp_q_24oz_still_beverage = ""
replace gp_q_24oz_still_beverage = AS if flag1 == 1
gen gp_q_bulk_still_beverage = ""
replace gp_q_bulk_still_beverage = AT if flag1 == 1
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
gen dummy2 = (substr(s_split2,1,4) == "Stil")
gen flagcarb = word(s_split1,3) if dummy1 == 1
replace flagcarb = word(s_split2,3) if dummy2 == 1
replace gp_q_16oz_still_beverage = flagcarb if dummy1 == 1
replace gp_q_16oz_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(tw_split1,1,4) == "Stil")
gen dummy2 = (substr(tw_split2,1,4) == "Stil")
gen flagcarb = word(tw_split1,3) if dummy1 == 1
replace flagcarb = word(tw_split2,3) if dummy2 == 1
replace gp_q_24oz_still_beverage = flagcarb if dummy1 == 1
replace gp_q_24oz_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

gen dummy1 = (substr(bulk_split1,1,4) == "Stil")
gen dummy2 = (substr(bulk_split2,1,4) == "Stil")
gen flagcarb = word(bulk_split1,3) if dummy1 == 1
replace flagcarb = word(bulk_split2,3) if dummy2 == 1
replace gp_q_bulk_still_beverage = flagcarb if dummy1 == 1
replace gp_q_bulk_still_beverage = flagcarb if dummy2 == 1
drop dummy1 dummy2 flagcarb

drop six_oz*
drop e_split*
drop t_split*
drop s_split*
drop tw_split*
drop bulk_split*

//Value of total beverages produced
rename AU gp_v_beverages
label var gp_v_beverages "Output: Beverages, value"

drop AN AO AP AQ AR AS AT

drop Remarks Notes Signatures

/*
rename within_boundary ag006
rename ifsogive am002
*RJ Note: poaddress is PO address if different. Note ag008 already exists, which is "PO Address"
rename change_owner as003
rename former_name as005
RJ Note: AU appears to be g000v, but that already exists.
AU may be a partial sum of values for just Carbonated and Still beverages
Note this doesn't exist in the pictures, if so.
*/


