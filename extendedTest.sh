#!/bin/bash
echo "KÄÄNNETÄÄN JAVA"
cd harjoitustyo
javac *.java apulaiset/*.java iteraattorit/*.java tiedot/*.java omalista/*.java 
cd ../scriptsrc

#echo "KÄÄNNETÄÄN scripti"
#javac Vertailu.java

cd ..
java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_cd1.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_cd1.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_cd2.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_cd2.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_exit.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_exit.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_ls1.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_ls1.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_ls2.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_ls2.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_md1.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_md1.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_md2.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_md2.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_mf1.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_mf1.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_mf2.txt > scriptsrc/tulokset/temp.txt && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_mf2.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_rm1.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_rm1.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_rm2.txt > scriptsrc/tulokset/temp.txt && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_rm2.txt

java harjoitustyo.Oope2HT < scriptsrc/syotteet/in_assignment.txt > scriptsrc/tulokset/temp.txt  && 
sed 's/>\([a-zA-Z0-9_./]\)/>\n\1/g' scriptsrc/tulokset/temp.txt > scriptsrc/tulokset/out_assignment.txt

cd scriptsrc

rm tulokset/temp.txt

echo ""
echo "-------------------------------------"
echo "--Tulostetaan mahdolliset eriäväisyydet--"
echo ""
java -jar Vertailu.jar
echo "-------------------------------------"
echo ""

rm -rf ../tulosteesi
cp tulokset -r ../tulosteesi

rm tulokset/*.txt

#rm Vertailu.class

echo "Cleanup"
cd ../harjoitustyo
rm *.class apulaiset/*.class iteraattorit/*.class tiedot/*.class omalista/*.class
cd ../scriptsrc