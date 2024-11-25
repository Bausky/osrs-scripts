#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

;;F72020 Neck
;;1232E7 Food
;;FF29D836 Bank
;;FFDC3AE8 Ardy Knight
;;5EC023 Coin Pouch
;;A94DC8
;;OPEN FF9A38BA
random, Noob, 200, 220

F1::

loop	{
	
	/*
	
	MoveMouse(755, 210, 2)
	sleep, 150
	Click
	sleep, 350
	MoveMouse(735, 296, 1)
	sleep, 150
	Click
	sleep, 240
	MoveMouse(656, 210, 2)
	sleep, 150
	Click
	sleep, 250
	
	*/
	
	loop, %Noob%
	{
		
		PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x642B21, 0, Fast RGB
		If (ErrorLevel = 0) {
			PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x642B21, 0, Fast RGB
			movemouse(FoundX+5, FoundY+5, 1)
			sleep, 150
			Click
			sleep, 350
		}
		
		PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0xFF0000, 0, Fast RGB
		If (ErrorLevel = 0) {
			
			PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x1232E7, 0, Fast RGB
			If (ErrorLevel = 0) {
				
				PixelSearch, N1X, N1Y, 70, 183, 143, 217, 0x7BD822, 0, Fast RGB
				If (ErrorLevel = 0) {  
					
					PixelSearch, ArdyX, ArdyY, 12, 26, 539, 529, 0xDC3AE8, 5, Fast RGB
					If (ErrorLevel = 0) {
						MoveMouse(ArdyX+15, ArdyY+15, 1)
						Click
						random, Sleep1, 150, 550
						sleep, Sleep1
					}
				}
				
				
				If (ErrorLevel = 1) {
					
					PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x1232E7, 0, Fast RGB
					If (ErrorLevel = 0) {
						MoveMouse(FoundX, FoundY, 1)
						sleep, 350
						click
						sleep, 1800
						PixelSearch, FoundX, FoundY, 561, 234, 752, 493, 0x1232E7, 0, Fast RGB
						MoveMouse(FoundX, FoundY, 1)
						sleep, 350
						click
						sleep, 350
					}
					
				}
				
			}
			if (ErrorLevel = 1) {
				PixelSearch, FoundX, FoundY, 10, 25, 537, 531, 0x29D836, 0, Fast RGB
				MoveMouse(FoundX+10, FoundY+15, 1)
				sleep, 550
				click
				sleep, 2500
				MoveMouse(455, 342, 1,4)
				sleep, 150
				click
				sleep, 340
				MoveMouse(94, 126)
				sleep, 150
				Click
				sleep, 350
				MoveMouse(141, 126)
				sleep, 150
				Click
				sleep, 340
				send, {Escape}
				sleep, 500
			}
		}
		if (ErrorLevel = 1) {
			PixelSearch, FoundX, FoundY, 10, 25, 537, 531, 0x29D836, 0, Fast RGB
			MoveMouse(FoundX+10, FoundY+15, 1)
			sleep, 550
			click
			sleep, 2500
			MoveMouse(455, 342, 1,4)
			sleep, 150
			click
			sleep, 340
			MoveMouse(94, 126)
			sleep, 150
			Click
			sleep, 350
			MoveMouse(141, 126)
			sleep, 150
			Click
			sleep, 340
			send, {Escape}
			sleep, 500
		}
	}
	
	PixelSearch, CX, CY, 561, 234, 752, 493, 0x5EC023, 0, Fast RGB
	If (ErrorLevel = 0) {
		MoveMouse(CX+3, CY+3, 1)
		Sleep, 450
		Click
		Sleep, h	MoveMouse(CX+3, CY+3, 1)
		Sleep, 450
		Click
		Sleep, 250
		MoveMouse(CX+3, CY+3, 1)
		Sleep, 450
		Click
		Sleep, 250
	}
	sleep, 350 
}

F2::
reload
return

F3::
ExitApp