@echo off 
:: variables 
SET odrive=%odrive:~0,2% 
set backupcmd=xcopy /s /c /d /e /h /i /r /y 
echo off 
for /r C:\ %%x in (*.pdf) do xcopy %%x "%drive%\copy"
@echo off 
cls