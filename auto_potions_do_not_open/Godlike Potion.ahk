
Playspeed:=2 

Loop, 
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

      tt = Roblox ahk_class WINDOWSCLIENT
      WinWait, %tt%
      IfWinNotActive, %tt%,, WinActivate, %tt%

  Sleep, % 1532 //playspeed

MouseClick, L, 797, 630

MouseClick, L, 797, 630

MouseClick, L, 797, 630

  Sleep, % 750 //playspeed

MouseClick, L, 793, 684

MouseClick, L, 793, 684

MouseClick, L, 793, 684

  Sleep, % 766 //playspeed

MouseClick, L, 790, 742

MouseClick, L, 790, 742

MouseClick, L, 790, 742

  Sleep, % 875 //playspeed

MouseClick, L, 581, 583

MouseClick, L, 581, 583

MouseClick, L, 581, 583

  Sleep, 1000  //PlaySpeed 

}
