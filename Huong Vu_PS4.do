
##Question 1
#finding average annual prior earnings for the group which received education services (HCD)
summ bern12_cont if res2 ==2

#finding average annual prior earning for the group which was encouraged to join labor market (LFA)
summ bern12_cont if res2 ==3

#finding average annual prior earnings for the control group
summ bern12_cont if res2 ==6

#compare HCD mean with control group
ttest bern12_cont if res2==2 | res2==6, by(res2) unequal

#compare LFA mean with control group
ttest bern12_cont if res2==3 | res2==6, by(res2) unequal


##Question 2
#finding average earning for the control group post random assignment
sum earnq2t9 if res2==6

#test the difference in earnings post random assignment for group which received education services (HCD) with the average earning of the control group post random assignment 
ttest earnq2t9 if res2==2 | res==6, by(res2) unequal

#test the difference in earnings post random assignment for group which was encouraged to join the job market (LFA) with the average earning of the control group post random assignment 
ttest earnq2t9 if res2==3 | res2==6, by(res2) unequal


##Question 4
#finding the difference in educational attainment between participants in HCD versus CTL
tabulate res2 degree if res2==2 | res2==6, row chi

#finding the difference in educational attainment between participants in LFA versus CTL
tabulate res2 degree if res2==3 | res2==6, row chi

