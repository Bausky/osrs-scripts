#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#include WindHumanMouse.ahk
SetTitleMatchMode, 2
SetKeyDelay, 50, 50

; Variables
toggle := false
Random, quickClick, 79, 134
Random, lookinFor, 1000, 1200
Random, semiWait, 6412, 7987
Random, bigEepy, 19000, 20000

; Hotkey to toggle the loop
F1::
    toggle := !toggle
    if (toggle) {
        SetTimer, MakeWinesLoop, 500  ; Starts the wine-making loop every 500ms
    } else {
        SetTimer, MakeWinesLoop, Off  ; Stops the loop
    }
return

MakeWinesLoop:

        ; Start in bank
        ; Click on the two items in the bank
        item1x := 100
        item1y := 129
        item2x := 150
        item2y := 129
        randomItem1x := item1x + Rand(2, 4)
        randomItem1y := item1y + Rand(2, 4)
        randomItem2x := item2x + Rand(2, 4)
        randomItem2y := item2y + Rand(2, 4)

        MoveMouse(randomItem1x, randomItem1y, 1)
        Sleep, quickClick  ; Small delay to simulate natural mouse movement
        Click
        MoveMouse(randomItem2x, randomItem2y, 1)
        Sleep, quickClick  ; Small delay to simulate natural mouse movement
        Click

        Sleep, lookinFor
        send, {Esc}

        ; Click on the two inventory items to combine them
        invItem1x := 633
        invItem1y := 366
        invItem2x := 676
        invItem2y := 366
        randomInvItem1x := invItem1x + Rand(2, 4)
        randomInvItem1y := invItem1y + Rand(2, 4)
        randomInvItem2x := invItem2x + Rand(2, 4)
        randomInvItem2y := invItem2y + Rand(2, 4)

        MoveMouse(randomInvItem1x, randomInvItem1y, 1)
        Sleep, quickClick  ; Small delay to simulate natural mouse movement
        Click
        MoveMouse(randomInvItem2x, randomInvItem2y, 1)
        Sleep, quickClick  ; Small delay to simulate natural mouse movement
        Click

        Sleep, lookinFor
        send, {Space}  ; Combine the items

        Sleep, bigEepy  ; Wait for wines to ferment

        ; Search for the bank
        PixelSearch, bankX, bankY, 0, 0, 780, 534, 0xDC3AE8, 10, Fast RGB
        if !ErrorLevel {

            ; Randomize click position within a range around the bank
            randomBankX := bankX + Rand(50, 100)
            randomBankY := bankY + Rand(50, 100)
        
          
            Random, randomBankSchlafen, 377, 567
            Sleep, randomBankSchlafen  ; Wait for bank interaction
            ; Move mouse to the bank location before clicking
            MoveMouse(randomBankX, randomBankY, 1)
            Sleep, quickClick  ; Small delay to simulate natural mouse movement
            Click
            Sleep, randomBankSchlafen  ; Wait for bank interaction

            ; Deposit all wines (simulate clicking "Deposit Inventory")
            depositX := 456  ; Adjust this to the location of "Deposit All"
            depositY := 342  ; Adjust this to the location of "Deposit All"
            randomDepoX := depositX + Rand(3, 7)
            randomDepoY := depositY + Rand(3, 7)
            
            MoveMouse(randomDepoX, randomDepoY, 2)
            Sleep, quickClick  ; Small delay to simulate natural mouse movement
            Click
            Sleep, quickClick  ; Delay between interactions to avoid bot-like behavior
        }    
return

Rand(min, max) {
    Random, output, %min%, %max%
    return output
}

F2::
reload
