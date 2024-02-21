#NoEnv
#SingleInstance Force
#KeyHistory 0
ListLines Off
CoordMode Mouse, Screen
SetBatchLines, -1

; Create the GUI
Gui +LastFound +AlwaysOnTop
Gui Margin, 0, 0
Gui Color, F0F0F0
Gui Font, s12
Gui Add, Button, x10 y10 w150 h50 gCopyTAG, Cash Game: Balanced: Balanced
Gui Add, Button, x10 y70 w150 h50 gCopyFromEP, Cash Game: Tight Preflop
Gui Add, Button, x10 y130 w150 h50 gCopyFromBTN, Cash Game: Tight Preflop 3Bet Range
Gui Add, Button, x10 y190 w150 h50 gCopySBvsUTG, Cash Game: Tight Overfolds
Gui Add, Button, x10 y250 w150 h50 gCopySBvsHJ, Cash Game: Tight Passive
Gui Add, Button, x10 y310 w150 h50 gCopySBvsCO, Cash Game: Loose Preflop
Gui Add, Button, x10 y370 w150 h50 gCopyBBvsUTG, Cash Game: Loose Overcalls
Gui Add, Button, x10 y430 w150 h50 gCopySBvsBTN, Cash Game: 3Bets Wide
Gui Add, Button, x10 y490 w150 h50 gCopy4BetsWide, Cash Game: 4Bets Wide
Gui Add, Button, x10 y550 w150 h50 gCopy5BetsWide, Cash Game: 5Bets Wide
Gui Add, Button, x10 y610 w150 h50 gCopyBBvsHJ, Cash Game: Aggressive
Gui Add, Button, x10 y670 w150 h50 gCopyBluffsWide, Cash Game: Bluffs Wide
Gui Add, Button, x10 y730 w150 h50 gCopyBBvsCO, Cash Game: Maniac
Gui Show, x0 y0 w170 h790, Poker Notes
return

CopyTAG:
    CopyNote("Cash Game: Balanced")
    return

CopyFromEP:
    CopyNote("Cash Game: Tight Preflop")
    return

CopyFromBTN:
    CopyNote("Cash Game: Tight Preflop 3Bet Range")
    return

CopySBvsUTG:
    CopyNote("Cash Game: Tight Overfolds")
    return

CopySBvsHJ:
    CopyNote("Cash Game: Tight Passive")
    return

CopySBvsCO:
    CopyNote("Cash Game: Loose Preflop")
    return

CopySBvsBTN:
    CopyNote("Cash Game: 3Bets Wide")
    return

CopyBBvsUTG:
    CopyNote("Cash Game: Loose Overcalls")
    return

CopyBBvsHJ:
    CopyNote("Cash Game: Aggressive")
    return

CopyBBvsCO:
    CopyNote("Cash Game: Maniac")
    return

Copy4BetsWide:
    CopyNote("Cash Game: 4Bets Wide")
    return

Copy5BetsWide:
    CopyNote("Cash Game: 5Bets Wide")
    return

CopyBluffsWide:
    CopyNote("Cash Game: Bluffs Wide")
    return

CopyNote(note) {
    FormatTime, currentDate,, [MM/dd/yyyy HH:mm:ss]
    Clipboard := currentDate " - " note
}

GuiClose:
    ExitApp
