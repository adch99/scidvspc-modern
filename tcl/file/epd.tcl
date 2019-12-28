### epd.tcl: EPD editing window(s) for Scid.

# Copyright (C) 2000  Shane Hudson
# Copyright (C) 2007  Pascal Georges
# Copyright (C) 2019  Bonnie A
# Copyright (C) 2019  stevenaaus

# Note: Text and listbox widgets should include the option "-exportselection false" 
# else this entire set of code falls apart. (Not to mention interference with other
# applications during annotation.)
#
# Warning:  sc_epd_open() (PBook::ReadFile()) will delete any EPD position that is a
#   duplicate or that has some problem with the FEN string.  Oddly, it does not 
#   check for an illegal castling availibility field, which will likely crash the 
#   analysis engine used for annotation.
#
# Caution:  Updating modifications to the text widget requires that the respective
#   position be loaded on the main board.  When navigating the listbox, we update
#   the internal text before updating the board.  However, when adding a position
#   to the listbox the main board position is necessarily out of sync with a
#   modified text widget.  Therefore we also update the internal text whenever we
#   catch the mouse <Leave>ing the text widget, ensuring that the board position
#   is the correct position.


set epdAnnotation 0

namespace eval epd {
  variable maxEpd
  variable stripField {}
  variable epdTimer
  variable epdEngineName
  variable bestMoves {}
  variable epdNames

  set maxEpd [sc_info limit epd]
  array set epdTimer {}
  array set epdNames {}

  ################################################################################
  ### Print the call stack to stdout.
  ################################################################################
  proc epdDebug { banner } {
    puts "\nEPD DEBUG: $banner"
    puts "Call Stack:"
    for {set i [expr [info level]-1]} {$i > 0} {incr i -1} {
      puts "\t[info level $i]"
    } 
  }

  proc epdFindText {id entry} {
    set lb .epd$id.lb
    set text .epd$id.text
    set find [$entry get]
    set i [$lb curselect]
    set size [$lb size]
    set found 0
    # busyCursor . ; update
    while {[incr i] < $size && !$found} {
      sc_epd load $id $i
      set found [regexp $find [sc_epd get $id]]
    }
    # unbusyCursor .

    if {!$found} {
      set i 0
      # allows us to find matches in entry 0 
    } else {
      incr i -1
    }
    $text tag remove Highlight 1.0 end
    $lb selection clear 0 end
    $lb selection set $i
    event generate $lb <<ListboxSelect>>
    update idletasks
    set found [$text search -regexp -nocase -- $find 0.0]
    if {[ regexp {(.*)\.(.*)} $found t1 line char]} {
      $text see $found
      # find the length of matching text
      regexp -nocase -- $find [$text get $line.0 $line.end] matchVar
      set length [string length $matchVar]
      if {$length < 1} {
	set length 1
      }
      $text tag add Highlight $found $line.[expr $char + $length]
    } else {
      flashEntryBox $entry
    }
  }

