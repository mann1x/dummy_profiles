#Persistent

SetTitleMatchMode RegEx

Dummy_path = %A_ScriptDir%\dummy_exes\

SetTimer main_loop, 2000

global Profiles := []

Loop, Read, %Dummy_path%\dummy_profiles.txt 
{
    Profiles.Push(A_LoopReadLine)
}

for index, element in Profiles {
		dummy_exe := Dummy_path . RegExReplace(element, "\W", "_") . ".exe"
		dummy_base := Dummy_path . "Dummy_exe.exe"
		;MsgBox % "COPY " . dummy_base . " TO " . dummy_exe
		if !FileExist(dummy_exe) {
			FileCopy, %dummy_base%, %dummy_exe%
			ErrorCount := ErrorLevel
			if ErrorLevel
				MsgBox Could not copy %dummy_base% into %dummy_exe%.
		}
	}

main_loop:

Sleep, 3000

for index, element in Profiles {
		;ListVars
		hwnd := WinActive(element . "$ ahk_exe i)ApplicationFrameHost\.exe$")
		hwndvis := WinExist(element . "$ ahk_exe i)ApplicationFrameHost\.exe$")
		isVisible := WinVisible(element)
		WinGet, isMax, MinMax , % element . "$ ahk_exe i)ApplicationFrameHost\.exe$"
		dummy_exe := RegExReplace(element, "\W", "_") . ".exe"
		re_dummy := StrReplace(dummy_exe, ".", "\.")
		hdum := WinExist("ahk_exe i)" . re_dummy . "$")
		if (hwnd <> 0) {
			WinGetTitle,title,ahk_id %hwnd%
			;MsgBox % "UWP = " . title . " VIS=" . isVisible . " MAX=" . isMax
			if (hdum = 0) {
				;MsgBox % "UWP = " . title . " DUMMY NOT FOUND"
				dummy_exec = %Dummy_path%%dummy_exe%
				Run, %dummy_exec% "%element%"
				if ErrorLevel = ERROR
					MsgBox The dummmy for %element% could not be launched (%dummy_exe%)
				Sleep, 3000
			}	
		} else {
			if (hdum <> 0 and hwndvis = 0) {
				;MsgBox % "UWP = " . title . " DUMMY FOUND MUST CLOSE VIS=" . isVisible
				WinKill, %dummy_exe%,,3000 
			}
		}
	}
Return

WinVisible(WinTitle)
{
	WinGet, Style, Style, %WinTitle% 
	Transform, Result, BitAnd, %Style%, 0x10000000 ; 0x10000000 is WS_VISIBLE. 
	if Result <> 0 ;Window is Visible
		Return 1
	Else  ;Window is Hidden
		Return 0
}