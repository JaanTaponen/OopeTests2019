#!/bin/bash
echo "KÄÄNNETÄÄN JAVA"
cd harjoitustyo
javac *.java apulaiset/*.java iteraattorit/*.java tiedot/*.java omalista/*.java 
cd ..

echo "KÄÄNNETÄÄN scripti"
javac Vertailu.java

java harjoitustyo.Oope2HT < syotteet/in_cd1.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_cd1.txt

java harjoitustyo.Oope2HT < syotteet/in_cd2.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_cd2.txt

java harjoitustyo.Oope2HT < syotteet/in_exit.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_exit.txt

java harjoitustyo.Oope2HT < syotteet/in_ls1.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_ls1.txt

java harjoitustyo.Oope2HT < syotteet/in_ls2.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_ls2.txt

java harjoitustyo.Oope2HT < syotteet/in_md1.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_md1.txt

java harjoitustyo.Oope2HT < syotteet/in_md2.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_md2.txt

java harjoitustyo.Oope2HT < syotteet/in_mf1.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_mf1.txt

java harjoitustyo.Oope2HT < syotteet/in_mf2.txt > tulokset/temp.txt && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_mf2.txt


java harjoitustyo.Oope2HT < syotteet/in_rm1.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_rm1.txt

java harjoitustyo.Oope2HT < syotteet/in_rm2.txt > tulokset/temp.txt && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_rm2.txt

java harjoitustyo.Oope2HT < syotteet/in_assignment.txt > tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' tulokset/temp.txt > tulokset/out_assignment.txt

rm tulokset/temp.txt

echo ""
echo "-------------------------------------"
echo "Tulostetaan mahdolliset eriäväisyydet"
java Vertailu
echo "-------------------------------------"
echo ""
rm -rf tulosteesi
cp tulokset -r tulosteesi

rm tulokset/*

rm Vertailu.class