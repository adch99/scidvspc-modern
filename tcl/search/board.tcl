###
### search/board.tcl: Board (and Moves) Search routines for Scid.
### 

set searchInVars 0
set sBoardIgnoreCols 0
set sBoardSearchType Exact
set checkTest 0
set sMoves {}

# ::search::board
#   Opens the search window for the current board position.
#
proc ::search::board {} {
  global glstart searchInVars sBoardType sBoardIgnoreCols refDatabase

  set w .sb
  if {[winfo exists $w]} {
    wm deiconify $w
    raiseWin $w
    return
  }

  toplevel $w
  wm withdraw $w
  wm title $w "$::tr(BoardSearch)"

  bind $w <Escape> "$w.b.cancel invoke"
  bind $w <Return> "$w.b.search invoke"
  bind $w <F1> { helpWindow Searches Board }

  label $w.type -textvar ::tr(SearchType) -font font_Bold
  pack $w.type -side top
  pack [frame $w.g] -side top -fill x
  radiobutton $w.g.exact -textvar ::tr(SearchBoardExact) \
      -variable sBoardSearchType -value Exact
  radiobutton $w.g.pawns -textvar ::tr(SearchBoardPawns) \
      -variable sBoardSearchType -value Pawns
  radiobutton $w.g.files -textvar ::tr(SearchBoardFiles) \
      -variable sBoardSearchType -value Fyles
  radiobutton $w.g.material -textvar ::tr(SearchBoardAny) \
      -variable sBoardSearchType -value Material
  set row 0
  foreach i {exact pawns files material} {
    grid $w.g.$i -row $row -column 0 -sticky w
    incr row
  }
  addHorizontalRule $w

  pack [frame $w.refdb] -side top -fill x
  checkbutton $w.refdb.cb -textvar ::tr(SearchInRefDatabase) -variable ::searchRefBase \
               -command "checkState ::searchRefBase $w.refdb.lb"

  set found -1
  ttk::combobox $w.refdb.lb -textvariable refDatabase
  if {![info exists refDatabase]} {
    set refDatabase 0
  }

  # Add clipbase to possible bases
  set baseName [file tail [sc_base filename [sc_base count total]]]
  set ::listbases $baseName
  if {$baseName == $refDatabase} {set found 0}

  # and then the rest
  for {set i 1} {$i < [sc_base count total]} {incr i} {
    if {[sc_base inUse $i]} {
      set baseName [file tail [sc_base filename $i]]
      lappend ::listbases $baseName
      if {$baseName == $refDatabase} {set found $i}
    }
  }
  $w.refdb.lb configure -values $::listbases

  if {$found > -1} {
    if {[catch {
      $w.refdb.lb current $found
    }]} {
    # hmmm - still can throw error
    $w.refdb.lb current [expr {[llength $::listbases] - 1}]
    }
  } else {
    $w.refdb.lb current [expr {[llength $::listbases] - 1}]
  }

  checkState ::searchRefBase $w.refdb.lb
  
  pack $w.refdb.cb -side left
  pack $w.refdb.lb -side left -padx 20
  addHorizontalRule $w

  ::search::addFilterOpFrame $w
  addHorizontalRule $w

  ### Progress bar

  canvas $w.progress -height 20 -width 300  -relief solid -border 1
  $w.progress create rectangle 0 0 0 0 -fill $::progcolor -outline $::progcolor -tags bar
  $w.progress create text 295 10 -anchor e -font font_Regular -tags time \
      -fill black -text "0:00 / 0:00"

  frame $w.b2
  pack $w.b2 -side top
  frame $w.b
  checkbutton $w.b2.vars -textvar ::tr(LookInVars) -padx 10 -pady 5 \
      -onvalue 1 -offvalue 0 -variable searchInVars
  checkbutton $w.b2.flip -textvar ::tr(IgnoreColors) -padx 10 -pady 5 \
      -onvalue 1 -offvalue 0 -variable sBoardIgnoreCols

  dialogbutton $w.b.stop -textvar ::tr(Stop) -command sc_progressBar
  $w.b.stop configure -state disabled

  dialogbutton $w.b.search -textvar ::tr(Search) -command {
    busyCursor .
    .sb.b.stop configure -state normal
    grab .sb.b.stop
    sc_progressBar .sb.progress bar 301 21 time

    if { $::searchRefBase } {
      ### Search a particular base rather than the one that is open

      # Find the base number by searching the basenames for a match with combobox variable refDatabase
      set found 0
      set base  9 ; # this line not really needed
      for {set i 1} {$i <= [sc_base count total]} {incr i} {
	if {[sc_base inUse $i]} {
	  if {[file tail [sc_base filename $i]] == $::refDatabase} {
	    set base $i
	    set found 1
	    break
	  }
	}
      }

      if {$found} {
	set str [sc_search board $::search::filter::operation $sBoardSearchType $searchInVars $sBoardIgnoreCols $base]
      } else {
	set str {Database not open}
      }
    } else {
      set str [sc_search board $::search::filter::operation $sBoardSearchType $searchInVars $sBoardIgnoreCols ]
    }

    unbusyCursor .
    grab release .sb.b.stop
    .sb.b.stop configure -state disabled
    .sb.status configure -text $str
    set glstart 1

    set gamesFound [lindex $str 0]
    if { $::searchRefBase && $gamesFound > 0 && $gamesFound != {Database}} {
      ::file::SwitchToBase $base
      ::search::loadFirstGame
    }
    ::windows::stats::Refresh
  }

  dialogbutton $w.b.cancel -textvar ::tr(Close) -command "focus .main ; destroy $w"
  pack $w.b2.vars $w.b2.flip -side left -pady 2 -padx 5
  packbuttons right $w.b.cancel .sb.b.stop .sb.b.search
  label $w.status -text "" -width 1 -font font_Small -relief sunken -anchor w
  pack $w.status -side bottom -fill x
  pack $w.b -side bottom -fill x
  pack $w.progress -side bottom -pady 2
  wm resizable $w 0 0
  standardShortcuts $w
  ::search::Config

  placeWinOverParent $w .
  wm state $w normal
  focus $w.b.search
}

