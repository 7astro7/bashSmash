#!/bin/bash

# Line below can be changed to explictly ask what name the
# user wants prefixed to .csv for output file
echo Please enter the year these CSVs pertain to

# standard input is saved in yearvar
read yearvar

# Whatever the user answered will be prefixed to .csv to form
# the name of the ouput csv 
echo You entered $yearvar, output csv will be: ${yearvar}.csv

# Binds rows of all csv files in cwd, generates new csv file 
# with user input that's saved in $yearvar prefixed before
# the .csv output. 
# If there's already a csv file in cwd with such a name the
# output of row binding will be appended to the existing file
csvstack *.csv >> ${yearvar}.csv
