//Updates of firm links based on Gaeto's code

//This file is output of her code in "./Contributions/Gaeto/CoM Branch Cleaning.do"
merge 1:1 establishment_id year using "./SES1459263 Team Folder/V2/Firm Link Updates/update_firm_links_Gaeto", keep(1 3)
tostring year, replace force
replace firm_id = firm_id_gaeto if firm_id_gaeto~=""
drop firm_id_gaeto _merge
//Reset firm IDs
do "./Cleaning Scripts/General/reset_ID" firm_id
