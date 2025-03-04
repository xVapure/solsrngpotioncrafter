Playspeed := 2

Loop
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    Sleep, % 1453 // Playspeed

    Click, 791, 634, 13

    Sleep, % 359 // Playspeed

    ScrollMouse("Down", 41)

    Sleep, % 891 // Playspeed

    Click, 719, 773, 3
    Send, {Blind}^{a}{Backspace}1000

    Sleep, % 1203 // Playspeed

    Click, 783, 773, 6

    Sleep, % 297 // Playspeed

    ScrollMouse("Up", 34)

    Sleep, % 718 // Playspeed

    Click, 594, 586, 8

    Sleep, % 313 // Playspeed

    Click, 592, 583, 3

    Sleep, 1000 // Playspeed
}

ScrollMouse(direction, times)
{
    Loop, % times
        Send, {Blind}{Wheel%direction%}
}
