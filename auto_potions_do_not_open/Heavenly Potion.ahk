Playspeed := 2

Loop
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window
    tt := "Roblox ahk_class WINDOWSCLIENT"
    WinWait, %tt%
    IfWinNotActive, %tt%, WinActivate, %tt%

    Sleep, % 1625 // Playspeed
    MouseClick, L, 713, 633
    Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace 3}250

    Sleep, % 1328 // Playspeed
    Loop, 7 {
        MouseClick, L, 784, 634
    }

    Sleep, % 1609 // Playspeed
    Loop, 8 {
        MouseClick, L, 783, 687
    }

    Sleep, % 1234 // Playspeed
    Loop, 8 {
        MouseClick, L, 783, 742
    }

    Sleep, % 843 // Playspeed
    Send, {Blind}{WheelDown 26}

    Sleep, % 578 // Playspeed
    Loop, 9 {
        MouseClick, L, 794, 770
    }

    Sleep, % 343 // Playspeed
    Send, {Blind}{WheelUp 7}{WheelDown}{WheelUp 19}

    Sleep, % 1125 // Playspeed
    Loop, 7 {
        MouseClick, L, 584, 579
    }

    Sleep, 1000 // Playspeed
}
