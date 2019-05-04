#!/bin/bash

echo "-----------cd1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_cd1.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_cd1.txt -
echo " "
echo " "

echo "-----------cd2----------------"
java harjoitustyo.Oope2HT < esimerkit/in_cd2.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_cd2.txt -
echo " "
echo " "

echo "-----------exit1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_exit.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_exit.txt -
echo " "
echo " "

echo "-----------ls1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_ls1.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_ls1.txt -
echo " "
echo " "

echo "-----------ls2----------------"
java harjoitustyo.Oope2HT < esimerkit/in_ls2.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_ls2.txt -
echo " "
echo " "

echo "-----------md1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_md1.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_md1.txt -
echo " "
echo " "

echo "-----------md2----------------"
java harjoitustyo.Oope2HT < esimerkit/in_md2.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_md2.txt -
echo " "
echo " "

echo "-----------mf1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_mf1.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_mf1.txt -
echo " "
echo " "

echo "-----------mf2----------------"
java harjoitustyo.Oope2HT < esimerkit/in_mf2.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_mf2.txt -
echo " "
echo " "

echo "-----------rm1----------------"
java harjoitustyo.Oope2HT < esimerkit/in_rm1.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_rm1.txt -
echo " "
echo " "

echo "-----------rm2----------------"
java harjoitustyo.Oope2HT < esimerkit/in_rm2.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_rm2.txt -
echo " "
echo " "

echo "-----------assignment----------------"
java harjoitustyo.Oope2HT < esimerkit/in_assignment.txt > out.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' out.txt | diff -s --side-by-side --suppress-common-lines esimerkit/out_assignment.txt -