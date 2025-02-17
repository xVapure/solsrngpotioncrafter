#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\assets\macroicon.ico

global SelectedScript := ""
global RunningPID := ""
global StartKey := "F1"
global StopKey := "F3"

Gui, Add, Tab2, x10 y10 w400 h300, Main|Potion Switcher|Potion Recorder|Discord Webhook|Keybind|Credits

; -------- Main Tab --------
Gui, Tab, Main
Gui, Add, Text, w380, Select a potion to auto craft:
Gui, Add, DropDownList, vSelectedScript gUpdateScript Choose1 w380, None|Fortune Potion I|Fortune Potion II|Fortune Potion III|Haste Potion I|Haste Potion II|Haste Potion III|Heavenly Potion I|Heavenly Potion II|Warp Potion
Gui, Add, Button, vStartButton gStartScript w380, Start (F1)
Gui, Add, Button, vStopButton gStopScript w380, Stop (F3)

; -------- Potion Switcher Tab --------
Gui, Tab, Potion Switcher
Gui, Add, Text, w380, Feature is currently being developed.

; -------- Potion Recorder Tab --------
Gui, Tab, Potion Recorder
Gui, Add, Text, w380, Feature is currently being developed.

; -------- Discord Webhook Tab --------
Gui, Tab, Discord Webhook
Gui, Add, Text, w380, Feature is currently being developed.

; -------- Keybind Tab --------
Gui, Tab, Keybind
Gui, Add, Text, w380, Set Start Key:
Gui, Add, Hotkey, vStartKeybind gSetStartKey w380, F1
Gui, Add, Text, w380, Set Stop Key:
Gui, Add, Hotkey, vStopKeybind gSetStopKey w380, F3

; -------- Credits Tab --------
Gui, Tab, Credits
Gui, Add, Text, w230, xVapure's Potion Crafter v1
Gui, Add, Text, w230, Main developer: xVapure (@criticize. on Discord), feel free to message me if there's any questions/issues.
Gui, Add, Text, w230, A special thanks to l3m0n_0 and diego696969 for the Discord server as a platform for my macro to grow. And kurugurui aka Minn for the beautiful hand-written pfp.
Gui, Add, Text, w230, Thank you therealslimshady62 for being my first supporter of this project, as well as all the concurrent users of the macro, words can't describe how grateful I am that you guys chose to use my macro. As always, good luck on your journey and stay safe <3
Gui, Add, Text, w230, Head over to README.txt to learn how to use.
Gui, Add, Picture, x250 y40 w150 h150, assets\xvapure.ico

Gui, Show,, xVapure's Auto Potion Crafter
return

; ------------------- Handlers -------------------

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
    StopRunningScript()
    scriptPath := A_ScriptDir . "\auto_potions_do_not_open\" . SelectedScript . ".ahk"
    if !FileExist(scriptPath) {
        MsgBox, Script not found: %scriptPath%
        return
    }
    Run, %scriptPath%, , , RunningPID
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

SetStartKey:
    GuiControlGet, StartKeybind
    Hotkey, %StartKey%, Off
    StartKey := StartKeybind
    Hotkey, %StartKey%, RunSelectedScript, On
    GuiControl,, StartButton, Start (%StartKey%)
return

SetStopKey:
    GuiControlGet, StopKeybind
    Hotkey, %StopKey%, Off
    StopKey := StopKeybind
    Hotkey, %StopKey%, StopRunningScript, On
    GuiControl,, StopButton, Stop (%StopKey%)
return

ApplyPotionSwitch:
    GuiControlGet, EnablePotionSwitch
    GuiControlGet, SwitchThreshold
    MsgBox, Potion Switcher settings saved: %SwitchThreshold% potions before switching.
return

StartRecording:
    MsgBox, Recording started. Perform your crafting actions.
    ; Placeholder for actual recording logic
return

StopRecording:
    MsgBox, Recording stopped.
    ; Placeholder for stopping the recording
return

SaveRecording:
    MsgBox, Recording saved successfully.
    ; Placeholder for saving logic
return

SaveWebhookSettings:
    GuiControlGet, WebhookURL
    GuiControlGet, EnableWebhook
    MsgBox, Webhook settings saved. URL: %WebhookURL%
return

RemoveToolTip:
    ToolTip
return

GuiClose:
ExitApp
