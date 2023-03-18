//label variables for cane sugar industry

//inputs
capture label var j_v_cGrown "Input: Cane own grown, value"
capture label var j_q_cGrown "Input: Cane own grown, qt"
capture label var j_v_cOthers "Input: Cane others grown, value"
capture label var j_q_cOthers "Input: Cane others grown, qt"
capture label var j_v_cPur "Input: Cane purchased, value"
capture label var j_q_cPur "Input: Cane purchased, qt"
capture label var j_v_cTotal "Input: Cane total, value"
capture label var j_q_cTotal "Input: Cane total, qt"

//output variables
local outputs "granulated raw clarified sirup sirup_invert sirup_other molasses blackstrap_molasses bagasse"
foreach output in `outputs'{
	capture label var gp_v_`output' "Output: `output', value"
	capture label var gp_q_`output' "Output: `output', qt."
}

//capital variables
capture label var z_CapacityOfMill "Capacity of Cane Sugar Mill"
