
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 859 //playspeed

MouseClick, L, 745, 626,,, D

Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}

MouseClick, L, 745, 626,,, U

  Sleep, % 500 //playspeed

Send, {Blind}5

  Sleep, % 969 //playspeed

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

MouseClick, L, 807, 621

  Sleep, % 859 //playspeed

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

MouseClick, L, 604, 561

  Sleep, 1000  //PlaySpeed 

}
