//fixes mistakes in estabids for macaroni in 1935
tostring firmid, replace

drop if a001=="R.C. Macaroni & Importing Co." & firmid=="141"
drop if a001=="Mound City Macaroni Co." & firmid=="142"
drop if a001=="Checker Food Products Company" & firmid=="144"
drop if a001=="John J Meier & Co" & firmid=="145"
drop if a001=="Saussele Noodle Co." & firmid=="147"
drop if a001=="V. Viviano & Bros Mac Mfg. Co. Inc." & firmid=="149"
replace firmid = "23" if a001=="San Diego Macaroni Mfg. Co."
replace firmid ="335" if a001=="Calif Vulcan Macaroni"
replace firmid ="108" if a001=="Taormina Brothers"
replace firmid ="43" if a001=="San Francisco Italian Paste Co."
replace firmid ="1000" if a001=="Westen ?? Macaroni ProductsCo."
replace firmid ="9" if a001=="Fresno Macaroni Mfg Co"
