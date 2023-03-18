//Fix cases of establishments located in different counties in different years for ind_code_num == 216
replace ag003 = "COBB" if obs_id == "1935216000000000702"
replace ag003_fips = 67 if obs_id=="1935216000000000702"
replace ag003_fips_cpp = "67" if obs_id=="1935216000000000702"

replace ag003 = "BERKS" if obs_id == "1931216000000003183"
replace ag003_fips = 11 if obs_id=="1931216000000003183"
replace ag003_fips_cpp = "11" if obs_id=="1931216000000003183"

replace ag003 = "BERKS" if obs_id == "1935216000000003182"
replace ag003_fips = 11 if obs_id=="1935216000000003182"
replace ag003_fips_cpp = "11" if obs_id=="1935216000000003182"

replace ag003 = "HOT SPRINGS" if obs_id == "1929216000000000317"
replace ag003_fips = 51 if obs_id=="1929216000000000317"
replace ag003_fips_cpp = "51" if obs_id=="1929216000000000317"

replace ag003 = "HOT SPRINGS" if obs_id == "1935216000000000320"
replace ag003_fips = 51 if obs_id=="1935216000000000320"
replace ag003_fips_cpp = "51" if obs_id=="1935216000000000320"

replace ag003 = "BROOKS" if obs_id == "1935216000000000601"
replace ag003_fips = 27 if obs_id=="1935216000000000601"
replace ag003_fips_cpp = "27" if obs_id=="1935216000000000601"

replace ag003 = "SPARTANBURG" if obs_id == "1929216000000004122"
replace ag003_fips = 83 if obs_id=="1929216000000004122"
replace ag003_fips_cpp = "83" if obs_id=="1929216000000004122"

replace ag003 = "GREENVILLE" if obs_id == "1935216000000004061"
replace ag003_fips = 39 if obs_id=="1935216000000004061"
replace ag003_fips_cpp = "39" if obs_id=="1935216000000004061"

replace ag003 = "TALLAPOOSA" if obs_id == "1935216000000000275"
replace ag003_fips = 123 if obs_id=="1935216000000000275"
replace ag003_fips_cpp = "123" if obs_id=="1935216000000000275"

replace ag003 = "BERKS" if obs_id == "1931216000000003244"
replace ag003_fips = 11 if obs_id=="1931216000000003244"
replace ag003_fips_cpp = "11" if obs_id=="1931216000000003244"

replace ag003 = "LANCASTER" if obs_id == "1935216000000004185"
replace ag003_fips = 57 if obs_id=="1935216000000004185"
replace ag003_fips_cpp = "57" if obs_id=="1935216000000004185"

replace ag003 = "BUCKS" if obs_id == "1929216000000003180"
replace ag003_fips = 17 if obs_id=="1929216000000003180"
replace ag003_fips_cpp = "17" if obs_id=="1929216000000003180"

replace ag003 = "JONES" if obs_id == "1933216000000000855"
replace ag003_fips = 169 if obs_id=="1933216000000000855"
replace ag003_fips_cpp = "169" if obs_id=="1933216000000000855"

replace ag003 = "BERKS" if obs_id == "1931216000000003323"
replace ag003_fips = 11 if obs_id=="1931216000000003323"
replace ag003_fips_cpp = "11" if obs_id=="1931216000000003323"

replace ag003 = "BERKS" if obs_id == "1931216000000003276"
replace ag003_fips = 11 if obs_id=="1931216000000003276"
replace ag003_fips_cpp = "11" if obs_id=="1931216000000003276"

replace ag003 = "CLAY" if obs_id == "1929216000000001611"
replace ag003_fips = 25 if obs_id=="1929216000000001611"
replace ag003_fips_cpp = "25" if obs_id=="1929216000000001611"

replace ag003_fips_cpp = "510" if obs_id=="1933216000000001595"
replace ag003_fips_cpp = "89" if obs_id=="1935216000000000786"

replace ag003 = "TALLAPOOSA" if obs_id == "1935216000000000263"
replace ag003_fips = 123 if obs_id=="1935216000000000263"
replace ag003_fips_cpp = "123" if obs_id=="1935216000000000263"

replace ag003_fips = 45 if obs_id=="1935216000000004061"
replace ag003_fips_cpp = "45" if obs_id=="1935216000000004061"

replace ag003 = "SCITUATE" if obs_id == "1935216000000003563"
replace ag003_fips = 7 if obs_id=="1935216000000003563"
replace ag003_fips_cpp = "7" if obs_id=="1935216000000003563"

replace ag003 = "NEUSE" if obs_id == "1929216000000002565"
replace ag003_fips = 183 if obs_id=="1929216000000002565"
replace ag003_fips_cpp = "183" if obs_id=="1929216000000002565"
