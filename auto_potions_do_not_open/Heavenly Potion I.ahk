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

    Sleep, % 907 // Playspeed

    ; Scaled mouse clicks at (742, 622)
    ClickScaled(742, 622, "L", 2)
    ClickScaled(742, 622, "L", 1, "D")

    Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}

    ClickScaled(742, 622, "L", 1, "U")

    Sleep, % 235 // Playspeed

    Send, {Blind}100

    Sleep, % 1078 // Playspeed

    ; Click (807, 618) multiple times
    ClickRepeated(807, 618, 10)

    Sleep, % 312 // Playspeed

    Send, {Blind}{WheelDown 38}

    Sleep, % 766 // Playspeed

    ; Click (812, 760) multiple times
    ClickRepeated(812, 760, 10)

    Sleep, % 312 // Playspeed

    Send, {Blind}{WheelUp 4}{WheelDown}{WheelUp 33}

    Sleep, % 859 // Playspeed

    ; Click (587, 570) multiple times
    ClickRepeated(587, 570, 11)

    Sleep, 1000 // Playspeed
}

; Function for scaled mouse clicks
ClickScaled(x, y, button := "L", times := 1, state := "") {
    global scaleX, scaleY
    Loop, % times {
        MouseClick, %button%, % Floor(x * scaleX), % Floor(y * scaleY),, %state%
    }
}

; Function for multiple rapid clicks
ClickRepeated(x, y, count) {
    Loop, % count {
        ClickScaled(x, y)
    }
}
