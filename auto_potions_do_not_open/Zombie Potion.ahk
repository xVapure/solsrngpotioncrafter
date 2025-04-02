
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 938 //playspeed

MouseClick, L, 719, 627

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}{Backspace}10

  Sleep, % 1406 //playspeed

MouseClick, L, 789, 632

MouseClick, L, 789, 632

MouseClick, L, 789, 632

  Sleep, % 875 //playspeed

MouseClick, L, 792, 684

MouseClick, L, 792, 684

MouseClick, L, 792, 684

  Sleep, % 1031 //playspeed

MouseClick, L, 789, 737

  Sleep, % 203 //playspeed

MouseClick, L, 789, 737

MouseClick, L, 789, 737

  Sleep, % 1282 //playspeed

MouseClick, L, 577, 575

  Sleep, % 219 //playspeed

MouseClick, L, 577, 575

  Sleep, % 281 //playspeed

MouseClick, L, 577, 575

  Sleep, % 297 //playspeed

MouseClick, L, 577, 575

  Sleep, 1000  //PlaySpeed 

}
