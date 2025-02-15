Playspeed := 2

Loop {
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    ; Get screen resolution
    screenWidth := A_ScreenWidth
    screenHeight := A_ScreenHeight

    ; Base resolution is 1920x1080
    scaleX := screenWidth / 1920
    scaleY := screenHeight / 1080

    Sleep, % 1375 // Playspeed

    MouseClick, L, floor(805 * scaleX), floor(617 * scaleY), 11

    Sleep, % 234 // Playspeed

    MouseClick, L, floor(805 * scaleX), floor(617 * scaleY), 6

    Sleep, % 797 // Playspeed

    MouseClick, L, floor(730 * scaleX), floor(678 * scaleY),,, D
    Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}
    MouseClick, L, floor(730 * scaleX), floor(678 * scaleY),,, U

    Sleep, % 453 // Playspeed

    Send, {Blind}125

    Sleep, % 1109 // Playspeed

    MouseClick, L, floor(802 * scaleX), floor(670 * scaleY), 11

    Sleep, % 468 // Playspeed

    Send, {Blind}{WheelDown 45}{WheelUp}{WheelDown 15}

    Sleep, % 969 // Playspeed

    MouseClick, L, floor(804 * scaleX), floor(756 * scaleY), 9

    Sleep, % 563 // Playspeed

    MouseClick, L, floor(804 * scaleX), floor(756 * scaleY), 2

    Sleep, % 281 // Playspeed

    Send, {Blind}{WheelUp 8}{WheelDown}{WheelUp 33}

    Sleep, % 1078 // Playspeed

    MouseClick, L, floor(596 * scaleX), floor(566 * scaleY), 12

    Sleep, 1000 // Playspeed
}
