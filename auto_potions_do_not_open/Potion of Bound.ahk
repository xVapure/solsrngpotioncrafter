
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1844 //playspeed

MouseClick, L, 790, 629

MouseClick, L, 790, 629

MouseClick, L, 790, 629

MouseClick, L, 790, 629

MouseClick, L, 790, 629

MouseClick, L, 790, 629

  Sleep, % 891 //playspeed

MouseClick, L, 787, 688

MouseClick, L, 787, 688

MouseClick, L, 787, 688

MouseClick, L, 787, 688

MouseClick, L, 787, 688

MouseClick, L, 787, 688

MouseClick, L, 787, 688

  Sleep, % 734 //playspeed

MouseClick, L, 723, 740

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}{Backspace}5

  Sleep, % 1015 //playspeed

MouseClick, L, 784, 739

MouseClick, L, 784, 739

MouseClick, L, 784, 739

MouseClick, L, 784, 739

  Sleep, % 1141 //playspeed

MouseClick, L, 577, 573

MouseClick, L, 577, 573

MouseClick, L, 577, 573

MouseClick, L, 577, 573

MouseClick, L, 577, 573

MouseClick, L, 577, 573

  Sleep, 1000  //PlaySpeed 

}
