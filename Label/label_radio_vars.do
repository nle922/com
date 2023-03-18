//label radio industry specific variables

//label output variables
local outputs "RadioDryBatteries RadioStorageBatteries Components Receivers Tubes Wetbatteries aircraft auto_battery_18_34 auto_battery_18 auto_police auto_power_22 auto_power_22_40 auto_power_40 battery_power_40 battery_power_27 battery_power_27_40 receivingOther_sets socket_power_11_18 socket_power_11 socket_power_18_30 socket_power_11_30 socket_power_30_45 socket_power_30_65 socket_power_45_65 socket_power_65 television_over65 television_under65"
local temp_outputs "radio_batteries receiving_sets transformers transmitting_sets tubes_550 tubes  tubes_over50 tubes_under5 loud_speakers"

foreach i in `outputs' `temp_outputs'{
	  capture label var gp_v_`i' "Output: `i', value"
	  capture label var gp_q_`i' "Output: `i', qt"  
 }
capture label var gp_v_auto_battery_34 "Output: Auto battery 34, value"
capture label var gp_q_auto_battery_34 "Output: Auto battery 34, qt" 
 
//label input variables
local inputs "Aluminum Lead RubberSynthetic Resins copper crudeRubber ironSteel"

local label_Aluminum "Aluminum"
local label_Lead "Lead"
local label_RubberSynthetic "Synthetic Rubber"
local label_Resins "Resins"
local label_copper "Copper"
local label_crudeRubber "Crude Rubber"
local label_ironSteel "Iron and Steel"

foreach input in `inputs' {
	capture rename j_q_`input' "Inputs: `label_`input'', qt."
	capture rename j_v_`input' "Inputs: `label_`input'', value"
}
