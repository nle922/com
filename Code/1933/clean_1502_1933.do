//rename variables for industry 1502 in 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//There is no separate template for this industry-year, all firms use the general schedule
do "$rootDir_code/1933/rename_common_1933_formA.do"

//Note: Very few of the establishmetns filled in the output columns so no real reason to clean up
//the output variables here.
