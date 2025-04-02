
Playspeed:=2

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1375 //playspeed

MouseClick, L, 721, 631

  Sleep, % 406 //playspeed

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}{Backspace}25

  Sleep, % 2375 //playspeed

MouseClick, L, 788, 628

MouseClick, L, 788, 628

MouseClick, L, 788, 628

MouseClick, L, 788, 628

  Sleep, % 1375 //playspeed

MouseClick, L, 719, 686

MouseClick, L, 719, 686

  Sleep, % 235 //playspeed

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}25

  Sleep, % 1704 //playspeed

MouseClick, L, 787, 686

MouseClick, L, 787, 686

MouseClick, L, 787, 686

MouseClick, L, 787, 686

  Sleep, % 1516 //playspeed

MouseClick, L, 785, 740

MouseClick, L, 785, 740

MouseClick, L, 785, 740

MouseClick, L, 785, 740

  Sleep, % 515 //playspeed

Send, {Blind}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}

  Sleep, % 1235 //playspeed

MouseClick, L, 790, 708

MouseClick, L, 790, 708

MouseClick, L, 790, 708

MouseClick, L, 790, 708

  Sleep, % 1110 //playspeed

MouseClick, L, 788, 768

MouseClick, L, 788, 768

MouseClick, L, 788, 768

MouseClick, L, 788, 768

  Sleep, % 344 //playspeed

Send, {Blind}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelDown}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}

  Sleep, % 907 //playspeed

MouseClick, L, 593, 576

MouseClick, L, 593, 576

  Sleep, % 219 //playspeed

MouseClick, L, 593, 576

  Sleep, % 344 //playspeed

MouseClick, L, 593, 576

  Sleep, 1000  //PlaySpeed 

}
