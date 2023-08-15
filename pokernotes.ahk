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
    Clipboard := " - Cash Game: Balanced"
    return

CopyFromEP:
    Clipboard := " - Cash Game: Tight Preflop"
    return

CopyFromBTN:
    Clipboard := " - Cash Game: Tight Preflop 3Bet Range"
    return

CopySBvsUTG:
    Clipboard := " - Cash Game: Tight Overfolds"
    return

CopySBvsHJ:
    Clipboard := " - Cash Game: Tight Passive"
    return

CopySBvsCO:
    Clipboard := " - Cash Game: Loose Preflop"
    return

CopySBvsBTN:
    Clipboard := " - Cash Game: 3Bets Wide"
    return

CopyBBvsUTG:
    Clipboard := " - Cash Game: Loose Overcalls"
    return

CopyBBvsHJ:
    Clipboard := " - Cash Game: Aggressive"
    return

CopyBBvsCO:
    Clipboard := " - Cash Game: Maniac"
    return

Copy4BetsWide:
    Clipboard := " - Cash Game: 4Bets Wide"
    return

Copy5BetsWide:
    Clipboard := " - Cash Game: 5Bets Wide"
    return

CopyBluffsWide:
    Clipboard := " - Cash Game: Bluffs Wide"
    return


GuiClose:
    ExitApp
