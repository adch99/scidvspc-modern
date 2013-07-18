### Menus.tcl: part of Scid.
### Copyright (C) 2001-2003 Shane Hudson.

############################################################
###  Status bar help for menu items, buttons, etc:

# Keep menus on right hand side (X11)
catch {tk::classic::restore menu}

array set helpMessage {}
set showHelp 0

# statusBarHelp:
#   Called when a button or menu entry is entered to display
#   a status bar help message if applicable.
#
proc statusBarHelp {window {item {}}} {
  global showHelp helpMessage statusBar language

  set status ""
  if {! $showHelp} { return }

  # Tcl/Tk seems to generate strange window names for menus that
  # are configured to be a toplevel window main menu, e.g.
  # .menu.file get reported as ".#menu.#menu#file" and
  # .menu.file.utils is ".#menu.#menu#file.#menu#file#utils"
  # I have no idea why it does this, but to avoid it we
  # convert a window paths with hashes to its true value:

  if {[string first {.#} $window] != -1} {
    set idx [string last . $window]
    set window [string range $window [expr {$idx+1} ] end]
    regsub -all "\#" $window . window
  }

  # Look for a status bar help message for the current button
  # or menu entry, in the current language or English:

  if {$item == ""} { set index $window } else { set index "$window,$item" }
  if {[info exists helpMessage($language,$index)]} {
    set status "  $helpMessage($language,$index)"
  } elseif {[info exists helpMessage(E,$index)]} {
    set status "  $helpMessage(E,$index)"
  } elseif {[info exists helpMessage($index)]} {
    set tag $helpMessage($index)
    if {[info exists helpMessage($language,$tag)]} {
      set status "  $helpMessage($language,$tag)"
    } elseif {[info exists helpMessage(E,$tag)]} {
      set status "  $helpMessage(E,$tag)"
    } else { set status $tag }
  }

  if {$status == ""} { statusBarRestore $window; return }

  if {[string range $window 0 7] == ".treeWin"} {
    set bn ""
    catch { scan $window .treeWin%d.%s bn dummy}
    ::tree::status $status $bn
  } else {
    set statusBar $status
  }
}

# statusBarRestore:
#   Updates a status bar that was displaying a help message.
#
proc statusBarRestore {window} {
  global showHelp statusBar

  if {! $showHelp} { return }
  if {[string range $window 0 7] == ".treeWin"} {
    set bn ""
    catch { scan $window .treeWin%d.%s bn dummy}
    ::tree::status "" $bn
  } else {
    updateStatusBar
  }
}

# bind Menu <Any-Enter> "+statusBarHelp %W \[%W index @%y \]"
# bind Menu <Any-Motion> "+statusBarHelp %W \[%W index @%y \]"
# bind Menu <Any-Leave> "+statusBarRestore %W"

bind Menu <<MenuSelect>> {+
  if {[catch {%W index active} tempMenuIndex]} {
    statusBarRestore %W
  } else {
    statusBarHelp %W $tempMenuIndex
  }
}

# bind Menubutton <Any-Enter> "+statusBarHelp %W"
# bind Menubutton <Any-Leave> "+statusBarRestore %W"
# bind Button <Any-Enter> "+statusBarHelp %W"
# bind Button <Any-Leave> "+statusBarRestore %W"
# bind Label <Any-Enter> "+statusBarHelp %W"
# bind Label <Any-Leave> "+statusBarRestore %W"


############################################################
### Main window menus:

option add *Menu*TearOff 0

menu .menu

if {$windowsOS} {
  # todo &&&
  # How do we disable windows broken menu short-cuts &&&
  # bind $dot_w <Alt> {}
}

## Mac Application menu has to be before any call to configure.
if { $macOS } {
  ### This menu change removes the standard "About Tcl/Tk" widget
  ### and fails to rename the "tkscid" menu to "Scid" , as it appears to be trying to do

  # Application menu:
  .menu add cascade -label Scid -menu .menu.apple
  menu .menu.apple

  set menuindex -1
  set m .menu.apple

  $m add command -label HelpAbout -command {helpWindow Author}
  set helpMessage($m,[incr menuindex]) HelpAbout

  $m add separator
  incr menuindex

  bind all <Help> {helpWindow Contents}

  # Trap quitting from the tkscid OSX menu (needed to save options).
  proc ::tk::mac::Quit {}  {
    ::file::Exit
  }

}

if {$::gameInfo(showMenu)} {
  $dot_w configure -menu .menu
}

.menu add cascade -label File -menu .menu.file
.menu add cascade -label Play -menu .menu.play
.menu add cascade -label Edit -menu .menu.edit
.menu add cascade -label Game -menu .menu.game
.menu add cascade -label Search -menu .menu.search
.menu add cascade -label Windows -menu .menu.windows
.menu add cascade -label Tools -menu .menu.tools
.menu add cascade -label Options -menu .menu.options
.menu add cascade -label Help -menu .menu.help

foreach menuname { file edit game search windows play tools options help } {
  menu .menu.$menuname
}
# .menu.file configure -tearoff 1
.menu.windows configure -tearoff 1
.menu.options configure -tearoff 1
.menu.help configure -tearoff 1


### File menu:

set menuindex -1
set m .menu.file
# If altering .menu.file, must change the 'set idx ...' value below

$m add command -label FileNew -acc "Ctrl+N" -command ::file::New
bind .main <Control-n> ::file::New
set helpMessage($m,[incr menuindex]) FileNew

$m add command -label FileOpen -acc "Ctrl+O" -command ::file::Open
bind .main <Control-o> ::file::Open
set helpMessage($m,[incr menuindex]) FileOpen

$m add command -label FileSavePgn  -command {::pgn::savePgn .}
set helpMessage($m,[incr menuindex]) FileSavePgn

$m add command -label FileClose -acc "Ctrl+W" -command ::file::Close
bind .main <Control-w> ::file::Close
set helpMessage($m,[incr menuindex]) FileClose

$m add command -label FileFinder -acc "Ctrl+/" -command ::file::finder::Open
bind .main <Control-slash> ::file::finder::Open
set helpMessage($m,[incr menuindex]) FileFinder

$m add cascade -label FileBookmarks -menu $m.bookmarks
set helpMessage($m,[incr menuindex]) FileBookmarks
menu $m.bookmarks

$m add separator
incr menuindex

$m add cascade -label FileSwitch -menu $m.switch
set helpMessage($m,[incr menuindex]) FileSwitch

### .menu.file.switch menu items added in updateMenuStates

menu $m.switch -tearoff 1

# naming is weird because the menus are moved from Tools to File menus

$m add command -label ToolsOpenBaseAsTree -command ::file::openBaseAsTree
set helpMessage($m,[incr menuindex]) ToolsOpenBaseAsTree

menu $m.recenttrees
$m add cascade -label ToolsOpenRecentBaseAsTree -menu $m.recenttrees
set helpMessage($m,[incr menuindex]) ToolsOpenRecentBaseAsTree

$m add separator
incr menuindex

menu $m.utils
$m add cascade -label FileMaint -menu .menu.file.utils
set helpMessage($m,[incr menuindex]) FileMaint

$m.utils add checkbutton -label FileMaintWin \
    -accelerator "Ctrl+M" -variable maintWin -command ::maint::OpenClose
bind .main <Control-m> ::maint::OpenClose
set helpMessage($m.utils,0) FileMaintWin

$m.utils add command -label FileMaintCompact -command makeCompactWin
set helpMessage($m.utils,1) FileMaintCompact

$m.utils add command -label FileMaintClass -command classifyAllGames
set helpMessage($m.utils,2) FileMaintClass

$m.utils add command -label FileMaintSort -command makeSortWin
set helpMessage($m.utils,3) FileMaintSort

$m.utils add separator

$m.utils add command -label FileMaintDelete -state disabled -command markTwins
set helpMessage($m.utils,5) FileMaintDelete

$m.utils add command -label FileMaintTwin -command updateTwinChecker
set helpMessage($m.utils,6) FileMaintTwin

$m.utils add separator

menu $m.utils.name
$m.utils add cascade -label FileMaintName -menu .menu.file.utils.name
set helpMessage($m.utils,8) FileMaintName

$m.utils.name add checkbutton -label FileMaintNameEditor \
    -command nameEditor -variable nameEditorWin
set helpMessage($m.utils.name,0) FileMaintNameEditor

$m.utils.name add command -label FileMaintNamePlayer -command {openSpellCheckWin Player}
set helpMessage($m.utils.name,1) FileMaintNamePlayer

$m.utils.name add command -label FileMaintNameEvent -command {openSpellCheckWin Event}
set helpMessage($m.utils.name,2) FileMaintNameEvent

$m.utils.name add command -label FileMaintNameSite -command {openSpellCheckWin Site}
set helpMessage($m.utils.name.3) FileMaintNameSite

$m.utils.name add command -label FileMaintNameRound -command {openSpellCheckWin Round}
set helpMessage($m.utils.name,4) FileMaintNameRound

$m.utils add separator

$m.utils add command -label FileMaintFixBase -command ::maint::fixCorruptedBase
set helpMessage($m.utils,10) FileMaintFixBase

$m add command -label FileReadOnly -command makeBaseReadOnly
set helpMessage($m,[incr menuindex]) FileReadOnly

set totalBaseSlots [sc_base count total]
set clipbaseSlot [sc_info clipbase]
set currentSlot [sc_base current]

$m add separator
incr menuindex

$m add command -label FileExit -accelerator "Ctrl+Q" -command ::file::Exit
bind .main <Control-q> ::file::Exit
set helpMessage($m,[incr menuindex]) FileExit


### Edit menu

set menuindex -1
set m .menu.edit

$m add command -label EditSetup -accelerator "Ctrl+Shift+S" -command setupBoard
bind .main <Control-S> setupBoard
set helpMessage($m,[incr menuindex]) EditSetup

$m add command -label EditCopyBoard -accelerator "Ctrl+Shift+C" -command copyFEN
bind .main <Control-C> copyFEN
set helpMessage($m,[incr menuindex]) EditCopyBoard

$m add command -label EditCopyPGN -command ::pgn::copyPgn
set helpMessage($m,[incr menuindex]) EditCopyPGN

$m add command -label EditPasteBoard -accelerator "Ctrl+Shift+V" -command pasteFEN
bind .main <Control-V> pasteFEN
set helpMessage($m,[incr menuindex]) EditPasteBoard

$m add command -label EditPastePGN -command importClipboardGame -accelerator "Ctrl+Shift+I"
set helpMessage($m,[incr menuindex]) EditPastePGN

$m add separator
incr menuindex

$m add command -label EditReset -command {
  sc_clipbase clear
  updateBoard -pgn
  ::windows::gamelist::Refresh
  updateTitle
}
set helpMessage($m,[incr menuindex]) EditReset

$m add command -label EditCopy -accelerator "Ctrl+C" -command copyGame
bind .main <Control-c> copyGame
set helpMessage($m,[incr menuindex]) EditCopy

$m add command -label EditPaste -accelerator "Ctrl+V" -command pasteGame
bind .main <Control-v> pasteGame
set helpMessage($m,[incr menuindex]) EditPaste

$m add separator
incr menuindex

$m add cascade -label EditStrip -menu $m.strip
set helpMessage($m,[incr menuindex]) EditStrip

$m add command -label EditUndo -command {sc_game undo ; updateBoard -pgn}
set helpMessage($m,[incr menuindex]) EditUndo
$m add command -label EditRedo -command {sc_game redo ; updateBoard -pgn}
set helpMessage($m,[incr menuindex]) EditRedo

$m add separator
incr menuindex

$m add command -label EditAdd -accel "Ctrl+A" -command {sc_var create; updateBoard -pgn}
set helpMessage($m,[incr menuindex]) EditAdd

$m add command -label EditPasteVar -command importVar
set helpMessage($m,[incr menuindex]) EditPasteVar

menu $m.del
$m add cascade -label EditDelete -menu $m.del
set helpMessage($m,[incr menuindex]) EditDelete

menu $m.first
$m add cascade -label EditFirst -menu $m.first
set helpMessage($m,[incr menuindex]) EditFirst

menu $m.main
$m add cascade -label EditMain -menu $m.main
set helpMessage($m,[incr menuindex]) EditMain

$m add checkbutton -label EditTrial -variable trialMode \
    -accelerator "Ctrl+space" -command {setTrialMode update}
bind .main <Control-space> { setTrialMode toggle }
set helpMessage($m,[incr menuindex]) EditTrial

menu $m.strip
$m.strip add command -label EditStripBegin -command {::game::TruncateBegin}
set helpMessage($m.strip,2) EditStripBegin
$m.strip add command -label EditStripEnd -command {::game::Truncate}
set helpMessage($m.strip,3) EditStripEnd
bind .main <Delete> {::game::Truncate}
$m.strip add command -label EditStripComments -command {::game::Strip comments}
set helpMessage($m.strip,0) EditStripComments
$m.strip add command -label EditStripVars -command {::game::Strip variations}
set helpMessage($m.strip,1) EditStripVars


### Game menu:
set menuindex -1
set m .menu.game
$m add command -label GameNew -accelerator "Ctrl+X" -command ::game::Clear
bind .main <Control-x> ::game::Clear
set helpMessage($m,[incr menuindex]) GameNew

$m add command -label GameReplace -command gameReplace -accelerator "Ctrl+R"
bind .main <Control-r> { .menu.game invoke [tr GameReplace] }
set helpMessage($m,[incr menuindex]) GameReplace

$m  add command -label GameAdd -command gameAdd  -accelerator "Ctrl+S"
bind .main <Control-s> gameAdd
set helpMessage($m,[incr menuindex]) GameAdd

$m add separator
incr menuindex

$m add command -label GameInfo -command {gameSave -1} -underline 9
set helpMessage($m,[incr menuindex]) GameInfo

$m add command -label GameBrowse -command {::gbrowser::new [sc_base current] [sc_game number] [sc_pos location]}
set helpMessage($m,[incr menuindex]) GameBrowse

$m add command -label GameList -command ::windows::gamelist::OpenClose 
set helpMessage($m,[incr menuindex]) GameList

$m add separator
incr menuindex

$m  add command -label {Delete Game} -command {
  sc_game flag delete [sc_game number] invert
  updateBoard
  ::windows::gamelist::Refresh
}  -underline 0
set helpMessage($m,[incr menuindex]) {Mark game as deleted}
bind .main <Control-Delete> "$m invoke {Delete Game}"

$m add command -label GameReload -command ::game::Reload -accelerator "Ctrl+Shift+L"
bind .main <Control-L> ::game::Reload
set helpMessage($m,[incr menuindex]) GameReload

$m add separator
incr menuindex

$m add command -label GameFirst -accelerator "Ctrl+Home" \
    -command {::game::LoadNextPrev first}
set helpMessage($m,[incr menuindex]) GameFirst

$m add command -label GameLast -accelerator "Ctrl+End" \
    -command {::game::LoadNextPrev last}
set helpMessage($m,[incr menuindex]) GameLast

$m add command -label GameNext -accelerator "Ctrl+Down" \
    -command {::game::LoadNextPrev next}
set helpMessage($m,[incr menuindex]) GameNext

$m add command -label GamePrev -accelerator "Ctrl+Up" \
    -command {::game::LoadNextPrev previous}
set helpMessage($m,[incr menuindex]) GamePrev

proc standardGameShortcuts {w} {
  bind $w <Control-Home> {::game::LoadNextPrev first}
  bind $w <Control-End> {::game::LoadNextPrev last}
  bind $w <Control-Down> {::game::LoadNextPrev next}
  bind $w <Control-Up> {::game::LoadNextPrev previous}
  bind $w <Control-question> ::game::LoadRandom
}

standardGameShortcuts .main

$m add command -label GameRandom -command ::game::LoadRandom -accelerator "Ctrl+?"
set helpMessage($m,[incr menuindex]) GameRandom

$m add command -label GameNumber -command ::game::LoadNumber -accelerator "Ctrl+U"
bind .main <Control-u> ::game::LoadNumber
set helpMessage($m,[incr menuindex]) GameNumber

$m add separator
incr menuindex

$m add command -label GameDeepest -accelerator "Ctrl+Shift+D" -command {
  sc_move ply [sc_eco game ply]
  updateBoard
}
bind .main <Control-D> {sc_move ply [sc_eco game ply]; updateBoard}
set helpMessage($m,[incr menuindex]) GameDeepest

$m add command -label GameGotoMove -accelerator "Ctrl+G" \
    -command ::game::GotoMoveNumber
set helpMessage($m,[incr menuindex]) GameGotoMove
bind .main <Control-g> ::game::GotoMoveNumber

$m add command -label GameNovelty -accelerator "Ctrl+Shift+Y" \
    -command findNovelty
bind .main <Control-Y> findNovelty
set helpMessage($m,[incr menuindex]) GameNovelty


### Search menu:
set menuindex -1
set m .menu.search
$m  add command -label SearchReset -acc "Ctrl+Shift+F" \
    -command ::search::filter::reset
bind .main <Control-F> ::search::filter::reset
set helpMessage($m,[incr menuindex]) SearchReset

$m  add command -label SearchNegate -acc "Ctrl+Shift+N" \
    -command ::search::filter::negate
bind .main <Control-N> ::search::filter::negate
set helpMessage($m,[incr menuindex]) SearchNegate

$m  add command -label SearchEnd -command ::search::filter::end
set helpMessage($m,[incr menuindex]) SearchEnd

$m  add separator
incr menuindex

$m  add command -label SearchHeader \
    -command ::search::header -accelerator "Ctrl+Shift+H"
bind .main <Control-H> ::search::header
set helpMessage($m,[incr menuindex]) SearchHeader

$m  add command -label SearchCurrent \
    -command ::search::board -accelerator "Ctrl+Shift+B"
bind .main <Control-B> ::search::board
set helpMessage($m,[incr menuindex]) SearchCurrent

$m  add command -label SearchMaterial \
    -command ::search::material -accelerator "Ctrl+Shift+M"
bind .main <Control-M> ::search::material
set helpMessage($m,[incr menuindex]) SearchMaterial

$m add command -label SearchMoves -command ::search::moves
set helpMessage($m,[incr menuindex]) SearchMoves

$m  add separator
incr menuindex

$m add checkbutton -label WindowsPList \
    -variable plistWin -command ::plist::toggle -accelerator "Ctrl+Shift+P"
bind .main <Control-P> ::plist::toggle
set helpMessage($m,[incr menuindex]) WindowsPList

$m add checkbutton -label WindowsTmt \
    -variable tourneyWin -command ::tourney::toggle -accelerator "Ctrl+Shift+T"
bind .main <Control-T> ::tourney::toggle
set helpMessage($m,[incr menuindex]) WindowsTmt

$m  add separator
incr menuindex

$m add command -label SearchUsing -accel "Ctrl+Shift+U" \
    -command ::search::usefile
bind .main <Control-KeyPress-U> ::search::usefile
set helpMessage($m,[incr menuindex]) SearchUsing

### Play menu:
set menuindex -1
set m .menu.play

$m add command -label ToolsTrainFics -command ::fics::config
set helpMessage($m,[incr menuindex]) ToolsTrainFics

$m add command -label ToolsTacticalGame -command ::tacgame::config
set helpMessage($m,[incr menuindex]) ToolsTacticalGame

$m add command -label ToolsSeriousGame -command ::sergame::config
set helpMessage($m,[incr menuindex]) ToolsSeriousGame

$m add command -label ToolsComp -command {compInit}
set helpMessage($m,[incr menuindex]) ToolsComp

$m add command -label ToolsTrainTactics -command ::tactics::config
set helpMessage($m,[incr menuindex]) ToolsTrainTactics

$m add separator
incr menuindex

# sub-menu for training
menu $m.training
$m add cascade -label ToolsTraining -menu $m.training
set helpMessage($m,[incr menuindex]) ToolsTraining
$m.training add command -label ToolsTrainCalvar -command ::calvar::config
$m.training add command -label ToolsTrainFindBestMove -command ::tactics::findBestMove

incr menuindex

# Add support for Correspondence Chess by means of Xfcc and cmail
menu $m.correspondence
$m add cascade -label CorrespondenceChess -menu $m.correspondence
set helpMessage($m,[incr menuindex]) CorrespondenceChess


$m.correspondence add command -label CCConfigure   -command {::CorrespondenceChess::config}
set helpMessage($m.correspondence,0) CCConfigure
$m.correspondence add command -label CCConfigRelay   -command {::CorrespondenceChess::ConfigureRelay}
set helpMessage($m.correspondence,1) CCConfigRelay

$m.correspondence add separator
$m.correspondence add command -label CCOpenDB      -command {::CorrespondenceChess::OpenCorrespondenceDB; ::CorrespondenceChess::ReadInbox} 
set helpMessage($m.correspondence,3) CCOpenDB

$m.correspondence add separator
$m.correspondence add command -label CCRetrieve    -command { ::CorrespondenceChess::FetchGames }
set helpMessage($m.correspondence,5) CCRetrieve

$m.correspondence add command -label CCInbox       -command { ::CorrespondenceChess::ReadInbox }
set helpMessage($m.correspondence,6) CCInbox

$m.correspondence add separator
$m.correspondence add command -label CCSend        -command {::CorrespondenceChess::SendMove 0 0 0 0}
set helpMessage($m.correspondence,8) CCSend
$m.correspondence add command -label CCResign      -command {::CorrespondenceChess::SendMove 1 0 0 0}
set helpMessage($m.correspondence,9) CCResign
$m.correspondence add command -label CCClaimDraw   -command {::CorrespondenceChess::SendMove 0 1 0 0}
set helpMessage($m.correspondence,10) CCClaimDraw
$m.correspondence add command -label CCOfferDraw   -command {::CorrespondenceChess::SendMove 0 0 1 0}
set helpMessage($m.correspondence,11) CCOfferDraw
$m.correspondence add command -label CCAcceptDraw  -command {::CorrespondenceChess::SendMove 0 0 0 1}
set helpMessage($m.correspondence,12) CCAcceptDraw
$m.correspondence add command -label CCGamePage    -command {::CorrespondenceChess::CallWWWGame}
set helpMessage($m.correspondence,13) CCGamePage
$m.correspondence add separator
$m.correspondence add command -label CCNewMailGame -command {::CorrespondenceChess::newEMailGame}
set helpMessage($m.correspondence,15) CCNewMailGame
$m.correspondence add command -label CCMailMove    -command {::CorrespondenceChess::eMailMove}
set helpMessage($m.correspondence,16) CCMailMove


### Windows menu:
set menuindex 0
set m .menu.windows

$m  add checkbutton -label WindowsGameinfo \
    -var gameInfo(show) -command showGameInfo -accelerator "Ctrl+I"

bind .main <Control-i> toggleGameInfo
set helpMessage($m,[incr menuindex]) WindowsGameinfo

$m  add checkbutton -label WindowsComment \
    -var commentWin -command makeCommentWin -accelerator "Ctrl+E"

bind .main <Control-e> makeCommentWin
set helpMessage($m,[incr menuindex]) WindowsComment

$m  add checkbutton -label WindowsGList \
    -variable ::windows::gamelist::isOpen -command ::windows::gamelist::OpenClose  -accelerator "Ctrl+L"
set helpMessage($m,[incr menuindex]) WindowsGList

$m  add checkbutton -label WindowsPGN \
    -variable pgnWin -command ::pgn::OpenClose  -accelerator "Ctrl+P"
set helpMessage($m,[incr menuindex]) WindowsPGN

$m  add checkbutton -label WindowsCross \
     -variable crosstabWin -command ::crosstab::OpenClose  -accelerator "Ctrl+Shift+X"

set helpMessage($m,[incr menuindex]) WindowsCross

$m add checkbutton -label WindowsPList \
    -variable plistWin -command ::plist::toggle -accelerator "Ctrl+Shift+P"
bind .main <Control-P> ::plist::toggle
set helpMessage($m,[incr menuindex]) WindowsPList

$m add checkbutton -label WindowsTmt \
    -variable tourneyWin -command ::tourney::toggle -accelerator "Ctrl+Shift+T"
bind .main <Control-T> ::tourney::toggle
set helpMessage($m,[incr menuindex]) WindowsTmt

$m add checkbutton -label WindowsMaint \
    -accelerator "Ctrl+M" -variable maintWin -command ::maint::OpenClose
bind .main <Control-m> ::maint::OpenClose
set helpMessage($m,[incr menuindex]) WindowsMaint

$m add separator
incr menuindex

$m add checkbutton -label WindowsECO \
    -variable ::windows::eco::isOpen -command {::windows::eco::OpenClose}
set helpMessage($m,[incr menuindex]) WindowsECO

$m add checkbutton -label WindowsStats -variable ::windows::stats::isOpen \
    -command ::windows::stats::Open
bind .main <Control-i> ::windows::stats::Open
set helpMessage($m,[incr menuindex]) WindowsStats

$m add command -label WindowsTree -command ::tree::OpenClose -accelerator "Ctrl+T"
bind .main <Control-t> { .menu.windows invoke [tr WindowsTree] }
set helpMessage($m,[incr menuindex]) WindowsTree

$m add checkbutton -label WindowsTB -variable ::tb::isOpen -command ::tb::OpenClose \
    -accelerator "Ctrl+="
bind .main <Control-equal> ::tb::OpenClose
set helpMessage($m,[incr menuindex]) WindowsTB

$m add checkbutton -label WindowsBook -variable ::book::isOpen -command ::book::OpenClose \
    -accelerator "Ctrl+B"
set helpMessage($m,[incr menuindex]) WindowsBook
bind .main <Control-b>  ::book::OpenClose

$m add checkbutton -label WindowsCorrChess -variable ::CorrespondenceChess::isOpen \
    -command ::CorrespondenceChess::CCWindow 

### Tools menu:

set menuindex -1
set m .menu.tools
$m  add command -label ToolsAnalysis \
    -command ::enginelist::choose -accelerator "Ctrl+Shift+A"
bind .main <Control-A> ::enginelist::choose
set helpMessage($m,[incr menuindex]) ToolsAnalysis

#Add Menu for Start Engine 1 and Engine 2
$m  add command -label ToolsStartEngine1 \
    -command "startAnalysisWin F2" -accelerator "F2"
bind .main <F2> "startAnalysisWin F2"
set helpMessage($m,[incr menuindex]) ToolsStartEngine1

$m  add command -label ToolsStartEngine2 \
    -command "startAnalysisWin F3" -accelerator "F3"
bind .main <F3> "startAnalysisWin F3"
set helpMessage($m,[incr menuindex]) ToolsStartEngine2

$m add separator
incr menuindex

# book tuning
$m add command -label ToolsBookTuning -command ::book::tuning
set helpMessage($m,[incr menuindex]) ToolsBookTuning

$m add command -label ToolsPlayerReport -command ::preport::preportDlg
set helpMessage($m,[incr menuindex]) ToolsPlayerReport

$m add command -label ToolsOpReport \
    -accelerator "Ctrl+Shift+O" -command ::optable::makeReportWin
bind .main <Control-O> ::optable::makeReportWin
set helpMessage($m,[incr menuindex]) ToolsOpReport

$m add command -label ToolsTracker \
    -accelerator "Ctrl+Shift+K" -command ::ptrack::make
bind .main <Control-K> ::ptrack::make
set helpMessage($m,[incr menuindex]) ToolsTracker

$m add checkbutton -label ToolsEmail \
    -accelerator "Ctrl+Shift+E" -variable emailWin -command ::tools::email
bind .main <Control-E> ::tools::email
set helpMessage($m,[incr menuindex]) ToolsEmail

menu $m.pinfo
$m add cascade -label ToolsPInfo -menu $m.pinfo
set helpMessage($m,[incr menuindex]) ToolsPInfo
$m.pinfo add command -label White -underline 0 -command {
  playerInfo [sc_game info white] 1
}
$m.pinfo add command -label Black -underline 0 -command {
  playerInfo [sc_game info black] 1
}

# Connect Hardware
menu $m.hardware
$m add cascade -label ToolsConnectHardware -menu $m.hardware
set helpMessage($m,[incr menuindex]) ToolsConnectHardware
incr menuindex

  $m.hardware add command -label ToolsConnectHardwareConfigure -command ::ExtHardware::config
  set helpMessage($m.hardware,0) ToolsConnectHardwareConfigure

  $m.hardware add command -label ToolsConnectHardwareNovagCitrineConnect -command ::novag::connect
  set helpMessage($m.hardware,1) ToolsConnectHardwareNovagCitrineConnect
  $m.hardware add command -label ToolsConnectHardwareInputEngineConnect -command ::inputengine::connectdisconnect
  set helpMessage($m.hardware,2) ToolsConnectHardwareInputEngineConnect

$m add separator
incr menuindex

$m add checkbutton -label ToolsFilterGraph \
    -variable filterGraph -command tools::graphs::filter::Open
set helpMessage($m,[incr menuindex]) ToolsFilterGraph

$m add checkbutton -label ToolsAbsFilterGraph \
    -accelerator "Ctrl+Shift+J" -variable absfilterGraph -command tools::graphs::absfilter::Open
bind .main <Control-J> tools::graphs::absfilter::Open
set helpMessage($m,[incr menuindex]) ToolsAbsFilterGraph

$m add command -label ToolsRating -command {::tools::graphs::rating::Refresh both}
# bind $dot_w <Control-R> {::tools::graphs::rating::Refresh both}
set helpMessage($m,[incr menuindex]) ToolsRating

$m add command -label ToolsScore \
    -accelerator "Ctrl+Shift+Z" -command ::tools::graphs::score::Toggle
bind .main <Control-Z> ::tools::graphs::score::Toggle
set helpMessage($m,[incr menuindex]) ToolsScore

$m add separator
incr menuindex

menu $m.exportcurrent

$m add cascade -label ToolsExpCurrent -menu $m.exportcurrent
set helpMessage($m,[incr menuindex]) ToolsExpCurrent

$m.exportcurrent add command -label ToolsExpCurrentPGN \
    -command {exportGames current PGN}
set helpMessage($m.exportcurrent,0) ToolsExpCurrentPGN

$m.exportcurrent add command -label ToolsExpCurrentHTML \
    -command {exportGames current HTML}
set helpMessage($m.exportcurrent,1) ToolsExpCurrentHTML

$m.exportcurrent add command -label ToolsExpCurrentHTMLJS \
    -command {::html::exportCurrentGame}
set helpMessage($m.exportcurrent,2) ToolsExpCurrentHTMLJS

$m.exportcurrent add command -label ToolsExpCurrentLaTeX \
    -command {exportGames current LaTeX}
set helpMessage($m.exportcurrent,3) ToolsExpCurrentLaTeX

menu $m.exportfilter

$m add cascade -label ToolsExpFilter -menu $m.exportfilter
set helpMessage($m,[incr menuindex]) ToolsExpFilter

$m.exportfilter add command -label ToolsExpFilterPGN \
    -command {exportGames filter PGN}
set helpMessage($m.exportfilter,0) ToolsExpFilterPGN

$m.exportfilter add command -label ToolsExpFilterHTML \
    -command {exportGames filter HTML}
set helpMessage($m.exportfilter,1) ToolsExpFilterHTML

$m.exportfilter add command -label ToolsExpFilterHTMLJS \
    -command {::html::exportCurrentFilter}
set helpMessage($m.exportfilter,2) ToolsExpFilterHTMLJS

$m.exportfilter add command -label ToolsExpFilterLaTeX \
    -command {exportGames filter LaTeX}
set helpMessage($m.exportfilter,3) ToolsExpFilterLaTeX

$m add separator
incr menuindex

$m add command -label ToolsImportOne \
    -accelerator "Ctrl+Shift+I" -command importPgnGame
bind .main <Control-I> importPgnGame
set helpMessage($m,[incr menuindex]) ToolsImportOne

$m add command -label ToolsImportFile -command importPgnFile
set helpMessage($m,[incr menuindex]) ToolsImportFile

$m add separator
incr menuindex

$m add command -label ToolsScreenshot -command {boardToFile {} {}} -accelerator Ctrl+Shift+F12
bind .main <Control-Shift-F12> {boardToFile {} {}}
set helpMessage($m,[incr menuindex]) {Board Screenshot}


### Options menu:

set m .menu.options
set optMenus {windows theme entry fonts ginfo fics startup language numbers export}
set optLabels {Windows Theme Moves Fonts GInfo Fics Startup Language Numbers Export}
set menuindex 0

$m add command -label OptionsBoard -command chooseBoardColors
set helpMessage($m,[incr menuindex]) OptionsBoard

$m add command -label OptionsColour -command SetBackgroundColour
set helpMessage($m,[incr menuindex]) OptionsColour

$m add command -label OptionsToolbar -command configToolbar
set helpMessage($m,[incr menuindex]) OptionsToolbar

$m add command -label OptionsNames -command editMyPlayerNames
set helpMessage($m,[incr menuindex]) OptionsNames

$m add command -label OptionsRecent -command ::recentFiles::configure
set helpMessage($m,[incr menuindex]) OptionsRecent

$m add separator
incr menuindex

foreach menu $optMenus label $optLabels {
  $m add cascade -label Options$label -menu $m.$menu
  set helpMessage($m,[incr menuindex]) Options$label
}

$m add command -label OptionsECO -command ::windows::eco::LoadFile
set helpMessage($m,[incr menuindex]) OptionsECO

$m add command -label OptionsSpell -command readSpellCheckFile
set helpMessage($m,[incr menuindex]) OptionsSpell

$m add command -label OptionsTable -command setTableBaseDir
set helpMessage($m,[incr menuindex]) OptionsTable
if {![sc_info tb]} { $m entryconfigure 13 -state disabled }

# setTableBaseDir:
#    Prompt user to select a tablebase file; all the files in its
#    directory will be used.

proc setTableBaseDir {} {
  global initialDir tempDir
  set ftype { { "Tablebase files" {".emd" ".nbw" ".nbb"} } }

  set w .tablebaseDialog
  toplevel $w
  wm state $w withdrawn
  wm title $w Tablebases

  label $w.title -text "Select up to 4 tablebase directories:"
  pack $w.title -side top
  foreach i {1 2 3 4} {
    set tempDir(tablebase$i) $initialDir(tablebase$i)
    pack [frame $w.f$i] -side top -pady 3 -fill x -expand yes
    entry $w.f$i.e -width 30 -textvariable tempDir(tablebase$i)
    bindFocusColors $w.f$i.e
    button $w.f$i.b -text "..." -pady 2 -command [list chooseTableBaseDir $i]
    pack $w.f$i.b -side right -padx 2
    pack $w.f$i.e -side left -padx 2 -fill x -expand yes
  }
  addHorizontalRule $w
  pack [frame $w.b] -side top -fill x
  dialogbutton $w.b.ok -text OK -command "destroy $w ; openTableBaseDirs"
  dialogbutton $w.b.help -textvar ::tr(Help) -command "helpWindow TB"
  dialogbutton $w.b.cancel -textvar ::tr(Cancel) -command "destroy $w"
  pack $w.b.cancel $w.b.help $w.b.ok -side right -padx 5 -pady 3
  bind $w <Escape> "$w.b.cancel invoke"

  update
  placeWinOverParent $w .
  wm state $w normal
}

proc openTableBaseDirs {} {
  global initialDir tempDir
  set tableBaseDirs ""
  foreach i {1 2 3 4} {
    set tbDir [string trim $tempDir(tablebase$i)]
    if {$tbDir != ""} {
      if {$tableBaseDirs != ""} { append tableBaseDirs ";" }
      append tableBaseDirs [file nativename $tbDir]
    }
  }

  set npieces [sc_info tb $tableBaseDirs]
  foreach i {1 2 3 4} {
    set initialDir(tablebase$i) $tempDir(tablebase$i)
  }
  if {$npieces == 0} {
    set msg "No tablebases found."
  } else {
    set msg "Tablebases with up to $npieces pieces found.\n\nTo use these tablebases whenever you start Scid, select \"Save Options\" from the Options menu."
  }
  tk_messageBox -type ok -icon info -title "Scid: Tablebase results" \
      -message $msg

}
proc chooseTableBaseDir {i} {
  global tempDir

  set ftype { { "Tablebase files" {".emd" ".nbw" ".nbb"} } }
  set idir $tempDir(tablebase$i)
  if {$idir == ""} { set idir [pwd] }

  set fullname [tk_chooseDirectory -mustexist 1 -initialdir $idir -parent .tablebaseDialog \
      -title "Select a Tablebase directory"]
  if {$fullname == ""} { return }

  set tempDir(tablebase$i) $fullname
}

$m add command -label OptionsSounds -command ::utils::sound::OptionsDialog
set helpMessage($m,[incr menuindex]) OptionsSounds

$m add command -label OptionsBooksDir -command setBooksDir
set helpMessage($m,[incr menuindex]) OptionsBooksDir

$m add command -label OptionsTacticsBasesDir -command setTacticsBasesDir
set helpMessage($m,[incr menuindex]) OptionsTacticsBasesDir

proc setBooksDir {} {
  global scidBooksDir
  set dir [tk_chooseDirectory -initialdir $scidBooksDir -mustexist 1 -title "[tr Book] [tr Directory]"]
  if {$dir == ""} {
    return
  } else {
    set scidBooksDir $dir
  }
}

proc setTacticsBasesDir {} {
  global scidBasesDir
  set dir [tk_chooseDirectory -initialdir $scidBasesDir -mustexist 1 -title "Bases [tr Directory]"]
  if {$dir != ""} {
    set scidBasesDir $dir
  }
}

$m add separator
incr menuindex

$m add command -label OptionsSave -command {
  set optionF ""
  if {[catch {open [scidConfigFile options] w} optionF]} {
    tk_messageBox -title "Scid: Unable to write file" -type ok -icon warning \
        -message "Unable to write options file: [scidConfigFile options]\n$optionF"
  } else {
    puts $optionF "# Scid vs. PC (version $scidVersion) Options file"
    puts $optionF "# This file contains commands in the Tcl language format."
    puts $optionF "# If you edit this file, you must preserve valid its Tcl"
    puts $optionF "# format or it will not set your Scid options properly."
    puts $optionF ""

  foreach i {boardSize boardStyle language ::pgn::showColor 
    ::pgn::indentVars ::pgn::indentComments ::defaultBackground 
    ::pgn::shortHeader ::pgn::boldMainLine ::pgn::stripMarks 
    ::pgn::symbolicNags ::pgn::moveNumberSpaces ::pgn::columnFormat ::pgn::showScrollbar
    myPlayerNames tree(order) tree(autoSave) optionsAutoSave ::tree::mask::recentMask 
    ecoFile suggestMoves showVarPopup showVarArrows glistSize glexport 
    blunderThreshold addAnnotatorTag annotateMoves annotateWithVars annotateWithScore useAnalysisBook isAnnotateVar addAnnotatorComment
    autoplayDelay animateDelay boardCoords boardSTM 
    moveEntry(AutoExpand) moveEntry(Coord)
    translatePieces highlightLastMove highlightLastMoveWidth highlightLastMoveColor 
    askToReplaceMoves ::windows::switcher::icons locale(numeric) 
    spellCheckFile ::splash::keepopen autoRaise autoIconify windowsDock autoLoadLayout
    exportFlags(comments) exportFlags(vars) exportFlags(indentc)
    exportFlags(indentv) exportFlags(column) exportFlags(htmldiag) 
    email(smtp) email(smproc) email(server) 
    email(from) email(bcc) ::windows::gamelist::widths ::windows::gamelist::findcase ::windows::gamelist::showButtons
    gameInfo(show) gameInfo(photos) gameInfo(hideNextMove) gameInfo(wrap) gameInfo(showStatus) 
    gameInfo(fullComment) gameInfo(showMarks) gameInfo(showMenu) gameInfo(showTool) 
    gameInfo(showMaterial) gameInfo(showFEN) gameInfo(showButtons) gameInfo(showTB) 
    analysis(mini) engines(F2) engines(F3) engines(F4) analysis(logEngines)
    scidBooksDir scidBasesDir 
    ::book::lastBook1 ::book::lastBook2 ::book::lastTuning ::book::sortAlpha 
    ::book::showTwo ::book::oppMovesVisible ::gbrowser::size 
    crosstab(type) crosstab(ages) crosstab(countries) crosstab(ratings) crosstab(titles) crosstab(breaks) 
    crosstab(deleted) crosstab(colors) crosstab(cnumbers) crosstab(groups) crosstab(sort) crosstab(tallies)
    ::utils::sound::soundFolder ::utils::sound::announceNew ::utils::sound::announceTock
    ::utils::sound::announceForward ::utils::sound::announceBack 
    ::tacgame::threshold ::tacgame::blunderwarning ::tacgame::blunderwarningvalue 
    ::tacgame::levelMin  ::tacgame::levelMax  ::tacgame::levelFixed ::tacgame::randomLevel 
    ::tacgame::showblunder ::tacgame::showblundervalue 
    ::tacgame::showblunderfound ::tacgame::showmovevalue ::tacgame::showevaluation 
    ::tacgame::isLimitedAnalysisTime ::tacgame::analysisTime ::tacgame::openingType ::tacgame::chosenOpening
    ::sergame::bookToUse ::sergame::useBook ::sergame::startFromCurrent 
    ::sergame::winc ::sergame::wtime ::sergame::binc ::sergame::btime
    ::sergame::timeMode ::sergame::movetime ::sergame::current ::sergame::chosenOpening
    ::commenteditor::showBoard ::commenteditor::State(markColor) ::commenteditor::State(markType) boardfile_lite boardfile_dark 
    ::file::finder::data(dir) ::file::finder::data(sort) ::file::finder::data(recurse) 
    ::file::finder::data(Scid) ::file::finder::data(PGN) 
    ::file::finder::data(EPD) ::file::finder::data(Old) 
    FilterMaxMoves FilterMinMoves FilterStepMoves FilterMaxElo FilterMinElo FilterStepElo 
    FilterMaxYear FilterMinYear FilterStepYear FilterGuessELO lookTheme autoResizeBoard
    comp(timecontrol) comp(seconds) comp(minutes) comp(incr) comp(timeout) comp(name) comp(usebook) comp(book)
    comp(rounds) comp(showclock) comp(debug) comp(animate) comp(firstonly) comp(ponder) comp(showscores)
    ::tools::graphs::filter::type  ::tools::graphs::absfilter::type ::tools::graphs::showpoints
    ::maintFlag glistFlag ::useGraphFigurine ::photosMinimized} {

      puts $optionF "set $i [list [set $i]]"

    }
    puts $optionF ""
    foreach i [lsort [array names winWidth]] {
      puts $optionF "set winWidth($i)  [expr $winWidth($i)]"
      puts $optionF "set winHeight($i) [expr $winHeight($i)]"
    }
    puts $optionF ""
    foreach i [lsort [array names winX]] {
      puts $optionF "set winX($i)  [expr $winX($i)]"
      puts $optionF "set winY($i)  [expr $winY($i)]"
    }
    puts $optionF ""
    puts $optionF "set analysisCommand [list $analysisCommand]"
    puts $optionF ""
    foreach i {lite dark whitecolor blackcolor highcolor bestcolor bgcolor maincolor varcolor \
          whiteborder blackborder borderwidth \
          pgnColor(Header) pgnColor(Main) pgnColor(Var) \
          pgnColor(Nag) pgnColor(Comment) pgnColor(Background) \
          pgnColor(Current) pgnColor(NextMove) } {
      puts $optionF "set $i [list [set $i]]"
    }
    puts $optionF ""
    foreach i [lsort [array names optable]] {
      puts $optionF "set optable($i) [list $optable($i)]"
    }
    foreach i [lsort [array names startup]] {
      puts $optionF "set startup($i) [list $startup($i)]"
    }
    foreach i [lsort [array names toolbar]] {
      puts $optionF "set toolbar($i) [list $toolbar($i)]"
    }
    foreach i [lsort [array names twinSettings]] {
      puts $optionF "set twinSettings($i) [list $twinSettings($i)]"
    }
    puts $optionF ""
    foreach i {Regular Menu Small Tiny Fixed} {
      puts $optionF "set fontOptions($i) [list $fontOptions($i)]"
    }
    puts $optionF ""
    puts $optionF "set glistFields [list $glistFields]"
    foreach type {base book html tex epd stm sso pgn report tablebase1 tablebase2 tablebase3 tablebase4} {
      puts $optionF "set initialDir($type) [list $initialDir($type)]"
    }
    puts $optionF ""
    foreach type {PGN HTML LaTeX} {
      puts $optionF "set exportStartFile($type) [list $exportStartFile($type)]"
      puts $optionF "set exportEndFile($type) [list $exportEndFile($type)]"
    }
    puts $optionF ""
    foreach i [lsort [array names informant]] {
      puts $optionF "set informant($i) [list $informant($i)]"
    }
    puts $optionF ""

    # save FICS config
    foreach i { use_timeseal timeseal_exec port_fics port_timeseal login password consolebg consolefg chanoff shouts server_ip consolebg consolefg autopromote autoraise smallclocks size sound no_results no_requests} {
      puts $optionF "set ::fics::$i [list [set ::fics::$i]]"
    }
    foreach i [lsort [array names ::fics::findopponent]] {
      puts $optionF "set ::fics::findopponent($i) [list $::fics::findopponent($i)]"
    }

    # save Window Docking layouts
    foreach slot {1 2 3 4 5} {
      puts $optionF "set ::docking::layout_list($slot) [list $::docking::layout_list($slot)]"
    }

    close $optionF
    set ::statusBar "Options were saved to: [scidConfigFile options]"
  }
}
set helpMessage($m,[incr menuindex]) OptionsSave

$m add checkbutton -label OptionsAutoSave -variable optionsAutoSave
set helpMessage($m,[incr menuindex]) OptionsAutoSave

menu $m.ginfo -tearoff 1
$m.ginfo add checkbutton -label GInfoHideNext \
    -variable gameInfo(hideNextMove) -offvalue 0 -onvalue 1 -command updateBoard
$m.ginfo add checkbutton -label {Show Side to Move} \
    -variable boardSTM -offvalue 0 -onvalue 1 -command {::board::togglestm .main.board}
$m.ginfo add checkbutton -label GInfoFEN \
    -variable gameInfo(showFEN) -offvalue 0 -onvalue 1 -command checkGameInfoHeight
$m.ginfo add checkbutton -label GInfoMarks \
    -variable gameInfo(showMarks) -offvalue 0 -onvalue 1 -command updateBoard
$m.ginfo add checkbutton -label GInfoWrap \
    -variable gameInfo(wrap) -offvalue 0 -onvalue 1 -command updateBoard
$m.ginfo add checkbutton -label GInfoFullComment \
    -variable gameInfo(fullComment) -offvalue 0 -onvalue 1 -command updateBoard
$m.ginfo add checkbutton -label GInfoPhotos \
    -variable gameInfo(photos) -offvalue 0 -onvalue 1 \
    -command {updatePlayerPhotos -force}
$m.ginfo add command -label GInfoMaterial -command toggleMat
$m.ginfo add command -label {Toggle Coords} -command toggleCoords
$m.ginfo add separator
$m.ginfo add radiobutton -label GInfoTBNothing \
    -variable gameInfo(showTB) -value 0 -command checkGameInfoHeight
$m.ginfo add radiobutton -label GInfoTBResult \
    -variable gameInfo(showTB) -value 1 -command checkGameInfoHeight
$m.ginfo add radiobutton -label GInfoTBAll \
    -variable gameInfo(showTB) -value 2 -command checkGameInfoHeight
$m.ginfo add separator
$m.ginfo add command -label GInfoInformant -command configInformant

menu $m.entry -tearoff 1
$m.entry add checkbutton -label OptionsMovesAsk \
    -variable askToReplaceMoves -offvalue 0 -onvalue 1
set helpMessage($m.entry,0) OptionsMovesAsk \

$m.entry add checkbutton -label OptionsMovesShowVarArrows \
    -variable showVarArrows -offvalue 0 -onvalue 1
set helpMessage($m.entry,10) OptionsMovesShowVarArrows

$m.entry add checkbutton -label OptionsShowVarPopup \
    -variable showVarPopup -offvalue 0 -onvalue 1
set helpMessage($m.entry,6) OptionsShowVarPopup

menu $m.entry.highlightlastmove -tearoff 1
$m.entry add cascade -label OptionsMovesHighlightLastMove -menu  $m.entry.highlightlastmove
$m.entry.highlightlastmove add checkbutton -label OptionsMovesHighlightLastMoveDisplay -variable ::highlightLastMove -command updateBoard
menu $m.entry.highlightlastmove.width
$m.entry.highlightlastmove add cascade -label OptionsMovesHighlightLastMoveWidth -menu $m.entry.highlightlastmove.width
foreach i {1 2 3 4 5} {
  $m.entry.highlightlastmove.width add radiobutton -label $i -value $i -variable ::highlightLastMoveWidth -command updateBoard
}
# menu $m.entry.highlightlastmove.pattern
# $m.entry.highlightlastmove add cascade -label OptionsMovesHighlightLastMovePattern -menu $m.entry.highlightlastmove.pattern
# foreach i {"plain" "." "-" "-." "-.." ". " "," ".  "} j { "" "." "-" "-." "-.." ". " "," ".  "} {
  # $m.entry.highlightlastmove.pattern add radiobutton -label $i -value $j -variable ::highlightLastMovePattern -command updateBoard
# }
$m.entry.highlightlastmove add command -label OptionsMovesHighlightLastMoveColor -command {
  set col [ tk_chooseColor -initialcolor $::highlightLastMoveColor -title "Scid"]
  if { $col != "" } {
    set ::highlightLastMoveColor $col
    updateBoard
  }
}
set helpMessage($m.entry,9) OptionsMovesHighlightLast

$m.entry add cascade -label OptionsMovesAnimate -menu $m.entry.animate
menu $m.entry.animate -tearoff 1
foreach i {0 100 150 200 250 300 400 500 600 800 1000} {
  $m.entry.animate add radiobutton -label "$i ms" \
      -variable animateDelay -value $i
}
set helpMessage($m.entry,1) OptionsMovesAnimate

$m.entry add separator

$m.entry add command -label OptionsMovesDelay -command setAutoplayDelay
set helpMessage($m.entry,2) OptionsMovesDelay

$m.entry add checkbutton -label OptionsMovesCoord \
    -variable moveEntry(Coord) -offvalue 0 -onvalue 1
set helpMessage($m.entry,3) OptionsMovesCoord

$m.entry add checkbutton -label OptionsMovesKey \
    -variable moveEntry(AutoExpand) -offvalue 0 -onvalue 1
set helpMessage($m.entry,4) OptionsMovesKey

$m.entry add checkbutton -label OptionsMovesSuggest \
    -variable suggestMoves -offvalue 0 -onvalue 1
set helpMessage($m.entry,5) OptionsMovesSuggest

$m.entry add checkbutton -label OptionsMovesSpace \
    -variable ::pgn::moveNumberSpaces -offvalue 0 -onvalue 1
set helpMessage($m.entry,7) OptionsMovesSpace

$m.entry add checkbutton -label OptionsMovesTranslatePieces \
    -variable ::translatePieces -offvalue 0 -onvalue 1 -command setLanguage
set helpMessage($m.entry,8) OptionsMovesTranslatePieces

proc updateLocale {} {
  global locale
  sc_info decimal $locale(numeric)
  ### Don't know why this is happening, but it causes two
  ### Refreshes when window is opened at startup
  # ::windows::gamelist::Refresh
  updateTitle
}

set m .menu.options.numbers
menu $m -tearoff 1
foreach numeric {".,"   ". "   "."   ",."   ", "   ","} \
    underline {  0     1      2     4      5      6} {
      set decimal [string index $numeric 0]
      set thousands [string index $numeric 1]
      $m add radiobutton -label "12${thousands}345${decimal}67" \
      -underline $underline \
      -variable locale(numeric) -value $numeric -command updateLocale
    }


set m .menu.options.fics
menu $m -tearoff 1
$m add checkbutton -label OptionsWindowsRaise -variable ::fics::autoraise
$m add checkbutton -label  OptionsFicsAuto -variable ::fics::autopromote
$m add checkbutton -label OptionsFicsClock -variable ::fics::smallclocks -command ::fics::showClocks
$m add checkbutton -label OptionsSounds -variable ::fics::sound
$m add command     -label {Text Colour} -command ::fics::setForeGround
$m add command     -label OptionsColour -command ::fics::setBackGround
$m add separator
$m add checkbutton -label "No Results"    -variable ::fics::no_results
$m add checkbutton -label "No Requests"    -variable ::fics::no_requests

set m .menu.options.export
menu $m -tearoff -1
foreach format {PGN HTML LaTeX} {
  $m add command -label "$format file text" -underline 0 \
      -command "setExportText $format"
}

###############################
set m .menu.options.windows
menu $m -tearoff -1

$m add checkbutton -label OptionsWindowsDock -variable windowsDock -command {
  if {$::docking::USE_DOCKING != $windowsDock} {
    set answer [tk_messageBox -type yesno -icon info -title Scid -message "Changing Docking requires a restart.\nExit now ?"]
    if {$answer == "yes"} {
      ::file::Exit
    }
  }
}
set helpMessage($m,2) OptionsWindowsDock

if {$::docking::USE_DOCKING} {
  $m add checkbutton -label OptionsWindowsAutoLoadLayout -variable autoLoadLayout 
  set helpMessage($m,4) OptionsWindowsAutoLoadLayout

  $m add checkbutton -label OptionsWindowsAutoResize -variable ::autoResizeBoard -command ::docking::toggleAutoResizeBoard
  set helpMessage($m,4) OptionsWindowsAutoLoadLayout

  menu $m.savelayout
  menu $m.restorelayout
  foreach i {"1 (default)" "2 (custom)" "3 (analysis)" 4 5} slot {1 2 3 4 5} {
    $m.savelayout add command -label $i -command "::docking::layout_save $slot"
    $m.restorelayout add command -label $i -command "::docking::layout_restore $slot"
  }
  $m add cascade -label OptionsWindowsSaveLayout -menu $m.savelayout
  set helpMessage($m,5) OptionsWindowsSaveLayout
  $m add cascade -label OptionsWindowsRestoreLayout -menu $m.restorelayout
  set helpMessage($m,6) OptionsWindowsRestoreLayout
}

$m add separator

$m add checkbutton -label OptionsWindowsIconify -variable autoIconify
set helpMessage($m,0) OptionsWindowsIconify
$m add checkbutton -label OptionsWindowsRaise -variable autoRaise
set helpMessage($m,1) OptionsWindowsRaise

set m .menu.options.theme
menu $m -tearoff -1
foreach i [ttk::style theme names] {
  $m add radiobutton -label "$i" -value $i -variable ::lookTheme -command {ttk::style theme use $::lookTheme}
}

###############################

menu .menu.options.language -tearoff -1

set m .menu.options.fonts
menu $m -tearoff -1

$m add command -label OptionsFontsRegular -underline 0 -command {
    FontDialogRegular .
}

$m add command -label OptionsFontsMenu -underline 0 -command {
    FontDialogMenu .
}

$m add command -label OptionsFontsSmall -underline 0 -command {
    FontDialogSmall .
}

$m add command -label OptionsFontsFixed -underline 0 -command {
    FontDialogFixed .
}

set helpMessage($m,0) OptionsFontsRegular
set helpMessage($m,1) OptionsFontsMenu
set helpMessage($m,2) OptionsFontsSmall
set helpMessage($m,3) OptionsFontsFixed

set m .menu.options.startup
menu $m -tearoff -1
$m add checkbutton -label HelpTip -variable startup(tip)
$m add checkbutton -label HelpStartup -variable ::splash::keepopen
$m add checkbutton -label WindowsCross -variable startup(crosstable)
$m add checkbutton -label FileFinder -variable startup(finder)
$m add checkbutton -label WindowsGList -variable startup(gamelist)
$m add checkbutton -label WindowsPGN -variable startup(pgn)
$m add checkbutton -label WindowsStats -variable startup(stats)
$m add checkbutton -label WindowsTree -variable startup(tree)
$m add checkbutton -label WindowsBook -variable startup(book)
$m add checkbutton -label FICS -variable startup(fics)

bind .main <Control-Shift-Left>  {::board::resize .main.board -1}
bind .main <Control-Shift-Right> {::board::resize .main.board +1}

### Help menu:
set menuindex 0
set m .menu.help
$m add command -label HelpContents -command {helpWindow Contents} -accelerator "F1"
set helpMessage($m,[incr menuindex]) HelpContents

$m add command -label HelpIndex -command {helpWindow Index}
set helpMessage($m,[incr menuindex]) HelpIndex

$m add separator
incr menuindex
# $m add command -label HelpIndex -command {helpWindow Index}
# set helpMessage($m,[incr menuindex]) HelpIndex
# $m add command -label HelpGuide -command {helpWindow Guide}
# set helpMessage($m,[incr menuindex]) HelpGuide
# $m add command -label HelpHints -command {helpWindow Hints}
# set helpMessage($m,[incr menuindex]) HelpHints
# 
# $m add separator
# incr menuindex

$m add command -label HelpTip -command ::tip::show
set helpMessage($m,[incr menuindex]) HelpTip
$m add command -label HelpStartup -command {
  # .splash window is never destroyed !!
  wm deiconify .splash
  raiseWin .splash
}
set helpMessage($m,[incr menuindex]) HelpStartup

$m add separator
incr menuindex

$m add command -label Changelog -command {helpWindow Changelog}
incr menuindex
$m  add command -label HelpAbout -command {helpWindow Author}
set helpMessage($m,[incr menuindex]) HelpAbout

bind .main <F1> toggleHelp
bind .main <Control-Key-quoteleft> {::file::SwitchToBase 9}
bind .main <Control-Tab> ::file::SwitchToNextBase
catch {
  if {$windowsOS} {
    bind .main <Shift-Tab> {::file::SwitchToNextBase -1} 
  } else {
    bind .main <ISO_Left_Tab> {::file::SwitchToNextBase -1} 
  }
}

##################################################

# updateMenuStates:
#   Update all the menus, rechecking which state each item should be in.

proc updateMenuStates {} {
  global totalBaseSlots windowsOS dot_w

  set ::currentSlot [sc_base current]
  set lang $::language
  set m .menu

  # Switch to database number $i
  set current [sc_base current]
  $m.file.switch delete 0 9
  
  for {set i 1} { $i <= $totalBaseSlots } { incr i } {
    set fname [file tail [sc_base filename $i]]

    # Only show menu items for open database slots
    if {$fname != {[empty]} } {
      $m.file.switch add command -command "set currentSlot $i" \
	  -label "$fname" -underline 5 -accelerator "Ctrl+$i" \
          -command "::file::SwitchToBase $i"
      bind .main <Control-Key-$i> "::file::SwitchToBase $i"

      if {$i == $current} {
	$m.file.switch entryconfig $i -state disabled
      }
    }
  }

  foreach i {Compact Delete} {
    $m.file.utils entryconfig [tr FileMaint$i] -state disabled
  }
  foreach i {Player Event Site Round} {
    $m.file.utils.name entryconfig [tr FileMaintName$i] -state disabled
  }

  $m.file entryconfig [tr FileReadOnly] -state disabled

  # update recent Tree list (open base as Tree)
  set ntreerecent [::recentFiles::treeshow .menu.file.recenttrees]

  # Remove and reinsert the Recent files list and Exit command:
  $m.file add separator
  set idx 14
  $m.file delete $idx end
  if {[::recentFiles::show $m.file] > 0} {
    $m.file add separator
  }
  set idx [$m.file index end]
  incr idx
  $m.file add command -label [tr FileExit] -accelerator "Ctrl+Q" \
      -command ::file::Exit
  set helpMessage($m.file,$idx) FileExit

  # Configure File menu entry states::
  if {[sc_base inUse]} {
    set isReadOnly [sc_base isReadOnly]
    $m.file entryconfig [tr FileClose] -state normal
    if {! $isReadOnly} {
      $m.file.utils entryconfig [tr FileMaintDelete] -state normal
      $m.file.utils entryconfig [tr FileMaintName] -state normal
      foreach i {Player Event Site Round} {
        $m.file.utils.name entryconfig [tr FileMaintName$i] -state normal
      }
      $m.file entryconfig [tr FileReadOnly] -state normal
    }

    # Load first/last/random buttons:
    set filtercount [sc_filter count]
    if {$filtercount == 0} {set state disabled} else {set state normal}
    $m.game entryconfig [tr GameFirst] -state $state
    $m.game entryconfig [tr GameLast] -state $state
    $m.game entryconfig [tr GameRandom] -state $state
    $m.game entryconfig [tr GameNumber] -state $state
    $m.game entryconfig [tr GamePrev] -state $state
    $m.game entryconfig [tr GameNext] -state $state
    # .main.tb.gprev configure -state $state
    # .main.tb.gnext configure -state $state

    # Reload and Delete
    if {[sc_game number]} {set state normal} else {set state disabled}
    $m.game entryconfig [tr GameReload] -state $state
    if {$isReadOnly} {set state disabled}
    $m.game entryconfig {Delete Game} -state $state

    # Save add button:
    set state normal
    if {$isReadOnly  ||  $::trialMode} {set state disabled}
    $m.game entryconfig [tr GameAdd] -state $state

    # Save replace button:
    set state normal
    if {[sc_game number] == 0  ||  $isReadOnly  ||  $::trialMode} {
      set state disabled
    }
    $m.game entryconfig [tr GameReplace] -state $state

  } else {
    # Base is not in use:
    # (Is this ever used ? S.A)

    $m.file entryconfig [tr FileClose] -state disabled

    # This gets called occasionally after closing tree and others (?)
    # but dont disable 'Info Browse List' as they never get re-enabled !
    foreach i {Replace Add First Prev Reload Next Last Random Number Info Browse List} {
      $m.game entryconfig [tr Game$i] -state disabled
    }
    # .main.tb.gprev configure -state disabled
    # .main.tb.gnext configure -state disabled
  }

  if {[sc_base numGames] == 0} {
    $m.tools entryconfig [tr ToolsExpFilter] -state disabled
  } else {
    $m.tools entryconfig [tr ToolsExpFilter] -state normal
  }

  set state disabled
  if {[baseIsCompactable]} { set state normal }
  $m.file.utils entryconfig [tr FileMaintCompact] -state $state

  ::search::Config
  ::maint::Refresh
  ::bookmarks::Refresh
}


##############################
#
# Multiple-language menu support functions.

# configMenuText:
#    Reconfigures the main window menus. Called when the language is changed.
#
proc configMenuText {menu entry tag lang} {
  global menuLabel menuUnder
  if {[info exists menuLabel($lang,$tag)] && [info exists menuUnder($lang,$tag)]} {
    $menu entryconfig $entry -label $menuLabel($lang,$tag) \
        -underline $menuUnder($lang,$tag)
  } else {
    $menu entryconfig $entry -label $menuLabel(E,$tag) \
        -underline $menuUnder(E,$tag)
  }
}

proc setLanguageMenus {{lang ""}} {
  global menuLabel menuUnder oldLang

  if {$lang == ""} {set lang $::language}

  foreach tag {CorrespondenceChess ToolsTraining ToolsTacticalGame ToolsSeriousGame ToolsTrainFics ToolsComp ToolsTrainTactics} {
    configMenuText .menu.play [tr $tag $oldLang] $tag $lang
  }

  foreach tag {TrainCalvar TrainFindBestMove} {
    configMenuText .menu.play.training [tr Tools$tag $oldLang] Tools$tag $lang
  }

  foreach tag { CCConfigure CCConfigRelay CCOpenDB CCRetrieve CCInbox \
        CCSend CCResign CCClaimDraw CCOfferDraw CCAcceptDraw   \
        CCNewMailGame CCMailMove CCGamePage } {
    configMenuText .menu.play.correspondence [tr $tag $oldLang] $tag $lang
  }

  foreach tag {File Edit Game Search Play Windows Tools Options Help} {
    configMenuText .menu [tr $tag $oldLang] $tag $lang
  }

  foreach tag {New Open SavePgn Close Finder Bookmarks Maint ReadOnly Switch Exit} {
    configMenuText .menu.file [tr File$tag $oldLang] File$tag $lang
  }

  # open base as tree was moved from tools to file menus
  foreach tag { ToolsOpenBaseAsTree ToolsOpenRecentBaseAsTree } {
    configMenuText .menu.file [tr $tag $oldLang] $tag $lang
  }

  foreach tag {Win Compact Delete Twin Class Sort Name FixBase} {
    configMenuText .menu.file.utils [tr FileMaint$tag $oldLang] \
        FileMaint$tag $lang
  }
  foreach tag {Editor Player Event Site Round} {
    configMenuText .menu.file.utils.name [tr FileMaintName$tag $oldLang] \
        FileMaintName$tag $lang
  }
  foreach tag {PastePGN Setup CopyBoard CopyPGN PasteBoard Reset Copy Paste Add Delete First Main Trial Strip PasteVar Undo Redo} {
    configMenuText .menu.edit [tr Edit$tag $oldLang] Edit$tag $lang
  }
  foreach tag {Comments Vars Begin End} {
    configMenuText .menu.edit.strip [tr EditStrip$tag $oldLang] \
        EditStrip$tag $lang
  }
  foreach tag {Reset Negate End Material Moves Current Header Using} {
    configMenuText .menu.search [tr Search$tag $oldLang] Search$tag $lang
  }
  
  # These two items still appear in windows menu
  configMenuText .menu.search [tr WindowsPList $oldLang] WindowsPList $lang
  configMenuText .menu.search [tr WindowsTmt $oldLang] WindowsTmt $lang

  foreach tag {Replace Add New First Prev Reload Next Last Random Number Info Browse List
    Deepest GotoMove Novelty} {
    configMenuText .menu.game [tr Game$tag $oldLang] Game$tag $lang
  }

  foreach tag {Gameinfo Comment GList PGN Cross PList Tmt Maint ECO Stats Tree TB Book CorrChess } {
    configMenuText .menu.windows [tr Windows$tag $oldLang] Windows$tag $lang
  }

  foreach tag {Analysis Email FilterGraph AbsFilterGraph OpReport Tracker
    Rating Score ExpCurrent ExpFilter ImportOne ImportFile StartEngine1 StartEngine2 BookTuning
    PInfo PlayerReport ConnectHardware Screenshot} {
    configMenuText .menu.tools [tr Tools$tag $oldLang] Tools$tag $lang
  }

  .menu.tools.pinfo entryconfigure 0 -label $::tr(White)
  .menu.tools.pinfo entryconfigure 1 -label $::tr(Black)
  foreach tag {ToolsExpCurrentPGN ToolsExpCurrentHTML ToolsExpCurrentHTMLJS ToolsExpCurrentLaTeX} {
    configMenuText .menu.tools.exportcurrent [tr $tag $oldLang] $tag $lang
  }
  foreach tag {ToolsExpFilterPGN ToolsExpFilterHTML ToolsExpFilterHTMLJS ToolsExpFilterLaTeX} {
    configMenuText .menu.tools.exportfilter [tr $tag $oldLang] $tag $lang
  }
  foreach tag {Board Colour Toolbar Names Recent Fonts GInfo Fics Moves Startup Language
    Numbers Windows Theme Export ECO Spell Table BooksDir TacticsBasesDir Sounds Save AutoSave} {
    configMenuText .menu.options [tr Options$tag $oldLang] Options$tag $lang
  }

  foreach tag { Configure NovagCitrineConnect InputEngineConnect  } {
    configMenuText .menu.tools.hardware [tr ToolsConnectHardware$tag $oldLang] ToolsConnectHardware$tag $lang
  }

  foreach tag {Regular Menu Small Fixed} {
    configMenuText .menu.options.fonts [tr OptionsFonts$tag $oldLang] \
        OptionsFonts$tag $lang
  }

  foreach tag {HideNext Material FEN Marks Wrap FullComment Photos \
        TBNothing TBResult TBAll Informant} {
    configMenuText .menu.options.ginfo [tr GInfo$tag $oldLang] \
        GInfo$tag $lang
  }
  configMenuText .menu.options.entry [tr OptionsShowVarPopup $oldLang] OptionsShowVarPopup $lang
  # S.A. here's how to fix these f-ing menus. &&&
  foreach tag {Ask Animate Delay Suggest Key Coord Space TranslatePieces HighlightLastMove ShowVarArrows} {
    configMenuText .menu.options.entry [tr OptionsMoves$tag $oldLang] \
        OptionsMoves$tag $lang
  }

  configMenuText .menu.options.fics [tr OptionsWindowsRaise $oldLang] OptionsWindowsRaise $lang
  configMenuText .menu.options.fics [tr OptionsFicsAuto $oldLang] OptionsFicsAuto $lang
  configMenuText .menu.options.fics [tr OptionsFicsClock $oldLang] OptionsFicsClock $lang
  configMenuText .menu.options.fics [tr OptionsSounds $oldLang] OptionsSounds $lang
  # configMenuText .menu.options.fics [tr OptionsFG $oldLang] OptionsFG $lang
  configMenuText .menu.options.fics [tr OptionsColour $oldLang] OptionsColour $lang

  foreach tag { Color Width Display } {
    configMenuText .menu.options.entry.highlightlastmove [tr OptionsMovesHighlightLastMove$tag $oldLang] OptionsMovesHighlightLastMove$tag $lang
  }
  foreach tag {HelpTip HelpStartup WindowsPGN WindowsTree FileFinder \
        WindowsCross WindowsGList WindowsStats WindowsBook} {
    configMenuText .menu.options.startup [tr $tag $oldLang] $tag $lang
  }
  # unhandled FICS

  foreach tag {Iconify Raise Dock} {
    configMenuText .menu.options.windows [tr OptionsWindows$tag $oldLang] \
        OptionsWindows$tag $lang
  }
  if {$::docking::USE_DOCKING} {
    foreach tag {AutoLoadLayout AutoResize SaveLayout RestoreLayout} {
      configMenuText .menu.options.windows [tr OptionsWindows$tag $oldLang] \
          OptionsWindows$tag $lang
    }
  }

  foreach tag {Contents Index Tip Startup About} {
    configMenuText .menu.help [tr Help$tag $oldLang] Help$tag $lang
  }

  # Should sort out what the Delete , Mark menus did.
  # Its' proably tied in with my half-baked Gamelist Widget, and FLAGS
  #  foreach tag {HideNext Material FEN Marks Wrap FullComment Photos TBNothing TBResult TBAll Delete Mark} 

  foreach tag {HideNext Material FEN} {
    configMenuText .main.gameInfo.menu [tr GInfo$tag $oldLang] GInfo$tag $lang
  }

  ::pgn::ConfigMenus
  ::windows::stats::ConfigMenus
  ::tree::ConfigMenus
  ::crosstab::ConfigMenus
  ::optable::ConfigMenus
  ::preport::ConfigMenus

  # Check for duplicate menu underline characters in this language:
  # set ::verifyMenus 1
  if {[info exists ::verifyMenus] && $::verifyMenus} {
    foreach m {file edit game search windows tools options help} {
      set list [checkMenuUnderline .menu.$m]
      if {[llength $list] > 0} {
        puts stderr "Menu $m has duplicate underline letters: $list"
      }
    }
  }
}

# checkMenuUnderline:
#  Given a menu widget, returns a list of all the underline
#  characters that appear more than once.
#
proc checkMenuUnderline {menu} {
  array set found {}
  set duplicates {}
  set last [$menu index last]
  for {set i [$menu cget -tearoff]} {$i <= $last} {incr i} {
    if {[string equal [$menu type $i] "separator"]} {
      continue
    }
    set char [string index [$menu entrycget $i -label] \
        [$menu entrycget $i -underline]]
    set char [string tolower $char]
    if {$char == ""} {
      continue
    }
    if {[info exists found($char)]} {
      lappend duplicates $char
    }
    set found($char) 1
  }
  return $duplicates
}


# standardShortcuts:
#    Sets up a number of standard shortcut keys for the specified window.

proc standardShortcuts {w} {
  if {! [winfo exists $w]} { return }
  bind $w <Control-o> ::file::Open
  bind $w <Control-w> ::file::Close
  bind $w <Control-slash> ::file::finder::Open
  bind $w <Control-m> ::maint::OpenClose
  bind $w <Control-q> ::file::Exit
  bind $w <Control-L> ::game::Reload
  bind $w <Control-g> ::game::GotoMoveNumber
  bind $w <Control-G> ::game::LoadNumber
  bind $w <Control-f> {if {!$tree(refresh)} {toggleRotateBoard}}
  bind $w <Control-B> ::search::board
  bind $w <Control-H> ::search::header
  bind $w <Control-M> ::search::material
  bind $w <Control-KeyPress-U> ::search:::usefile
  bind $w <Control-e> makeCommentWin
  bind $w <Control-b> ::book::OpenClose
  bind $w <Control-l> ::windows::gamelist::OpenClose
  bind $w <Control-d> ::windows::gamelist::OpenClose
  bind $w <Control-p> ::pgn::OpenClose
  bind $w <Control-T> ::tourney::toggle
  bind $w <Control-P> ::plist::toggle
  bind $w <Control-i> ::toggleGameInfo
  bind $w <Control-t> ::tree::OpenClose
  bind $w <Control-A> ::enginelist::choose
  bind $w <Control-X> ::crosstab::OpenClose
  bind $w <Control-E> ::tools::email
  bind $w <Control-O> ::optable::makeReportWin
  # bind $w <Control-R> {::tools::graphs::rating::Refresh both}
  bind $w <Control-Z> ::tools::graphs::score::Toggle
  bind $w <Control-I> importPgnGame

  bind $w <Control-z> {  sc_game undo ; updateBoard -pgn }
  bind $w <Control-y> {  sc_game redo ; updateBoard -pgn }


  # extra generic bindings added for Scid 3.6.24 : hope there is no conflict
  bind $w <Home>  ::move::Start
  bind $w <Up> {
    if {[sc_pos isAt vstart]} {
      .main.button.exitVar invoke
    } else  {
      ::move::Back 10
    }
  }
  bind $w <Left>  { ::move::Back }
  bind $w <Down>  {::move::Forward 10}
  bind $w <Right> ::move::Forward
  bind $w <End>   ::move::End
  bind $w <F2> {::startAnalysisWin F2}
  bind $w <F3> {::startAnalysisWin F3}
  bind $w <F4> {::startAnalysisWin F4}
  # bind $w <Control-c> copyGame
  # bind $w <Control-v> pasteGame
  bind $w <Control-S> ::setupBoard
  bind $w <Control-C> ::copyFEN
  bind $w <Control-V> ::pasteFEN
  bind $w <Control-r> ::gameReplace
  bind $w <Control-s> ::gameAdd

  # doesnt like tcl 8.5.4
  bind $w <F11> {
    if {[wm attributes . -fullscreen]} {
      wm attributes . -fullscreen 0
    } else {
      wm attributes . -fullscreen 1
    }
  }
}

################################################################################
#
################################################################################
proc configInformant {} {
  global informant

  set w .configInformant
  if {[winfo exists $w]} {
    destroy $w
  }

  toplevel $w
  wm state $w withdrawn
  wm title $w $::tr(ConfigureInformant)

  frame $w.main
  frame $w.buttons
  set row 0

  foreach i [lsort [array names informant]] {
    label $w.main.explanation$row -text [ ::tr "Informant[ string trim $i "\""]" ]
    label $w.main.label$row -text [string trim $i {"}]
    spinbox $w.main.value$row -textvariable informant($i) -width 4 -from 0.0 -to 9.9 -increment 0.1 \
        -validate all -vcmd {string is double %P} -justify center
    grid $w.main.explanation$row -row $row -column 0 -sticky w 
    grid $w.main.label$row -row $row -column 1 -sticky w -padx 5 -pady 3
    grid $w.main.value$row -row $row -column 2 -sticky w -padx 5 -pady 3
    incr row
  }

  dialogbutton $w.buttons.defaults -textvar ::tr(Defaults) -command resetInformants
  dialogbutton $w.buttons.help -textvar ::tr(Help) -command {helpWindow Moves Informant}
  dialogbutton $w.buttons.ok -text OK -command "destroy $w"
  pack $w.main $w.buttons -pady 5

  pack $w.buttons.defaults $w.buttons.help -side left -padx 5
  pack $w.buttons.ok  -side right -padx 5

  update
  placeWinOverParent $w .
  wm state $w normal
}

### End of file: menus.tcl

