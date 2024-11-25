#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

;;FF436DD0

F1::

loop	{
	
	loop, 2	
	{
		loop, 3	
		{
			Banking:
			sleep, 1850
			movemouse(756, 215, 2)
			sleep, 200
			click
			movemouse(697, 274, 1)
			sleep, 150
			click
			sleep, 3100
			
													
												;;0x436DD0		
			PixelSearch, BC1X, BC1Y, 727, 117, 759, 150, 0x436DD0, 15, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(BC1X+7, BC1Y, 2)
				sleep, 150
				click
				sleep, 2750
			}
			
			
			attempts := 0
			maxAttempts := 5
			loop	{
				PixelSearch, FoundX, FoundY, 9, 26, 777, 533, 0xB42AD8, 0, Fast RGB
				If (ErrorLevel = 0) {
					movemouse(FoundX-5, FoundY+8, 1)
					random, delay1, 150, 250
					sleep, delay1
					click
					sleep, 3775
					break  
				} else {
					attempts++
					if (attempts > maxAttempts) {
						break  
					}
					sleep, 200  
				}
			}
			
			PixelSearch, FoundX, FoundY, 312, 137, 365, 180, 0x478E58, 0, Fast RGB
			If (ErrorLevel = 0)	{
				
				movemouse(451, 340, 2)
				click
				sleep, 130
				
				movemouse(95, 118, 1)
				Click
				sleep, 450
				movemouse(592, 255, 1)
				click
				sleep, 450
				movemouse(95, 118, 1)
				Click
				sleep, 450
				movemouse(592, 255, 1)
				click
				sleep, 450
				movemouse(95, 118, 1.4)
				Click
				sleep, 500
				send, {Escape}
			}
			
			attempts := 0
			maxAttempts := 5
			loop	{
				PixelSearch, LastIvvX, LastInvY, 613, 456, 657, 492, 0x38ED17, 0, Fast RGB
				If (ErrorLevel = 0) {
					sleep, 750
					movemouse(756, 215, 2)
					sleep, 200
					click
					movemouse(697, 274, 1)
					sleep, 150
					click
					sleep, 340
					movemouse(658, 214, 2)
					sleep, 100
					click
					sleep, 2200
					
					PixelSearch, Click1X, Click1Y, 9, 26, 777, 533, 0xC22F2F, 0, Fast RGB
					If (ErrorLevel = 0) {
						movemouse(Click1X-10, Click1Y)
						sleep, 150
						click
						Sleep, 6700
					}
					
					PixelSearch, Click2X, Click2Y, 9, 26, 777, 533, 0x25EA33, 0, Fast RGB
					If (ErrorLevel = 0) {
						movemouse(Click2X-10, Click2Y)
						sleep, 150
						click
						Sleep, 5900
						break  
					}
				} else {
					attempts++
					if (attempts > maxAttempts) {
						goto Banking 
					}
					sleep, 500 
				}
			}
			
			PixelSearch, Click3X, Click3Y, 9, 26, 777, 533, 0xDB317D, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(Click3X+5, Click3Y+15, 1)
				sleep, 150
				click
				movemouse(592, 255, 2)
				Sleep, 13550
				click
				sleep, 250
				
				PixelSearch, Click3X, Click3Y, 11, 27, 774, 527, 0xDB317D, 0, Fast RGB
				If (ErrorLevel = 0) {
					movemouse(Click3X+30, Click3Y+20, 1)
					sleep, 550
					Click
					sleep, 350
				}
				
				movemouse(592, 255, 2)
				sleep, 150
				click
				sleep, 350
				
				PixelSearch, Click3X, Click3Y, 11, 27, 774, 527, 0xDB317D, 0, Fast RGB
				If (ErrorLevel = 0) {
					movemouse(Click3X+2, Click3Y+9, 1)
					sleep, 100
					Click
					sleep, 250
				}
				sleep, 250
			}
		}
		
		Restore:
		sleep, 350
		movemouse(677, 474, 2)
		sleep, 350
		Click
		sleep, 4500
		
		PixelSearch, RestoreX, RestoreY, 11, 27, 774, 527, 0xE72727, 0, Fast RGB
		If (ErrorLevel = 0) {
			movemouse(RestoreX, RestoreY+12, 0.6)
			sleep, 100
			Click
			sleep, 1000
		}
		sleep, 2750
	}
	
	Repair:
	movemouse(755, 212, 2)
	Click
	sleep, 750
	movemouse(577, 271, 0.6)
	Click
	sleep, 450
	movemouse(258, 131, 0.6)
	Click
	sleep, 5000
	send, {Space}
	sleep, 500
	movemouse(253, 443, 1)
	sleep, 500
	Click
	sleep, 750
	send, {Space}
	sleep, 350
}

F2::

reload
return
