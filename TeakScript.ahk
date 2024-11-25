#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

global colorTeakInv := 0xCB13AC

global tree1 := 0xBC0E9E
global tree2 := 0x9E3100

global ScreenX1 = 11
global ScreenY1 := 26
global ScreenX2 := 777
global ScreenY2 := 532

global lastinvi1X := 699
global lastinvi1Y := 451
global lastinvi2X := 745
global lastinvi2Y := 492

global entireinvi1X := 561
global entireinvi1Y := 233
global entireinvi2X := 751
global entireinvi2Y := 493

global bank := 0x00B7FF
global bankopen := 0x4D9A63
global Agility1 := 0x1E5593
global Agility2 := 0xCC460B


F1::

TreeCutting:

loop {
	
	loop {
		PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, tree1, 0, fast RGB
		if (ErrorLevel = 0) {
			MoveMouse(WaitUntil1X+15, WaitUntil1Y+15, 0.6)
			Click
			random, Delay1, 4546, 6575
			sleep, Delay1
		}
		
		if (ErrorLevel = 1) {
			break
		}
		random, LMAO1, 50, 75
		sleep, LMAO1
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, lastinvi1X, lastinvi1Y, lastinvi2X, lastinvi2Y, colorTeakInv, 0, Fast RGB
		if (ErrorLevel = 0) {
			goto Agility1
		}
	}
	
    ; Tree 2 cutting loop
	loop {
		PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, tree2, 0, fast RGB
		if (ErrorLevel = 0) {
			MoveMouse(WaitUntil1X+15, WaitUntil1Y+15, 0.6)
			Click
			random, Delay2, 3256, 7094
			sleep, Delay2
		}
		
		if (ErrorLevel = 1) {
			break
		}
		random, LMAO2, 49, 81
		sleep, LMAO2
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, lastinvi1X, lastinvi1Y, lastinvi2X, lastinvi2Y, colorTeakInv, 0, Fast RGB
		if (ErrorLevel = 0) {
			goto Agility1
		}
	}
	
	continue
	
	Agility1:
	
	loop	{	
		
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, Agility1, 0, Fast RGB
		if (ErrorLevel = 0) {
			random, Delay3, 853, 1079
			sleep, Delay3   
			MoveMouse(WaitUntil1X+5, WaitUntil1Y+10, 0.6)
			random, Agi1Sleep, 4000, 4764
			click
			sleep, Agi1Sleep
		}
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, lastinvi1X, lastinvi1Y, lastinvi2X, lastinvi2Y, colorTeakInv, 0, Fast RGB
		if (ErrorLevel = 0) {
			goto bankProcedure
		}
		
	}
	
	continue
	
	bankProcedure:
    ; Bank procedure
	loop {
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, bank, 0, Fast RGB
		if (ErrorLevel = 0) {
			random, Delay3, 853, 1079
			sleep, Delay3
			
            ; Click the bank
			MoveMouse(WaitUntil1X+5, WaitUntil1Y+4, 0.6)
			click
			
            ; Wait for bank to open
			TimeOut := A_TickCount + 10000  ; Set a 5-second timeout
			loop {
				PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, bankopen, 0, Fast RGB
				if (ErrorLevel = 0) {
                    ; Bank is open, proceed to deposit items
					MoveMouse(455, 342, 0.6)
					click
					
                    ; Check for items to deposit
					loop {
						PixelSearch, WaitUntil1X, WaitUntil1Y, entireinvi1X, entireinvi1Y, entireinvi2X, entireinvi2Y, colorTeakInv, 0, Fast RGB
						if (ErrorLevel = 1) {
                            ; No more items to deposit, exit the loop
							send, {escape}
							goto Agility2
							break
						}
						random, LMAO4, 1000, 1001
						sleep, LMAO4
						
					}
					break 2  ; Exit both the bank and main loops
				}
				
				if (A_TickCount > TimeOut) {
                    ; Timeout reached, try clicking the bank again
					break
				}
				sleep, 100  ; Wait before retrying
			}
			
		}
		
	}
	
	continue
	
	Agility2:
	
	loop	{
		PixelSearch, WaitUntil1X, WaitUntil1Y, ScreenX1, ScreenY1, ScreenX2, ScreenY2, Agility2, 0, Fast RGB
		if (ErrorLevel = 0) {
			random, Delay3, 853, 1079
			sleep, Delay3   
			MoveMouse(WaitUntil1X-10, WaitUntil1Y+10, 0.6)
			click
			random, Agi2Sleep, 11000, 12145
			sleep, Agi2Sleep
		}
		
		PixelSearch, WaitUntil1X, WaitUntil1Y, lastinvi1X, lastinvi1Y, lastinvi2X, lastinvi2Y, colorTeakInv, 0, Fast RGB
		if (ErrorLevel = 1) {
			goto TreeCutting
		}
		
	}	
}
return

F2::Reload
