#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%  ; Set working directory to the script's location

global SelectedScript := ""   ; Variable to store the selected script
global RunningPID := ""       ; Variable to store the running script's process ID

Gui, Add, Text,, Select a potion to auto craft:
Gui, Add, DropDownList, vSelectedScript gUpdateScript Choose1, None|Heavenly Potion I|Heavenly Potion II|Warp Potion
Gui, Add, Button, gStartScript, Start (F1)
Gui, Add, Button, gStopScript, Stop (F3)
Gui, Add, Text,,                
Gui, Add, Text,, xVapure's Potion Crafter v1, head over to README.txt to learn how to use.
Gui, Show,, xVapure's Auto Potion Crafter  ;

return

UpdateScript:
    GuiControlGet, SelectedScript
return

StartScript:
    RunSelectedScript()
return

StopScript:
    StopRunningScript()
return

F1::RunSelectedScript()
F3::StopRunningScript()

RunSelectedScript() {
    global SelectedScript, RunningPID
    if (SelectedScript = "None") {
        MsgBox, Please select a script first.
        return
    }
    
    StopRunningScript() ; Stop any running script before starting a new one

    scriptPath := A_ScriptDir . "\Macros\" . SelectedScript . ".ahk"
    if !FileExist(scriptPath) {
        MsgBox, Script not found: %scriptPath%
        return
    }
    
    Run, %scriptPath%, , , RunningPID  ; Run the script and store its PID
    ToolTip, Running: %SelectedScript%
    SetTimer, RemoveToolTip, -2000
}

StopRunningScript() {
    global RunningPID
    if (RunningPID) {
        Process, Close, %RunningPID%
        RunningPID := ""
        ToolTip, Script stopped.
        SetTimer, RemoveToolTip, -2000
    }
}

RemoveToolTip:
    ToolTip
return

GuiClose:
ExitApp
