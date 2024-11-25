#NoEnv  
SendMode Input  
SetWorkingDir %A_ScriptDir% 
#Persistent
#include WindHumanMouse.ahk
SetTitleMatchMode, 2
SetKeyDelay, 50, 50


toggle := false
Random, quickClick, 79, 134
Random, lookinFor, 1000, 1200
Random, semiWait, 6412, 7987
Random, bigEepy, 39000, 42500


F1::
    toggle := !toggle
    if (toggle) {
        SetTimer, MakeWinesLoop, 500  
    } else {
        SetTimer, MakeWinesLoop, Off  
    }
return

MakeWinesLoop:

       
        item1x := 100
        item1y := 129
        randomItem1x := item1x + Rand(2, 4)
        randomItem1y := item1y + Rand(2, 4)

        MoveMouse(randomItem1x, randomItem1y, 2)
        Sleep, quickClick  
        Click
       
        Sleep, lookinFor
        send, {Esc}

        
        invItem1x := 591
        invItem1y := 258
        invItem2x := 636
        invItem2y := 260
        randomInvItem1x := invItem1x + Rand(2, 4)
        randomInvItem1y := invItem1y + Rand(2, 4)
        randomInvItem2x := invItem2x + Rand(2, 4)
        randomInvItem2y := invItem2y + Rand(2, 4)

        MoveMouse(randomInvItem1x, randomInvItem1y, 2)
        Sleep, quickClick  
        Click
        MoveMouse(randomInvItem2x, randomInvItem2y, 2)
        Sleep, quickClick  
        Click

        Sleep, lookinFor
        send, {Space}  

        Sleep, bigEepy 

       
        PixelSearch, bankX, bankY, 0, 0, 780, 534, 0xDC3AE8, 10, Fast RGB
        if !ErrorLevel {

            
            randomBankX := bankX + Rand(50, 100)
            randomBankY := bankY + Rand(50, 100)
        
           
            MoveMouse(randomBankX, randomBankY, 0.6)
            Sleep, quickClick  
            Click
        
            Random, randomBankSchlafen, 377, 567
            Sleep, randomBankSchlafen  

           
            depositX := 456 
            depositY := 342 
            randomDepoX := depositX + Rand(3, 7)
            randomDepoY := depositY + Rand(3, 7)
            
            MoveMouse(randomDepoX, randomDepoY, 2)
            Sleep, quickClick 
            Click
            Sleep, quickClick 
        }    
return

Rand(min, max) {
    Random, output, %min%, %max%
    return output
}

F2::
reload
