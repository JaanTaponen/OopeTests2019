ECHO OFF

ECHO KAANNETAAN JAVA
PowerShell javac .\harjoitustyo\Oope2HT.java
ECHO KAANNETAAN scripti

java harjoitustyo.Oope2HT < syotteet\in_cd1.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_cd1.txt

java harjoitustyo.Oope2HT < syotteet\in_cd2.txt > tulokset\temp.txt  
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_cd2.txt

java harjoitustyo.Oope2HT < syotteet\in_exit.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_exit.txt

java harjoitustyo.Oope2HT < syotteet\in_ls1.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_ls1.txt

java harjoitustyo.Oope2HT < syotteet\in_ls2.txt > tulokset\temp.txt  
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_ls2.txt

java harjoitustyo.Oope2HT < syotteet\in_md1.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_md1.txt

java harjoitustyo.Oope2HT < syotteet\in_md2.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_md2.txt

java harjoitustyo.Oope2HT < syotteet\in_mf1.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_mf1.txt

java harjoitustyo.Oope2HT < syotteet\in_mf2.txt > tulokset\temp.txt  
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_mf2.txt


java harjoitustyo.Oope2HT < syotteet\in_rm1.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_rm1.txt

java harjoitustyo.Oope2HT < syotteet\in_rm2.txt > tulokset\temp.txt  
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_rm2.txt

java harjoitustyo.Oope2HT < syotteet\in_assignment.txt > tulokset\temp.txt   
PowerShell "(Get-Content tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > tulokset\out_assignment.txt

DEL tulokset\temp.txt

ECHO 
ECHO -------------------------------------
ECHO --Tulostetaan mahdolliset eriavaisyydet--
ECHO 
java -jar Vertailu.jar
ECHO -------------------------------------
ECHO 
rmdir /S /Q tulosteesi
xcopy tulokset tulosteesi\
cd tulokset
DEL /F/Q/S *.* > NUL
cd ..
ECHO
ECHO
ECHO ---------------------------------------------------
ECHO KASVATA KOMENTORIVIN KOKOA NIIN NAET RIVIT KUNNOLLA
ECHO ---------------------------------------------------
ECHO
ECHO
PAUSE