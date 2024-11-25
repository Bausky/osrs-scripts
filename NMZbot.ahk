#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include WindHumanMouse.ahk

F1::

SetTimer, Potions, 360000

loop	{
	movemouse(311, 228, 1)
	sleep, 700
	Click
	sleep, 2500
	movemouse(456, 327, 1)
	sleep, 700
	click, 2500
	sleep, 750000
}

Potions:

PixelSearch, FoundX, FoundY, 568, 235, 749, 315, 0x00FF26, 0, Fast RGB
If (ErrorLevel = 0){
	movemouse(FoundX, FoundY, 0.6)
	Click
	sleep, 3000
}

F2::

SetTimer, Potions, Off

reload
Return
