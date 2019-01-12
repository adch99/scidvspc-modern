### epd.tcl: EPD editing window(s) for Scid.

# Copyright (C) 2000  Shane Hudson
# Copyright (C) 2007  Pascal Georges
# Copyright (C) 2019  Bonnie A

# Note: Text and listbox widgets should include the option "-exportselection false" 
# else this entire set of code falls apart. (Not to mention interference with other
# applications during annotation.)
#
# Warning:  sc_epd_open() (PBook::ReadFile()) will delete any EPD position that is a
#   duplicate or that has some problem with the FEN string.  Oddly, it does not 
#   check for an illegal castling availibility field, which will likely crash the 
#   analysis engine used for annotation.

namespace eval epd {
  variable maxEpd
  variable delayEpd
  variable stripField {}
  variable epdTimer
  variable selection; # maintains a record of the last actively selected epd line

  set maxEpd [sc_info limit epd]
  set delayEpd 5
  array set epdTimer {}
  array set selection {}

  ################################################################################
  ### Print the call stack to stdout.
  ################################################################################
  proc epdDebug { banner } {
    puts ""
    puts "EPD DEBUG: $banner"

    set i [expr {[info level] - 1}]
    puts "Call Stack:"
    while {$i > 0} {
      puts "\t[info level $i]"
      incr i -1
    } 
    parray ::epd::selection
  }

  ################################################################################
  ### Open up a new EPD window.
  ### The only real benefit of entering from the EPD file menu (with a null filename)
  ### is that we will then use ::initialDir(epd) as a starting point.
  ################################################################################
  proc newEpdWin {cmd {fname ""}} {
    variable maxEpd

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
      return 0
    }

    # id is 1 for first epd window, 2 for second...
    set id $result
    set w .epd$id

    toplevel $w
    wm withdraw $w
    setWinLocation $w
    setWinSize $w

    wm title $w "Scid EPD: [file tail $fname]"
    wm minsize $w 40 1

    frame $w.grid
    text $w.text  -font font_Regular -width 60 -height 8 \
        -wrap none -setgrid 1 -yscrollcommand "$w.ybar set" \
        -xscrollcommand "$w.xbar set" -undo 1 -exportselection false
    scrollbar $w.ybar -takefocus 0 -command "$w.text yview"
    scrollbar $w.xbar -orient horizontal -takefocus 0 -command "$w.text xview"

    label $w.status -width 1 -anchor w -font font_Small -relief sunken

    listbox $w.lb  -font font_Regular -width 60 -height 8 -setgrid 1 -yscrollcommand "$w.ybar2 set" \
        -xscrollcommand "$w.xbar2 set" -selectmode single -exportselection false
    scrollbar $w.ybar2 -takefocus 0 -command "$w.lb yview"
    scrollbar $w.xbar2 -orient horizontal -takefocus 0 -command "$w.lb xview"

    frame $w.menu -borderwidth 3 -relief raised
    pack $w.menu  -side top -fill x
    menubutton $w.menu.file -text File -menu $w.menu.file.m -underline 0
    menubutton $w.menu.edit -text Edit -menu $w.menu.edit.m -underline 0
    menubutton $w.menu.tools -text Tools -menu $w.menu.tools.m -underline 0
    menubutton $w.menu.help -text Help -menu $w.menu.help.m -underline 0

    foreach i {file edit tools help} {
      menu $w.menu.$i.m -tearoff 0
      pack $w.menu.$i -side left
    }
    pack $w.menu.help -side right

