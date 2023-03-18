//generate `type' IDs
//these are strings with 10 random letters which delivers a probability of "collisions" for a large industry (~25K) of less than 2*e^-6

//indnum - Industry ID local
//type - establishment or firm
args indnum type

//Temporary variables created
tempvar create_id new_draw

gen `create_id' = 1
//`type'_id  holds the ID values
capture confirm variable `type'_id
if _rc>0{
	gen `type'_id = ""
}
else{
	replace `create_id' = `type'_id==""
	
}

//this will generate the `type' ID  a random string of 10 characters that will be concatenated with the indNum for those with `create_id'==1
replace `type'_id = "`indnum'" if `create_id'==1
ralpha `new_draw', upp length(10)
replace `type'_id = `type'_id + `new_draw' if `create_id'==1

//tag any duplicate IDs
capture drop dup_`type'_id
duplicates tag `type'_id, gen(dup_`type'_id)

//label the generated variables
label var dup_`type'_id "Tag for duplicate `type' ID within an industry and year"
label var `type'_id "`type' ID composed of IndNum and random sequence of 10 letters"
