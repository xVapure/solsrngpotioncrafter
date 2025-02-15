
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 625 //playspeed

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

MouseClick, L, 803, 621

  Sleep, % 781 //playspeed

MouseClick, L, 747, 675,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 747, 675,,, U

Send, {Blind}{Backspace}10

  Sleep, % 937 //playspeed

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

MouseClick, L, 798, 671

  Sleep, % 718 //playspeed

MouseClick, L, 593, 567

MouseClick, L, 593, 567

MouseClick, L, 593, 567

MouseClick, L, 593, 567

MouseClick, L, 593, 567

  Sleep, 1000  //PlaySpeed 

}
