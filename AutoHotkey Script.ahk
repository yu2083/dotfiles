#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------
; 前提
; 無変換キーをF13に割当
; CapsLockキーをCtrlに割当
; ----------------------------------

; F13単発は無変換
F13::vk1D

; ----------------------------------
; vimのcursolkey
; ----------------------------------
F13 & h::Left
F13 & j::Down
F13 & k::Up
F13 & l::Right

; ----------------------------------
; word select
; ----------------------------------

F13 & u::
  if GetKeyState("Shift") {
    Send ^+{Left}
    return
  }
  Send ^{Left}
  return

F13 & i::
  if GetKeyState("Shift") {
    Send ^+{Right}
    return
  }
  Send ^{Right}
  return

; ----------------------------------
; other
; ----------------------------------
F13 & a::Home
F13 & e::End
F13 & n::BS
F13 & m::Del
F13 & f::Send,{Blind}{Enter}
F13 & g::Send,{Blind}{BackSpace}

F13 & p::PgUp
F13 & vkBB::PgDn

F13 & o::
  send {ShiftDown}{End}{ShiftUp}
  send ^c
  send {Del}
  return