  ################################################################################
  ### Open up a new EPD window.
  ### The only real benefit of entering from the EPD file menu (with a null filename)
  ### is that we will then use ::initialDir(epd) as a starting point.
  ################################################################################
  proc newEpdWin {cmd {fname ""}} {
    global tr
    variable maxEpd
    variable epdName

    set showErrors 1
    if {$cmd == "openSilent"} {
      set showErrors 0
      set cmd open
    }
    if {$fname == ""} { set showErrors 1 }

    if {[sc_epd available] < 1} {
      if {$showErrors} {
        tk_messageBox -type ok -icon info -title "Too many EPD files open" \
            -message "You already have $maxEpd EPD files open; close one first."
      }
      return 0
    }

    # skip over this block of code if we enter from the main window file menu
    set new_types { {"EPD files" {".epd"} } }
    set open_types $new_types
    if {[sc_info gzip]} {
      set open_types { {"EPD files" {".epd" ".epd.gz"} } }
    }
    if {$fname == ""} {
      if {! [file isdirectory $::initialDir(epd)] } {
        set ::initialDir(epd) $::env(HOME)
      }
      if {$cmd == "create"} {
        set fname [tk_getSaveFile -initialdir $::initialDir(epd) -filetypes $new_types -title "Create an EPD file"]
      } elseif {$cmd == "open"} {
        set fname [tk_getOpenFile -initialdir $::initialDir(epd) -filetypes $open_types -title "Open an EPD file"]
      } else {
        return 0
      }
    }
    if {$fname == ""} { return 0 }

    # initialize the pbook internals
    if {[catch {sc_epd $cmd $fname} result]} {
      if {$showErrors} {
        tk_messageBox -type ok -icon error -title "Scid: EPD file error" \
            -message $result
      }
      # TODO - Handle case when fname is already open.  Currently, "epd open" fails,
      # causing "return 0" below, and the already open EPD file is removed from recentFiles in file.tcl
      return 0
    }

    # id is 1 for first epd window, 2 for second...
    set id $result
    set w .epd$id
    set epdName($id) [file tail $fname]

    toplevel $w
    wm withdraw $w
    setWinLocation $w
    setWinSize $w

    wm title $w "EPD file: $epdName($id)"
    wm minsize $w 40 1

    frame $w.grid
    text $w.text  -font font_Regular -width 60 -height 8 \
        -wrap none -setgrid 1 -yscrollcommand "$w.ybar set" \
        -xscrollcommand "$w.xbar set" -undo 1 -exportselection false
    $w.text tag configure Highlight -background orange

    scrollbar $w.ybar -takefocus 0 -command "$w.text yview"
    scrollbar $w.xbar -orient horizontal -takefocus 0 -command "$w.text xview"

    frame $w.bottom
    label $w.bottom.status -font font_Small -relief flat
    entry $w.bottom.find -width 10 -font font_Small
    bind  $w.bottom.find <Return> "::epd::epdFindText $id $w.bottom.find"
    pack $w.bottom.status -side left
    pack $w.bottom.find   -side right
    listbox $w.lb  -font font_Regular -width 60 -height 8 -setgrid 1 -yscrollcommand "$w.ybar2 set" \
        -xscrollcommand "$w.xbar2 set" -selectmode single -exportselection false
    scrollbar $w.ybar2 -takefocus 0 -command "$w.lb yview"
    scrollbar $w.xbar2 -orient horizontal -takefocus 0 -command "$w.lb xview"

    menu $w.menu
    $w configure -menu $w.menu

    $w.menu add cascade -label [tr File]  -menu $w.menu.file -underline 0
    $w.menu add cascade -label [tr Tools] -menu $w.menu.tools -underline 0
    $w.menu add cascade -label [tr Help]  -menu $w.menu.help -underline 0

    foreach i {file edit tools help} {
      menu $w.menu.$i
    }

    set m $w.menu.file
    $m add command -label [tr FileNew] -underline 0 -command {::epd::newEpdWin create}
    $m add command -label [tr FileOpen] -underline 0 -command {::epd::newEpdWin open}
    $m add command -label $tr(Save) -acc "control-s" -underline 0 -command "::epd::saveEpdWin $id"
    $m add command -label $tr(Close) -acc "control-w" -underline 0 -command "::epd::closeEpdWin $id"
    wm protocol $w WM_DELETE_WINDOW "::epd::closeEpdWin $id"
    bind $w <Destroy> "
      wm protocol $w WM_DELETE_WINDOW {}
      if {\"%W\" == \"$w\"} \"::epd::closeEpdWin $id\"
    "

    set m $w.menu.tools
    $m add command -label $tr(PasteAnal) -accelerator "control-P" -underline 0 -command "::epd::pasteAnalysis $id"
    $m add command -label $tr(SortOpcodes) -accel "control-S" -underline 0 -command "::epd::sortEpdText $id"
    $m add command -label $tr(AddPosition) -accel "control-A" -underline 0 -command "::epd::addPosition $id"
    $m add command -label $tr(FindPos) -underline 5 -command "::epd::moveToDeepestMatch $id"
    $m add separator

    $m add command -label $tr(AnalPosition) -underline 5 -command "::epd::configAnnotateEpd $id"
    $m add command -label $tr(StripOpcodes) -accel "control-O" -underline 6 -command "::epd::chooseStripField $id"

    $w.menu.help add command -label "EPD [tr Help]" -underline 0 -acc "F1" -command "helpWindow EPD"
    $w.menu.help add command -label [tr HelpIndex] -underline 0 -command "helpWindow Index"

    pack $w.bottom -side bottom -fill x -padx 5 -pady 3
    pack $w.grid -fill both -expand yes
    grid $w.text -in $w.grid -row 0 -column 0 -sticky news
    grid $w.ybar -in $w.grid -row 0 -column 1 -sticky news
    grid $w.xbar -in $w.grid -row 1 -column 0 -sticky news
    grid $w.lb -in $w.grid -row 2 -column 0 -sticky news
    grid $w.ybar2 -in $w.grid -row 2 -column 1 -sticky news
    grid $w.xbar2 -in $w.grid -row 3 -column 0 -sticky news

    grid rowconfig $w.grid 0 -weight 1 -minsize 0
    grid rowconfig $w.grid 2 -weight 2 -minsize 0
    grid columnconfig $w.grid 0 -weight 1 -minsize 0

    # Right-mouse button cut/copy/paste menu:
    menu $w.text.edit -tearoff 0
    $w.text.edit add command -label "Cut"  -command "tk_textCut $w.text"
    $w.text.edit add command -label "Copy" -command "tk_textCopy $w.text"
    $w.text.edit add command -label "Paste" -command "tk_textPaste $w.text"
    bind $w.text <ButtonPress-3> "tk_popup $w.text.edit %X %Y"

    bind $w <F1> { helpWindow EPD }

    bind $w <Control-Down> "::epd::nextEpd $id"
    bind $w <Control-Up> "::epd::prevEpd $id"
    bind $w <Control-P> "::epd::pasteAnalysis $id ; break"
    bind $w <Control-S> "::epd::sortEpdText $id"
    bind $w <Control-A> "::epd::addPosition $id"
    bind $w <Control-O> "::epd::chooseStripField $id"
    bind $w <Control-q> "::epd::closeEpdWin $id"
    bind $w <Control-w> "::epd::closeEpdWin $id"
    bind $w.lb <space> {toggleEngineAnalysis}
    bind $w <Control-s> "
      if {\[$w.text edit modified\]} {::epd::storeEpdText $id}
      ::epd::saveEpdWin $id"

    # 'break's are included to stop additional (identical and sometimes conflicting)
    # bind's from subsequently being handled/executed by parent widgets
    bind $w.text <Control-a> "$w.text tag add sel 0.0 end-1c; break;"
    bind $w.text <Control-z> "catch \"$w.text edit undo\"; break;"
    bind $w.text <Control-r> "catch \"$w.text edit redo\"; break;"
    bind $w.text <Control-y> "catch \"$w.text edit redo\"; break;"

    bind $w.text <Leave> "if {\[$w.text edit modified\]} {::epd::storeEpdText $id}"

    loadEpdLines $id
    updateEpdWin $id

    bind $w.lb <<ListboxSelect>> "::epd::loadEpd $id"
    bind $w <Configure> "recordWinSize $w"

    wm state $w normal
    focus $w.lb

    return 1
  }

  proc isAltered {id} {
    # return [expr {[.epd$id.text edit modified] || [sc_epd altered $id]}]
    return [expr {[sc_epd altered $id]}]
  }

  ### Destroy/Close epd window

  proc closeEpdWin {id} {
    if {![winfo exists .epd$id]} {
      return
    }

    # Catch unsaved epd changes (overkill) - S.A
    if {[isAltered $id] && ![sc_epd readonly $id]} {
      # based on ::game::ConfirmDiscard {}

      set w .confirmEPDExit
      toplevel $w
      wm state $w withdrawn
      wm title $w Scid
      set ::epd::answer 2
      pack [frame $w.top] -side top
      addHorizontalRule $w
      pack [frame $w.bottom] -expand 1 -fill x -side bottom

      label $w.top.txt -text "This EPD file has been altered.\nDo you wish to save it?"
      pack $w.top.txt -padx 5 -pady 5 -side right

      button $w.bottom.b1 -width 10 -text $::tr(Save)     -command {destroy .confirmEPDExit ; set ::epd::answer 0}
      button $w.bottom.b2 -width 10 -text $::tr(DontSave) -command {destroy .confirmEPDExit ; set ::epd::answer 1}
      button $w.bottom.b3 -width 10 -text $::tr(Cancel)   -command {destroy .confirmEPDExit ; set ::epd::answer 2}
      # 0 -> saves then continue
      # 1 -> discard changes and continue
      # 2 -> cancel action
      pack $w.bottom.b1 $w.bottom.b2 $w.bottom.b3 -side left -padx 10 -pady 5

      bind $w <Destroy> {set ::epd::answer 2}
      bind $w <Right> "event generate $w <Tab>"
      bind $w <Left> "event generate $w <Shift-Tab>"

      update idletasks
      placeWinOverParent $w .
      wm state $w normal

      catch { grab $w }

      focus $w.bottom.b2
      vwait ::epd::answer
      if {$::epd::answer == 2} {return}
      if {$::epd::answer == 0} "::epd::saveEpdWin $id"
    }
    bind .epd$id <Destroy> ""
    sc_epd close $id
    focus .main
    destroy .epd$id
  }

  ################################################################################
  ### Save changes to the EPD file.
  ################################################################################
  proc saveEpdWin {id} {
    # in case the last selected EPD line was edited...
    # this is only necessary if somebody later binds, e.g., ctrl-q to close window
    #if { [.epd$id.text edit modified] } { storeEpdText $id }

    if {[sc_epd readonly $id]} {
      tk_messageBox -type ok -icon error -title "EPD file error" \
        -message "Save failed\nEPD file is read-only."
    } else {
      sc_epd write $id
    }

    updateEpdWin $id
  }


  ################################################################################
  ### Update the EPD window to agree with the EPD internals for the current
  ### board position. 
  ### This proc is also invoked whenever the main board is updated.
  ################################################################################
  proc updateEpdWin {id} {
    variable bestMoves
    global epdAnnotateMode epdAnnotation

    set w .epd$id

    # update the text widget with EPD opcodes
    $w.text delete 1.0 end
    set text [sc_epd get $id]
    $w.text insert end $text
    $w.text edit modified false

    # Reset the text window undo stacks between loads
    $w.text edit reset

    if {$epdAnnotation && $epdAnnotateMode} {
      # find bm and am in epd data
      if {[regexp -line bm\ .*\$ $text match]} {
        # Multiple bm's are possible... replace commas with spaces
	set bestMoves [string map {, { }} [string range $match 3 end]]
      } else {
        # opcode "am" is avoid move.
	if {[regexp -line am\ .*\$ $text match]} {
          # Prefix bms with "avoid"
	  set bestMoves "avoid [string map {, { }} [string range $match 3 end]]"
	} else {
          set bestMoves {}
        }
      }
    }

    ### Update the EPD window status bar
    # Too much noise... filename already in the titlebar - S.A
    # set strStat "[file tail [sc_epd name $id]]  [sc_epd size $id] positions"

    if {!$epdAnnotation} {
      set strStat "[sc_epd size $id] $::tr(positions)"

      if {[sc_epd readonly $id]} {
	append strStat " ($::tr(readonly))"
      } elseif {[isAltered $id]} {
	append strStat " ($::tr(altered))"
      }
      set moves [lsort -ascii [sc_epd moves $id]]
      set len [llength $moves]
      if {$len} {
	append strStat "  \[[llength $moves]: [join $moves " "]\]"
      } else {
	append strStat "  \[[tr NoMoves]\]"
      }
      $w.bottom.status configure -text $strStat
    }

    updateEpdListbox $id
  }

  # Why have we never updated the listbox position - S.A.
  # Because <sc_epd index> had not been implemented...

  proc updateEpdListbox {id} {
    set w .epd$id

    ### Get the node list index of the matching position
    # returns -1 for no match
    set idx [sc_epd index $id]

    $w.lb selection clear 0 end
    $w.lb selection set $idx
    $w.lb see $idx
  }

  ################################################################################
  ### Invoked from updateBoard3{} in main.tcl.
  ################################################################################
  proc updateEpdWins {} {
    variable maxEpd
    for {set i 1} {$i <= $maxEpd} {incr i} {
      if {[winfo exists .epd$i]} { updateEpdWin $i }
    }
  }

  ################################################################################
  ### Saves the text for a single EPD line.
  ################################################################################
  proc storeEpdText {id} {
    set w .epd$id

    $w.text edit modified false

    # there are some edge cases and we don't want to be adding spurious
    # positions to the node list...
    if { ! [sc_epd exists $id] } { return }

    set text [$w.text get 1.0 "end-1c"]
    sc_epd set $id $text
  }

  ################################################################################
  ### The listbox selection has changed or we are stepping through with annotation.
  ### First check to see if the text from the previous selection needs updating.
  ### Then load the position for the currently selected EPD line.
  ################################################################################
  proc loadEpd { id } {
    if { [sc_epd size $id] == 0 } { return }

    set w .epd$id

    # This is necessary in case the user navigates the listbox (<Control-Up>)
    # without <Leave>ing the text widget.
    if { [$w.text edit modified] } { storeEpdText $id }

    set idx [$w.lb curselection]
    sc_epd load $id $idx

    if { [::board::opponentColor] == [sc_pos side] } { ::board::flip .main.board }
    updateBoard -pgn
  }

  ################################################################################
  ###  Move the EPD selection up one line.
  ################################################################################
  proc prevEpd {id} {
    if { [sc_epd size $id] == 0 } { return }
    set w .epd$id
    set idx [$w.lb curselection]
    if { $idx == "" } { set idx [sc_epd size $id] }
    if {$idx > 0} {
      incr idx -1
      $w.lb selection clear 0 end
      $w.lb selection set $idx
      $w.lb see $idx
      loadEpd $id
    }
  }

  ################################################################################
  ###  Move the EPD selection down one line.
  ################################################################################
  proc nextEpd {id} {
    if { [sc_epd size $id] == 0 } { return }
    set w .epd$id
    set idx [$w.lb curselection]
    if { $idx == "" } { set idx -1 }
    if {$idx < [ expr [$w.lb index end] - 1 ]} {
      incr idx 1
      $w.lb selection clear 0 end
      $w.lb selection set $idx
      $w.lb see $idx
      loadEpd $id
    }
  }

  ################################################################################
  ###  Load up the listbox with EPD FEN strings.
  ###  This proc only works if the file has just been opened.
  ################################################################################
  proc loadEpdLines { id } {
    set w .epd$id

    set size [sc_epd size $id]
    if { $size == 0 } { return }

    for { set i 1 } { $i <= $size } { incr i } {
      sc_epd next $id
      set fen [string range [sc_pos fen] 0 end-4]
      $w.lb insert end "$i    $fen"
    }

    sc_epd load $id 0
    $w.lb selection set 0
    updateBoard -pgn
  }

  proc configAnnotateEpd {id} {
    global analysis engines epdAnnotateMode tr

    if {! [winfo exists .epd$id.text]} { return }

    # choose analysis time
    set w .epdAnnotateConfig

    toplevel $w
    wm title $w "Analyze EPD"
    placeWinOverParent $w .epd$id

    frame $w.seconds
    frame $w.engine
    frame $w.mode

    label $w.seconds.label -text $tr(AnnotateTime)
    spinbox $w.seconds.spDelay  -width 8 -textvariable ::epdDelay -from 1 -to 300 -increment 1 -validate all -vcmd {string is int %P}

    set values {}
    foreach e $engines(list) {
      lappend values [lindex $e 0]
    }

    ttk::combobox  $w.engine.combo -width 20 -state readonly -values $values
    # Todo - restore previous engine 
    $w.engine.combo current 0
    label $w.engine.label -textvar tr(Engine)

    radiobutton $w.mode.tally -variable epdAnnotateMode -value 1 -text $tr(CountBestMoves)
    radiobutton $w.mode.annot -variable epdAnnotateMode -value 0 -text $tr(Annotate)
    radiobutton $w.mode.both  -variable epdAnnotateMode -value 2 -text $tr(Both)

    pack $w.engine $w.seconds $w.mode -side top -pady 5 -padx 5

    pack $w.engine.label $w.engine.combo     -side left -fill x -padx 5
    pack $w.seconds.label $w.seconds.spDelay -side left -fill x -padx 5
    pack $w.mode.tally $w.mode.annot $w.mode.both -side left -fill x -padx 3

    frame $w.buttons
    dialogbutton $w.buttons.ok -text OK -command "
      set i \[$w.engine.combo current\]
      set isUCI \[lindex \[lindex \$engines(list) \$i\] 7\]
      if {!\$isUCI} {
        tk_messageBox -type ok -icon info -title Oops -message {Only UCI engines supported} -parent .epdAnnotateConfig
        return
      }
      set name \[$w.engine.combo get\]
      destroy $w
      update
      ::epd::launchAnnotateEpd $id \$i \$name
    "
    dialogbutton $w.buttons.cancel -text $tr(Cancel) -command "destroy $w"
    pack $w.buttons -side bottom -padx 5 -pady 5
    pack $w.buttons.ok $w.buttons.cancel -side left -padx 10
    bind $w <F1> { helpWindow EPD }
    bind $w <Escape> "$w.buttons.cancel invoke"
  }

  ###  Launch the analysis engine and annotate each EPD starting from the top
  ###  Pausing analysis engine will terminate annotation.

  proc launchAnnotateEpd {id win name} {
    variable epdTimer
    variable epdEngineName
    variable bestPV
    variable bestMoves
    global epdAnnotateMode epdAnnotation epdDelay

    set w .epd$id
    set epdEngineName [string map {{ } _} $name]

    set epdAnnotation 1
    $w.bottom.status configure -text "Analyzing with $epdEngineName ($epdDelay secs/move)"
    update

    if {$epdAnnotateMode != 1} {
      # only clear codes if not just keeping counting bestmoves
      clearOpcodes $id
    }

    if {! [winfo exists .analysisWin$win]} {
      makeAnalysisWin $win
    } else {
      if {!$::analysis(analyzeMode$win)} {
        toggleEngineAnalysis $win
      }
    }

    set size [sc_epd size $id ]
    set epdTimer($id) 0

    # Tally correct/best moves
    set bestMovesFound 0
    set bestMovesNoted 0

    for { set i 0 } { $i < $size } { incr i } {
      $w.lb selection clear 0 end
      $w.lb selection set $i
      $w.lb see $i
      # ok ?
      update idletasks
      loadEpd $id
      after [expr $epdDelay * 1000 ] "set epdTimer($id) 1"
      vwait epdTimer($id)

      if {$epdAnnotateMode > 0} {
        # find Best PV. (bestMoves is updated in updateEpdWin)
        # TODO xboard
        set status no-result
        set bestPV [lindex $::analysis(lastHistory$win) 0]
        if {$bestMoves != ""} {
          incr bestMovesNoted
          if {[string match avoid* $bestMoves]} {
            # Avoid moves
            set bestMoves [string range $bestMoves 6 end] 
            if {[lsearch -exact $bestMoves $bestPV] == -1} {
              incr bestMovesFound
              set status success
            } else {
              set status fail
            }
          } else {
            if {[lsearch -exact $bestMoves $bestPV] > -1} {
              incr bestMovesFound
              set status success
            } else {
              set status fail
            }
          }
        }
      }
      if {$epdAnnotateMode != 1} {
        pasteAnalysis $id $win $status
        storeEpdText $id
        updateEpdWin $id
      }

      # Check analysis window has not been destroyed/paused
      if {! [winfo exists .analysisWin$win] || !$::analysis(analyzeMode$win)} {
        break
      }
    }

    if {$::analysis(analyzeMode$win)} {
      toggleEngineAnalysis $win
    }

    if {$epdAnnotation && $epdAnnotateMode > 0} {
      set result "Result $epdEngineName ($epdDelay secs/move): Best moves found $bestMovesFound / $bestMovesNoted"
      puts $result
      $w.bottom.status configure -text $result
      if {$epdAnnotateMode == 2} {
	$w.text insert end "\n$result"
      }
      set epdAnnotation 0
    }
  }

  ################################################################################
  ###  Strips all opcodes that will be pasted during annotation.
  ###  See pasteAnalysis{} below.
  ################################################################################
  proc clearOpcodes {id} {
    foreach opcode { "acd" "acn" "ce" "dm" "pv" } {
      set result [sc_epd strip $id $opcode]
      updateEpdWin $id
    }
  }

  ################################################################################
  ###  Annotate a single (current) EPD line in compliance with the EPD spec.
  ################################################################################
  proc pasteAnalysis {id {win -1} {status {}}} {
    variable epdEngineName
    global analysis

    set textwidget .epd$id.text
    if {! [winfo exists $textwidget]} { return }

    if {$win == -1} {
      # find an open analysis window
      for {set i 0} {$i < [llength $::engines(list)]} {incr i} {
	if {[winfo exists .analysisWin$i]} {
	  set win $i
	  break
	}
      }
    }
    if {$win == -1} { return }

    # Delete current opcodes "acd" "acn" "ce" "dm" "pv"
    set text [$textwidget get 1.0 end]
    $textwidget delete 1.0 end
    set lines [split $text "\n"]
    foreach line $lines {
      if {[string trim $line] == ""} {
        continue
      }
      if {![regexp {^acd\ |^acn\ |^ce\ |^dm\ |^pv\ } $line]} {
        $textwidget insert end $line\n
      }
    }

    $textwidget insert insert "acd $analysis(depth$win)\n"
    $textwidget insert insert "acn $analysis(nodesraw$win)\n"
    set dm [expr abs($analysis(scoremate$win))]
    if { $dm != 0 } {
      # generate a mate score that agrees with the EPD spec
      set ce [expr  {32767 - ((2 * $dm) - 1)}]
    } else {
      set ce [expr {int($analysis(score$win) * 100)} ]
      if {[sc_pos side] == "black"} { set ce [expr {0 - $ce} ] }
    }
    $textwidget insert insert "ce $ce\n"
    $textwidget insert insert "dm $dm\n"
    $textwidget insert insert "pv $analysis(lastHistory$win)\n"
    if {$::epdAnnotateMode == 2 && $status != {}} {
      $textwidget insert insert "$epdEngineName $status"
    }
  }

  ################################################################################
  ###  Sort the opcodes in the text widget.
  ################################################################################
  proc sortEpdText {id} {
    set textwidget .epd$id.text
    if {! [winfo exists $textwidget]} { return }
    set text [$textwidget get 1.0 "end-1c"]
    set fieldlist [split $text "\n"]
    set sortedlist [lsort $fieldlist]
    set newtext {}
    foreach i $sortedlist {
      if {$i != ""} {
        append newtext "$i\n"
      }
    }
    if {! [string compare $text $newtext]} { return }
    $textwidget delete 1.0 end
    $textwidget insert end "$newtext"
    storeEpdText $id
  }

  ################################################################################
  ###  Launch the strip window.
  ################################################################################
  proc chooseStripField {id} {
    variable stripField
    variable epdName

    if {! [winfo exists .epd$id]} { return }
    set w [toplevel .epdStrip]
    wm title $w "Strip EPD Opcode"
    placeWinOverParent $w .epd$id
    wm resizable $w false false
    label $w.label -text "EPD opcode to be removed from $epdName($id)"
    entry $w.e -width 10  -textvariable stripField
    pack $w.label $w.e -side top -pady 5 -padx 5
    addHorizontalRule $w
    set b [frame $w.buttons]
    pack $b -side bottom -pady 5
    button $b.ok -text "Strip EPD field" -command "
      destroy $w
      ::epd::stripEpdField $id \$stripField
    "
    button $b.cancel -text $::tr(Cancel) -command "
      destroy $w
      focus .epd$id.lb
    "
    pack $b.ok $b.cancel -side left -padx 5
    bind $w <Return> "$b.ok invoke"
    bind $w <Escape> "$b.cancel invoke"
    bind $w <F1> { helpWindow EPD }
    focus $w.e
  }

  ################################################################################
  ###  Strip an opcode from all EPD lines.
  ################################################################################
  proc stripEpdField {id field} {
    if {$field == ""} {return}
    set result [sc_epd strip $id $field]
    updateEpdWin $id
    tk_messageBox -type ok -icon info -title "Scid: EPD field stripped" \
        -message "Scid stripped EPD field \"$field\" from $result positions." -parent .epd$id
  }

  ################################################################################
  ###  Add the current board position to the list of EPD positions and update 
  ###  the listbox.  We cannot add a position that already exists, but will set the
  ###  listbox selection to the existing position.
  ################################################################################
  proc addPosition {id} {
    set w .epd$id

    # does the current position already exist?
    if {[sc_epd exists $id]} { 
      # get the node list index of the existing position
      set idx [sc_epd index $id]
      #tk_messageBox -type ok -icon info -title "Position Already Exists" \
          -message "The position already exists at line [expr $idx + 1]."
    } else {
      # add the position internally...
      sc_epd set $id ""
      # ... and to the listbox
      set size [sc_epd size $id]
      set fen [string range [sc_pos fen] 0 end-4]
      $w.lb insert end "$size    $fen"
      set idx [expr $size - 1]
    }
    # set the listbox selection to the added or existing position
    $w.lb selection clear 0 end
    $w.lb selection set $idx
    $w.lb see $idx

    # update the status bar
    updateEpdWin $id
  }

  ################################################################################
  ###  Update the board to the deepest ply in the current game that matches
  ###  a position in the current EPD file.
  ################################################################################
  proc moveToDeepestMatch {id} {
    set w .epd$id

    set ply [sc_epd deepest $id]
    sc_move ply $ply
    updateBoard

  }
}

