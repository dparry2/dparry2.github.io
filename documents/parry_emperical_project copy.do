import excel "/Users/darrenparry/Desktop/ECON 318 Emperical Project.xlsx", sheet("Sheet1") firstrow

use "/Users/darrenparry/Desktop/ECON 318 Emperical Project.xlsx", replace

// OLS Regression

reg win_percentage total_retail_sales_per_capita

reg win_percentage total_retail_sales_per_capita population average_household_income median_age average_household_size

// Used next equation in paper

reg championships_won total_retail_sales_per_capita population average_household_income median_age average_household_size

reg win_percentage population

reg win_percentage median_age

reg championships_won total_retail_sales_per_capita population average_household_income

summarize win_percentage if west == 1

summarize win_percentage if midwest == 1

summarize win_percentage if southwest == 1

summarize win_percentage if northeast == 1

summarize win_percentage if southeast == 1

summarize win_percentage if west == 1 & mlb == 1

summarize win_percentage if west == 1 & nba == 1

summarize win_percentage

summarize championships_won if northeast == 1

reg win_percentage population

reg win_percentage total_retail_sales_per_capita

reg win_percentage average_household_income

reg championships_won population

reg win_percentage average_household_income

reg championships_won average_household_income

reg championships_won total_retail_sales_per_capita

reg championships_won median_age

// IV Regression 

ivregress 2sls win_percentage total_retail_sales_per_capita population median_age (average_household_income = white_population_percentage), first

ivregress 2sls win_percentage total_retail_sales_per_capita population median_age (average_household_income = male_percentage_population), first

ivregress 2sls championships_won total_retail_sales_per_capita population median_age (average_household_income = male_percentage_population), first

ivregress 2sls championships_won total_retail_sales_per_capita population median_age (average_household_income = white_population_percentage), first

ivregress 2sls championships_won total_retail_sales_per_capita average_household_income median_age (population = white_population_percentage), first

// Used next equation in paper

ivregress 2sls win_percentage total_retail_sales_per_capita average_household_income median_age (population = white_population_percentage), first

ivregress 2sls win_percentage total_retail_sales_per_capita average_household_income median_age (population = male_percentage_population), first






