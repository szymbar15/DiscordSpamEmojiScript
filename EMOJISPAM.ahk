#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ;
#InstallKeybdHook
#InstallMouseHook

if WinExist("ahk_exe discord.exe") {
    WinActivate, ahk_exe discord.exe
    SendInput ^+i
    sleep, 3000
    FileRead, Clipboard, %A_ScriptDir%\conf.js
    SendInput, ^v
    MsgBox, If everything is fine, press Enter and close the window.
}
Return

Pressed = 0

$~F7::
	SendInput `:pagch{Enter}{Enter}
return

$~F8::
	SendInput `:notliken{Enter}{Enter}
return

$~F9::
	Pressed = 1
return

$~F10::
	Pressed = 2
return

$~F11::
	Pressed = 3
return

$~F12::
	Pressed = 4
return

OnClipboardChange:
	If (Clipboard = 177483069501079553) {	
		If (Pressed = 1) {
			SendInput `:joan{Enter}
		} Else if (Pressed = 2) {
			SendInput `:tier{Enter}
		} Else if (Pressed = 3) {
			SendInput `:informa{Enter}
		} Else if (Pressed = 4) {
			SendInput `:feelssha{Enter}
		}
		Send {Enter}
	} Else If (Clipboard = 162510771350274048) {	
		If (Pressed = 1) {
			SendInput `:smug{Enter}
		} Else if (Pressed = 2) {
			SendInput `:pika{Enter}
		} Else if (Pressed = 3) {
			SendInput `:sonic{Enter}
		} Else if (Pressed = 4) {
			SendInput `:kitku{Enter}
		}
		Send {Enter}
	} Else If (Clipboard = 188651121303224320) {	
		If (Pressed = 1) {
			SendInput `:monika{Enter}
		} Else if (Pressed = 2) {
			SendInput `:bonzi{Enter}
		} Else if (Pressed = 3) {
			SendInput `:beane{Enter}
		} Else if (Pressed = 4) {
			SendInput `:feelsgenga{Enter}
		}
		Send {Enter}
	} Else {
		If (Pressed = 1) {
			SendInput `:kumiko7{Enter}
		} Else if (Pressed = 2) {
			SendInput `:pepohype{Enter}
		} Else if (Pressed = 3) {
			SendInput `:CoolStory{Enter}
		} Else if (Pressed = 4) {
			SendInput `:REEEEEEEEEE{Enter}
		}
		Send {Enter}
	}
	Pressed = 0
Return