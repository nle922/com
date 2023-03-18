//cleans up typos in state name variable

//Arguments: state_var_raw - name of variable to be cleaned, state_var_clean - name of variable to be generated with cleaned values
args state_var_raw state_var_clean 

//check if state_var_clean exists. if not, then generate. Note that if it already exists, this will not overwrite it.
capture confirm variable `state_var_clean'
if _rc>0{
	gen `state_var_clean' = ""
}

//make proper
replace `state_var_clean' = proper(`state_var_raw')

//try splltting on comma and then guessing if there is a comma that second word is the state
split `state_var_clean', parse(",") gen(split_var)

if `r(nvars)'>1{
	replace `state_var_clean' = split_var2 if split_var2~= ""
}
drop split_var*

//strip trailing spaces and non-alphanumeric characters
replace `state_var_clean' = regexs( 1 ) if regexm( `state_var_clean', "([A-Z a-z ]+).*" )

//trim spaces
replace `state_var_clean' = trim(`state_var_clean')

//fix typos
replace `state_var_clean' = "Alabama" if `state_var_clean'== "Al"
replace `state_var_clean' = "Alabama" if `state_var_clean'== "Tuscaloosa Alabama"

replace `state_var_clean' = "Arkansas" if `state_var_clean'== "Ark"

replace `state_var_clean' = "California" if `state_var_clean'== "Ca"
replace `state_var_clean' = "California" if `state_var_clean'== "Calif"
replace `state_var_clean' = "California" if `state_var_clean'== "Oakland"
replace `state_var_clean' = "California" if `state_var_clean'== "Bakersfield"
replace `state_var_clean' = "California" if `state_var_clean'== "Salinas"

replace `state_var_clean' = "Colorado"  if `state_var_clean'== "Calorado" 
replace `state_var_clean' = "Colorado" if `state_var_clean'== "Pueblo Colo"
replace `state_var_clean' = "Colorado" if `state_var_clean'== "Co"

replace `state_var_clean' = "Connecticut" if `state_var_clean'== "Connecticutt"
replace `state_var_clean' = "Connecticut" if `state_var_clean'== "Ct"
replace `state_var_clean' = "Connecticut" if `state_var_clean' == "New Haven"

replace `state_var_clean' = "Delaware" if `state_var_clean'== "Wilmington Delaware"

replace `state_var_clean' = "District Of Columbia" if `state_var_clean'== "D.C."
replace `state_var_clean' = "District Of Columbia" if `state_var_clean'== "Dist. Of Columbia"
replace `state_var_clean' = "District Of Columbia" if `state_var_clean'== "Dist.of Columbia"
replace `state_var_clean' = "District Of Columbia" if `state_var_clean'== "District of Columbia"
replace `state_var_clean' = "District of Columbia" if `state_var_clean'== "Dc"
replace `state_var_clean' = "District of Columbia" if `state_var_clean'== "Dist"
replace `state_var_clean' = "District of Columbia" if `state_var_clean'== "District Of Colu"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "District Of Columbia"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "District Of Colombia"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "Dis Of Colombia"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "Dis Of Columbia"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "Washington D"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "Washington Dc"
replace `state_var_clean' = "District of Columbia" if `state_var_clean' == "D"

replace `state_var_clean' = "Florida" if `state_var_clean'== "Fl"

replace `state_var_clean' = "Illinois" if `state_var_clean'== "Il"
replace `state_var_clean' = "Illinois" if `state_var_clean'== "Ilinois"
replace `state_var_clean' = "Illinois" if `state_var_clean'== "Illionis"
replace `state_var_clean' = "Illinois" if `state_var_clean'== "Ill"

replace `state_var_clean' = "Louisiana" if `state_var_clean' == "Louisana"
replace `state_var_clean' = "Louisiana" if `state_var_clean' == "Lousiana"
replace `state_var_clean' = "Louisiana" if `state_var_clean' == "Cinclare"
replace `state_var_clean' = "Louisiana" if `state_var_clean'== "La"
replace `state_var_clean' = "Louisiana" if `state_var_clean'== "Louisisna"

replace `state_var_clean' = "Maine" if `state_var_clean' == "Dover Foxcroft"
replace `state_var_clean' = "Maine" if `state_var_clean' == "Miaine"
replace `state_var_clean' = "Maine" if `state_var_clean' == "Maina"

replace `state_var_clean' = "Massachusetts" if `state_var_clean'== "Mass"
replace `state_var_clean' = "Massachusetts" if `state_var_clean'== "Massachuusetts"

replace `state_var_clean' = "Michigan" if `state_var_clean'== "Mich"
replace `state_var_clean' = "Michigan" if `state_var_clean'== "Micihigan"

