#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
1::

loop {
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 3, 42, 1656, 743, 0x00FFFF, 0, Fast RGB
If (ErrorLevel = 0)

	Click, %FoundX%, %FoundY% left, 3
	sleep 5000
}

2:: Reload
3:: Exitapp