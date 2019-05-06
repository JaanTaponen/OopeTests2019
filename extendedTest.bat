@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

cd scriptsrc\tulokset
DEL /F/Q/S *.* > NUL
cd ..
cd ..
ECHO KAANNETAAN JAVA
PowerShell javac .\harjoitustyo\Oope2HT.java

cd scriptsrc\syotteet
for %%v in (*.txt) do (
	ECHO %%v
	cd ..
	cd ..
	java harjoitustyo.Oope2HT < scriptsrc\syotteet\%%v > scriptsrc\tulokset\temp.txt
	SET _test=%%v
	PowerShell "(Get-Content scriptsrc\tulokset\temp.txt) -replace '>([a-zA-Z0-9_./]+)', "">`r`n`$1""" > scriptsrc\tulokset\out!_test:~2!
	cd scriptsrc\syotteet
)
cd ..
cd tulokset
DEL temp.txt
cd ..

ECHO -------------------------------------
ECHO --Tulostetaan mahdolliset eriavaisyydet--
java -jar Vertailu.jar
ECHO -------------------------------------
cd ..\harjoitustyo
DEL /F/Q/S *.class > NUL

PAUSE
