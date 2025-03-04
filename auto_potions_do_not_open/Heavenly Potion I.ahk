Playspeed := 2

Loop
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    Sleep, % 1844 // Playspeed

    Click, 722, 632 
    Click, 722, 632, Down 
    Send, {Blind}^{a}  
    Click, 722, 632, Up 

    Sleep, % 296 // Playspeed

    Send, {Blind}{Backspace}100 

    Sleep, % 1031 // Playspeed

    Click, 781, 629, 6  

    Sleep, % 328 // Playspeed

    ScrollMouse("Down", 23)  

    Sleep, % 1125 // Playspeed

    Click, 787, 767, 7 

    Sleep, % 375 // Playspeed

    ScrollMouse("Up", 27) 

    Sleep, % 938 // Playspeed

    Click, 597, 581, 7  

    Sleep, 1000 // Playspeed
}

ScrollMouse(direction, times)
{
    Loop, % times
        Send, {Blind}{Wheel%direction%}
}
