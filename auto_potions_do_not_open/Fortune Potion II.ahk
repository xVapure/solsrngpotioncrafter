
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 969 //playspeed

MouseClick, L, 742, 622,,, D

Send, {Blind}{Ctrl Down}a{Ctrl Up}

MouseClick, L, 742, 622,,, U

Send, {Blind}{Backspace}1

  Sleep, % 1016 //playspeed

MouseClick, L, 798, 622

MouseClick, L, 798, 622

MouseClick, L, 798, 622

MouseClick, L, 798, 622

MouseClick, L, 798, 622

MouseClick, L, 798, 622

  Sleep, % 766 //playspeed

MouseClick, L, 734, 681

Send, {Blind}{Ctrl Down}a{Ctrl Up}{Backspace}10

  Sleep, % 1094 //playspeed

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

MouseClick, L, 815, 671

  Sleep, % 891 //playspeed

MouseClick, L, 605, 572

MouseClick, L, 605, 572

MouseClick, L, 605, 572

MouseClick, L, 605, 572

MouseClick, L, 605, 572

MouseClick, L, 605, 572

MouseClick, L, 605, 572

  Sleep, 1000  //PlaySpeed 

}
