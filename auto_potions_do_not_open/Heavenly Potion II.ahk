Playspeed := 2

Loop
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    Sleep, % 1235 // Playspeed

    Click, 719, 632, 4
    Send, {Blind}^{a}{Backspace}2

    Sleep, % 1438 // Playspeed

    Click, 785, 631, 9

    Sleep, % 922 // Playspeed

    Click, 734, 681, Down
    Send, {Blind}^{a}
    Click, 734, 681, Up
    Send, {Blind}{Backspace}125

    Sleep, % 1125 // Playspeed

    Click, 782, 683, 8

    Sleep, % 484 // Playspeed

    ScrollMouse("Down", 44)

    Sleep, % 1032 // Playspeed

    Click, 787, 767, 9

    Sleep, % 500 // Playspeed

    ScrollMouse("Up", 33)

    Sleep, % 1062 // Playspeed

    Click, 593, 577, 8

    Sleep, 1000 // Playspeed
}

ScrollMouse(direction, times)
{
    Loop, % times
        Send, {Blind}{Wheel%direction%}
}
