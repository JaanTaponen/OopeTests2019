ECHO OFF

cd scriptsrc
cd tulokset
DEL /F/Q/S *.* > NUL
cd ..
cd ..

ECHO KAANNETAAN JAVA
PowerShell javac .\harjoitustyo\Oope2HT.java
ECHO KAANNETAAN scripti

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_cd1.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_cd1.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_cd2.txt > scriptsrc\tulokset\temp.txt  
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_cd2.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_exit.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_exit.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_ls1.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_ls1.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_ls2.txt > scriptsrc\tulokset\temp.txt  
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_ls2.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_md1.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_md1.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_md2.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_md2.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_mf1.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_mf1.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_mf2.txt > scriptsrc\tulokset\temp.txt  
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_mf2.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_rm1.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_rm1.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_rm2.txt > scriptsrc\tulokset\temp.txt  
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_rm2.txt

java harjoitustyo.Oope2HT < scriptsrc\syotteet\in_assignment.txt > scriptsrc\tulokset\temp.txt   
PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out_assignment.txt

DEL scriptsrc\tulokset\temp.txt

cd scriptsrc

ECHO -------------------------------------
ECHO --Tulostetaan mahdolliset eriavaisyydet--
ECHO 
java -jar Vertailu.jar
cd ..\harjoitustyo
DEL /F/Q/S *.class > NUL
ECHO ---------------------------------------------------
ECHO KASVATA KOMENTORIVIN KOKOA NIIN NAET RIVIT KUNNOLLA
ECHO ---------------------------------------------------
PAUSE