# CoM V2 Code and Data

This documents the new code written for CoM v2. This version focused on improving the sub-county geographies by merging with the Census Places Project data as well as fixing firm IDs. 

1. build_CoM_v2 - Builds the new version of the dataset by creating an extract from the original data.
2. summarize_V2_changes - Summarizes differences between the V1 and V2 datasets. This program is somewhat reusable for diagnosing changes in future versions. File names and other details will need to be modified to work in new settings.

## ./SES1459263 Team Folder/V2/Establishment Link Updates

1. collapse_firmids - Called by collapse_firmids_byInd and does the collapsing for the given dataset.
2. collapse_firmids_byInd - Collapses firm IDs industry by industry to fix the problem of establishments wandering between firms over time.
3. duplicates_drop_v1 - Drops some "near" duplicates.
4. identify_bad_links - Identifies cases where establishments "wandered" between counties over time, clearly impossible. These problems were due to a mixture of issues with the geographies and issues with the establishment links themsleves. Not called by build_CoM_v2 but used to help identify and fix errors.
5. reconcile_estab_ids - Creation of link between ICPSR data and "v2" data with our firm IDs. This was necessary since Gaeto's fixes were not directly mergeable on establishment ID>
6. update_establishment_links_CA.do - Updates establishment links in CA based on Sarah Quincy's work. 

### Known Bug with collapse_firmids

Consider the following data:

Firm  Establishments
A     x
B     y
C     x y 

The code will not combine firms A and B as it should. Instead it will output:

Firm  Firms Establishments
A     A           x
B     B C         x y

Running the code again would combine these two rows, but the problem is that to fix all of these problems potentially requires running the code a number of times equal the number of establishments in the firm with the largest number. Doing this would be prohibitive. It would be possible to check whether there are problematic cases like this by checking whether the intersection of the values of the establishments variable is empty. However, this would require the expensive step of reshaping the data long on the establishment variable and then checking for duplicates. The approach we discuss next would not have this problem, but it is computationally too expensive to run.

### Extra

This folder has code for the following alternative approach to fixing the "wandering" establishments problem. Consider mapping each establishment to a unique prime number. Then calculate for each firm, the product of the establishent prime numbers. To test whether two firms share an establishment, we simply need to check whether the GCD of their products is greater than 1. If so, then we combine the firms by updating the firm product to the LCM of the two. In the end, to recover the establishments in a firm, we extract the prime factors of the firm product. If a particular prime divides the product, then that establishment is in the firm. 

The biggest concerns with this approach are numerical. First, since Stata has no collapse option for product, to calculate this product we could take the log of the prime numbers, collapse by adding them up, then exponentiate the result. We would need to ensure that this produces integers. There are other ways to do this, which would not require log and exponentiate, but this is a much more efficient way.

Second, the firm products, particularly after repeated updating to the LCM, might also become very large generating instabilities when testing whether certain numbers evenly divide the products. The problem is that Stata does not have an efficient algorithm for computing the GCD (the LCM is trivial to compute once you have the GCD).  This makes this approach infeasible in the end. 

### ./Fix Counties

These fix wandering establishments due to bad geographies by industry. 

### ./Fix Matches

These fix wandering establishments due to bad establishment matches by industry. 

## ./SES1459263 Team Folder/V2/Firm Link Updates

1. clean_firm_names.do - Cleans firm names based on Sarah Quincy's non-CA specific code.
2. update_firm_links_CA.do - Merges Sarah Quincy's fixes to firms in CA.
3. update_firm_links_Gaeto.do - Merge in firm updates from Lilian Gaeto's work. The code itself is originally derived from Gaeto's code in the COntributions folder. 

1. firm_CA_update.xlsx - List of fixes to firms located in CA from Sarah Quincy. 
2. update_firm_links_Gaeto.dta - Output of Lilian Gaeto's code in Contributions folder to fix firms including establishment_ID, firm_ID_gaeto and year.

### ./Post Collapse Fixes

1.  merge_fixes_final - Merges the firm ID fixes in the files ind*_fixes.xlsx and ind*_final_fixes.xlsx 
2. post_collapse_firm_fixes_* - Fix firm IDs after the collapsing of firm IDs in a given industry. 

## ./SES1459263 Team Folder/V2/Geography Updates

1. clean_city_names - This is derived from CPP Python code.
2. fix_missing_fips - Fixes a few cases of missing FIPS codes.
3. match_CPP.do - Match to CPP data. Right now there is a m:m, which probably needs to be fixed. 
4. prepare_CPP_data.do - Prepare crosswalk from CPP for matching to CoM data.
5. update_city_fips - Fixes city FIPS for VA among others.
6. update_geographies.do - Cleaned about 1200 estab / month that did not merge with retail or discount rate data at Fed district level.
7. update_geographies_CA.do - Code from Sarah Quincy to clean CA counties and towns. 
8. clean_census_mfg_locs_CA.xlsx - Fixes to CA geographies from Sarah Quincy.

## ./Cleaning Scripts/General

1. clean_industry_year.do - Modified to create the observation identifier variable obs_ID. This variable is a persistent identifier for observations that will not change as long as the original spreadsheets are not modified in any way. This means that going forward any changes to establishment or firm IDs can simply be merged on the basis of this variable. 
2. reset_ID - Reset firm and establishment IDs to proper format after updating.

## New Variables in V2

1. ag003_fips_CPP - This is the county based on a match to CPP. This only differs from ag003_fips if we updated the location of place based on a match in CPP.
2. match_CPP - Defines whether we matched to CPP and how. The values are labeled to explain the possible results of matching to CPP.
3. place_CPP, lon_cpp, lat_CPP - Geographic variables from the Census Places Project. The variable place_CPP is the persistent name of a place across Censuses with long_CPP and lat_CPP the associated latitude and longitude of that place.
4. obs_id - This is a persistent, unique observation identifier that will not change ever. It is composed of the year, industry, and a 10 digit number that is based on a hash of all the variables in the dataset.
5. x5_firm_id, x5_establishment_id - Indicators for whether firm (resp. establishment) ID has been updated from the V1 dataset.
6. firm_id_v1 - Firm ID from V1 of the data. Note that this will not be literally the same value of the firm ID since firm IDs are created on the fly. It is the same in the sense that establishments will be grouped into firms in the same way as in V1.

## Issues that remain

1. How exactly should the flag for an updated firm ID be defined given we "reset" a number firm IDs after fixing the wandering establishmetn issue? These changes might be reset the firm ID to its original value, but it's hard to know. 
2. In update_geographies_CA. do at line import excel "./SES1459263 Team Folder/Geography Updates/clean_census_mfg_locs_CA.xlsx", one obs from using does not match.
3. Did not go through all firms IDs in industry 1005. Stopped at letter C of the establishment name.

## For V3

1. Creation of data signatures: We tried to create files with the "signatures" for the original spreadsheets. This was to ensure that the observation IDs actually do remain persistent. The signature would be checked every time an extract is created and if it does not match, the code exits. However, this did not seem to work. There are weird "Unicode Encoding Conflicts". These are lines 17-24 of clean_industry_year which are commented out presently. 
2. Improve the establishment matching through handchecking.
3. Handcheck the smaller firms (<6 establishments).
4. Strings in ag002 cleaned up.

