
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1453 //playspeed

MouseClick, L, 716, 632

MouseClick, L, 716, 632

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}50

  Sleep, % 1329 //playspeed

MouseClick, L, 790, 632

MouseClick, L, 790, 632

MouseClick, L, 790, 632

MouseClick, L, 790, 632

MouseClick, L, 790, 632

  Sleep, % 1188 //playspeed

MouseClick, L, 787, 681

MouseClick, L, 787, 681

MouseClick, L, 787, 681

MouseClick, L, 787, 681

MouseClick, L, 787, 681

  Sleep, % 875 //playspeed

MouseClick, L, 724, 743,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 724, 743,,, U

  Sleep, % 375 //playspeed

Send, {Blind}{Backspace}{Backspace}{Backspace}{Backspace}{Backspace}6

  Sleep, % 1235 //playspeed

MouseClick, L, 787, 736

MouseClick, L, 787, 736

MouseClick, L, 787, 736

MouseClick, L, 787, 736

  Sleep, % 1688 //playspeed

MouseClick, L, 790, 787

MouseClick, L, 790, 787

MouseClick, L, 790, 787

MouseClick, L, 790, 787

MouseClick, L, 790, 787

  Sleep, % 1328 //playspeed

MouseClick, L, 585, 578

MouseClick, L, 585, 578

MouseClick, L, 585, 578

MouseClick, L, 585, 578

MouseClick, L, 585, 578

MouseClick, L, 585, 578

  Sleep, 1000  //PlaySpeed 

}