    set m $w.menu.file.m
    $m add command -label "New" -underline 0 -command {::epd::newEpdWin create}
    $m add command -label "Open" -underline 0 -command {::epd::newEpdWin open}
    $m add command -label "Save" -underline 0 -command "::epd::saveEpdWin $id"
    $m add command -label "Close" -underline 0 -command "::epd::closeEpdWin $id"
    wm protocol $w WM_DELETE_WINDOW "::epd::closeEpdWin $id"
    bind $w <Destroy> "
      wm protocol $w WM_DELETE_WINDOW {}
      if {\"%W\" == \"$w\"} \"::epd::closeEpdWin $id\"
    "

    set m $w.menu.edit.m
    $m add command -label "Cut" -acc "control-x" -underline 2 -command "tk_textCut $w.text"
    $m add command -label "Copy" -acc "control-c" -underline 0 -command "tk_textCopy $w.text"
    $m add command -label "Paste" -acc "control-v" -underline 4 -command "tk_textPaste $w.text"
    $m add command -label "Select All" -acc "control-a" -underline 2 \
        -command "$w.text tag add sel 0.0 end-1c"
    $m add separator
    $m add command -label "Paste Analysis" -accelerator "control-P" \
        -underline 0 -command "::epd::pasteAnalysis $w.text"
    $m add command -label "Sort Opcodes" -accel "control-S" \
        -underline 0 -command "::epd::sortEpdText $w.text $id"
    $m add command -label "Strip Opcodes" -accel "control-O" \
        -underline 6 -command "::epd::chooseStripField $id"
    $m add command -label "Add Position" -accel "control-A" \
        -underline 0 -command "::epd::addPosition $id"

    set m $w.menu.tools.m
    $m add command -label "Annotate Positions" -underline 9 -command "::epd::annotateEpd $w.text $id"
    $m add command -label "Find Deepest Game Position" -underline 5 -command "::epd::moveToDeepestMatch $id"

    $w.menu.help.m add command -label "EPD Help" -underline 0 -acc "F1" -command "helpWindow EPD"
    $w.menu.help.m add command -label Index -underline 0 -command "helpWindow Index"

    pack $w.status -side bottom -fill x
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
    bind $w <Control-Shift-P> "::epd::pasteAnalysis $w.text"
    bind $w <Control-Shift-S> "::epd::sortEpdText $w.text $id"
    bind $w <Control-Shift-A> "::epd::addPosition $id"
    bind $w <Control-Shift-O> "::epd::chooseStripField $id"
    bind $w <Control-q> "::epd::closeEpdWin $id"


    # the reason for including a break is a complete mystery, but without
    # the break it don't work...
    bind $w.text <Control-a> "$w.text tag add sel 0.0 end-1c; break;"
    bind $w.text <Control-z> "catch \"$w.text edit undo\"; break;"
    bind $w.text <Control-r> "catch \"$w.text edit redo\"; break;"
    bind $w.text <Control-y> "catch \"$w.text edit redo\"; break;"
    #bind $w.text <KeyPress> "set ::epd::keypress($id) true"

    loadEpdLines $id
    updateEpdWin $id

    bind $w.lb <<ListboxSelect>> "::epd::loadEpd $id"
    bind $w <Configure> "recordWinSize $w"

    wm state $w normal
    focus $w.lb

    return 1
  }

  proc isAltered {id} {
    return [expr {[.epd$id.text edit modified] || [sc_epd altered $id]}]
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

      update
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
    if { [.epd$id.text edit modified] } { storeEpdText $id }

    if {[isAltered $id]} {
      if {[sc_epd readonly $id]} {
        tk_messageBox -type ok -icon error -title "Scid: EPD file error" \
          -message "Save failed\nEPD file is read-only."
      } else {
        sc_epd write $id
      }
    }

    updateEpdWin $id
  }


  ################################################################################
  ### Update the EPD window to agree with the EPD internals for the current
  ### board position. Does not update the position listbox.
  ### This proc is also invoked whenever the main board is updated.
  ################################################################################
  proc updateEpdWin {id} {
    set w .epd$id

    # update the text box with EPD opcodes
    $w.text delete 1.0 end
    $w.text insert end [sc_epd get $id]

    # Reset the text window undo stacks between loads
    $w.text edit reset

    # reset the modified flag for all programmatic modifications
    $w.text edit modified false 

    # update the EPD window status bar
    set strStat "[file tail [sc_epd name $id]]  [sc_epd size $id] positions"
    if {[sc_epd readonly $id]} {
      append strStat " ($::tr(readonly))"
    } elseif {[isAltered $id]} {
      append strStat " (modified)"
    }
    set moves [lsort -ascii [sc_epd moves $id]]
    set len [llength $moves]
    if {$len} {
      append strStat "  \[[llength $moves]: [join $moves " "]\]"
    } else {
      append strStat {  [No moves from this position]}
    }
    $w.status configure -text $strStat
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
    set text [.epd$id.text get 1.0 "end-1c"]
    sc_epd set $id $text
  }

  ################################################################################
  ### The listbox selection has changed or we are stepping through with annotation.
  ### First check to see if the text from the previous selection needs updating.
  ### Then load the position for the currently selected EPD line.
  ################################################################################
  proc loadEpd { id } {
    variable selection

    if { [sc_epd size $id] == 0 } { return }

    set w .epd$id

    # If the *user* has modified the text, update the corresponding EPD position
    # (that position is still loaded at this point).
    # The flag is reset whenever the text box is programmatically modified.
    if { [$w.text edit modified] } {
      #puts "text box was modified"
      storeEpdText $id
    }

    set idx [$w.lb curselection]
    #catch { sc_epd load $id $selection($id) $idx }
    sc_epd load $id $selection($id) $idx
    set selection($id) $idx

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
    variable selection

    set w .epd$id

    set size [sc_epd size $id]
    if { $size == 0 } { 
      set selection($id) -1
      return
    }

    for { set i 1 } { $i <= $size } { incr i } {
      sc_epd next $id
      set fen [string range [sc_pos fen] 0 end-4]
      $w.lb insert end "$i    $fen"
    }

    #if {! [catch {sc_epd load $id $size 1}]}
    sc_epd load $id $size 1
    $w.lb selection set 0
    set selection($id) 0
    updateBoard -pgn
  }

