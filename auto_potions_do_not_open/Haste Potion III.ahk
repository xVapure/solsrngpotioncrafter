
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1031 //playspeed

MouseClick, L, 741, 624,,, D

MouseMove, 741, 624

MouseClick, L, 741, 624,,, U

  Sleep, % 313 //playspeed

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}1

  Sleep, % 1000 //playspeed

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

MouseClick, L, 798, 618

  Sleep, % 578 //playspeed

MouseClick, L, 747, 673,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 747, 673,,, U

Send, {Blind}{Backspace}20

  Sleep, % 906 //playspeed

MouseClick, L, 798, 675

MouseClick, L, 798, 675

MouseClick, L, 798, 675

MouseClick, L, 798, 675

MouseClick, L, 798, 675

MouseClick, L, 798, 675

MouseClick, L, 798, 675

  Sleep, % 594 //playspeed

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

MouseClick, L, 596, 570

  Sleep, 1000  //PlaySpeed 

}
