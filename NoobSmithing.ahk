#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#include WindHumanMouse.ahk
SetTitleMatchMode, 2
SetKeyDelay, 50, 50
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

orebelt := 0xDE76E8
bartake := 0xB40EB8
bank := 0x93399D
iceg := 0x563763
goldg := 0x6C20FF
stam := 0xFF56C8
goldbar := 0x670F89
tile := 0x730750
i := 0

Random, quickClick, 58, 107
Random, lookinFor, 4432, 4579
Random, semiWait, 6829, 7231
Random, bigEepy, 29348, 32109

F1::

loop {


    PixelSearch, goldbarX, goldbarY, 0, 0, 1920, 1080, goldbar, 1, Fast RGB
    if !ErrorLevel {
        MoveMouse(goldbarX + Rand(2, 4), goldbarY + Rand(2, 4), 1.4)
        Sleep, quickClick
        Click
        Sleep, quickClick
    }

    if (i > 4){

        MoveMouse(720 + Rand(1,3), 146 + Rand(1,3), 1.5)
        Sleep, quickClick + 100
        Click
        Sleep, quickClick + 1000

        PixelSearch, stamX, stamY, 0, 0, 1920, 1080, stam, 1, Fast RGB
        if !ErrorLevel {
            MoveMouse(stamX + Rand(2, 4), stamY + Rand(2, 4), 1.4)
            Sleep, quickClick
            Click
            Sleep, quickClick + 200

            i:= 0
        }


    }

    MoveMouse(670 + Rand(1,3), 146 + Rand(1,3), 1.5)
    Sleep, quickClick + 100
    Click
    Sleep, quickClick

    SendInput, {Esc}

    Sleep, quickClick + 500

    PixelSearch, beltX, beltY, 0, 0, 1920, 1080, orebelt, 1, Fast RGB
    if !ErrorLevel {
        MoveMouse(beltX + Rand(12, 14), beltY + Rand(12, 14), 1.4)
        Sleep, quickClick
        Click
        Sleep, semiWait
    }

    PixelSearch, tileX, tileY, 0, 0, 1920, 1080, tile, 1, Fast RGB
    if !ErrorLevel {
        MoveMouse(tileX + Rand(2, 4), tileY + Rand(2, 4), 1.4)
        Sleep, quickClick + 150
        Click
        Sleep, lookinFor - 50
    
    PixelSearch, icegX, icegY, 0, 0, 1920, 1080, iceg, 1, Fast RGB
    if !ErrorLevel {
        MoveMouse(icegX + Rand(2, 4), icegY + Rand(2, 4), 1.4)
        Sleep, quickClick
        Click
        Sleep, quickClick
    }

        PixelSearch, bartakeX, bartakeY, 0, 0, 1920, 1080, bartake, 1, Fast RGB
        if !ErrorLevel {
            MoveMouse(bartakeX + Rand(5, 9), bartakeY - Rand(22, 24), 1.4)
            Sleep, quickClick + 550
            Click
            Sleep, quickClick + 1500
            SendInput, {Space}
            Sleep, quickClick + 800

            PixelSearch, goldbarX, goldbarY, 0, 0, 1920, 1080, goldbar, 1, Fast RGB
            if ErrorLevel {
                PixelSearch, bartakeX, bartakeY, 0, 0, 1920, 1080, bartake, 1, Fast RGB
                if !ErrorLevel {
                    MoveMouse(bartakeX + Rand(2, 4), bartakeY + Rand(22, 24), 1.4)
                    Sleep, quickClick + 550
                    Click
                    Sleep, quickClick + 1500
                    SendInput, {Space}
                    Sleep, quickClick
                }
            }

            

            PixelSearch, goldgX, goldgY, 0, 0, 1920, 1080, goldg, 1, Fast RGB
            if !ErrorLevel {
                MoveMouse(goldgX + Rand(2, 4), goldgY + Rand(2, 4), 1.4)
                Sleep, quickClick
                Click
                Sleep, quickClick + 300
            }

    }
    }

    PixelSearch, bankX, bankY, 0, 0, 1920, 1080, bank, 1, Fast RGB
    if !ErrorLevel {
        MoveMouse(bankX + Rand(2, 4), bankY + Rand(2, 4), 1.4)
        Sleep, quickClick
        Click
        Sleep, semiWait - 2000
        i++
    }



}

Rand(min, max) {
    Random, output, %min%, %max%
    return output
}

F2::
Reload
return

F3::
ExitApp