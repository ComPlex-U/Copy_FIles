@echo off
:: variables
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
%backupcmd% "%USERPROFILE%\pictures" "%drive%\copy\pics"
%backupcmd% "%USERPROFILE%\Favorites" "%drive%\copy\Favorites"
%backupcmd% "%USERPROFILE%\videos" "%drive%\copy\vids"
%backupcmd% "%USERPROFILE%\Download" "%drive%\copy\Download"
%backupcmd% "%USERPROFILE%\Desktop" "%drive%\copy\Desktop"
%backupcmd% "%USERPROFILE%\Music" "%drive%\copy\Music"
%backupcmd% "%USERPROFILE%\Documents" "%drive%\copy\Documents"
@echo off
cls