  ################################################################################
  ###  Annotate EPD lines given in the listbox.
  ################################################################################
  proc annotateEpd { textwidget id } {
    global analysis

    if {! [winfo exists $textwidget]} { return }

    # choose analysis time
    set y .epdDelay

    toplevel $y
    wm title $y "Scid EPD"
    placeWinOverParent $y .epd$id

    label $y.label -text $::tr(AnnotateTime)
    pack $y.label -side top -pady 5 -padx 5
    spinbox $y.spDelay  -width 8 -textvariable ::epd::delayEpd -from 1 -to 300 -increment 1 -validate all -vcmd {string is int %P}
    pack $y.spDelay -side top -pady 5
    dialogbutton $y.ok -text OK -command "
      destroy $y
      ::epd::launchAnalysis $id $textwidget"
    dialogbutton $y.cancel -text $::tr(Cancel) -command "destroy $y"
    pack $y.ok $y.cancel -side left -padx 3 -pady 5
    focus $y.spDelay
    update ; # or grab will fail
    grab $y

  }

  ################################################################################
  ###  Launch the analysis engine and annotate each EPD line with the analysis.
  ###  Pausing the analysis engine will terminate annotation.
  ###  FIX THIS: The user is expected to be well-behaved (gone for a cup of coffee)
  ###  during annotaion.
  ################################################################################
  proc launchAnalysis {id textwidget} {
    variable delayEpd
    variable epdTimer
    variable selection

    set w .epd$id

    ### we use engine 0 for analysis
    if {! [winfo exists .analysisWin0]} {
      makeAnalysisWin 0
    } else {
      if {!$::analysis(analyzeMode0)} {
        toggleEngineAnalysis 0
      }
    }

    clearOpcodes $id
    set size [sc_epd size $id ]
    set epdTimer($id) 0
    for { set i 0 } { $i < $size } { incr i } {
      $w.lb selection clear $selection($id)
      $w.lb selection set $i
      $w.lb see $i
      loadEpd $id
      after [expr $delayEpd * 1000 ] "set epdTimer($id) 1"
      vwait epdTimer($id)
      pasteAnalysis $textwidget
      storeEpdText $id
      updateEpdWin $id
      if {! [winfo exists .analysisWin0] || !$::analysis(analyzeMode0)} {
        return
      }
    }
    toggleEngineAnalysis 0
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
  proc pasteAnalysis {textwidget} {
    global analysis

    if {! [winfo exists $textwidget]} { return }

    set win -1
    # find an open analysis window
    for {set i 0} {$i < [llength $::engines(list)]} {incr i} {
      if {[winfo exists .analysisWin$i]} {
        set win $i
        break
      }
    }
    if {$win == -1} { return }

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

    # $textwidget insert insert "pv $analysis(moves$win)\n"
    # the following is borrowed from ::uci::formatPV{}
    set fen [sc_pos fen]
    sc_game push
    sc_game startBoard $fen
    catch {sc_move addUCI $analysis(moves$win)} tmp
    set tmp [string trim $tmp]
    sc_game pop
    $textwidget insert insert "pv $tmp\n"
  }

  ################################################################################
  ###  Sort the opcodes in the text widget.
  ################################################################################
  proc sortEpdText {textwidget id} {
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

    if {! [winfo exists .epd$id]} { return }
    set w [toplevel .epdStrip]
    wm title $w "Scid: Strip EPD Opcode"
    placeWinOverParent $w .epd$id
    wm resizable $w false false
    label $w.label -text "Enter the name of the EPD opcode you want\n\
        removed from all positions in this file:"
    entry $w.e -width 10  -textvariable stripField
    pack $w.label $w.e -side top -pady 5 -padx 5
    addHorizontalRule $w
    set b [frame $w.buttons]
    pack $b -side bottom -pady 5
    button $b.ok -text "Strip EPD field" \
        -command "::epd::stripEpdField $id \$stripField"
    button $b.cancel -text $::tr(Cancel) -command "focus .epd$id.lb; destroy $w"
    pack $b.ok $b.cancel -side left -padx 5
    bind $w <Return> "$b.ok invoke"
    bind $w <Escape> "$b.cancel invoke"
    focus .epdStrip.e
    grab .epdStrip
  }

  ################################################################################
  ###  Strip an opcode from all EPD lines.
  ################################################################################
  proc stripEpdField {id field} {
    if {! [winfo exists .epdStrip]} { return }
    if {! [string compare $field ""]} { return }
    set result [sc_epd strip $id $field]
    updateEpdWin $id
    destroy .epdStrip
    update
    tk_messageBox -type ok -icon info -title "Scid: EPD field stripped" \
        -message "Scid found and stripped an EPD field named \"$field\" from\
        $result positions." -parent  .epd$id
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
    # sync the internal pbook state with the current selection
    loadEpd $id
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

    if { $ply != 0 } {
      # get the node list index of the matching position
      set idx [sc_epd index $id]
      #tk_messageBox -type ok -icon info -title "EPD Matching Position" \
          -message "Matched position is at line [expr $idx + 1]."
    }

    return
  }
}

