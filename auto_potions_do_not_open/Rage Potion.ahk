
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1188 //playspeed

MouseClick, L, 712, 632

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}{Backspace}{Backspace}{Backspace}10

  Sleep, % 1657 //playspeed

MouseClick, L, 780, 630

MouseClick, L, 780, 630

MouseClick, L, 780, 630

MouseClick, L, 780, 630

  Sleep, % 1531 //playspeed

MouseClick, L, 786, 685

MouseClick, L, 786, 685

MouseClick, L, 786, 685

MouseClick, L, 786, 685

  Sleep, % 1516 //playspeed

MouseClick, L, 787, 735

MouseClick, L, 787, 735

MouseClick, L, 787, 735

MouseClick, L, 787, 735

  Sleep, % 1047 //playspeed

MouseClick, L, 588, 576

MouseClick, L, 588, 576

  Sleep, % 234 //playspeed

MouseClick, L, 588, 576

MouseClick, L, 588, 576

  Sleep, 1000  //PlaySpeed 

}
