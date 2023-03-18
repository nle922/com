//Fix cases of establishments located in different counties in different years for ind_code_num == 118
replace ag003 = "BRISTOL" if obs_id=="1929118000000002693"
replace ag003_fips = 1 if obs_id=="1929118000000002693"
replace ag003_fips_cpp = "1" if obs_id=="1929118000000002693"

replace ag003_fips = 195 if obs_id=="1933118000000001230"
replace ag003_fips_cpp = "195" if obs_id=="1933118000000001230"

replace ag003 = "ADAIR" if obs_id=="193311800000000167B"
replace ag003_fips = 1 if obs_id=="193311800000000167B"
replace ag003_fips_cpp = "1" if obs_id=="193311800000000167B"
replace ag001_fips = 29 if obs_id=="193311800000000167B"
replace ag001 = "MISSOURI" if obs_id=="193311800000000167B"

replace ag003 = "MARION" if obs_id=="1931118000000000673"
replace ag003_fips = 97 if obs_id=="1931118000000000673"
replace ag003_fips_cpp = "97" if obs_id=="1931118000000000673"

replace ag003 = "ONONDAGA" if obs_id=="1931118000000001675"
replace ag003_fips = 67 if obs_id=="1931118000000001675"
replace ag003_fips_cpp = "67" if obs_id=="1931118000000001675"

replace ag003 = "LAKE" if obs_id=="1935118000000000467"
replace ag003_fips = 97 if obs_id=="1935118000000000467"
replace ag003_fips_cpp = "97" if obs_id=="1935118000000000467"

replace ag003 = "CHENANGO" if obs_id=="1931118000000001622"
replace ag003_fips = 17 if obs_id=="1931118000000001622"
replace ag003_fips_cpp = "17" if obs_id=="1931118000000001622"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000406"
replace ag003_fips = 89 if obs_id=="1935118000000000406"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000406"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000409"
replace ag003_fips = 89 if obs_id=="1935118000000000409"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000409"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000410"
replace ag003_fips = 89 if obs_id=="1935118000000000410"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000410"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000413"
replace ag003_fips = 89 if obs_id=="1935118000000000413"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000413"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000407"
replace ag003_fips = 89 if obs_id=="1935118000000000407"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000407"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000411"
replace ag003_fips = 89 if obs_id=="1935118000000000411"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000411"

replace ag003 = "ATLANTA" if obs_id=="1935118000000000408"
replace ag003_fips = 89 if obs_id=="1935118000000000408"
replace ag003_fips_cpp = "89" if obs_id=="1935118000000000408"

replace ag003 = "BRONX" if obs_id=="1931118000000001772"
replace ag003_fips = 5 if obs_id=="1931118000000001772"
replace ag003_fips_cpp = "5" if obs_id=="1931118000000001772"

replace ag003 = "BRONX" if obs_id=="1929118000000001952"
replace ag003_fips = 5 if obs_id=="1929118000000001952"
replace ag003_fips_cpp = "5" if obs_id=="1929118000000001952"

replace ag003 = "BRONX" if obs_id=="1931118000000001762"
replace ag003_fips = 5 if obs_id=="1931118000000001762"
replace ag003_fips_cpp = "5" if obs_id=="1931118000000001762"

replace ag003 = "BRONX" if obs_id=="1931118000000001767"
replace ag003_fips = 5 if obs_id=="1931118000000001767"
replace ag003_fips_cpp = "5" if obs_id=="1931118000000001767"

replace ag003 = "BRONX" if obs_id=="1931118000000001760"
replace ag003_fips = 5 if obs_id=="1931118000000001760"
replace ag003_fips_cpp = "5" if obs_id=="1931118000000001760"

replace ag003 = "BRONX" if obs_id=="193311800000000238B"
replace ag003_fips = 5 if obs_id=="193311800000000238B"
replace ag003_fips_cpp = "5" if obs_id=="193311800000000238B"

replace ag003 = "BRONX" if obs_id=="1931118000000001755"
replace ag003_fips = 5 if obs_id=="1931118000000001755"
replace ag003_fips_cpp = "5" if obs_id=="1931118000000001755"

replace ag003 = "MARTINSVILLE" if obs_id=="1931118000000002616"
replace ag003_fips = 690 if obs_id=="1931118000000002616"
replace ag003_fips_cpp = "690" if obs_id=="1931118000000002616"

replace ag003 = "BALTIMORE CITY" if obs_id=="1935118000000000834"
replace ag003_fips = 510 if obs_id=="1935118000000000834"
replace ag003_fips_cpp = "510" if obs_id=="1935118000000000834"

replace ag003 = "WINCHESTER" if obs_id=="1929118000000002993"
replace ag003_fips =  840 if obs_id=="1929118000000002993"
replace ag003_fips_cpp = "840" if obs_id=="1929118000000002993"

replace ag001_fips = 21 if obs_id=="1933118000000000498"
replace ag003_fips =  9 if obs_id=="1933118000000000498"
replace ag003_fips_cpp = "9" if obs_id=="1933118000000000498"

replace ag001_fips = 47 if obs_id=="1931118000000002419"
replace ag003_fips =  11 if obs_id=="1931118000000002419"
replace ag003_fips_cpp = "11" if obs_id=="1931118000000002419"

replace ag003_fips =  760 if obs_id=="1935118000000002288"
replace ag003_fips_cpp = "760" if obs_id=="1935118000000002288"

replace ag001_fips = 47 if obs_id=="1929118000000002752"
replace ag003_fips =  11 if obs_id=="1929118000000002752"
replace ag003_fips_cpp = "11" if obs_id=="1929118000000002752"

replace ag003_fips =  195 if obs_id=="1933118000000001230"
replace ag003_fips_cpp = "195" if obs_id=="1933118000000001230"

replace ag001_fips = 8 if obs_id=="1931118000000000263"
replace ag003_fips =  1 if obs_id=="1931118000000000263"
replace ag003_fips_cpp = "1" if obs_id=="1931118000000000263"

replace ag003_fips =  840 if obs_id=="1931118000000002607"
replace ag003_fips_cpp = "840" if obs_id=="1931118000000002607"

replace ag003_fips =  49 if obs_id=="1929118000000002928"
replace ag003_fips_cpp = "49" if obs_id=="1929118000000002928"
