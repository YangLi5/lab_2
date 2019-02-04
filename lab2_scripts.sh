#!/bin/bash
# Authors : Yang Li
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "File name: regex_practice.txt"
#grep -E $regex $filename

echo "Number of phone numbers: "
grep -ce '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt
grep '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt #print
grep -e '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt > phone_results.txt #store

echo "Number of emails: "
grep -ce '@.*..*' regex_practice.txt
grep 'geocities.com' regex_practice.txt #print
grep -e 'geocities.com' regex_practice.txt > email_results.txt #store

echo "Enter a filename:"
read name
echo "Enter a text you want to match:"
read match

grep -E $match $name
grep -e $match $name > command_results.txt
