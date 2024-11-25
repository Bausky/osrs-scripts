#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

F1::
loop{
	
	
	Loop, 9 
	{
		
		Mainloop:
		
		sleep, 2750
		
		
		
		PixelSearch, RestoreX, RestoreY, 11, 27, 534, 507, 0xE72727, 0, Fast RGB
		If (ErrorLevel = 0) {
			
			/*
				
				RestoreHouseX := RestoreX + Rand(5, 7)
				RestoreHouseY := RestoreY + Rand(5, 7)
				
				movemouse(RestoreHouseX, RestoreHouseY, 1)
				
			*/
			
			movemouse(RestoreX, RestoreY+12, 0.6)
			sleep, 100
			Click
			sleep, 2500
		}
		
		
		
		movemouse(755, 212, 2)
		Click
		sleep, 350
		
		movemouse(615, 298, 2)
		sleep, 250
		Click
		sleep, 100
		goto Rc
		
		
		Rc:
		
		sleep, 2800
		
		loop{
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x00B7FF, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+7, FoundY+12, 1.4)
				Click
				sleep, 12750
			}
			if (ErrorLevel = 1)
				break
		}
		
		loop{
			
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0xDC3AE8, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+5, FoundY+15, 1)
				sleep, 250
				Click
				sleep, 1500
			}
			if (ErrorLevel = 1)
				break
		}
		
		movemouse(451, 340, 0.6)
		click
		sleep, 550
		
		movemouse(95, 118, 1)
		Click
		sleep, 350
		movemouse(592, 255, 1)
		click
		sleep, 350
		movemouse(635, 255, 1)
		click
		sleep, 350
		movemouse(95, 118, 1)
		Click
		sleep, 350
		movemouse(675, 255, 1)
		click
		sleep, 350
		movemouse(715, 255, 1)
		click
		sleep, 350
		movemouse(95, 118, 1.4)
		Click
		sleep, 500
		send, {Escape}
		
		sleep, 750
		
		PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x17E717, 0, Fast RGB
		If (ErrorLevel = 0) {
			movemouse(FoundX+10, FoundY+5, 0.6)
			sleep, 250
			click
			sleep, 500
			movemouse(655, 211)
			click
			sleep, 26500
			
			movemouse(592, 255, 2)
			click
			sleep, 350
			
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x17E717, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+7, FoundY+9, 1)
				sleep, 100
				Click
				sleep, 1000
			}
			
			
			movemouse(635, 255, 2)
			click
			sleep, 350
			
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x17E717, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+7, FoundY+9, 1)
				sleep, 100
				Click
				sleep, 500
			}
			
			
			movemouse(675, 255, 2)
			click
			sleep, 350
			
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x17E717, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+7, FoundY+9, 1)
				sleep, 100
				Click
				sleep, 500
			}
			
			movemouse(715, 255, 2)
			click
			sleep, 350
			
			PixelSearch, FoundX, FoundY, 11, 27, 774, 527, 0x17E717, 0, Fast RGB
			If (ErrorLevel = 0) {
				movemouse(FoundX+7, FoundY+9, 1)
				sleep, 100
				Click
				sleep, 500
			}
			
		}
		
		sleep, 750
		movemouse(674, 470, 0.6)
		click
		sleep, 2500
		
	}
	
	movemouse(674, 470, 0.6)
	Click
	sleep, 5000
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
	sleep, 250
	
	sleep, 550
	
}

Rand(min, max) {
	Random, output, %min%, %max%
	return output
}

/*
	
	Repair: 
	
	movemouse(658, 211, 0.6)
	Click
	sleep, 750
	movemouse(674, 470, 0.6)
	Click
	sleep, 5000
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
	sleep, 250
	
	sleep, 550
	
	return
	
	
	
	Loop{
		MainLoop()
	}
	return
	
*/

F2::

reload