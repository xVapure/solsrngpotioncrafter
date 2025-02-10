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

    Sleep, % 907 // Playspeed

    ; Scaled mouse clicks
    MouseClick, L, floor(742 * scaleX), floor(622 * scaleY)
    MouseClick, L, floor(742 * scaleX), floor(622 * scaleY)
    MouseClick, L, floor(742 * scaleX), floor(622 * scaleY),,, D

    Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}

    MouseClick, L, floor(742 * scaleX), floor(622 * scaleY),,, U

    Sleep, % 235 // Playspeed

    Send, {Blind}100

    Sleep, % 1078 // Playspeed

    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)
    MouseClick, L, floor(807 * scaleX), floor(618 * scaleY)

    Sleep, % 312 // Playspeed

    Send, {Blind}{WheelDown 38}

    Sleep, % 766 // Playspeed

    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)
    MouseClick, L, floor(812 * scaleX), floor(760 * scaleY)

    Sleep, % 312 // Playspeed

    Send, {Blind}{WheelUp 4}{WheelDown}{WheelUp 33}

    Sleep, % 859 // Playspeed

    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)
    MouseClick, L, floor(587 * scaleX), floor(570 * scaleY)

    Sleep, 1000 // Playspeed
}
