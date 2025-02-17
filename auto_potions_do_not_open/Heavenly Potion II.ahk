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

    Sleep, % 1375 // Playspeed
    ClickRepeated(805, 617, 11)

    Sleep, % 234 // Playspeed
    ClickRepeated(805, 617, 6)

    Sleep, % 797 // Playspeed
    ClickAndEdit(730, 678, "125")

    Sleep, % 1109 // Playspeed
    ClickRepeated(802, 670, 11)

    Sleep, % 468 // Playspeed
    Send, {Blind}{WheelDown 45}{WheelUp}{WheelDown 15}

    Sleep, % 969 // Playspeed
    ClickRepeated(804, 756, 9)

    Sleep, % 563 // Playspeed
    ClickRepeated(804, 756, 2)

    Sleep, % 281 // Playspeed
    Send, {Blind}{WheelUp 8}{WheelDown}{WheelUp 33}

    Sleep, % 1078 // Playspeed
    ClickRepeated(596, 566, 12)

    Sleep, 1000 // Playspeed
}

; Function for repeated clicks
ClickRepeated(x, y, count) {
    global scaleX, scaleY
    Loop, % count {
        MouseClick, L, % Floor(x * scaleX), % Floor(y * scaleY)
    }
}

; Function for clicking, selecting, and editing text
ClickAndEdit(x, y, text) {
    global scaleX, scaleY
    MouseClick, L, % Floor(x * scaleX), % Floor(y * scaleY),, , D
    Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}
    MouseClick, L, % Floor(x * scaleX), % Floor(y * scaleY),, , U
    Sleep, 453 // Playspeed
    Send, {Blind}%text%
}