proc ::search::moves {} {

  global glstart sSideToMove checkTest

  set w .sm
  if {[winfo exists $w]} {
    wm deiconify $w
    raiseWin $w
    return
  }

  toplevel $w
  wm withdraw $w
  wm title $w "$::tr(Moves) $::tr(Search)"

  bind $w <Escape> "$w.b.cancel invoke"
  bind $w <Return> "$w.b.search invoke"
  bind $w <F1> { helpWindow Searches Move }

  label $w.type -textvar ::tr(Moves) -font font_Bold
  pack $w.type -side top
  pack [frame $w.g] -side top -fill x
  pack [entry $w.g.moves -textvariable sMoves]

  addHorizontalRule $w

  ### Side to move
  pack [frame $w.ends] -side top -fill x -expand 1
  label $w.ends.label -textvar ::tr(SideToMove) -font font_Bold
  pack $w.ends.label -side top
  pack [frame $w.ends.radio ] -side top 
  radiobutton $w.ends.radio.white -textvar ::tr(White) -variable sSideToMove -value w
  radiobutton $w.ends.radio.black -textvar ::tr(Black) -variable sSideToMove -value b
  radiobutton $w.ends.radio.both -textvar ::tr(Both) -variable sSideToMove -value wb
  pack $w.ends.radio.white $w.ends.radio.black $w.ends.radio.both -side left -padx 15

  addHorizontalRule $w

  ### Check test
  pack [frame $w.mate] -side top -fill x -expand 1
  label $w.mate.label -text {Check Test} -font font_Bold
  pack $w.mate.label -side top
  pack [frame $w.mate.radio ] -side top 

  ### position.h: (These checks take time)
  # (should we do it automaticslly if '+' or '#' are in entry field ?
  # SAN_NO_CHECKTEST = 0, SAN_CHECKTEST  = 1, SAN_MATETEST = 2;
  radiobutton $w.mate.radio.no -textvar ::tr(No) -variable checkTest -value 0
  radiobutton $w.mate.radio.check -text Check -variable checkTest -value 1
  radiobutton $w.mate.radio.mate -text Mate   -variable checkTest -value 2
  pack $w.mate.radio.no $w.mate.radio.check $w.mate.radio.mate -side left -padx 15

  addHorizontalRule $w

  ::search::addFilterOpFrame $w
  addHorizontalRule $w

  ### Progress bar

  canvas $w.progress -height 20 -width 300  -relief solid -border 1
  $w.progress create rectangle 0 0 0 0 -fill $::progcolor -outline $::progcolor -tags bar
  $w.progress create text 295 10 -anchor e -font font_Regular -tags time \
      -fill black -text "0:00 / 0:00"

  frame $w.b
  dialogbutton $w.b.stop -textvar ::tr(Stop) -command sc_progressBar
  $w.b.stop configure -state disabled

  dialogbutton $w.b.search -textvar ::tr(Search) -command {
    # Make a nice clean list of the moves
    set moves {}
    foreach i [.sm.g.moves get] {
      lappend moves $i
    }
    if {$moves == {}} {
      set str {No move(s) specified}
    } else {
      busyCursor .
      .sm.b.stop configure -state normal
      grab .sm.b.stop
      sc_progressBar .sm.progress bar 301 21 time

      ### hmmm - sc_search returns meaningful error results, that get ignored
      ### if we catch them, but grab/cursor dont get released *&^!*
      # catch 

      set str [sc_search moves $::search::filter::operation $moves $checkTest $sSideToMove ]

      unbusyCursor .
      grab release .sm.b.stop
      .sm.b.stop configure -state disabled
      set glstart 1
      ::search::loadFirstGame
      ::windows::stats::Refresh
    }
    .sm.status configure -text $str
  }

  dialogbutton $w.b.cancel -textvar ::tr(Close) -command "focus .main ; destroy $w"
  packbuttons right $w.b.cancel .sm.b.stop .sm.b.search
  label $w.status -text "" -width 1 -font font_Small -relief sunken -anchor w
  pack $w.status -side bottom -fill x
  pack $w.b -side bottom -fill x
  pack $w.progress -side bottom -pady 2
  wm resizable $w 0 0
  ::search::Config

  placeWinOverParent $w .
  wm state $w normal
  focus $w.g.moves
}

