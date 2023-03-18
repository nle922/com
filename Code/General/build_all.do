//this script rebuilds all complete datasets

//path to dropbox 
args dropbox_path
//local dropbox_path = "/Users/nlz/Dropbox/Grants/One Time/2015/NSF SES1459263"

//Need to make sure the version is that of the original ICPSR dataset.
version 15

//rebuild all BR & legacy industries
do "`dropbox_path'/Cleaning Scripts/General/build_BR_legacy" "`dropbox_path'"

//this is list of totally cleaned industries
local clean_inds = "101 118 314"

//clean all these industries
foreach clean_ind in `clean_inds' {
	di "Cleaning new industry `clean_ind'"
	do "`dropbox_path'/Cleaning Scripts/General/clean_all_industry" "`dropbox_path'" `clean_ind'
}
cd "`dropbox_path"'
