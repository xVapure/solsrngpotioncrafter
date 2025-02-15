
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 844 //playspeed

MouseClick, L, 752, 623

Send, {Blind}{Ctrl Down}a{Backspace}{Ctrl Up}10

  Sleep, % 969 //playspeed

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

MouseClick, L, 799, 619

  Sleep, % 797 //playspeed

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

MouseClick, L, 610, 566

  Sleep, 1000  //PlaySpeed 

}
