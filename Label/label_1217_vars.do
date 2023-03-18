//label variables for industries 1215, 1216, and 1217
//These industries all share the same form

//unrefined
foreach type_unrefined of Copper Bullion Other1 Other2 {
    local squeeze = substr("`type_unrefined'", " ","")
    capture label var gp_q_unrefinedS_`squeeze'P "Output: Smelting and Refining Unrefined `type_unrefined' Primary, qt."
    capture label var gp_v_unrefinedS_`squeeze'P "Output: Smelting and Refining Unrefined `type_unrefined' Primary, value"
    capture label var gp_q_unrefinedS_`squeeze'S "Output: Smelting and Refining Unrefined `type_unrefined' Secondary, qt."
    capture label var gp_v_unrefinedS_`squeeze'S "Output: Smelting and Refining Unrefined `type_unrefined' Secondary, value"
    capture label var gp_q_unrefinedS_`squeeze'PT "Output: Smelting and Refining Unrefined `type_unrefined' on a toll basis Primary, qt."
    capture label var gp_v_unrefinedS_`squeeze'T "Output: Smelting and Refining Unrefined `type_unrefined' on a toll basis, value"
    capture label var gp_q_unrefinedS_`squeeze'ST "Output: Smelting and Refining Unrefined `type_unrefined' on a toll basis Secondary, qt."
}

//refined
foreach type_refined of Copper Lead "Antimonial Lead" Zinc Aluminum Tin {
    local squeeze = substr("`type_refined'", " ","")
    capture label var gp_q_refinedS_`squeeze'P "Output: Smelting and Refining Refined `type_refined' Primary, qt."
    capture label var gp_v_refinedS_`squeeze'P "Output: Smelting and Refining Refined `type_refined' Primary, value"
    capture label var gp_q_refinedS_`squeeze'S "Output: Smelting and Refining Refined `type_refined' Secondary, qt."
    capture label var gp_v_refinedS_`squeeze'S "Output: Smelting and Refining Refined `type_refined' Secondary, value"
    capture label var gp_q_refinedS_`squeeze'PT "Output: Smelting and Refining Refined `type_refined' on a toll basis Primary, qt."
    capture label var gp_v_refinedS_`squeeze'T "Output: Smelting and Refining Refined `type_refined' on a toll basis, value"
    capture label var gp_q_refinedS_`squeeze'ST "Output:Smelting and Refining Refined `type_refined' on a toll basis Secondary, qt."
}

//alloys
foreach type_alloy of Brass Antifriction Solders "Type Metal" Other1 Other2 {
    local squeeze = substr("`type_alloy'", " ","")
    capture label var gp_s_alloyReclaimed_`squeeze' "Output: Alloy, reclaimed, `type_alloy', specify"
    capture label var gp_q_alloyReclaimed_`squeeze' "Output: Alloy, reclaimed, `type_alloy', qt."
    capture label var gp_v_alloyReclaimed_`squeeze' "Output: Alloy, reclaimed, `type_alloy', value"
}

//precious metals
foreach type_preciousMetal of Gold Silver Other1 {   
    local squeeze = substr("`type_preciousMetal'", " ","")
    capture label var gp_s_preciousMetal_`squeeze' "Output: Precious metal `type_preciousMetal', specify"    
    capture label var gp_q_preciousMetal_`squeeze' "Output: Precious metal `type_preciousMetal', qt."
    capture label var gp_v_preciousMetal_`squeeze' "Output: Precious metal `type_preciousMetal', value"
}

//pigments and chemicals
foreach type_pigments of "Lead Oxide Litharge" "Lead Oxide Red" "Lead Oxide Other" "White Lead" "Zinc Oxide" "Zinc Chloride" "Sulfuric Acid" "Copper Sulphate" "Copper Carbonate" "Nickel Sulphate" "Arsenic Oxide" Other {   
    local squeeze = substr("`type_pigments'", " ","")
    capture label var gp_s_pigments_`squeeze' "Output: Pigments and chemicals `type_pigments', specify"    
    capture label var gp_q_pigments_`squeeze' "Output: Pigments and chemicals `type_pigments', qt."
    capture label var gp_v_pigments_`squeeze' "Output: Pigments and chemicals `type_pigments', value"
}

//rolling outputs
foreach type_output of plates rods "extruded Shapes" tubing "tubing Brazed" "other Tubing"{
    local squeeze = substr("`type_output'", " ","")
    foreach type_metal of Brass Copper Lead Zinc Nickel Other1 Other2 {
        capture label var gp_s_`squeeze'_`type_metal' "Output: `type_output' `type_metal', specify"
        capture label var gp_q_`squeeze'_`type_metal'T "Output: `type_output' `type_metal', transferred to other plants, qt."
        capture label var gp_q_`squeeze'_`type_metal'C "Output: `type_output' `type_metal' consumed in plant, qt."
        capture label var gp_q_`squeeze'_`type_metal'FS "Output: `type_output' `type_metal' for sale, qt."
        capture label var gp_v_`squeeze'_`type_metal'FS "Output: `type_output' `type_metal' for sale, value"
        capture label var gp_v_`squeeze'_`type_metal'T "Output: `type_output' `type_metal', transferred to other plants, value"
    }
}

capture label var gp_v_wire "Output: Wire and wire products, value"

//rough castings 
foreach type_metal of Brass Copper Aluminum "Resistant Alloy" Nickel Other1 Other2{
    local squeeze = substr("`type_metal'", " ","")
    capture label var gp_v_castings_`type_metal' "Output: Castings, rough `type_metal', value"
    capture label var gp_q_castings_`type_metal' "Output: Castings, rough `type_metal', qt."
}

//other foundry products
foreach type_prod of bearings "electrical Supplies" hardware "architectural Work" "ornamental Grilles" valves faucets fittings "screwmach Products" bells "die Castings" "finished Castings" forgings "spun Ware" "foundry Other1" "foundry Other2" "foundry Other3"{
    local squeeze = substr("`type_prod'", " ","")
    foreach type_metal of Brass Copper Other1 Other2 Total {
        capture label gp_v_`squeeze'`type_metal' "Output: Foundry products `type_prod' `type_metal', value"
        capture label gp_s_`squeeze'`type_metal' "Output: Foundry products `type_prod' `type_metal', specify"
    }
}
