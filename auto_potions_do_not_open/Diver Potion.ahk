
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1813 //playspeed

MouseClick, L, 720, 631

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}{Backspace}{Backspace}20

  Sleep, % 1125 //playspeed

MouseClick, L, 789, 628

MouseClick, L, 789, 628

MouseClick, L, 789, 628

MouseClick, L, 789, 628

  Sleep, % 1047 //playspeed

MouseClick, L, 784, 689

MouseClick, L, 784, 689

MouseClick, L, 784, 689

MouseClick, L, 784, 689

  Sleep, % 1094 //playspeed

MouseClick, L, 565, 575

MouseClick, L, 565, 575

MouseClick, L, 565, 575

MouseClick, L, 565, 575

MouseClick, L, 565, 575

  Sleep, 1000  //PlaySpeed 

}
