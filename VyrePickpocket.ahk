#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

;;F72020 Neck
;;1232E7 Food
;;FF29D836 Bank
;;FFC22DCB Ardy Knight
;;5EC023 Coin Pouch
;;A94DC8
;;OPEN FF9A38BA
;;CLOSED FFD72727
;;tile FF13A587
;;tile bank FFE3A7EC
;;682 344 zoom in
;;655 344 zoom out
random, Noob, 200, 220

F1::

movemouse(723, 210, 2)
sleep, 150
Click
sleep, 250
movemouse(652, 405, 1)
sleep, 150
Click
sleep, 350
movemouse(653, 210, 2)
sleep, 150
Click
sleep, 250

loop	{
	
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
	
	loop, %Noob%
	{	
		
		PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x642B21, 0, Fast RGB
		If (ErrorLevel = 0) {
			PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x642B21, 0, Fast RGB
			movemouse(FoundX+7, FoundY+8, 1)
			sleep, 150
			Click
			sleep, 350
		}
		
		
		PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0xFF0000, 0, Fast RGB
		If (ErrorLevel = 0) {
			
			PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x1232E7, 0, Fast RGB
			If (ErrorLevel = 0) {
				
				PixelSearch, N1X, N1Y, 25, 219, 56, 241, 0x30B9EF, 0, Fast RGB
				If (ErrorLevel = 0) {  
					
					PixelSearch, OpenDoorX, OpenDoorY, 10, 25, 537, 531, 0x9A38BA, 0, Fast RGB
					if (ErrorLevel = 0) {
			; Door is open, continue pickpocketing
						PixelSearch, ArdyX, ArdyY, 12, 26, 539, 529, 0x9C24A3, 5, Fast RGB
						If (ErrorLevel = 0) {
							MoveMouse(ArdyX-15, ArdyY+15, 1)
							Click
							random, Sleep1, 150, 275
							sleep, Sleep1
						}
					} else {
			; Door is closed, stop pickpocketing, close the door
						PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
						if (ErrorLevel = 0) {
				; Move to the door and close it
							movemouse(CloseDoorX+15, CloseDoorY+5, 1)
							sleep, 3000
							click
							sleep, 200
						}
					}
				}
				
				
				If (ErrorLevel = 1) {
					
					PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0x1232E7, 0, Fast RGB
					If (ErrorLevel = 0) {
						MoveMouse(FoundX, FoundY, 1)
						sleep, 350
						click
						sleep, 250
						movemouse(723, 210, 2)
						sleep, 150
						Click
						sleep, 250
						movemouse(652, 405, 1)
						sleep, 150
						Click
						sleep, 350
						movemouse(653, 210, 2)
						sleep, 150
						Click
						sleep, 250
					}
					
				}
				
			}
			if (ErrorLevel = 1) {
				sleep, 250
				movemouse(635, 474)
				click
				sleep, 3000
				movemouse(635, 474)
				send, {click right}
				sleep, 350
				MoveMouse(635, 430)
				click
				sleep, 3000
				movemouse(686, 509, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 344, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 209, 2)
				sleep, 150
				click
				PixelSearch, TileBX, TileBY, 10, 25, 537, 531, 0xE3A7EC, 0, Fast RGB
				movemouse(TileBX+5, TileBY+5, 1)
				sleep, 150
				Click
				sleep, 5000
				PixelSearch, FoundX, FoundY, 10, 25, 537, 531, 0x29D836, 0, Fast RGB
				MoveMouse(FoundX+10, FoundY+15, 1)
				sleep, 550
				click
				sleep, 4000
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
				sleep, 750
				movemouse(672, 434, 1)
				sleep, 100
				Click
				sleep, 150
				movemouse(717, 434, 1)
				sleep, 100
				Click
				sleep, 150
				movemouse(719, 395, 1)
				sleep, 100
				Click
				sleep, 150
				movemouse(635, 474, 2)
				sleep, 250
				click
				sleep, 4000
				PixelSearch, OpenDoorX, OpenDoorY, 10, 25, 537, 531, 0x9A38BA, 0, Fast RGB
				if (ErrorLevel = 0) {
					movemouse(OpenDoorX+8, OpenDoorY+5, 1)
					sleep, 350
					click
					sleep, 150
					movemouse(686, 509, 2)
					sleep, 100
					click
					sleep, 150
					movemouse(682, 344, 2)
					sleep, 100
					click
					sleep, 150
					movemouse(655, 209, 2)
					sleep, 150
					click
					sleep, 100
					sleep, 7050
					PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x13A587, 0, Fast RGB
					movemouse(TileX+15, TileY+15, 1)
					sleep, 750
					click
					sleep, 2500
					loop {
						PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
						if (errorlevel = 0) {
							movemouse(CloseDoorX+15, CloseDoorY+5, 1)
							sleep, 1000
							click
							sleep, 200
						}
						if (errorlevel = 1) {
							movemouse(672, 434, 1)
							sleep, 100
							Click
							sleep, 150
							movemouse(717, 434, 1)
							sleep, 100
							Click
							sleep, 150
							movemouse(719, 395, 1)
							sleep, 100
							Click
							sleep, 150
							Break
						}
					}
					continue
					
					movemouse(672, 434, 1)
					sleep, 100
					Click
					sleep, 150
					movemouse(717, 434, 1)
					sleep, 100
					Click
					sleep, 150
					movemouse(719, 395, 1)
					sleep, 100
					Click
					sleep, 150
					
				}
				if (ErrorLevel = 1) {
					PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x13A587, 0, Fast RGB
					movemouse(TileX+15, TileY+15, 1)
					sleep, 350
					click
					movemouse(686, 509, 2)
					sleep, 100
					click
					sleep, 150
					movemouse(682, 344, 2)
					sleep, 100
					click
					sleep, 150
					movemouse(655, 209, 2)
					sleep, 150
					click
					sleep, 100
					sleep, 9250
					loop {
						PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
						if (ErrorLevel = 0) {
							movemouse(CloseDoorX+15, CloseDoorY+5, 1)
							sleep, 1500
							click
							sleep, 200
						}
						if (errorlevel = 1) {
							movemouse(672, 434, 1)
							sleep, 100
							Click
							sleep, 150
							movemouse(717, 434, 1)
							sleep, 100
							Click
							sleep, 150
							movemouse(719, 395, 1)
							sleep, 100
							Click
							sleep, 150
							break
						}
					}
					continue
					
					
				}
				
			}
			
		}
		if (ErrorLevel = 1) {
			sleep, 250
			movemouse(635, 474)
			click
			sleep, 3000
			movemouse(635, 474)
			send, {click right}
			sleep, 350
			MoveMouse(635, 430)
			click
			sleep, 3000
			movemouse(686, 509, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 344, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 209, 2)
			sleep, 150
			click
			PixelSearch, TileBX, TileBY, 10, 25, 537, 531, 0xE3A7EC, 0, Fast RGB
			movemouse(TileBX+5, TileBY+5, 1)
			sleep, 150
			Click
			sleep, 5000
			PixelSearch, FoundX, FoundY, 10, 25, 537, 531, 0x29D836, 0, Fast RGB
			MoveMouse(FoundX+10, FoundY+15, 1)
			sleep, 550
			click
			sleep, 4000
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
			sleep, 750
			movemouse(672, 434, 1)
			sleep, 100
			Click
			sleep, 150
			movemouse(717, 434, 1)
			sleep, 100
			Click
			sleep, 150
			movemouse(719, 395, 1)
			sleep, 100
			Click
			sleep, 150
			movemouse(635, 474, 2)
			sleep, 250
			click
			sleep, 4000
			PixelSearch, OpenDoorX, OpenDoorY, 10, 25, 537, 531, 0x9A38BA, 0, Fast RGB
			if (ErrorLevel = 0) {
				movemouse(OpenDoorX+8, OpenDoorY+5, 1)
				sleep, 350
				click
				sleep, 150
				movemouse(686, 509, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(682, 344, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 209, 2)
				sleep, 150
				click
				sleep, 100
				sleep, 7050
				PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x13A587, 0, Fast RGB
				movemouse(TileX+15, TileY+15, 1)
				sleep, 750
				click
				sleep, 2500
				loop	{
					PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
					if (errorlevel = 0) {
						movemouse(CloseDoorX+15, CloseDoorY+5, 1)
						sleep, 1000
						click
						sleep, 200
					}
					if (errorlevel = 1) {
						movemouse(672, 434, 1)
						sleep, 100
						Click
						sleep, 150
						movemouse(717, 434, 1)
						sleep, 100
						Click
						sleep, 150
						movemouse(719, 395, 1)
						sleep, 100
						Click
						sleep, 150
						break
					}
				}
				continue
				
			}
			if (ErrorLevel = 1) {
				PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x13A587, 0, Fast RGB
				movemouse(TileX+15, TileY+15, 1)
				sleep, 350
				click
				movemouse(686, 509, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(682, 344, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 209, 2)
				sleep, 150
				click
				sleep, 100
				sleep, 9250
				loop	{
					PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
					if (errorlevel = 0) {
						movemouse(CloseDoorX+15, CloseDoorY+5, 1)
						sleep, 1500
						click
						sleep, 200
					}
					if (errorlevel = 1) {
						movemouse(672, 434, 1)
						sleep, 100
						Click
						sleep, 150
						movemouse(717, 434, 1)
						sleep, 100
						Click
						sleep, 150
						movemouse(719, 395, 1)
						sleep, 100
						Click
						sleep, 150
						Break
					}
				}
				continue
				
			}
			
		}
		
	}
	
	
	
	
	PixelSearch, CX, CY, 561, 234, 752, 493, 0x5EC023, 0, Fast RGB
	If (ErrorLevel = 0) {
		MoveMouse(CX+3, CY+3, 1)
		Sleep, 450
		Click
		Sleep, 250
		Click
		Sleep, 250
		Click
		Sleep, 350
	}
	sleep, 350 
	
	
	loop	{	
		PixelSearch, PX, PY, 561, 234, 752, 493, 0xA94DC8, 0, Fast RGB
		If (ErrorLevel = 0) {
			MoveMouse(PX+3, PY+3, 1)
			sleep, 150
			Click
			sleep, 250
		}
		if (ErrorLevel = 1) {
			break
		}
	}
}	

F2::
reload
return

F3::
ExitApp