replace `state_var_clean' = "Minnesota" if `state_var_clean'== "Minn"
replace `state_var_clean' = "Minnesota" if `state_var_clean'== "Minnehaha"
replace `state_var_clean' = "Minnesota" if `state_var_clean'== "Montevideo"

replace `state_var_clean' = "Mississipi" if `state_var_clean'== "Miss"
replace `state_var_clean' = "Mississipi" if `state_var_clean'== "Mississipi"

replace `state_var_clean' = "Missouri" if `state_var_clean'== "Mo"

replace `state_var_clean' = "New Jersey" if `state_var_clean'== "New Jersey Jersey"
replace `state_var_clean' = "New Jersey" if `state_var_clean'== "New Yersey"
replace `state_var_clean' = "New Jersey" if `state_var_clean' == "N" & ag001 == "N. J."

replace `state_var_clean' = "New Hampshire" if `state_var_clean' == "New Hempshire"
replace `state_var_clean' = "New Hampshire" if `state_var_clean' == "N" & ag001 == "N. H."
replace `state_var_clean' = "New Hampshire" if `state_var_clean' == "New Hempshire"
replace `state_var_clean' = "New Hampshire" if `state_var_clean' == "Merrimack"

replace `state_var_clean' = "New Mexico" if `state_var_clean' == "New Maxico"
replace `state_var_clean' = "New Mexico" if `state_var_clean' == "El Paso"

replace `state_var_clean' = "New York"  if `state_var_clean'== "Cobleskill N. Y."
replace `state_var_clean' = "New York"  if `state_var_clean'== "N. Y"
replace `state_var_clean' = "New York" if `state_var_clean'== "Cobleskill N"
replace `state_var_clean' = "New York" if `state_var_clean' == "Same"
replace `state_var_clean' = "New York" if `state_var_clean' == "New York City"
replace `state_var_clean' = "New York" if `state_var_clean' == "N"
replace `state_var_clean' = "New York" if `state_var_clean' == "N" & ag001 == "N. Y." 
replace `state_var_clean' = "New York" if `state_var_clean'== "New York St"

replace `state_var_clean' = "North Carolina" if `state_var_clean' == "N" & ag001 == "N. R. H. Carolina"
replace `state_var_clean' = "North Carolina" if `state_var_clean' == "Cumberland"
replace `state_var_clean' = "North Carolina" if `state_var_clean'== "North Carolnia"

replace `state_var_clean' = "Pennsylvania" if `state_var_clean' == "Waynesburg"
replace `state_var_clean' = "Pennsylvania" if `state_var_clean' == "Pa"
replace `state_var_clean' = "Pennsylvania"  if `state_var_clean'== "Pa"
replace `state_var_clean' = "Pennsylvania" if `state_var_clean'== "Penn"
replace `state_var_clean' = "Pennsylvania" if `state_var_clean'== "Pennsa"
replace `state_var_clean' = "Pennsylvania" if `state_var_clean'== "Penna"
replace `state_var_clean' = "Pennsylvania" if `state_var_clean' == "Pottsville"

replace `state_var_clean' = "South Carolina" if `state_var_clean' == "Florence"

replace `state_var_clean' = "Tennessee" if `state_var_clean'== "Tenn"
replace `state_var_clean' = "Tennessee" if `state_var_clean'== "Tennesse"

replace `state_var_clean' = "Texas" if `state_var_clean' == "Tex"
replace `state_var_clean' = "Texas" if `state_var_clean' == "San Benito Texas"
replace `state_var_clean' = "Texas" if `state_var_clean' == "Lubbock Texas"

replace `state_var_clean' = "Vermont" if `state_var_clean'== "Vt"

replace `state_var_clean' = "Virginia" if `state_var_clean' == "Va"
replace `state_var_clean' = "Virginia" if `state_var_clean' == "East Virginia"

replace `state_var_clean' = "West Virginia" if `state_var_clean'== "Wes Virginia"

replace `state_var_clean' = "Washington" if `state_var_clean' == "Wasington"
replace `state_var_clean' = "Washington" if `state_var_clean' == "Wash"

replace `state_var_clean' = "Wisconsin" if `state_var_clean'== "Wis"
replace `state_var_clean' = "Wisconsin" if `state_var_clean'== "Wisc"
replace `state_var_clean' = "Wisconsin" if `state_var_clean'== "Wiscousin"

//turn to blanks some "pure" mistakes in state
foreach word_to_blank in St State Warren Wolf No Cobb "Brookville Lumber Company"{
	replace `state_var_clean' = "" if `state_var_clean' == "`word_to_blank'"
}
