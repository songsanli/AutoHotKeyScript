;==========================
; Initialize
;==========================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;==========================
; Function
;==========================

delete_char()
{
  Send {BS}
  Return
}
delete_backward_char()
{
  Send {Del}
  Return
}
move_beginning_of_line()
{
  Send {HOME}
  Return
}
move_end_of_line()
{
  Send {END}
  Return
}
previous_line()
{
  Send {Up}
  Return
}
next_line()
{
  Send {Down}
  Return
}
forward_char()
{
  Send {Right}
  Return
}
backward_char()
{
  Send {Left}
  Return
}

;==========================
; Chrome
;==========================

#IfWinActive ahk_exe chrome.exe
; Change key mapping
^x::^s
^s::^f

; Emacs mapping
^f::
  forward_char()
  Return
^b::
  backward_char()
  Return
^e::
  move_end_of_line()
  Return
^a::
  move_beginning_of_line()
  Return
^p::
  previous_line()
  Return
^n::
  next_line()
  Return
#IfWinActive

;==========================
; Evernote
;==========================

#IfWinActive ahk_exe Evernote.exe
; Emacs mapping
^f::
  forward_char()
  Return
^b::
  backward_char()
  Return
^e::
  move_end_of_line()
  Return
^a::
  move_beginning_of_line()
  Return
^p::
  previous_line()
  Return
^n::
  next_line()
  Return
#IfWinActive
