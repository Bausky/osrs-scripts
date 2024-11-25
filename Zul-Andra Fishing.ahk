#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk  

global Fish := 0xDC3AE8        
global Fishing := 0x00FF00     
global NotFishing := 0xFF0000  
global LastInvFish := 0x1D00FF 

F1::

Fishing:

loop {
    
    PixelSearch, OutputVarX, OutputVarY, 11, 27, 1657, 1048, Fish, 0, Fast RGB
    if (ErrorLevel = 0) {
        
        Random, ClickFish, 7500, 15000
	   random, Sleep6, 4500, 6000
        Sleep, Sleep6
        MoveMouse(OutputVarX+5, OutputVarY+5, 0.6)  
        Sleep, 250
        Click
	   Sleep, ClickFish

        
        loop {
            PixelSearch, FoundX, FoundY, 40, 49, 118, 74, Fishing, 0, Fast RGB
            if (ErrorLevel = 0) {
                
                Sleep, 500  
                continue
            }
            
            
            PixelSearch, NotFishingX, NotFishingY, 40, 49, 118, 74, NotFishing, 0, Fast RGB
            if (ErrorLevel = 0) {
                
                PixelSearch, LastInvX, LastInvY, 1495, 973, 1536, 1009, LastInvFish, 0, Fast RGB
                if (ErrorLevel = 0) {
                    
                    goto DropInv
                }
                
                
                break
            }
        }
    }
    
    Sleep, 1000 
}
return

DropInv:
Loop {
	MoveMouse(1468, 773, 1)
	sleep, 350
	Click
	sleep, 250
	MoveMouse(1516, 773, 1)
	sleep, 250
	Click
	random, sleep1, 50156, 60739
	sleep, sleep1
	
	PixelSearch, LastInvX, LastInvY, 1495, 973, 1536, 1009, LastInvFish, 0, Fast RGB
	if (ErrorLevel = 1) {
		goto Fishing
		break
	}
	
	Sleep, 250
}


return

F2:: 
reload
return
