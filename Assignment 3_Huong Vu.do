#2a - the fractions of men and women worked the week prior to the survey
tab WRK SEX, column

#2b - people who made over $100,000
tab WRK SEX if PINCP>100000, column

#2c - group AGEP into 5 categories
generate Age_groups=1 if AGEP<18
replace Age_groups=2 if AGEP>=18 & AGEP<=25
replace Age_groups=3 if AGEP>=25 & AGEP<=40
replace Age_groups=4 if AGEP>=40 & AGEP<=64
replace Age_groups=5 if AGEP>64

#2c - label groups
label define groups 1"Under 18" 2"18-25" 3"25-40" 4"40-64" 5"Over 64"
label value Age_groups groups

#2c - graph the percentage of people who worked for age groups and sex
graph bar WRK, over (SEX) over (Age_groups)

#2d - variable summary
describe
