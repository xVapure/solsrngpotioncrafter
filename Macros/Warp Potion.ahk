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

    Sleep, % 1031 // Playspeed

    MouseClick, L, floor(814 * scaleX), floor(621 * scaleY), 13

    Sleep, % 234 // Playspeed

    Send, {Blind}{WheelDown 38}

    Sleep, % 735 // Playspeed

    MouseClick, L, floor(728 * scaleX), floor(757 * scaleY)
    Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}1000

    Sleep, % 1015 // Playspeed

    MouseClick, L, floor(806 * scaleX), floor(760 * scaleY), 10

    Sleep, % 453 // Playspeed

    Send, {Blind}{WheelUp 27}

    Sleep, % 782 // Playspeed

    MouseClick, L, floor(596 * scaleX), floor(568 * scaleY), 12

    Sleep, 1000 // Playspeed
}
