
Playspeed:=1 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = ahk_class Shell_TrayWnd
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1516 //playspeed

MouseClick, L, 723, 633,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 723, 633,,, U

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 235 //playspeed

Send, {Blind}{Backspace}{Backspace}{Backspace}50

  Sleep, % 1188 //playspeed

MouseClick, L, 790, 633

MouseClick, L, 790, 633

MouseClick, L, 790, 633

MouseClick, L, 790, 633

MouseClick, L, 790, 633

  Sleep, % 968 //playspeed

MouseClick, L, 790, 685

MouseClick, L, 790, 685

MouseClick, L, 790, 685

MouseClick, L, 790, 685

MouseClick, L, 790, 685

  Sleep, % 875 //playspeed

MouseClick, L, 791, 738

MouseClick, L, 791, 738

MouseClick, L, 791, 738

MouseClick, L, 791, 738

MouseClick, L, 791, 738

  Sleep, % 344 //playspeed

Send, {Blind}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}

  Sleep, % 813 //playspeed

MouseClick, L, 796, 767

MouseClick, L, 796, 767

MouseClick, L, 796, 767

MouseClick, L, 796, 767

MouseClick, L, 796, 767

  Sleep, % 359 //playspeed

Send, {Blind}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}

  Sleep, % 781 //playspeed

MouseClick, L, 556, 579

MouseClick, L, 556, 579

MouseClick, L, 556, 579

MouseClick, L, 556, 579

MouseClick, L, 556, 579

  Sleep, 1000  //PlaySpeed 

}
