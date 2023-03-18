*NLZ: Program to create and clean the 1929 radio data 
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/1303/1929_radio_form_270813.xlsx", sheet("Sheet1") cellrange(A4:DL340) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
 
rename NameofOwner a002
rename Ifsogiveformername as005
rename Usedorpurchased f00up
	 
//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperday d002
capture rename Hoursperweek d003
capture rename Numberofshiftsperday d004
capture rename Normalnumberofhoursperweek d005
capture rename Doesthisnumberofhoursrefer d006

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Isthisanewplantwhichstarte newplant
rename Branchofsubidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother

//rename employment variables
rename Male e001m
rename Female e001f
rename AB e002m
rename AC e002f 
rename AD e003m
rename AE e003f
rename aSalariestoprincipalofficie salaries_officers
rename bSalariestomanagers salaries_managers
rename cPaidtowageearners total_wages
rename AV total_wages_salaries

//rename cost of inputs variables
rename Costofallmaterials f001
rename Costoffuel f002
rename Costofpurchasedcurrent f003
rename TotalValue f009

//rename output variables
order Classification Components-DG
rename Components Components_revenue
rename Receivers Receivers_revenue
rename Tubes Tubes_revenue
rename Other Other_revenue
rename DG Subtotal_revenue
rename Tubesunder5WNo tubes_under5_number
rename Tubesunder5W tubes_under5_value
rename Tubes550WNo tubes_550_number
rename Tubes550W tubes_550_value
rename Tubesover50WNo tubes_over50_number
rename Tover50W tubes_over50_value
rename Loudspeakers loud_speakers_value
rename LoudspeakersNo loud_speakers_number
rename Receivingsets6tubesorless receiving_sets_value
rename BQ receiving_sets_number
rename Transmittingsets transmitting_sets_value
rename TransmittingsetsNo transmitting_sets_number
rename Transformers transformers_value
rename TransformersNo transformers_number
rename Miscellaneous miscellaneous_value
rename DI Components_output
rename DJ Receivers_output
rename DK Tubes_output
rename DL Other_output

//rename monthly employment variables
capture rename Jan ewemt01
capture rename Feb ewemt02
capture rename March ewemt03
capture rename April ewemt04
capture rename May ewemt05
capture rename June ewemt06
capture rename July ewemt07
capture rename August ewemt08
capture rename Sept ewemt09
capture rename October ewemt10
capture rename November ewemt11
capture rename December ewemt12
capture rename Total ewemt
 
//rename input variables
capture rename Quantity j_q_ironSteel
capture rename CP j_v_ironSteel
capture rename CQ j_q_copper
capture rename CR j_v_copper
capture rename CS j_v_insulatedWire
capture rename CT j_q_Lead
capture rename CU j_v_Lead
capture rename CV j_q_Aluminum
capture rename CW j_v_Aluminum
capture rename CX j_q_crudeRubber
capture rename CY j_v_crudeRubber
capture rename CZ j_q_RubberSyntheticResins
capture rename DA j_v_RubberSyntheticResins
rename Totalvalue total_output_value

//replace spaces with blanks in Identifier variable
replace Identifier = strupper(subinstr(Identifier," ", "", .))

rename Electricmotorsnumber he001n
rename Electricmotorsdrivenbypurcha he001h
rename Electricmotorsdrivenbycurren he002n
rename CJ he002h

   

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//all variables to strings for consistency later
tostring *, replace

save "$rootDir_dataLegacy/1929/radio_1929_clean", replace
