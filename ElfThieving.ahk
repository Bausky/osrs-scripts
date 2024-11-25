#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

;;0xF72020 Neck
;;0x1232E7 Food
;;0x29D836 Bank
;;0xC22DCB Elf
;;0x5EC023 Coin Pouch
;;0xA94DC8
;;Door 0x2DAFED
;;Rej Pool 0xE72727
;;Home Portal 0x23A512
;;Ornate Jewelry Box 0xBE4456
;;HouseTPPRIFF 0x888B16
;;Prayer 0x30B9EF
;;random tile 0x5DA4EF
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
			movemouse(FoundX+5, FoundY+5, 1)
			sleep, 150
			Click
			sleep, 350
		}
		
		PixelSearch, FoundX, FoundY, 561, 230, 753, 493, 0xF72020, 0, Fast RGB
		If (ErrorLevel = 0) {
			
			PixelSearch, FoundX, FoundY, 24, 219, 141, 242, 0x30B9EF, 0, Fast RGB
			If (ErrorLevel = 0) {
				
				PixelSearch, N1X, N1Y, 25, 189, 142, 212, 0x7BD822, 0, Fast RGB
				If (ErrorLevel = 0) {  
					
					PixelSearch, OpenDoorX, OpenDoorY, 10, 25, 537, 531, 0x2DAFED, 0, Fast RGB
					if (ErrorLevel = 0) {
						
						PixelSearch, ArdyX, ArdyY, 12, 26, 539, 529, 0xDC3AE8, 5, Fast RGB
						If (ErrorLevel = 0) {
							
							MoveMouse(ArdyX+10, ArdyY+15, 1)
							Click
							random, Sleep1, 150, 550
							sleep, Sleep1
						}
						
					} else {
						sleep, 500
						PixelSearch, CloseDoorX, CloseDoorY, 10, 25, 537, 531, 0xD72727, 0, Fast RGB
						if (ErrorLevel = 0) {
							
							movemouse(CloseDoorX+5, CloseDoorY+5, 1)
							sleep, 3400
							click
							sleep, 6000
						}
					}
				}
				
			}
			if (ErrorLevel = 1) {
				sleep, 250
				movemouse(635, 474)
				click
				sleep, 3400
				movemouse(686, 509, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(691, 344, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 209, 2)
				sleep, 150
				click
				sleep, 1300
				PixelSearch, ReJX, RejY, 10, 25, 537, 531, 0xE72727, 0, Fast RGB
				MoveMouse(RejX+10, RejY+15, 1)
				sleep, 300
				click
				sleep, 2500
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
				PixelSearch, HouseTPX, HouseTPY, 10, 25, 537, 531, 0x23A512, 0, Fast RGB
				MoveMouse(HouseTPX+15, HouseTPY+5, 1)
				Click
				sleep, 2500
				movemouse(686, 509, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(681, 344, 2)
				sleep, 100
				click
				sleep, 150
				movemouse(655, 209, 2)
				click
				sleep, 350
				PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x5DA4EF, 0, Fast RGB
				MoveMouse(TileX+5, TileY+5, 1)
				click
				sleep, 3350
			}
		}
		if (ErrorLevel = 1) {
			sleep, 250
			movemouse(635, 474)
			click
			sleep, 3200
			movemouse(686, 509, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(691, 344, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 209, 2)
			sleep, 150
			click
			sleep, 1400
			PixelSearch, ReJX, RejY, 10, 25, 537, 531, 0xE72727, 0, Fast RGB
			MoveMouse(RejX+10, RejY+15, 1)
			sleep, 300
			click
			sleep, 1850
			PixelSearch, GEX, GEY, 10, 25, 537, 531, 0xBE4456, 0, Fast RGB
			MoveMouse(GEX+15, GEY+5, 1)
			sleep, 650
			click
			sleep, 4350
			movemouse(686, 509, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(672, 344, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 209, 2)
			sleep, 150
			click
			sleep, 1300
			
			attempts := 0
			maxAttempts := 5
			loop	{
				PixelSearch, BankX, BankY, 10, 25, 537, 531, 0x29D836, 0, Fast RGB
				if (ErrorLevel = 0) {
					MoveMouse(BankX+10, BankY+5, 1)
					click
					sleep, 5000
					break
				} else {
					attempts++
					if (attempts > maxAttempts) {
						break
					}
					sleep, 200
				}
				
			}
			
			MoveMouse(455, 342, 1,4)
			sleep, 150
			click
			sleep, 340
			MoveMouse(94, 126)
			sleep, 150
			Click
			sleep, 350
			send, {Escape}
			sleep, 750
			movemouse(635, 474, 2)
			sleep, 250
			click
			sleep, 4000
			movemouse(686, 509, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(691, 344, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 209, 2)
			sleep, 150
			click
			sleep, 250
			PixelSearch, HouseTPX, HouseTPY, 10, 25, 537, 531, 0x23A512, 0, Fast RGB
			MoveMouse(HouseTPX+15, HouseTPY+5, 1)
			Click
			sleep, 750
			movemouse(686, 509, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(681, 344, 2)
			sleep, 100
			click
			sleep, 150
			movemouse(655, 209, 2)
			click
			sleep, 350
			PixelSearch, TileX, TileY, 10, 25, 537, 531, 0x5DA4EF, 0, Fast RGB
			MoveMouse(TileX+5, TileY+5, 1)
			click
			sleep, 3350
		}
	}
	
	loop	{	
		PixelSearch, PX, PY, 561, 234, 752, 493, 0xA94DC8, 0, Fast RGB
		If (ErrorLevel = 0) {
			MoveMouse(PX+3, PY+3, 1)
			sleep, 150
			Click
			sleep, 250
		}
		if (ErrorLevel = 1)
			break
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
	
}

F2::
reload
return

F3::
ExitApp
