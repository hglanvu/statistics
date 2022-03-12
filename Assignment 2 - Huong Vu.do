#to import the data to Stata - drag the data Welcomesurvey-PPS741.dta 
#create scatterplot for countrylived and countryvisited - with countryvisited on the y-axis variable
scatter countryvisited countrylived
#create the trend line for the scatterplot
twoway (scatter countryvisited countrylived) (lfit countryvisited countrylived)
#create correlation between countrylived and countryvisited
corr countryvisited countrylived
#create regression for countrylived and countryvisited
reg countryvisited countrylived
