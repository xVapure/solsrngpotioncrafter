
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 797 //playspeed

MouseClick, L, 738, 625,,, D

Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}

MouseClick, L, 738, 625,,, U

  Sleep, % 391 //playspeed

Send, {Blind}1

  Sleep, % 1047 //playspeed

MouseClick, L, 807, 625

MouseClick, L, 807, 625

MouseClick, L, 807, 625

MouseClick, L, 807, 625

MouseClick, L, 807, 625

MouseClick, L, 807, 625

  Sleep, % 516 //playspeed

MouseClick, L, 746, 672,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 746, 672,,, U

  Sleep, % 250 //playspeed

Send, {Blind}{Backspace}15

  Sleep, % 1438 //playspeed

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

MouseClick, L, 810, 674

  Sleep, % 765 //playspeed

MouseClick, L, 585, 569

MouseClick, L, 585, 569

MouseClick, L, 585, 569

MouseClick, L, 585, 569

MouseClick, L, 585, 569

MouseClick, L, 585, 569

MouseClick, L, 585, 569

  Sleep, 1000  //PlaySpeed 

}
