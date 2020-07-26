#!/bin/bash

# Line below can be changed to explictly ask what name the
# user wants prefixed to .csv for output file
echo Please enter the year these CSVs pertain to

read yearvar

echo You entered $yearvar, output csv will be: ${yearvar}.csv

# Binds rows of all csv files in cwd, generates new csv file 
# with user input prefixed before the .csv. If there's already 
# a csv file with such a name the output of row binding will 
# be appended to the existing file
csvstack * >> ${yearvar}.csv
