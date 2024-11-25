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
    ; Step 1: Search for a fishing spot by looking for the Fish color
    PixelSearch, OutputVarX, OutputVarY, 11, 27, 538, 534, Fish, 0, Fast RGB
    if (ErrorLevel = 0) {
        ; Move to the found fish and click to start fishing
        Random, ClickFish, 7500, 11000
        Sleep, ClickFish
        MoveMouse(OutputVarX+5, OutputVarY+10, 0.6)  ; Move mouse to fish spot
        Sleep, 250
        Click
	   Sleep, ClickFish

        ; Step 2: Continuously check if we are still fishing
        loop {
            PixelSearch, FoundX, FoundY, 40, 49, 118, 74, Fishing, 0, Fast RGB
            if (ErrorLevel = 0) {
                ; If the fishing color is found, keep waiting
                Sleep, 500  ; Delay to avoid excessive checking
                continue
            }
            
            ; If the "NotFishing" color is found, check the inventory
            PixelSearch, NotFishingX, NotFishingY, 40, 49, 118, 74, NotFishing, 0, Fast RGB
            if (ErrorLevel = 0) {
                ; Step 3: Check the last inventory slot to see if the inventory is full
                PixelSearch, LastInvX, LastInvY, 611, 451, 659, 495, LastInvFish, 0, Fast RGB
                if (ErrorLevel = 0) {
                    ; If the last inventory slot has the color (indicating it's full), go to DropInv
                    goto DropInv
                }
                
                ; If inventory isn't full, break the loop and look for a new fishing spot
                break
            }
        }
    }
    
    Sleep, 1000  
}
return


DropInv:
Loop {
	
	/*
    ; Look for full inventory slots by scanning for LastInvFish color
		PixelSearch, FullInvX, FullInvY, 561, 230, 752, 493, LastInvFish, 0, Fast RGB
		if (ErrorLevel = 0) {
        ; Drop the item if inventory is full
			MoveMouse(FullInvX, FullInvY, 0.6)
			Random, FullInvDrop, 75, 150
			Sleep, FullInvDrop
			Click
			
		}
		
	*/
	MoveMouse(609, 257, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 257, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 257, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 257, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 297, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 297, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 297, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 297, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 337, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 337, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 337, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 337, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 377, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 377, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 377, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 377, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 417, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 417, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 417, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 417, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 457, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 457, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(689, 457, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(729, 457, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(609, 497, 0.6)
	random, FullInvDrop, 75, 150
	click
	MoveMouse(649, 497, 0.6)
	
    
	PixelSearch, LastInvX, LastInvY, 611, 451, 659, 495, LastInvFish, 0, Fast RGB
	if (ErrorLevel = 1) {
		MoveMouse(264, 258, 0.6)
		goto Fishing
		break
	}
	
	Sleep, 250
}


return

F2::  
reload
return
