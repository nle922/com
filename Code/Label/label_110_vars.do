//label vars for 111 (coffee) industry

//label output variables
foreach prod_to_label of coffee spices "flavoring Extracts" "flavoring Sirups" gelatine mayonnaise pancake mustard peanuts "peanut Butter" preserves{
    local squeeze = substr("`prod_to_label'", " ","")
    capture label var gp_q_`squeeze' "Output: `prod_to_label', qt."
    capture label var gp_v_`squeeze' "Output: `prod_to_label', value
}
capture label var gp_v_roasting "Output: Receipts from roasting for others, value"
