//This fixes estabids for industry 1112. The existing ID is not really unique. We think it should be concatenated with the state. 

//Remaining IDs to FIX (looks like a spreadsheet reading in error, maybe merging the different sheets?)
//1929: me0371a
//1933: CNK0134 CNK0135 CNK0044
//1935: CNK0204 CNK0237

gen new_id_string = estabid_1112 + ag001
egen estabid_1112_new = group(new_id_string)
drop estabid_1112 new_id_string
rename estabid_1112_new estabid_1112
