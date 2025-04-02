
Playspeed:=2

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1141 //playspeed

MouseClick, L, 717, 632

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}{Backspace}{Backspace}20

  Sleep, % 1453 //playspeed

MouseClick, L, 785, 636

MouseClick, L, 785, 636

MouseClick, L, 785, 636

MouseClick, L, 785, 636

MouseClick, L, 785, 636

  Sleep, % 1297 //playspeed

MouseClick, L, 784, 684

MouseClick, L, 784, 684

MouseClick, L, 784, 684

MouseClick, L, 784, 684

MouseClick, L, 784, 684

  Sleep, % 1204 //playspeed

MouseClick, L, 789, 741

MouseClick, L, 789, 741

MouseClick, L, 789, 741

MouseClick, L, 789, 741

MouseClick, L, 789, 741

  Sleep, % 1250 //playspeed

MouseClick, L, 792, 786

MouseClick, L, 792, 786

MouseClick, L, 792, 786

MouseClick, L, 792, 786

MouseClick, L, 792, 786

  Sleep, % 360 //playspeed

Send, {Blind}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}{WheelDown}

  Sleep, % 1375 //playspeed

MouseClick, L, 798, 660

MouseClick, L, 798, 660

MouseClick, L, 798, 660

MouseClick, L, 798, 660

MouseClick, L, 798, 660

  Sleep, % 844 //playspeed

MouseClick, L, 786, 714

MouseClick, L, 786, 714

MouseClick, L, 786, 714

MouseClick, L, 786, 714

MouseClick, L, 786, 714

  Sleep, % 687 //playspeed

MouseClick, L, 786, 770

MouseClick, L, 786, 770

MouseClick, L, 786, 770

MouseClick, L, 786, 770

MouseClick, L, 786, 770

  Sleep, % 359 //playspeed

Send, {Blind}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelDown}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}{WheelUp}

  Sleep, % 766 //playspeed

MouseClick, L, 579, 576

MouseClick, L, 579, 576

MouseClick, L, 579, 576

MouseClick, L, 579, 576

MouseClick, L, 579, 576

  Sleep, 1000  //PlaySpeed 

}
