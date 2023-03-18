//Recode Incorporation status
gen incorporated = .
replace incorporated = 0 if a003 == "No"
replace incorporated = 0 if a003 == "no"
replace incorporated = 0 if a003 == "NO"
replace incorporated = 0 if a003 == "No "
replace incorporated = 0 if a003 == "No."
replace incorporated = 0 if a003 == "No (Partnership)"
replace incorporated = 0 if a003 == "Partnership"
replace incorporated = 0 if a003 == "No, Partnership"
replace incorporated = 0 if a003 == "No-Partnership"
replace incorporated = 0 if a003 == "N"
replace incorporated = 0 if a003 == "Owner"
replace incorporated = 0 if a003 == "Owner"
replace incorporated = 0 if strpos(a003,"Partn") > 0 
replace incorporated = 0 if strpos(a003,"No") == 1 
replace incorporated = 0 if strpos(a003,"Co-p") == 1 		//Co-partnerships
replace incorporated = 0 if strpos(a003,"Co-P") == 1 
replace incorporated = 0 if strpos(a003,"Owner") == 1 
replace incorporated = 0 if a003 == "Individual"
replace incorporated = 0 if a003 == "Blue Earth, Minn. No"
replace incorporated = 0 if a003 == "Cooprator No"
replace incorporated = 0 if a003 == "Copartners No"
replace incorporated = 0 if a003 == "Emphaticaly, No"
replace incorporated = 0 if a003 == "Estate"
replace incorporated = 0 if a003 == "Estate J. F. Krost R. Duchesne??"
replace incorporated = 0 if a003 == "Individual Associations Incorporated"
replace incorporated = 0 if a003 == "Individuals"
replace incorporated = 0 if a003 == "It was not"
replace incorporated = 0 if a003 == "McGnire (No)"
replace incorporated = 0 if a003 == "Municipality"
replace incorporated = 0 if a003 == "Operator"
replace incorporated = 0 if a003 == "Owned"
replace incorporated = 0 if a003 == "Parternship"
replace incorporated = 0 if a003 == "Patnership"
replace incorporated = 0 if a003 == "n"
replace incorporated = 0 if a003 == "Private Individual"
replace incorporated = 0 if a003 == "Prop."
replace incorporated = 0 if a003 == "Proprietor"
replace incorporated = 0 if a003 == "Proprietorship"

replace incorporated = 1 if a003 == "Yes"
replace incorporated = 1 if a003 == "yes"
replace incorporated = 1 if a003 == "Ys"
replace incorporated = 1 if a003 == "Yes "
replace incorporated = 1 if a003 == "Incorporated"
replace incorporated = 1 if a003 == "Y"
replace incorporated = 1 if a003 == "ys"
replace incorporated = 1 if a003 == "YES"
replace incorporated = 1 if a003 == "Corporation"
replace incorporated = 1 if a003 == "Incorporated Company"
replace incorporated = 1 if a003 == "ye"
replace incorporated = 1 if a003 == "Yes."
replace incorporated = 1 if a003 == "Inc."
replace incorporated = 1 if a003 == "Incorporated, Yes"
replace incorporated = 1 if a003 == "Incorporated Yes"
replace incorporated = 1 if a003 == "Inc. Yes"
replace incorporated = 1 if a003 == "Incorporated "
replace incorporated = 1 if a003 == "Yes (Alabama Corporation)"
replace incorporated = 1 if a003 == "Yes (Delaware)"
replace incorporated = 1 if a003 == "Corp."
replace incorporated = 1 if a003 == "Incorporated Concern"
replace incorporated = 1 if strpos(a003,"Yes") > 0 
replace incorporated = 1 if strpos(a003,"Incorp") == 1		//Some "not incorporated" in there to watch out for
replace incorporated = 1 if a003 == "A Corporation"
replace incorporated = 1 if a003 == "Inc"
replace incorporated = 1 if a003 == "Corp"
replace incorporated = 1 if a003 == "Inco"
replace incorporated = 1 if a003 == "Municipal Corporation"
replace incorporated = 1 if a003 == "Athens, Incorporated"
replace incorporated = 1 if a003 == "Common Law Trust"
replace incorporated = 1 if a003 == "Common Law Trust (form of Corp.)"
replace incorporated = 1 if a003 == "Company was Incorporated July 23, 1931"
replace incorporated = 1 if a003 == "Corporation Roy Pierce Mgr. 8 Months"
replace incorporated = 1 if a003 == "Corporation in Receivership"
replace incorporated = 1 if a003 == "Corporation-Incorporated"
replace incorporated = 1 if a003 == "Corporation."
replace incorporated = 1 if a003 == "Inactive Corporation"
replace incorporated = 1 if a003 == "Inc."
replace incorporated = 1 if a003 == "Inc. 1902-New York"
replace incorporated = 1 if a003 == "Inc. Co."
replace incorporated = 1 if a003 == "Inc. Gan 5-1932"
replace incorporated = 1 if a003 == "Inc. under N. J."
replace incorporated = 1 if a003 == "Incroporated Nov. 1931"
replace incorporated = 1 if a003 == "Yew"
replace incorporated = 1 if a003 == "Excelsior Creamery Co. Inc, Ltd"
replace incorporated = 1 if a003 == "In Process of Corporation"
replace incorporated = 1 if a003 == "M. I. D. a Public Corporation"
replace incorporated = 1 if a003 == "Model Glove Co. is incorporated"
replace incorporated = 1 if a003 == "Only Since Jan. 19, 1934"
replace incorporated = 1 if a003 == "Parkside Creamery is Incorporated"
replace incorporated = 1 if a003 == "Penna Corp."
replace incorporated = 1 if a003 == "Pennsylvania Corporation"
replace incorporated = 1 if a003 == "Was Incorperated December 28, 1931"
replace incorporated = 1 if a003 == "Was Incorporated in Delaware"
replace incorporated = 1 if a003 == "Ye"
replace incorporated = 1 if a003 == "Yse"
replace incorporated = 1 if a003 == "]Ys"
replace incorporated = 1 if a003 == "inc"
replace incorporated = 1 if a003 == "inco"
replace incorporated = 1 if a003 == "y"
replace incorporated = 1 if a003 == "yes"

label var incorporated "Incorporated" 
