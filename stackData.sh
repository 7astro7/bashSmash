#!/bin/bash

echo Please enter the year these CSVs pertain to

read yearvar

echo You entered $yearvar, output csv will be: ${yearvar}.csv

csvstack * > ${yearvar}.csv
