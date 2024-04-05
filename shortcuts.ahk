#IfWinNotActive ahk_exe blender.exe TslGame.exe
; #IfWinNotActive ahk_exe winword.exe TslGame.exe

SetStoreCapslockMode, off
Capslock::
    KeyWait, CapsLock
    If GetKeyState("CapsLock", "T") = 0
        If (A_TimeSinceThisHotkey > 300)
            SetTimer, mainp, -1
        Else
            Send, {LShift}
    Else
        If (A_TimeSinceThisHotkey <= 300)
            SetTimer, mainp, -1
Return

mainp:
    Send, {CapsLock}
Return

$!LButton::
    SendInput {Ctrl Down}{LButton}{Ctrl Up}
Return

$!a::
    SendInput {Ctrl Down}{a}{Ctrl Up}
Return

$!b::
    SendInput {Ctrl Down}{b}{Ctrl Up}
Return

$!c::
    SendInput {Ctrl Down}{c}{Ctrl Up}
Return

$!+c::
    SendInput {Ctrl Down}{Shift Down}{c}{Shift Up}{Ctrl Up}
Return

$!d::
    SendInput {Ctrl Down}{d}{Ctrl Up}
Return

$!f::
    SendInput {Ctrl Down}{f}{Ctrl Up}
Return

$!j::
    SendInput {Ctrl Down}{j}{Ctrl Up}
Return

$!n::
    SendInput {Ctrl Down}{n}{Ctrl Up}
Return

$!r::
    SendInput {Ctrl Down}{r}{Ctrl Up}
Return

$!+r::
    SendInput {Ctrl Down}{Shift Down}{r}{Shift Up}{Ctrl Up}
Return

$!s::
    SendInput {Ctrl Down}{s}{Ctrl Up}
Return

$!t::
    SendInput {Ctrl Down}{t}{Ctrl Up}
Return

$!+t::
    SendInput {Ctrl Down}{Shift Down}{t}{Shift Up}{Ctrl Up}
Return

$!v::
    SendInput {Ctrl Down}{v}{Ctrl Up}
Return

$!w::
    SendInput {Ctrl Down}{w}{Ctrl Up}
Return

$!x::
    SendInput {Ctrl Down}{x}{Ctrl Up}
Return

$!z::
    SendInput {Ctrl Down}{z}{Ctrl Up}
Return

$!0::
    SendInput {Ctrl Down}{0}{Ctrl Up}
Return

$!-::
    SendInput {Ctrl Down}{-}{Ctrl Up}
Return

$!=::
    SendInput {Ctrl Down}{=}{Ctrl Up}
Return

$sc072::
    run rundll32.exe user32.dll`,LockWorkStation
Return

#if IsActiveProcess("Acrobat.exe")
    IsActiveProcess(name) {
        WinGet, _name, ProcessName, A
        return name = _name
    }
    XButton1::Send !{Left}
    XButton2::Send !{Right}
#if

#IfWinNotActive