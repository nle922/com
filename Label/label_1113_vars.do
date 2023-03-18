//label variables for industry 1113 (nails)

//label output variables
foreach prod_to_label of "cut Nails" "cut Tacks" "wire Tacks" "horseshoe Nails" "railroad Spikes" staples "copper Nails" {
    local squeeze = substr("`prod_to_label'", " ","")
    capture label var gp_q_`squeeze' "Output: `prod_to_label', qt."
    capture label var gp_v_`squeeze' "Output: `prod_to_label', value"
}

foreach prod_to_label of bright galvanized cement other {
    capture label var gp_q_wireNails_`prod_to_label' "Output: Wire nails `prod_to_label', qt."
    capture label var gp_v_wireNails_`prod_to_label' "Output: Wire nails `prod_to_label', value"
    capture label var gp_s_wireNails_`prod_to_label' "Output: Wire nails `prod_to_label', specify"
}

//label input variables
capture label var j_n_wireNail_Machines "Wire nail machines, number"
capture label var j_q_wireNail_Machines "Wire nail machines, capacity"
