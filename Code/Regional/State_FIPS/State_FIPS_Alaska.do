	args countyfips clean_county clean_state


	replace `countyfips' ="013" if `clean_state'=="Alaska" & `clean_county'=="Aleutians East"
	replace `countyfips' ="016" if `clean_state'=="Alaska" & `clean_county'=="Aleutians West"
	replace `countyfips' ="020" if `clean_state'=="Alaska" & `clean_county'=="Anchorage"
	replace `countyfips' ="050" if `clean_state'=="Alaska" & `clean_county'=="Bethel"
	replace `countyfips' ="060" if `clean_state'=="Alaska" & `clean_county'=="Bristol Bay"
	replace `countyfips' ="068" if `clean_state'=="Alaska" & `clean_county'=="Denali"
	replace `countyfips' ="070" if `clean_state'=="Alaska" & `clean_county'=="Dillingham"
	replace `countyfips' ="090" if `clean_state'=="Alaska" & `clean_county'=="Fairbanks North Star"
	replace `countyfips' ="100" if `clean_state'=="Alaska" & `clean_county'=="Haines"
	replace `countyfips' ="110" if `clean_state'=="Alaska" & `clean_county'=="Juneau"
	replace `countyfips' ="122" if `clean_state'=="Alaska" & `clean_county'=="Kenai Peninsula"
	replace `countyfips' ="130" if `clean_state'=="Alaska" & `clean_county'=="Ketchikan Gateway"
	replace `countyfips' ="150" if `clean_state'=="Alaska" & `clean_county'=="Kodiak Island"
	replace `countyfips' ="164" if `clean_state'=="Alaska" & `clean_county'=="Lake and Peninsula"
	replace `countyfips' ="170" if `clean_state'=="Alaska" & `clean_county'=="Matanuska Susitna"
	replace `countyfips' ="180" if `clean_state'=="Alaska" & `clean_county'=="Nome"
	replace `countyfips' ="185" if `clean_state'=="Alaska" & `clean_county'=="North Slope"
	replace `countyfips' ="188" if `clean_state'=="Alaska" & `clean_county'=="Northwest Arctic"
	replace `countyfips' ="201" if `clean_state'=="Alaska" & `clean_county'=="Prince Wales Ketchikan"
	replace `countyfips' ="220" if `clean_state'=="Alaska" & `clean_county'=="Sitka"
	replace `countyfips' ="232" if `clean_state'=="Alaska" & `clean_county'=="Skagway Hoonah Angoon"
	replace `countyfips' ="240" if `clean_state'=="Alaska" & `clean_county'=="Southeast Fairbanks"
	replace `countyfips' ="261" if `clean_state'=="Alaska" & `clean_county'=="Valdez Cordova"
	replace `countyfips' ="270" if `clean_state'=="Alaska" & `clean_county'=="Wade Hampton"
	replace `countyfips' ="280" if `clean_state'=="Alaska" & `clean_county'=="Wrangell Petersburg"
	replace `countyfips' ="282" if `clean_state'=="Alaska" & `clean_county'=="Yakutat"
	replace `countyfips' ="290" if `clean_state'=="Alaska" & `clean_county'=="Yukon Koyukuk"
	