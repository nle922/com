//Drop establishments and blanks from ICPSR data set
args estab_id 

//These are (almost) pure duplicates
//Cannot find in ICPSR file: 314DNEXIHCTTC 314QBKGLIXOIK 314EGIHVQPQBS 118SYXGEAJOPI 118XERZJPTWKD 118RQKLZMBMCM 118KREUZCGCMZ 118OZEORXUZAW  101ARNVOTHVLN 101TAAJFJIZUA 101EDHXKCQFWL

//Fix bad establishment links
replace `estab_id'="1005RYZYTUQVJF" if `estab_id'=="1005EALDZFUBXW" & year=="1929"
replace `estab_id'="1005CZNOVGMFUP" if `estab_id'=="1005JFJZKGKGEY" & year=="1931"

//By year
local pseudo_blanks_list_1929 "314UWDVMKEGPO 121MYYATODQZZ 314GKZUUJKAUC 119GSFXRMPXOQ 119NXIICXJSDF 119VBNNIMMIES 119PQTTPREJFX 119PKFWPEXSRU 119RDNPRNEDCL 119MLDUUNSVXM 119MMXTBDGPOI 119UIJXGPCTOI"
local pseudo_blanks_list_1931 "118XDSAMXRRUW 1005YXUCVIWTAN 1005DHKBTSCOWG"
local pseudo_blanks_list_1933 "118XKTPSNKLTV 101RCAJRNEMQP 119TMXYGEHMSI"
local pseudo_blanks_list_1935 "1008OQZBGUILLX 121QDUWNCWHPG 119KNCKCOXQOG 119QDPUICOQZU"

forvalues year = 1929(2)1935{
	foreach blank in `pseudo_blanks_list_`year''{
		drop if `estab_id' == "`blank'" & year == "`year'"
	}
}

//These have zero information
//Cannot find in ICPSR: 118IXLJADMVMZ 118KDWKBFLRVJ 118JEAAMMUQZI 314PKPHNTXRDH 118FCXYCUDELZ 118HMFRFTJKHM 118QIXVMQJCYZ 314VXXLTLAEHG 314CPOJLNTZMS 118KETZMDYUTI 118JEAAMMUQZI 314HRCRGLAKZB 314CQGCCKSGJU 118IXLJADMVMZ 101DXPERXKAQU 118GWRSCIGGMB 118ZPGCAOHTYI 314PXHMVEWEWP

// No employment or revenue information
local pseudo_blanks_list_1929 "121NSHICXOIOU 1002VJFRUSDUQR 1008YVQBXEUWAR 121LVIOTXMKOF 118JQNIKIQNLD 121YTUVDAURDW 119LUWWFCGSCK 1008CQXBSWHQBU 631KKHKWCCVFX 101JJJCHFIFGI"
local pseudo_blanks_list_1931 "314EMRYRDJDGV 314QMUTOULSML 101CEHAGVCFCR 118AJEDTKCJRS 118BUHUUTXJIN"
local pseudo_blanks_list_1933 "314UNGYPKFIZZ 118ABRNMHLKUV 118ONJXKRLVMS 118BNBHUZKUSB 118LWEHFFCNAX 118GYEJTGVQSF 118BBZWNHTPBZ"
local pseudo_blanks_list_1935 "237WUQJVCDTYQ 705FJIKSPXXSS 1008NJEATVBZKS 1008TJFFFBCAPM 705XSITPKSNNJ"

forvalues year = 1929(2)1935{
	foreach blank in `pseudo_blanks_list_`year''{
		drop if `estab_id' == "`blank'" & year == "`year'"
	}
}

//These have zero establishment-specific identifying info (but do have some fields filled in)
local pseudo_blanks_list_1929 "121YTUVDAURDW 121NSHICXOIOU 121LVIOTXMKOF 1008YVQBXEUWAR 1008CQXBSWHQBU"
local pseudo_blanks_list_1931 ""
local pseudo_blanks_list_1933 ""
local pseudo_blanks_list_1935 "1008TJFFFBCAPM 1008NJEATVBZKS 705WKBCQKBHZZ 705FJIKSPXXSS"

forvalues year = 1929(2)1935{
	foreach blank in `pseudo_blanks_list_`year''{
		drop if `estab_id' == "`blank'" & year == "`year'"
	}
}

//Save dropped observations
gen ESTABLISHMENT_ID = establishment_id
gen YEAR = year
mmerge ESTABLISHMENT_ID YEAR using "./SES1459263 Team Folder/ICPSR/37114-0001-Data.dta", umatch(ESTABLISHMENT_ID YEAR) type(1:1)
//savesome INDUSTRY_CODE_NUM YEAR G000V if _merge == 2 using "./SES1459263 Team Folder/V2/Compare Versions/dropped.dta", replace
keep if _merge==3
drop _merge YEAR ESTABLISHMENT_ID