set ::search::cqlStripSwitch 0
set ::search::cqlCommentSwitch 0

proc ::search::cql {} {
  global glstart

  set w .scql
  if {[winfo exists $w]} {
    wm deiconify $w
    raiseWin $w
    return
  }

  toplevel $w
  wm withdraw $w
  wm title $w "CQL $::tr(Search)"

  bind $w <Escape> "$w.b.cancel invoke"
  #bind $w <Return> "$w.b.search invoke"
  bind $w <F1> { helpWindow CQL }

  label $w.type -textvar ::tr(CQLLabel) -font font_Bold
  pack $w.type -side top

  pack [frame $w.g] -side top -expand 1 -fill both -padx 2 -pady 1
  text $w.g.syntax -height 12 -width 64 -wrap word -yscrollcommand "$w.g.ybar set" -undo 1 -relief flat

  grid $w.g.syntax -row 0 -column 0 -sticky news
  grid [scrollbar $w.g.ybar -command "$w.g.syntax yview" -takefocus 0] \
    -row 0 -column 1 -sticky news
  grid rowconfig $w.g 0 -weight 1 -minsize 0
  grid columnconfig $w.g 0 -weight 1 -minsize 0

  bind $w.g.syntax <Control-a> {.scql.g.syntax tag add sel 0.0 end-1c ; break}
  bind $w.g.syntax <Control-z> {catch {.scql.g.syntax edit undo} ; break}; # Control-z is default text binding anyway
  bind $w.g.syntax <Control-y> {catch {.scql.g.syntax edit redo} ; break}; # but the others are not
  bind $w.g.syntax <Control-r> {catch {.scql.g.syntax edit redo} ; break}

  addHorizontalRule $w

  pack [frame $w.s] -side top
  label $w.s.strip -font font_Bold -textvar ::tr(CQLStrip)
  radiobutton $w.s.stripyes -text Yes -variable ::search::cqlStripSwitch -value 1
  radiobutton $w.s.stripno  -text No  -variable ::search::cqlStripSwitch -value 0

  label $w.s.comment -font font_Bold -textvar ::tr(CQLComments)
  radiobutton $w.s.commentyes -text Yes -variable ::search::cqlCommentSwitch -value 1 -command checkCQLSearch
  radiobutton $w.s.commentno  -text No  -variable ::search::cqlCommentSwitch -value 0 -command checkCQLSearch
  pack $w.s.comment $w.s.commentyes $w.s.commentno [label $w.s.space -width 5] \
       $w.s.strip   $w.s.stripyes   $w.s.stripno   -side left -pady 1

  addHorizontalRule $w

  ::search::addFilterOpFrame $w
  addHorizontalRule $w

  canvas $w.progress -height 20 -width 300  -relief solid -border 1
  $w.progress create rectangle 0 0 0 0 -fill $::progcolor -outline $::progcolor -tags bar
  $w.progress create text 295 10 -anchor e -font font_Regular -tags time \
      -fill black -text "0:00 / 0:00"

  frame $w.b
  dialogbutton $w.b.stop -textvar ::tr(Stop) -command sc_progressBar
  $w.b.stop configure -state disabled

  dialogbutton $w.b.search -textvar ::tr(Search) -command {
    set confirm [::game::ConfirmDiscard]
    if {$confirm == 2} { return }
    if {$confirm == 0} {
      ::game::Save
    }

    set w .scql

    busyCursor .
    $w.b.stop configure -state normal
    grab $w.b.stop
    sc_progressBar $w.progress bar 301 21 time

    set cqlSyntax [$w.g.syntax get 0.0 end]

    # Only allow CQL commenting for the clipbase
    set allowComments [expr  {([sc_base current] == [sc_info clipbase]) && $::search::cqlCommentSwitch}]

    set err [catch {
      set str [sc_search cql $::search::filter::operation $::search::cqlStripSwitch $allowComments $cqlSyntax]
    } result]

    unbusyCursor .
    grab release $w.b.stop
    $w.b.stop configure -state disabled

    if {$err} {
      tk_messageBox -title "Scid" -type ok -icon warning \
        -message "Fatal error returned from CQL query:\n$result"
      return
    }

    if {[sc_filter count] > 0} {
      set glstart 1
      ::search::loadFirstGame
    } else {
      # current game could be altered
      if {$::search::cqlStripSwitch && $::search::cqlCommentSwitch} {
        ::game::Reload
      }
    }
    ::windows::stats::Refresh

    set index [string first | $str]
    if { $index == -1 } {
      set strStatus $str
      set strDiag {}
    } else {
      set strStatus [string range $str 0 $index-1]
      set strDiag [string range $str $index+1 end]
    }

    $w.status configure -text $strStatus
    $w.diagnostic configure -text $strDiag
  }

  dialogbutton $w.b.cancel -textvar ::tr(Close) -command "focus .main ; destroy $w"
  packbuttons right $w.b.cancel $w.b.stop $w.b.search
  label $w.diagnostic -text "" -width 1 -font font_Small -relief sunken -anchor w
  label $w.status -text "" -width 1 -font font_Small -relief sunken -anchor w
  pack $w.diagnostic -side bottom -fill x
  pack $w.status -side bottom -fill x
  pack $w.b -side bottom -fill x
  pack $w.progress -side bottom -pady 2

  ::search::Config

  checkCQLSearch
  placeWinOverParent $w .
  wm state $w normal
  focus $w.g.syntax
}

proc checkCQLSearch {} {
  set w .scql.s

  if {![winfo exists $w]} {return}

  if {[sc_base current] != [sc_info clipbase]} {
    foreach i {comment commentyes commentno strip stripyes stripno} {
      $w.$i configure -state disabled
    }
  } else {
    foreach i {comment commentyes commentno} {
      $w.$i configure -state normal
    }

    if {$::search::cqlCommentSwitch} {
      set s normal
    } else {
      set s disabled
    }
    foreach i {strip stripyes stripno} {
      $w.$i configure -state $s
    }

  }
}
