Playspeed := 2

Loop {
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    ; Get current screen resolution
    screenWidth := A_ScreenWidth
    screenHeight := A_ScreenHeight

    ; Base resolution is 1920x1080
    scaleX := screenWidth / 1920
    scaleY := screenHeight / 1080

    Sleep, % 1031 // Playspeed
    ClickRepeated(814, 621, 13)

    Sleep, % 234 // Playspeed
    Send, {Blind}{WheelDown 38}

    Sleep, % 735 // Playspeed
    ClickAndEdit(728, 757, "1000")

    Sleep, % 1015 // Playspeed
    ClickRepeated(806, 760, 10)

    Sleep, % 453 // Playspeed
    Send, {Blind}{WheelUp 27}

    Sleep, % 782 // Playspeed
    ClickRepeated(596, 568, 12)

    Sleep, 1000 // Playspeed
}

; Function for repeated clicks
ClickRepeated(x, y, count) {
    global scaleX, scaleY
    Loop, % count {
        MouseClick, L, % Floor(x * scaleX), % Floor(y * scaleY)
    }
}

; Function for clicking, selecting, and entering new text
ClickAndEdit(x, y, text) {
    global scaleX, scaleY
    MouseClick, L, % Floor(x * scaleX), % Floor(y * scaleY)
    Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}%text%
}
