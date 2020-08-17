### tree.tcl

### (C) 2007 Pascal Georges : multiple Tree windows support
### Originally authored by Shane Hudson. All Mask features by Pascal Georges [S.A.]
### Three coloured bar graphs , mask fixes and other code by Stevenaaus

set ::tree::trainingBase 0
array set ::tree::cachesize {}

proc ::tree::doConfigMenus { baseNumber  { lang "" } } {
  if {! [winfo exists .treeWin$baseNumber]} { return }
  if {$lang == ""} { set lang $::language }
  set m .treeWin$baseNumber.menu
  foreach idx {0 1 2 3 4} tag {File Mask Sort Opt Help} {
    configMenuText $m $idx Tree$tag $lang
  }
  foreach idx {0 1 2 3 4 6 8 10} tag {Save Fill FillWithBase FillWithGame CacheInfo Best Copy Close} {
    configMenuText $m.file $idx TreeFile$tag $lang
  }
  foreach idx {0 1 2 3 4 6 7 8 9 10} tag {New Open OpenRecent Save Close Display Search FillWithLine FillWithGame FillWithBase} {
    configMenuText $m.mask $idx TreeMask$tag $lang
  }
  foreach idx {0 1 2 3} tag {Alpha ECO Freq Score } {
    configMenuText $m.sort $idx TreeSort$tag $lang
  }
  foreach idx {1 2 4 5 6 7 9 10 11 13 14 15} tag {Lock Training SortBest Short ShowBar ShowFrame Automask Autosave CacheSize Slowmode Fastmode FastAndSlowmode} {
    configMenuText $m.opt $idx TreeOpt$tag $lang
  }
  $m.opt entryconfig 8 -label "[tr Auto]-[tr TreeAdjust]"
  
  foreach idx {0 1} tag {Tree Index} {
    configMenuText $m.help $idx TreeHelp$tag $lang
  }
}


proc ::tree::ConfigMenus { { lang "" } } {
  for {set i 1 } {$i <= [sc_base count total]} {incr i} {
    ::tree::doConfigMenus $i $lang
  }
}

proc ::tree::menuCopyToSelection { baseNumber } {
  setClipboard [.treeWin$baseNumber.f.tl get 1.0 end]
}

proc ::tree::treeFileSave {base} {
  if {[catch {sc_tree write $base} result]} {
    tk_messageBox -type ok -icon warning -title "Scid: Error writing file" -message $result -parent .treeWin$base
  }
}

proc ::tree::Open {{baseNumber 0}} {
  global tree helpMessage

  if {!$baseNumber} {
    set baseNumber [sc_base current]
  }
  set w .treeWin$baseNumber

  if {[winfo exists $w]} {
    raiseWin $w
    return
  }

  set tree(base$baseNumber) $baseNumber
  set tree(adjustfilter$baseNumber) $::tree::autoAdjust

  ::createToplevel $w
  setWinLocation $w
  setWinSize $w

  ::setTitle $w "[lindex "[tr WindowsTree]" 0] \[[file tail [sc_base filename $baseNumber]]\]"

  if {$::tree::sortBest} {
    set tree(sortBest$baseNumber) Best
  } else {
    set tree(sortBest$baseNumber) Order
  }
  ### The number of bestgames to display is not configurable anymore (except here) S.A.
  foreach {i j} {
    training	0
    autorefresh	1
    locked	0
    status	""
    bestMax	100 
    order	frequency
    bestRes	All
  } {
   set tree($i$baseNumber) $j
  }
  trace variable tree(bestMax$baseNumber) w "::tree::doTrace bestMax"
  trace variable tree(bestRes$baseNumber) w "::tree::doTrace bestRes"
  trace variable tree(sortBest$baseNumber) w "::tree::doTrace sortBest"

  ### todo: fix this properly
  # Destroy is handled by "bind $w.f.tl <Destroy>"
  # as $w.f.tl.g (bar graph in text window) is generating Destroy(s)

  bind $w <F1> {helpWindow Tree}
  bind $w <Escape> "
     if {!\[::tree::hideCtxtMenu $baseNumber\]} {
      $w.buttons.close invoke
     }"

  # Bind left button to close ctxt menu:
  bind $w <ButtonPress-1> "::tree::hideCtxtMenu $baseNumber"
  bindWheeltoFixed $w

  standardShortcuts $w

  menu $w.menu
  ::setMenu $w $w.menu
  $w.menu add cascade -label TreeFile -menu $w.menu.file
  $w.menu add cascade -label TreeMask -menu $w.menu.mask
  $w.menu add cascade -label TreeSort -menu $w.menu.sort
  $w.menu add cascade -label TreeOpt  -menu $w.menu.opt
  $w.menu add cascade -label TreeHelp -menu $w.menu.help
  foreach i {file mask sort opt help} {
    menu $w.menu.$i
  }
  $w.menu.opt configure -tearoff 1


  $w.menu.file add command -label TreeFileSave -command "::tree::treeFileSave $baseNumber"
  $w.menu.file add command -label TreeFileFill -command "::tree::prime $baseNumber"
  $w.menu.file add command -label TreeFileFillWithBase -command "::tree::primeWithBase $baseNumber"
  $w.menu.file add command -label TreeFileFillWithGame -command "::tree::primeWithGame"

  $w.menu.file add command -label TreeFileCacheInfo -command "::tree::getCacheInfo $baseNumber"

  $w.menu.file add separator

  $w.menu.file add command -label TreeFileBest -command "::tree::best $baseNumber"

  $w.menu.file add separator

  $w.menu.file add command -label TreeFileCopy -command "::tree::menuCopyToSelection $baseNumber"

  $w.menu.file add separator

  $w.menu.file add command -label TreeFileClose -command ".treeWin$baseNumber.buttons.close invoke"
  $w.menu.mask add command -label TreeMaskNew -command "::tree::mask::new $w"
  $w.menu.mask add command -label TreeMaskOpen -command "::tree::mask::open {} $w"

  menu $w.menu.mask.recent
  foreach f $::tree::mask::recentMask {
    $w.menu.mask.recent add command -label $f -command [list ::tree::mask::open $f $w]
  }
  $w.menu.mask add cascade -label TreeMaskOpenRecent -menu $w.menu.mask.recent
  $w.menu.mask add command -label TreeMaskSave -command "::tree::mask::save"
  $w.menu.mask add command -label TreeMaskClose -command "::tree::mask::close $w"
  $w.menu.mask add separator
  $w.menu.mask add command -label TreeMaskDisplay -command "::tree::mask::displayMask"
  $w.menu.mask add command -label TreeMaskSearch -command "::tree::mask::searchMask $baseNumber"
  $w.menu.mask add command -label TreeMaskFillWithLine -command "::tree::mask::fillWithLine"
  $w.menu.mask add command -label TreeMaskFillWithGame -command "::tree::mask::fillWithGame"
  $w.menu.mask add command -label TreeMaskFillWithBase -command "::tree::mask::fillWithBase $baseNumber"
  $w.menu.mask add command -label Help -command {helpWindow TreeMasks}

  foreach {label value} {
    Alpha alpha
    ECO   eco
    Freq  frequency
    Score score
  } {
    $w.menu.sort add radiobutton -label TreeSort$label \
        -variable tree(order$baseNumber) -value $value -command " ::tree::refresh $baseNumber "
  }

  $w.menu.opt add checkbutton -label TreeOptLock -variable tree(locked$baseNumber) \
      -command "::tree::toggleLock $baseNumber"
  $w.menu.opt add checkbutton -label TreeOptTraining -variable tree(training$baseNumber) -command "::tree::refreshTraining $baseNumber"
  $w.menu.opt add separator
  $w.menu.opt add checkbutton -label TreeOptSortBest -variable ::tree::sortBest
  $w.menu.opt add checkbutton -label TreeOptShort   -variable ::tree::short   -command ::tree::refresh
  $w.menu.opt add checkbutton -label TreeOptShowBar -variable ::tree::showBar -command {
    for {set i 1} {$i <= [sc_base count total]} {incr i} {
      if {[winfo exists .treeWin$i]} {
	set w .treeWin$i
	if {$::tree::showBar} {
	  pack $w.progress -side bottom -pady 1 -before $w.f
	} else {
	  pack forget $w.progress
	}
      }
    }
  }
  $w.menu.opt add checkbutton -label TreeOptShowFrame -variable ::tree::showFrame -command {
    for {set i 1} {$i <= [sc_base count total]} {incr i} {
      if {[winfo exists .treeWin$i]} {
	set w .treeWin$i
	if {$::tree::showFrame} {
	  if {[catch {pack $w.buttons -side bottom -fill x -pady 2 -before $w.progress}]} {
	    pack $w.buttons -side bottom -fill x -pady 1 -before $w.f
          }
	} else {
	  pack forget $w.buttons
	}
      }
    }
  }
  $w.menu.opt add checkbutton -label TreeAdjust -variable ::tree::autoAdjust
  $w.menu.opt add checkbutton -label TreeOptAutomask -variable ::tree::mask::autoLoadMask
  $w.menu.opt add checkbutton -label TreeOptAutosave -variable ::tree::autoSave
  $w.menu.opt add cascade -menu $w.menu.opt.size -label TreeOptCacheSize

  menu $w.menu.opt.size
  foreach i { 250 500 1000 2000 5000 10000 } {
    $w.menu.opt.size add radiobutton -label $i -value $i -variable ::tree::cachesize($baseNumber) \
                                     -command "::tree::setCacheSize $baseNumber $i"
  }

  $w.menu.opt add separator

  $w.menu.opt add radiobutton -label TreeOptSlowmode -value 0 -variable tree(fastmode$baseNumber)
  $w.menu.opt add radiobutton -label TreeOptFastmode -value 1 -variable tree(fastmode$baseNumber)
  $w.menu.opt add radiobutton -label TreeOptFastAndSlowmode -value 2 -variable tree(fastmode$baseNumber)
  set tree(fastmode$baseNumber) 0
  $w.menu.help add command -label TreeHelpTree -accelerator F1 -command {helpWindow Tree}
  $w.menu.help add command -label TreeHelpIndex -command {helpWindow Index}

  ::tree::doConfigMenus $baseNumber

  # Main move widget
  autoscrollframe $w.f text $w.f.tl -wrap none -font font_Fixed -setgrid 1 -exportselection 1 -height 5

  # default tags
  $w.f.tl tag configure greybg -background #fa1cfa1cfa1c
  $w.f.tl tag configure whitebg 
  $w.f.tl tag configure bluefg -foreground blue
  $w.f.tl tag configure movefg -foreground purple2
  $w.f.tl tag configure nextmove -background $::rowcolor
  #   $w.f.tl tag configure nextmove -foreground seagreen3

  canvas $w.progress -width 250 -height 15  -relief solid -border 1
  $w.progress create rectangle 0 0 0 0 -fill $::progcolor -outline $::progcolor -tags bar
  selection handle $w.f.tl "::tree::copyToSelection $baseNumber"

  bind $w.f.tl <Destroy> {
    set basenum ""
    set win [winfo toplevel %W]
    scan $win .treeWin%%d basenum
    if {[string is integer -strict $basenum]} {
      ::tree::closeTree $tree(base$basenum)
    }
    if {[winfo exists $win.ctxtMenu]} {destroy $win.ctxtMenu}
    if {[winfo exists .tooltip]} {wm withdraw .tooltip}
  }

  # middle button toggles buttonbar
  bind $w.f.tl <Button-2> "$w.menu.opt invoke \"[tr TreeOptShowFrame]\""

  bind $w <Configure> "recordWinSize $w"

  ### Tree statusbar now unused
  # label $w.status -width 1 -anchor w -font font_Small -relief sunken -textvar tree(status$baseNumber)
  # pack $w.status -side bottom -fill x

  frame $w.buttons -relief sunken
  if {$::tree::showFrame} {
    pack $w.buttons -side bottom -fill x -pady 1
  }
  if {$::tree::showBar} {
    pack $w.progress -side bottom -pady 1
  }
  pack $w.f -side top -expand 1 -fill both

  button $w.buttons.best -image b_list -command "::tree::toggleBest $baseNumber"
  ::utils::tooltip::Set $w.buttons.best [tr TreeFileBest]

  button $w.buttons.training -image tb_training -command "::tree::toggleTraining $baseNumber"
  ::utils::tooltip::Set $w.buttons.training [tr TreeOptTraining]

  button $w.buttons.short -image tb_info -command "$w.menu.opt invoke 5" ; # TreeOptShort
  ::utils::tooltip::Set $w.buttons.short [tr TreeOptShort]

  set helpMessage($w.buttons.best) TreeFileBest
  set helpMessage($w.buttons.training) TreeOptTraining
  set helpMessage($w.buttons.short) TreeOptTraining

  checkbutton $w.buttons.refresh -text [tr FICSRefresh] -font font_Small \
      -variable tree(autorefresh$baseNumber) -command "::tree::toggleRefresh $baseNumber" 
  checkbutton $w.buttons.adjust -text [tr TreeAdjust] -font font_Small \
      -variable tree(adjustfilter$baseNumber) -command "::tree::toggleAdjust $baseNumber"

  button $w.buttons.close -textvar ::tr(Close) -font font_Small -command "destroy $w"

  pack $w.buttons.best $w.buttons.training $w.buttons.short $w.buttons.refresh $w.buttons.adjust -side left -padx 1

  pack $w.buttons.close -side right -padx 3

  wm minsize $w 40 5

  ### Now caught by <Destroy> above
  # wm protocol $w WM_DELETE_WINDOW ".treeWin$baseNumber.buttons.close invoke"

  ### Autoload Mask if desired
  set mask [lindex $::tree::mask::recentMask 0]
  if {$::tree::mask::autoLoadMask && $::tree::mask::maskFile == {} && $mask != {}} {
    # Using 'autoLoad' for parent, skips interactive error dialog
    ::tree::mask::open $mask autoLoad
  } else {
    ::tree::refresh $baseNumber
  }
  set ::tree::cachesize($baseNumber) [lindex [sc_tree cacheinfo $baseNumber] 1]
}

################################################################################
proc ::tree::hideCtxtMenu { baseNumber } {
  set w .treeWin$baseNumber.f.tl.ctxtMenu
  if {[winfo exists $w]} {
    destroy $w
    focus .treeWin$baseNumber
    return 1
  } else {
    return 0
  }
}
################################################################################
proc ::tree::selectCallback { baseNumber move } {

  if { $::tree(refresh) } {
    return
  }

  if {$::tree(autorefresh$baseNumber)} {
    tree::select $move $baseNumber
  }
}


proc ::tree::closeTree {baseNumber} {
  global tree
  wm protocol .treeWin$baseNumber WM_DELETE_WINDOW {}
  sc_tree search -cancel all

  # Hack to stop rare coredump (closing tree2 when base2 is not open and base1 is)
  if {![sc_base inUse $baseNumber]} {
    sc_base switch clipbase
    refreshWindows
    updateBoard -pgn
  }
  ::tree::mask::close .treeWin$baseNumber
  # needs closing explicitly if based open as tree and bestgames is open
  if {[winfo exists .treeBest$baseNumber]} {
    destroy .treeBest$baseNumber
  }

  ::tree::hideCtxtMenu $baseNumber

  # reset progress bar ?
  sc_progressBar

  trace remove variable tree(bestMax$baseNumber) write "::tree::doTrace bestMax"
  trace remove variable tree(bestRes$baseNumber) write "::tree::doTrace bestRes"
  trace remove variable tree(sortBest$baseNumber) write "::tree::doTrace sortBest"

  set ::geometry(treeWin$baseNumber) [wm geometry .treeWin$baseNumber]

  if {$::tree::autoSave} {
    busyCursor .
    catch { sc_tree write $tree(base$baseNumber) } ; # necessary as it will be triggered twice
    unbusyCursor .
  }

  # Will fail and force proc exit when Scid quit triggers closeTree
  focus .main

  sc_tree clean $baseNumber
  if {$::tree(locked$baseNumber)} {
    ::file::Close $baseNumber
  }

  ::docking::cleanup .treeWin$baseNumber

  ### Implicit
  # destroy .treeWin$baseNumber

  # Hack to stop another unusual coredump.
  # (Save game in clipbase with tree1 open but base1 not in use. Close tree)
  after idle {
    ::windows::stats::Refresh
  }
}

################################################################################
proc ::tree::doTrace { prefix name1 name2 op} {
  if {[scan $name2 "$prefix%d" baseNumber] !=1 } {
    tk_messageBox -parent . -icon error -type ok -title "Fatal Error" \
        -message "Scan failed in trace code\ndoTrace $prefix $name1 $name2 $op"
    return
  }
  if {[winfo exists .treeBest$baseNumber]} {
    ::tree::best $baseNumber
  }
}

proc ::tree::toggleTraining { baseNumber } {
  global tree
  set tree(training$baseNumber) [expr !$tree(training$baseNumber)]
  ::tree::refreshTraining $baseNumber
}

proc ::tree::refreshTraining { baseNumber } {
  global tree

  # Only one tree training used at a time
  for {set i 1 } {$i <= [sc_base count total]} {incr i} {
    if {! [winfo exists .treeWin$baseNumber] || $i == $baseNumber } { continue }
    set tree(training$i) 0
  }

  if {$tree(training$baseNumber)} {
    set ::tree::trainingBase $baseNumber
  } else {
    set ::tree::trainingBase 0
  }
  ::tree::refresh $baseNumber
}

################################################################################

### This proc is used by the training features in TREE , ANALYSIS ENGINES, and TABLEBASE
### and isn't exclusive to the tree at all
### The engine training only works with engines 1 and 2 (not 0, 3, 4, 5 etc)
### and tablebase and tree training may well be the same &&&
### ... Bit of a fucking undocumented hack mess actually

proc ::tree::doTraining {{n 0}} {
  global tree

  # uses engines 1 and 2 (todo: make work with all engines)
  if {$n != 1  &&  [winfo exists .analysisWin1]  &&  $::analysis(automove1)} {
    automove 1
    return
  }
  if {$n != 2  &&  [winfo exists .analysisWin2]  &&  $::analysis(automove2)} {
    automove 2
    return
  }
  if {[::tb::isopen]  &&  $::tbTraining} {
    ::tb::move
    return
  }

  if {! [winfo exists .treeWin$::tree::trainingBase]} {
    return
  }

  if { $::tree::trainingBase == 0 } {
    return
  }

  # Before issuing a training move, annotate player's move
  if { $::tree::mask::maskFile != ""  } {
    set move_done [sc_game info previousMoveNT]
    if {$move_done != ""} {
      sc_move back
      set fen [ ::tree::mask::toShortFen [sc_pos fen] ]
      sc_move forward
      if { [info exists ::tree::mask::mask($fen)] } {
        set moves [ lindex $::tree::mask::mask($fen) 0 ]
        
        # if move out of Mask, and there exists moves in Mask, set a warning
        if { ! [ ::tree::mask::moveExists $move_done $fen ] } {
          if {[llength $moves] != 0} {
            set txt ""
            foreach elt $moves {
              append txt "[::trans [lindex $elt 0]][lindex $elt 1] "
            }
            sc_pos setComment "[sc_pos getComment] Mask : $txt"
          }
        }
        
        # if move was bad, set a warning
        set nag_played [::tree::mask::getNag $move_done $fen]
        set nag_order { "??" " ?" "?!" $::tree::mask::emptyNag "!?" " !" "!!"}
        set txt ""
        foreach elt $moves {
          set N [lindex $elt 1]
          if { [lsearch $nag_order $nag_played] < [lsearch $nag_order $N]} {
            append txt "[::trans [lindex $elt 0]][lindex $elt 1] "
          }
        }
        if {$txt != ""} {
          sc_pos addNag [string trim $nag_played]
          sc_pos setComment "[sc_pos getComment] Mask : $txt"
        }
        
        # if move was on an exclude line, set a warning (img = ::rep::_tb_exclude)
        if { [::tree::mask::getImage $move_done 0] ==  "::rep::_tb_exclude" || \
              [::tree::mask::getImage $move_done 1] == "::rep::_tb_exclude"} {
          sc_pos setComment "[sc_pos getComment] Mask : excluded line"
        }
      }
    }
  }

  # Must flush tree before calling sc_tree move 
  # is this correct ?
  update idletasks

  set move [sc_tree move $::tree::trainingBase random]
  addSanMove $move -animate -notraining
  updateBoard -pgn
}

proc ::tree::toggleLock { baseNumber } {
  ::tree::refresh $baseNumber
}

proc ::tree::select { move baseNumber } {
  global tree

  if {! [winfo exists .treeWin$baseNumber]} { return }

  catch { addSanMove $move -animate }
}

set tree(refresh) 0

################################################################################

proc ::tree::refresh {{ baseNumber {} }} {

  # set stack [lsearch -glob -inline -all [ wm stackorder . ] ".treeWin*"]
  if {$baseNumber != {} } {
    if {[winfo exists .treeWin$baseNumber]} {
      ::tree::dorefresh $baseNumber
    }
  } else {
    sc_tree search -cancel all
    set count [sc_base count total]
    if {!$::tree::showBar} {
      # disable tree text
      for {set i 1} {$i <= $count} {incr i} {
	if {[winfo exists .treeWin$i]} {
	  .treeWin$i.f.tl tag configure treetext -foreground grey
	}
      }
    }
    for {set i 1} {$i <= $count} {incr i} {
      if {[winfo exists .treeWin$i]} {
        if { [::tree::dorefresh $i] == "canceled" } { break }
      }
    }
  }
}

proc ::tree::dorefresh { baseNumber } {

  global tree glstart glistSize
  set w .treeWin$baseNumber

  if {! $tree(autorefresh$baseNumber) || $::annotate(Engine) > -1 || $::comp(playing) || $::epdAnnotation || ![sc_base inUse $baseNumber]} {
    return
  }

  # busyCursor .
  sc_progressBar $w.progress bar 251 16

  set tree(refresh) 1

  update idletasks

  if { $tree(fastmode$baseNumber) == 0 } {
    set fastmode 0
  } else {
    set fastmode 1
  }

  set moves [sc_tree search -hide $tree(training$baseNumber) -sort $tree(order$baseNumber) -base $baseNumber \
                            -fastmode $fastmode -adjust $tree(adjustfilter$baseNumber) -short $::tree::short]

  # Tree can be closed in the middle of a search now
  if {![winfo exists $w]} { return }

  catch {$w.f.tl itemconfigure 0 -foreground darkBlue}

  if {!$::tree::showBar} {
    # enable tree
    if {$::enableBackground} {
      $w.f.tl tag configure treetext -foreground  $::defaultForeground
    } else {
      $w.f.tl tag configure treetext -foreground black
    }
  }

  # unbusyCursor .
  set tree(refresh) 0

  $w.f.tl configure -cursor {}

  # ::tree::status "" $baseNumber
  if {$::tree(adjustfilter$baseNumber)} {
    ### See the last game (bind $w <End> from gamelist.tcl)
    set totalSize [sc_filter count]
    set glstart $totalSize
    set lastEntry [expr $totalSize - $glistSize + 1]
    if {$lastEntry < 1} {
      set lastEntry 1
    }
    if {$glstart > $lastEntry} {
      set glstart $lastEntry
    }
    ::windows::stats::Refresh
  }

  # Only the most recent tree_search succeeds
  if { $moves == "canceled" } { return "canceled"}
  displayLines $baseNumber $moves

  if {[winfo exists .treeBest$baseNumber]} {::tree::best $baseNumber}

  if { $tree(fastmode$baseNumber) == 2 } {
    ### Slow + Fast mode - now redo the tree search in slow mode
    sc_progressBar $w.progress bar 251 16

    # Hmmm - why does the canvas/graph not get displayed if "-short" is not stipulated ?
    set moves [sc_tree search -hide $tree(training$baseNumber) -sort $tree(order$baseNumber) -base $baseNumber \
                              -fastmode 0 -adjust $tree(adjustfilter$baseNumber) -short $::tree::short]

    displayLines $baseNumber $moves
  }
}

### Insert lines into the tree widget S.A.

proc ::tree::displayLines { baseNumber moves } {
  global ::tree::mask::maskFile

  set ::tree::mask::cacheFenIndex [::tree::mask::toShortFen [sc_pos fen]]
  set lMoves {}
  set w .treeWin$baseNumber
  set nextmove [sc_game info nextMove]

  $w.f.tl configure -state normal
  $w.f.tl delete 1.0 end

  if {$moves == "interrupted"} {
    $w.f.tl insert end $::tr(ErrSearchInterrupted)
    return
  }
  set notOpen [expr {$moves == $::tr(ErrNotOpen)}]
  set moves [split $moves "\n"]
  set len [llength $moves]

  if {$notOpen} {
    $w.f.tl insert 0.0 "[lindex $moves 0]\n"
    $w.f.tl configure -state disabled
    return
  }

  foreach t [$w.f.tl tag names] {
    if { [ string match "tagclick*" $t ] || [ string match "tagtooltip*" $t ] } {
      $w.f.tl tag delete $t
    }
  }

  # (Single) Mask position comment at top of move list
  # Making this line word wrap is too hard because it's tough to get the text widget's true width
  set hasPositionComment 0
  if { $maskFile != "" } {
    set posComment [::tree::mask::getPositionComment]
    if {$posComment != ""} {
      set hasPositionComment 1
      set firstLine [ lindex [split $posComment "\n"] 0 ]
      $w.f.tl insert end "$firstLine\n" [ list bluefg tagtooltip_poscomment ]
      ::utils::tooltip::SetTag $w.f.tl $posComment tagtooltip_poscomment
      $w.f.tl tag bind tagtooltip_poscomment <Double-Button-1> "::tree::mask::addComment {} $w"
      # Background colour ??
      # $w.f.tl tag configure tagtooltip_poscomment -background lightskyblue
    }
  }

  # Display the line with column headings
  if { $maskFile != "" } {
    # insert 2 blank images and 4 blank space
    foreach j { 0 1 } {
      $w.f.tl image create end -image ::tree::mask::emptyImage -align center
    }
    $w.f.tl insert end "    "
  }

  $w.f.tl insert end "[lindex $moves 0]\n" treetext
  # blank bargraph in title
  if {$::tree::short} {
    set padding [expr [string length [lrange $::tr(TreeTitleRowShort) 2 end]] + 5]
  } else {
    set padding [expr [string length [lrange $::tr(TreeTitleRow) 2 end]] + 5]
  }
  $w.f.tl window create end-${padding}c -create "canvas %W.g -width 60 -height 12 -highlightthickness 0"

  ### Hmmm - some of the markers (images) might be 17 or 18 width, and they make the
  ### bargraph stick out a little. todo - resize all markers to 16
  
  ### Main Display the lines of the tree

  for { set i 1 } { $i < [expr $len - 3 ] } { incr i } {
    set line [lindex $moves $i]
    if {$line == ""} { continue }
    set trans_move [lindex $line 1]
    set move [untrans $trans_move]
    lappend lMoves $move

    set tagfg {}

    if { $maskFile != "" && $i > 0 && $i < [expr $len - 3] } {
      if { [::tree::mask::moveExists $move] } {
        set tagfg movefg
      }
    }
    if { $maskFile != "" } {
      if { $i > 0 && $i < [expr $len - 3] && $move != "\[end\]" } {
        # images
        foreach j { 0 1 } {
          set img [::tree::mask::getImage $move $j]
          if {[catch {
	    $w.f.tl image create end -image $img -align center
          }]} {
            $w.f.tl image create end -image ::tree::mask::emptyImage -align center
          }
        }
        # color tag
        set color [::tree::mask::getColor $move]
        if {$color != "white" && $color != "White"} {
          $w.f.tl tag configure color$i -background [::tree::mask::getColor $move]
          $w.f.tl insert end "  " color$i
        } else {
          # disabling color here kind-of depends on getColor returning {white} when it *should* return {White}
          $w.f.tl insert end "  " 
        }
        # NAG tag
        $w.f.tl insert end [::tree::mask::getNag $move]
      } else  {
        $w.f.tl image create end -image ::tree::mask::emptyImage -align center
        $w.f.tl image create end -image ::tree::mask::emptyImage -align center
        $w.f.tl insert end "    "
      }
    }

    # Move and stats
    # mask fg and treetext/blanking conflict
    if {$tagfg != ""} {
      set tags [list $tagfg   tagclick$i tagtooltip$i]
    } else {
      set tags [list treetext tagclick$i tagtooltip$i]
    }

    # Should we add a tag for the Next Move ???
    if {$trans_move == $nextmove} {
      lappend tags nextmove
    }

    # Colour every second line grey
    # if {$i % 2 && $i < $len - 3} { lappend tags greybg } else  { lappend tags whitebg }

    $w.f.tl insert end $line $tags

    ### In each line create a canvas for a little tri-coloured bargraph

    scan [string range $line 26 30] "%f%%" success
    scan [string range $line 32 35] "%f%%" draw
    set wonx  [expr {($success - $draw/2)*0.6 + 1}] ; # win = success - drawn/2
    set lossx [expr {($success + $draw/2)*0.6 + 1}] ; # loss = 100 - win - drawn
    
    if {$::tree::short} {
      $w.f.tl window create end-13c -create [list createCanvas %W.g$i $wonx $lossx $baseNumber $move]
    } else {
      $w.f.tl window create end-37c -create [list createCanvas %W.g$i $wonx $lossx $baseNumber $move]
    }

    ### Mouse bindings

    if {$move != {} && $move != {---} && $move != {[end]} && $i != $len-2 && $i != 0} {
      $w.f.tl tag bind tagclick$i <Button-1> "::tree::selectCallback $baseNumber $move ; break"
      if { $maskFile != {}} {
        ### Bind right button to popup a contextual menu
        # todo: Only display full menu if move is in mask
        $w.f.tl tag bind tagclick$i <ButtonPress-3> "::tree::mask::contextMenu 0 $w.f.tl $move %x %y %X %Y"
        $w.f.tl tag bind tagclick$i <Control-ButtonPress-3> "::tree::mask::contextMenu 1 $w.f.tl $move %x %y %X %Y"
      }
    }

    set commentLength 0
    if { $maskFile != "" } {
      # Move comment
      set comment [::tree::mask::getComment $move]
      if {$comment != ""} {
	set commentLength [string length $comment]
        set firstLine [ lindex [split $comment "\n"] 0 ]
        $w.f.tl insert end " $firstLine" tagtooltip$i
        ::utils::tooltip::SetTag $w.f.tl $comment tagtooltip$i
        # Actually its impossible to double click tooltips now, so this is unused
        $w.f.tl tag bind tagtooltip$i <Double-Button-1> "::tree::mask::op addComment 0 $move $w"
      }
    }
    # This line extends tags to marker1,2
    # But dont extend line bindings to comment, as it overrides double-click sets comment
    $w.f.tl tag add tagclick$i [expr $i +1 + $hasPositionComment].0 "[expr $i + 1 + $hasPositionComment].end - $commentLength chars"
    
    $w.f.tl insert end "\n"
  } ;# end for loop
 
  if {$lMoves != {}} {

  # Display the last two lines  - hypens and total
  for { set i [expr $len - 3 ] } { $i < [expr $len - 1 ] } { incr i } {
    if { $maskFile != "" } {
      $w.f.tl image create end -image ::tree::mask::emptyImage -align center
      $w.f.tl image create end -image ::tree::mask::emptyImage -align center
      $w.f.tl insert end "    "
    }
    $w.f.tl insert end "[lindex $moves $i]\n" treetext
  }

  # blank bargraph in total
  if {$::tree::short} {
    $w.f.tl window create end-13c -create "canvas %W.h -width 60 -height 12 -highlightthickness 0"
  } else {
    $w.f.tl window create end-32c -create "canvas %W.h -width 60 -height 12 -highlightthickness 0"
  }

  }

  ### Add moves present in Mask and not in Tree

  set idx $len
  if { $maskFile != "" } {
    set movesMask [::tree::mask::getAllMoves]
    foreach m $movesMask {
      if {  [ scan [$w.f.tl index end] "%d.%d" currentLine dummy] != 2 } {
        puts "ERROR scan index end [$w.f.tl index end]"
      }
      #  move nag color  comment        marker1_image      marker2_image
      #  d4    {} white {Some comment.} ::rep::_tb_exclude ::tree::mask::imageMainLine

      set maskmove [lindex $m 0]

      if {$maskmove in $lMoves || $maskmove == "null"} {
        continue
      }
      
      $w.f.tl tag bind tagclick$idx <Button-1> "[list ::tree::selectCallback $baseNumber $maskmove] ; break"
      $w.f.tl tag bind tagclick$idx <ButtonPress-3> "::tree::mask::contextMenu 0 $w.f.tl $maskmove %x %y %X %Y"
      $w.f.tl tag bind tagclick$idx <Control-ButtonPress-3> "::tree::mask::contextMenu 1 $w.f.tl $maskmove %x %y %X %Y"

      # Markers
      foreach j {4 5} {
        if {[lindex $m $j] == ""} {
          $w.f.tl image create end -image ::tree::mask::emptyImage -align center
        } else  {
          if {[catch {
	    $w.f.tl image create end -image [lindex $m $j] -align center
          }]} {
	    $w.f.tl image create end -image ::tree::mask::emptyImage -align center
          }
        }
      }
      
      # color tag
      set color [lindex $m 2]
      if {$color != "white" && $color != "White"} {
	$w.f.tl tag configure color$idx -background $color
	$w.f.tl insert end "  " [ list color$idx tagclick$idx ]
      } else {
	$w.f.tl insert end "  " tagclick$idx
      }


      # NAG tag
      $w.f.tl insert end [::tree::mask::getNag $maskmove] tagclick$idx

      # Move
      if {$maskmove == $nextmove} {
	$w.f.tl insert end "[::trans $maskmove] " [ list movefg tagclick$idx nextmove ]
      } else {
	$w.f.tl insert end "[::trans $maskmove] " [ list movefg tagclick$idx ]
      }

      # Comment
      set comment [lindex $m 3]
      set commentLength [string length $comment]
      set firstLine [ lindex [split $comment "\n"] 0 ]
      $w.f.tl insert end "$firstLine\n" tagtooltip$idx
      $w.f.tl tag bind tagtooltip$idx <Double-Button-1> "::tree::mask::op addComment 0 $maskmove $w"
      ::utils::tooltip::SetTag $w.f.tl $comment tagtooltip$idx

      # Trying to exntend bindings to the markers, doesnt work ???
      # $w.f.tl tag add tagclick$idx [expr $idx +1 + $hasPositionComment].0 "[expr $idx + 1 + $hasPositionComment].end - $commentLength chars"

      incr idx
    }
  }

  $w.f.tl configure -state disabled
}

proc createCanvas {w wonx lossx baseNumber move} {
  canvas $w -width 60 -height 12 -bg grey75

  # duplicate the binding for this line
  bind $w <Button-1> "::tree::selectCallback $baseNumber $move ; break"

  ### There is a 60x13 bargraph coloured white , (grey - canvas bg) and black
  # 0 to $wonx   is coloured white
  # $lossx to 61 is coloured black
  # (There's some +/- 1 to acount for widget borders)

  if {$wonx > 0.1} {
    $w create rectangle 0 0 $wonx 12 -fill white -width 0 ;# limegreen
  }
  if {$lossx < 60.9} {
    $w create rectangle $lossx 0 61 12 -fill grey10 ;# indianred3
  }
  return $w
}

### Currently unused (previously used by getColorScore)

proc ::tree::getLineValues {l} {

  # Returns a list with "ngames freq success eloavg perf" or
  # {} if there was a problem during parsing

  #0         1         2         3         4         5         6
  #0123456789012345678901234567890123456789012345678901234567890
  # 1: Nf3    C34      5115: 77.3%   53.9%  2289  2335  1975   16%
  # 1: e4     B00     37752: 47.1%   54.7%  2474  2513  2002   37%
  # 3: Nc3    C33       128:  1.9%   46.8%  2287  2329  1981  100%
  #                  ngames: freq% success%  elo  perf

  if {[scan [string range $l 14 24] %d:  ngames]  != 1} {return {}}
  if {[scan [string range $l 25 29] %f%% freq]    != 1} {return {}}
  if {[scan [string range $l 33 37] %f%% success] != 1} {return {}}
  if {[scan [string range $l 40 44] %d   eloavg]  != 1} {return {}}
  if {[scan [string range $l 46 50] %d   perf]    != 1} {return {}}

  return [list $ngames $freq $success $eloavg $perf]
}

### Tree statusbar now unused.
### Identical stats are available in other places, and tree widget gets y-crowded

proc ::tree::status { msg baseNumber } {
  global tree
  if {$msg != ""} {
    set tree(status$baseNumber) $msg
    return
  }
  set s "  $::tr(Database)"
  # set base [sc_base current]
  # if {$tree(locked$baseNumber)} { set base $tree(base$baseNumber) }
  set base $baseNumber
  set status "  $::tr(Database): [file tail [sc_base filename $base]]"
  if {$tree(locked$baseNumber)} { append status " ($::tr(TreeLocked))" }
  append status "   $::tr(Filter)"
  append status ": [filterText $base]"
  set tree(status$baseNumber) $status
}

################################################################################
set tree(standardLines) {
  {}
  {1.c4}
  {1.c4 c5}
  {1.c4 c5 2.Nf3}
  {1.c4 e5}
  {1.c4 Nf6}
  {1.c4 Nf6 2.Nc3}
  {1.d4}
  {1.d4 d5}
  {1.d4 d5 2.c4}
  {1.d4 d5 2.c4 c6}
  {1.d4 d5 2.c4 c6 3.Nf3}
  {1.d4 d5 2.c4 c6 3.Nf3 Nf6}
  {1.d4 d5 2.c4 c6 3.Nf3 Nf6 4.Nc3}
  {1.d4 d5 2.c4 c6 3.Nf3 Nf6 4.Nc3 dxc4}
  {1.d4 d5 2.c4 c6 3.Nf3 Nf6 4.Nc3 e6}
  {1.d4 d5 2.c4 c6 3.Nf3 Nf6 4.Nc3 e6 5.e3}
  {1.d4 d5 2.c4 e6}
  {1.d4 d5 2.c4 e6 3.Nc3}
  {1.d4 d5 2.c4 e6 3.Nc3 Nf6}
  {1.d4 d5 2.c4 e6 3.Nf3}
  {1.d4 d5 2.c4 dxc4}
  {1.d4 d5 2.c4 dxc4 3.Nf3}
  {1.d4 d5 2.c4 dxc4 3.Nf3 Nf6}
  {1.d4 d5 2.Nf3}
  {1.d4 d5 2.Nf3 Nf6}
  {1.d4 d5 2.Nf3 Nf6 3.c4}
  {1.d4 d6}
  {1.d4 d6 2.c4}
  {1.d4 Nf6}
  {1.d4 Nf6 2.c4}
  {1.d4 Nf6 2.c4 c5}
  {1.d4 Nf6 2.c4 d6}
  {1.d4 Nf6 2.c4 e6}
  {1.d4 Nf6 2.c4 e6 3.Nc3}
  {1.d4 Nf6 2.c4 e6 3.Nc3 Bb4}
  {1.d4 Nf6 2.c4 e6 3.Nf3}
  {1.d4 Nf6 2.c4 g6}
  {1.d4 Nf6 2.c4 g6 3.Nc3}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4 d6}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4 d6 5.Nf3}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4 d6 5.Nf3 O-O}
  {1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4 d6 5.Nf3 O-O 6.Be2}
  {1.d4 Nf6 2.c4 g6 3.Nf3}
  {1.d4 Nf6 2.Bg5}
  {1.d4 Nf6 2.Bg5 Ne4}
  {1.d4 Nf6 2.Nf3}
  {1.d4 Nf6 2.Nf3 e6}
  {1.d4 Nf6 2.Nf3 g6}
  {1.e4}
  {1.e4 c5}
  {1.e4 c5 2.c3}
  {1.e4 c5 2.c3 d5}
  {1.e4 c5 2.c3 Nf6}
  {1.e4 c5 2.Nc3}
  {1.e4 c5 2.Nc3 Nc6}
  {1.e4 c5 2.Nf3}
  {1.e4 c5 2.Nf3 d6}
  {1.e4 c5 2.Nf3 d6 3.d4}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 a6}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 e6}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 g6}
  {1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 Nc6}
  {1.e4 c5 2.Nf3 d6 3.Bb5+}
  {1.e4 c5 2.Nf3 e6}
  {1.e4 c5 2.Nf3 Nc6}
  {1.e4 c5 2.Nf3 Nc6 3.d4}
  {1.e4 c5 2.Nf3 Nc6 3.Bb5}
  {1.e4 c6}
  {1.e4 c6 2.d4}
  {1.e4 c6 2.d4 d5}
  {1.e4 c6 2.d4 d5 3.e5}
  {1.e4 c6 2.d4 d5 3.Nc3}
  {1.e4 c6 2.d4 d5 3.Nd2}
  {1.e4 d5}
  {1.e4 d6}
  {1.e4 d6 2.d4}
  {1.e4 d6 2.d4 Nf6}
  {1.e4 d6 2.d4 Nf6 3.Nc3}
  {1.e4 e5}
  {1.e4 e5 2.Nf3}
  {1.e4 e5 2.Nf3 Nc6}
  {1.e4 e5 2.Nf3 Nc6 3.d4}
  {1.e4 e5 2.Nf3 Nc6 3.Bb5}
  {1.e4 e5 2.Nf3 Nc6 3.Bb5 a6}
  {1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4}
  {1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 Nf6}
  {1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 Nf6 5.O-O}
  {1.e4 e5 2.Nf3 Nc6 3.Bc4}
  {1.e4 e5 2.Nf3 Nf6}
  {1.e4 e6}
  {1.e4 e6 2.d4}
  {1.e4 e6 2.d4 d5}
  {1.e4 e6 2.d4 d5 3.Nc3}
  {1.e4 e6 2.d4 d5 3.Nc3 Bb4}
  {1.e4 e6 2.d4 d5 3.Nc3 Nf6}
  {1.e4 e6 2.d4 d5 3.Nd2}
  {1.e4 e6 2.d4 d5 3.Nd2 c5}
  {1.e4 e6 2.d4 d5 3.Nd2 Nf6}
  {1.e4 Nf6}
  {1.e4 Nf6 2.e5}
  {1.e4 Nf6 2.e5 Nd5}
  {1.Nf3}
  {1.Nf3 Nf6}
}
# if there is a treecache file source it, otherwise use hard coded
# values above
set scidConfigFiles(treecache) "treecache.dat"
catch {source [scidConfigFile treecache]}

# ::tree::prime
#   Primes the tree for this database, filling it with a number of
#   common opening positions.

proc ::tree::prime { baseNumber } {
  global tree
  if {! [winfo exists .treeWin$baseNumber]} { return }

  set base $baseNumber
  if {$tree(locked$baseNumber)} { set base $tree(base$baseNumber) }
  if {! [sc_base inUse]} { return }
  set fname [sc_base filename $base]
  if {[string index $fname 0] == "\["  ||  [file extension $fname] == ".pgn"} {
    tk_messageBox -parent .treeWin$baseNumber -icon info -type ok -title Scid \
        -message "Sorry, only Scid-format database files can have a tree cache file." -parent .treeWin$baseNumber
    return
  }

  set ::interrupt 0
  progressWindow "Scid: [tr TreeFileFill]" "" $::tr(Cancel) {set ::interrupt 1}
  resetProgressWindow
  leftJustifyProgressWindow
  busyCursor .
  sc_game push
  set i 1
  set len [llength $tree(standardLines)]
  foreach line $tree(standardLines) {
    sc_game new
    set text [format "%3d/\%3d" $i $len]
    if {[llength $line] > 0}  {
      sc_move addSan $line
      changeProgressWindow "$text: $line"
    } else {
      changeProgressWindow "$text: start position"
    }

    # sc_tree search -base $base -fastmode 0
    ::tree::mutex_refresh

    updateProgressWindow $i $len
    incr i
    if {$::interrupt} {
      closeProgressWindow
      set ::interrupt 0
      sc_game pop
      unbusyCursor .
      ::tree::refresh $baseNumber
      return
    }
  }
  closeProgressWindow
  if {[catch {sc_tree write $base} result]} {
    #tk_messageBox -type ok -icon warning -title "Scid: Error writing file" -message $result
  } else {
    #set a "$fname.stc: [sc_tree positions] positions, "
    #append a "$result bytes: "
    #set pergame [expr double($result) / double([sc_base numGames])]
    #append a [format "%.2f" $pergame]
    #append a " bytes per game"
    #tk_messageBox -type ok -parent .treeWin -title Scid -message $a
  }
  sc_game pop
  unbusyCursor .
  ::tree::refresh $baseNumber
}

### Update the window of best (highest-rated) tree games.

proc ::tree::toggleBest { baseNumber } {
  set w .treeBest$baseNumber
  if {[winfo exists $w]} {
    destroy $w
  } else {
    ::tree::best $baseNumber
  }
}

proc ::tree::OpenBest {baseNumber} {
  set w .treeBest$baseNumber
  if {[winfo exists $w]} {
    raiseWin $w
  } else {
    ::tree::best $baseNumber
  }
}

### Bastardised from gamelist.tcl

# Subset of glistField
set blistFields {
  g Number      e 7
  w White       w 14
  b Black       w 14
  r Result      e 5
  m Length      e 5
  d Date        w 10
  e Event       w 10
  W WElo        e 5
  B BElo        e 5
  n Round       e 5
  s Site        w 10
  c Country     e  3
  E EventDate   w  7
  O Opening     w 6
}

set blistHeaders {}
set blistSortShortcuts {}
set temp_order {}
set temp_widths {}
set temp_anchors {}
set blistCodes {}
### blistCodes is a printf format style string. A \n is used to split the main "sc_game list"
# string into a proper list for processing. It is now appended in sc_game_list

set i 0
foreach {code col anchor width} $blistFields {
  lappend blistHeaders $col
  lappend blistSortShortcuts $code
  lappend temp_order $i
  lappend temp_widths [expr {$width * 8}] ; # [font measure [ttk::style lookup [$w.tree cget -style] -font] "X"]
  lappend temp_anchors $anchor
  lappend blistCodes "$code* "
  incr i
}
if {! [info exists blistColOrder]} {
  set blistColOrder $temp_order
}
if {! [info exists blistColWidth] || [llength $blistColWidth] != $i } {
  set blistColWidth $temp_widths
}
if {! [info exists blistColAnchor] || [llength blistColAnchor] != $i} {
  set blistColAnchor $temp_anchors
}

proc ::tree::best {baseNumber} {
  global tree blistCodes

  set w .treeBest$baseNumber
  if {! [winfo exists .treeWin$baseNumber]} {
    ::tree::Open $baseNumber
  }
  # Hmmm... listbox widgets seem to clash, so need this hack
  if {[winfo exists .variations]} { return }
  if {! [winfo exists $w]} {
    ::createToplevel $w
    ::setTitle $w "$::tr(TreeBestGames) \[[file tail [sc_base filename $baseNumber]]\]"
    setWinLocation $w
    setWinSize $w
    bind $w <Escape> "destroy $w"
    bind $w <F1> {helpWindow Tree Best}
    bindWheeltoFixed $w
    pack [frame $w.b] -side bottom -fill x
    frame $w.blist
    pack $w.blist -side top -expand true -fill both

    ### Best Games treeview stuff, bastardised from gamelist.tcl

    ttk::treeview $w.tree -columns $::blistHeaders -displaycolumns $::blistColOrder -show headings -yscroll "$w.ybar set" -xscroll "$w.xbar set"

    # title font isn't working &&& I don't think it's configurable !
    $w.tree tag configure treetitle -font font_H1

    # this font is working, but doesn't affect how many entries fit on a screen, and isn't enabled
    $w.tree tag configure treefont -font font_Regular

    bind $w.tree <Button-3> "::tree::bestPopup $baseNumber %W %x %y %X %Y"

    $w.tree tag bind click2 <Double-Button-1> "
      if {\[sc_base current\] != $baseNumber} {
	sc_base switch $baseNumber
	::plist::refresh
	::tourney::refresh
      }
      ::game::Load \[%W set \[%W focus\] Number\]
    "

    $w.tree tag configure error -foreground red

    # Hmm... seems no way to change the deafult blue bg colour for selected items
    # without using (extra) tags. So this colour must look ok with a blue background

    if {$::enableBackground} {
      ::ttk::style configure Treeview -background $::defaultBackground
      ::ttk::style configure Treeview -fieldbackground $::defaultBackground
    }

    ### Init the ttk_treeview column titles
    set font [ttk::style lookup [$w.tree cget -style] -font]
    foreach col $::blistHeaders width $::blistColWidth anchor $::blistColAnchor {
	$w.tree column $col -width $width -anchor $anchor -stretch 0
    }
    ::tree::bestColumnTitles $w

    ::ttk::scrollbar $w.ybar -command "$w.tree yview" -takefocus 0
    ::ttk::scrollbar $w.xbar -command "$w.tree xview" -takefocus 0 -orient horizontal

    grid $w.tree -in $w.blist -row 0 -column 0 -sticky news
    grid $w.ybar -in $w.blist -row 0 -column 1 -sticky news
    grid $w.xbar -in $w.blist -row 1 -column 0 -sticky news

    grid rowconfig $w.blist 0 -weight 1 -minsize 0
    grid columnconfig $w.blist 0 -weight 1 -minsize 0

    label $w.b.result -text " $::tr(Result)" -font font_Small
    tk_optionMenu $w.b.res tree(bestRes$baseNumber) All 1-0 0-1 {1-0 0-1} {1/2-1/2}
    $w.b.res configure -font font_Small -direction right

    if {$::tree::sortBest} {
      set tree(sortBest$baseNumber) Best
    } else {
      set tree(sortBest$baseNumber) Order
    }
    label $w.b.sort -text " $::tr(Sort)" -font font_Small
    tk_optionMenu $w.b.sortMenu tree(sortBest$baseNumber) Best Order
    $w.b.sortMenu configure -font font_Small -direction right

    button $w.b.close -text $::tr(Close) -command "destroy $w" -width 9 -font font_Small
    pack $w.b.close $w.b.res $w.b.result $w.b.sortMenu $w.b.sort -side right -padx 5 -pady 3

    bind $w.tree <Left>  "$w.tree xview scroll -40 units ; break"
    bind $w.tree <Right> "$w.tree xview scroll  40 units ; break"
    if {!$::macOS} {
      bind $w.tree <Button> "
	  # Buttons 6 and 7 are the left/right for advanced wheelscroll buttons
	  # but aren't supported by Button-6 (see http://wiki.tcl.tk/12696)
	  if {\"%b\" == \"6\"} { $w.tree xview scroll -30 units }
	  if {\"%b\" == \"7\"} { $w.tree xview scroll  30 units }
      "
    }

    focus $w.tree
    ::createToplevelFinalize $w
    bind $w <Configure> "::tree::bestConfigure $w %W"
    bind $w <Destroy> "+::tree::bestWidths $w"
  }
  $w.tree delete [$w.tree children {}]

  set tree(bestList$baseNumber) {}
  set count 0

  if {![sc_base inUse $baseNumber]} {
    return
  }

  # Only need to calulate nextMoves if showing Opening/Moves column (number 13)
  if {[lsearch $::blistColOrder 13] > -1} {
    set chunk [sc_tree best $tree(base$baseNumber) $tree(bestMax$baseNumber) $tree(bestRes$baseNumber) $tree(sortBest$baseNumber) \!$blistCodes]
  } else {
    set chunk [sc_tree best $tree(base$baseNumber) $tree(bestMax$baseNumber) $tree(bestRes$baseNumber) $tree(sortBest$baseNumber) $blistCodes]
  }

  # strip trailing "\n" and split into a list
  set chunk [string range $chunk 0 end-1]
  set  VALUES [split $chunk "\n"]

  foreach values $VALUES {
    # First item is always gamenum, used to form tree(bestList$n), used for next/prev in game browser
    lappend tree(bestList$baseNumber) [lindex $values 0]
    set values [lrange $values 1 end]

    # Gregors encoding conversion
    # set values [encoding convertfrom $values]

    if {[catch {set thisindex [lindex $values 0]}]} {
      ### Mismatched brace in game values. Bad!
      # Scid's gamelist handles it ok, but game causes errors in other places
      set thisindex [string range $values 1 [string first " " $values]]
      $w.tree insert {} end -values [list $thisindex {Unmatched brace} {in game}] -tag [list click2 error]
    } else {
      $w.tree insert {} end -values $values -tag click2
    }
  }

  if {$tree(sortBest$baseNumber) == "Order"} {
    $w.tree see [lindex [$w.tree children {}] end]
  } else {
    $w.tree see [lindex [$w.tree children {}] 0]
  }
}

### New Best Games procs, bastardised from gamelist.tcl

proc ::tree::bestConfigure {w window} {
  if {$window == "$w.tree"} {
    bestWidths $w
    recordWinSize $w
  }
}
proc ::tree::bestWidths {w} { 
  global blistFields blistColWidth
  set widths {}
  if {![catch {
    # Save column widths
    foreach {code col anchor width} $blistFields {
      lappend widths [$w.tree column $col -width]
    }
  }]} {
    set blistColWidth $widths
  }
}
proc ::tree::bestColumnTitles {w} {
  foreach {code col anchor null} $::blistFields {
    if {[info exists ::tr(Glist$col)]} {
      set name $::tr(Glist$col)
    } else {
      set name $col
    }
    $w.tree heading $col -text $name
  }
}
### $w is ignored on these three procs,
### all tree windows have same layout
proc ::tree::bestInsertCol {w col after} {
  set b [expr [string trimleft $after {#}]]
  set d [lsearch -exact $::blistColOrder $col]
  set ::blistColOrder [linsert $::blistColOrder $b $col]
  if {$d > -1} {
    if {$d > $b} {
      incr d
    }
    set ::blistColOrder [lreplace $::blistColOrder $d $d]
  }
  set count [sc_base count total]
  for {set i 1} {$i <= $count} {incr i} {
    if {[winfo exists .treeBest$i.tree]} {
      .treeBest$i.tree configure -displaycolumns $::blistColOrder
    }
  }
}
proc ::tree::bestRemoveCol {w col} {
  set d [expr [string trimleft $col {#}] -1]
  set ::blistColOrder [lreplace $::blistColOrder $d $d]
  set count [sc_base count total]
  for {set i 1} {$i <= $count} {incr i} {
    if {[winfo exists .treeBest$i.tree]} {
      .treeBest$i.tree configure -displaycolumns $::blistColOrder
    }
  }
}
proc ::tree::bestResetCols {w} {
  global blistColOrder blistColWidth blistColAnchor

  set i 0
  set blistColOrder {}
  set blistColWidth {}
  set blistColAnchor {}
  set count [sc_base count total]
  foreach {code col anchor width} $::blistFields {
    lappend blistColOrder $i
    lappend blistColWidth [expr {$width * 8}]
    lappend blistColAnchor $anchor
    for {set j 1} {$j <= $count} {incr j} {
      if {[winfo exists .treeBest$j.tree]} {
	$w column $col -anchor $anchor
      }
    }
    incr i
  }
  for {set j 1} {$j <= $count} {incr j} {
    if {[winfo exists .treeBest$j.tree]} {
      .treeBest$j.tree configure -displaycolumns $::blistColOrder
    }
  }
}


### todo - fix the multiple tree windows, esp. when switching between bases S.A.

proc ::tree::toggleRefresh { baseNumber } {
  global tree

  if {$tree(autorefresh$baseNumber)} {
    ::tree::refresh $baseNumber
  }
}
proc ::tree::bestPopup {baseNumber w x y X Y} {

  global blistHeaders

  # Identify region requires at least tk 8.5.9 (?)

  if { [catch {set region [$w identify region $x $y] }] } {
    if {[$w identify row $x $y] == "" } {
      set region "heading"
    } else {
      set region ""
    }
  }

  if { $region == "heading" } {

    ### Titles context menu

    set col [$w identify column $x $y]
    set col_idx [lsearch -exact $::blistHeaders [$w column $col -id] ]

    set menu $w.context

    if { [winfo exists $menu] } {destroy $menu}
    if { [winfo exists $menu.addcol] } {destroy $menu.addcol}
    menu $menu -tearoff 0
    menu $menu.addcol -tearoff 0

    # Column menus
    $menu.addcol delete 0 end
    set i 0
    foreach h $::blistHeaders {
        $menu.addcol add command -label $::tr(Glist$h) -command "::tree::bestInsertCol $w $i $col"
      incr i
    }
    $menu add cascade -label $::tr(GlistAddField) -menu $menu.addcol
    $menu add command -label $::tr(GlistRemoveThisGameFromFilter) -command "::tree::bestRemoveCol $w $col"

    $menu add separator

    $menu add command -label $::tr(GlistAlignL) \
		   -command "$w column $col -anchor w; lset ::blistColAnchor $col_idx w"
    $menu add command -label $::tr(GlistAlignR) \
		   -command "$w column $col -anchor e; lset ::blistColAnchor $col_idx e"
    $menu add command -label $::tr(GlistAlignC) \
		   -command "$w column $col -anchor c; lset ::blistColAnchor $col_idx c"

    $menu add separator
    $menu add command -label $::tr(Reset) -command "::tree::bestResetCols $w"

    tk_popup $menu $X $Y

  } else {

    ### Gamelist context menus

    set row [$w identify row $x $y]
    set selection [$w selection]

    if {$row == "" } {
      return
    }

    if {[lsearch $selection $row] == -1 || [llength $selection] == 1} {
      event generate $w <ButtonPress-1> -x $x -y $y
    } else {
      puts "OOPS!"
    }

    # set number [$w set [$w focus] Number]
    # set number [string trim $number "\n"]

    ### nb - redefined $w here

    set w .treeBest$baseNumber
    set menu $w.context

    if { [winfo exists $menu] } {
      destroy $menu
    }

    menu $menu -tearoff 0

    $menu add command -label $::tr(Browse) -command "::tree::bestBrowse $baseNumber"
    $menu add command -label $::tr(LoadGame) -command "::tree::bestLoadSelection $baseNumber"
    $menu add command -label $::tr(MergeGame) -command "::tree::bestMerge $baseNumber"

    tk_popup $menu [winfo pointerx .] [winfo pointery .]
  }
}
proc ::tree::bestLoadSelection {baseNumber} {
  set w .treeBest$baseNumber
  set selection [$w.tree selection]
  if {$selection != {}} {
    if {[sc_base current] != $baseNumber} {
      sc_base switch $baseNumber
      ::plist::refresh
      ::tourney::refresh
    }
    ::game::Load [$w.tree set [lindex $selection 0] Number]
  }
}

proc ::tree::bestBrowse {baseNumber} {
  set w .treeBest$baseNumber
  set selection [$w.tree selection]
  if { $selection != {} } {
    ::gbrowser::new $baseNumber [$w.tree set [lindex $selection 0] Number]
  }
}

proc ::tree::bestMerge {baseNumber} {
  set w .treeBest$baseNumber
  set selection [$w.tree selection]
  if { $selection != {} } {
    mergeGame $baseNumber [$w.tree set [lindex $selection 0] Number]
  }
}

proc ::tree::toggleAdjust {baseNumber} {
  global tree

  if {$tree(adjustfilter$baseNumber)} {
    ::tree::dorefresh $baseNumber
  } else {
    # User has deselected AdjustFilter, so they probably want the current filter to stay
    # So set dbFilter to the current Filter via overloaded sc_tree_clean
    sc_tree clean $baseNumber updateFilter
  }
}


proc ::tree::setCacheSize { base size } {
  sc_tree cachesize $base $size
}

proc ::tree::getCacheInfo { base } {
  set ci [sc_tree cacheinfo $base]
  tk_messageBox -title "Cache Info" -type ok -icon info \
      -message "Base: [file tail [sc_base filename $base]]
Cache used : [lindex $ci 0] / [lindex $ci 1]" -parent .treeWin$base

}

proc ::tree::isCacheFull { base } {
  set ci [sc_tree cacheinfo $base]
  return [expr {[lindex $ci 0] == [lindex $ci 1]}]
}

################################################################################
# will go through all moves of all games of current base

set ::tree::cancelPrime 0

proc ::tree::primeWithBase {base {fillMask 0}} {
  set ::tree::cancelPrime 0
  for {set g 1} { $g <= [sc_base numGames]} { incr g} {
    sc_game load $g
    ::tree::primeWithGame $fillMask
    if {$::tree::cancelPrime } {
      return
    }
  }
}

proc ::tree::primeWithGame { { fillMask 0 } } {
  set ::tree::totalMoves [countBaseMoves "singleGame" ]
  sc_move start
  if {$fillMask} { ::tree::mask::feedMask [ sc_pos fen ] }

  set ::tree::parsedMoves 0
  set ::tree::cancelPrime 0
  progressWindow "Scid: [tr TreeFileFill]" "$::tree::totalMoves moves" $::tr(Cancel) {
    set ::tree::cancelPrime 1
    sc_progressBar
  }
  resetProgressWindow
  leftJustifyProgressWindow
  ::tree::parseGame $fillMask
  closeProgressWindow
  updateBoard -pgn
}

set processingTree 0

proc ::tree::mutex_refresh {} {
  global processingTree

  while {$processingTree} {
    vwait processingTree
  }
  set processingTree 1
  ::tree::refresh
  set processingTree 0
}

################################################################################
# parse one game and fill the list

proc ::tree::parseGame {{ fillMask 0 }} {

  if {$::tree::cancelPrime } { return  }

  ::tree::mutex_refresh

  if {$::tree::cancelPrime } { return }
  while {![sc_pos isAt vend]} {
    updateProgressWindow $::tree::parsedMoves $::tree::totalMoves

    # Go through all variants
    for {set v 0} {$v<[sc_var count]} {incr v} {
      # enter each var (beware the first move is played)
      set fen [ sc_pos fen ]
      sc_var enter $v
      if {$fillMask} { ::tree::mask::feedMask $fen }
      if {$::tree::cancelPrime } { return }
      if {$::tree::cancelPrime } { return }
      ::tree::parseVar $fillMask
      if {$::tree::cancelPrime } { return }
    }
    # now treat the main line
    set fen [ sc_pos fen ]
    sc_move forward

    ### In older Scids, tree was updated by updateBoard, but updateBoard (and tree refresh)
    ### is now asynchronous/cancelled so we must update the tree manually after each move
    ::tree::mutex_refresh

    if {$fillMask} { ::tree::mask::feedMask $fen }
    incr ::tree::parsedMoves
    if {$::tree::cancelPrime } { return }
    if {$::tree::cancelPrime } { return }
  }
}

### Recursively parse vars

proc ::tree::parseVar {{ fillMask 0 }} {
  while {![sc_pos isAt vend]} {
    # Go through all variants
    for {set v 0} {$v<[sc_var count]} {incr v} {
      set fen [ sc_pos fen ]
      sc_var enter $v
      if {$fillMask} { ::tree::mask::feedMask $fen }
      if {$::tree::cancelPrime } { return }
      if {$::tree::cancelPrime } { return }
      # we are at the start of a var, before the first move : start recursive calls
      parseVar $fillMask
      if {$::tree::cancelPrime } { return }
    }

    set fen [ sc_pos fen ]
    sc_move forward

    ::tree::mutex_refresh

    if {$fillMask} { ::tree::mask::feedMask $fen }
    incr ::tree::parsedMoves
    updateProgressWindow $::tree::parsedMoves $::tree::totalMoves
    if {$::tree::cancelPrime } { return }
    if {$::tree::cancelPrime } { return }
  }

  sc_var exit
}
################################################################################
# count moves that will fill the cache

proc ::tree::countBaseMoves { {args ""} } {
  set ::tree::total 0

  proc countParseGame {} {
    sc_move start

    while {![sc_pos isAt vend]} {
      for {set v 0} {$v<[sc_var count]} {incr v} {
        sc_var enter $v
        countParseVar
      }
      sc_move forward
      incr ::tree::total
    }
  }

  proc countParseVar {} {
    while {![sc_pos isAt vend]} {
      for {set v 0} {$v<[sc_var count]} {incr v} {
        sc_var enter $v
        countParseVar
        incr ::tree::total
      }
      sc_move forward
      incr ::tree::total
    }
    sc_var exit
  }

  if {$args == "singleGame"} {
    countParseGame
  } else {
    for {set g 1} { $g <= [sc_base numGames]} { incr g} {
      sc_game load $g
      countParseGame
    }
  }
  return $::tree::total
}

################################################################################
#
#                                 Mask namespace
#
#  All function calls with move in english
#  Images are 17x17

namespace eval ::tree::mask {

  # mask(fen) contains data for a position <fen> : ( moves, comment )
  # where moves is ( move nag color move_anno img1 img2 )
  array set mask {}
  set maskSerialized {}
  set maskFile ""
  set defaultColor white
  set emptyNag "  "
  set textComment ""
  set cacheFenIndex -1
  set dirty 0 ; # if Mask data has changed
  # Mask Search
  set searchMask_usenag 0
  set searchMask_usemarker0 0
  set searchMask_usemarker1 0
  set searchMask_usecolor 0
  set searchMask_usemovecomment 0
  set searchMask_useposcomment 0
  set displayMask_unfold 1
  set displayMask_showNag 1
  set displayMask_showComment 1
  
  ### These image names are stored in mask files (stm), so we must handle image creation (elsewhere)
  # incase of SCID generated masks, and tb_help_small was previously tb_help (which image we still have somewhere)
  array set marker2image {
    Include	::rep::_tb_include
    Exclude	::rep::_tb_exclude
    MainLine	::tree::mask::imageMainLine
    Bookmark	tb_bkm
    White	::tree::mask::imageWhite
    Black	::tree::mask::imageBlack
    NewLine	tb_new
    ToBeVerified tb_rfilter
    ToTrain	tb_msearch
    Dubious	tb_help_small
    ToRemove	tb_cut
  }
  set maxRecent 10
}

################################################################################

proc ::tree::mask::open { {filename ""} {parent .}} {
  global ::tree::mask::maskSerialized ::tree::mask::mask

  if {$filename == ""} {
    set types {
      {{Tree Mask Files}       {.stm}        }
    }
    if {! [file isdirectory $::initialDir(stm)] } {
      set ::initialDir(stm) $::env(HOME)
    }
    set filename [tk_getOpenFile -initialdir $::initialDir(stm) -filetypes $types -defaultextension ".stm" -parent $parent]
  }

  if {$filename != ""} {
    if {![file readable $filename]} {
      if {$parent == "autoLoad"} {
	::splash::add "Can't read mask file $filename" error
      } else {
	tk_messageBox -title Oops -type ok -icon info -message "Mask: no such file \"$filename\""
      }
    } else {
      set ::initialDir(stm) [file dirname $filename]
      ::tree::mask::askForSave $parent
      array unset ::tree::mask::mask
      array set ::tree::mask::mask {}
      source $filename
      array set mask $maskSerialized
      set maskSerialized {}
      set ::tree::mask::maskFile $filename
      set ::tree::mask::dirty 0
      ::tree::refresh
      ::tree::mask::addRecent $filename
      ::tree::mask::updateDisplayMask
    }
  }
}

proc ::tree::mask::addRecent {filename} {
  global ::tree::mask::recentMask

  set i [lsearch -exact $recentMask $filename]
  while {$i > -1} {
    set recentMask [lreplace $recentMask $i $i]
    set i [lsearch -exact $recentMask $filename]
  }

  set recentMask [ linsert $recentMask 0 $filename]
  if {[llength $recentMask] > $::tree::mask::maxRecent } {
    set recentMask [ lreplace $recentMask  [ expr $::tree::mask::maxRecent -1 ] end ]
  }
  
  # update recent masks menu entry
  for {set i 1} {$i <= [sc_base count total]} {incr i} {
    set w .treeWin$i
    if { [winfo exists $w] } {
      $w.menu.mask.recent delete 0 end
      foreach f $::tree::mask::recentMask {
	$w.menu.mask.recent add command -label $f -command [list ::tree::mask::open $f $w]
      }
    }
  }
}

################################################################################

proc ::tree::mask::askForSave {{parent .}} {
  if {$::tree::mask::dirty} {

    ### Issue here - closing app on linux - execution flows here, but the tk_messageBox fails to show up
    # (?) Issue here - Closing the database breaks the "-parent $parent" for some reason
    # Once we remove the parent option, the tree window stays open (albeit the menu widget gets destroyed!)
    ## TODO - Now uses tk_dialog, please test

    if {![winfo exists $parent]} {
      set parent .
    }

    set answer [tk_dialog .unsaved "[tr TreeMask] [tr altered]" \
      "[tr TreeMask] \"[file rootname [file tail $::tree::mask::maskFile]]\" has been [tr altered].
      [tr DoYouWantToSaveFirst] ?" \
      question {} [tr Save] [tr DontSave]]

    if {$answer == 0} {
      ::tree::mask::save
    }
  }
}

################################################################################

proc ::tree::mask::new {{parent .}} {

  set types {
    {{Tree Mask Files}       {.stm}        }
  }
  set filename [tk_getSaveFile -filetypes $types -defaultextension ".stm" -parent $parent]

  if {$filename != ""} {
    if {[file writable [file dirname $filename]]} {
      if {[file extension $filename] != ".stm" } {
	append filename ".stm"
      }
      ::tree::mask::askForSave $parent
      set ::tree::mask::dirty 0
      set ::tree::mask::maskFile $filename
      array unset ::tree::mask::mask
      array set ::tree::mask::mask {}
      ::tree::refresh
    } else {
      tk_messageBox -title "Oops" -type ok -icon warning -message "File '$filename' not writeable."
    }
  }
}

################################################################################

proc ::tree::mask::close {{parent .}} {
  if { $::tree::mask::maskFile == "" } {
    return
  }
  ::tree::mask::askForSave $parent
  set ::tree::mask::dirty 0
  array unset ::tree::mask::mask
  array set ::tree::mask::mask {}
  set ::tree::mask::maskFile ""
  catch {
    # We have to close searchmask too
    # It's possible to leave open, but if we switch to another DB, then open tree and performa a searchmask, it uses the wrong base.
    destroy .searchmask
    destroy .displaymask
    destroy .treeMaskAddComment
  }
  ::tree::refresh
}

proc ::tree::mask::save {} {
  if {$::tree::mask::maskFile == ""} {return}
  set f [ ::open $::tree::mask::maskFile w ]
  puts $f "set ::tree::mask::maskSerialized [list [array get ::tree::mask::mask]]"
  ::close $f
  set ::tree::mask::dirty 0
  # In case it's a new mask
  ::tree::mask::addRecent $::tree::mask::maskFile
}

set ::tree::mask::controlButton 0

### Check that the position is in the mask , before calling other mask operations
#   (AddMove, RemoveMove, Marker 1 Marker 2, Color, Nag, Comment Move).
#   If the control button has been pressed, apply the operation to all previous positions leading to this one.
#   This is done in backwards order for simplicity (just like the new book tuning add line feature).
#   Since we are sometimes doing multiple operations, we have to track when to refresh the tree
#   Most operations no longer refresh the tree themselves, but rely on ::tree::mask::op to do it for them.
#   The exception is 'addComment', which is never given refresh==1, because addComment sitll refreshes the tree itself.

proc ::tree::mask::op {op refresh move args} {
  if {$::tree::mask::controlButton} {
    eval ::tree::mask::fillWithLine $op $move $args   
    ::tree::refresh
  } else {
    if {$op != "removeFromMask" && ![::tree::mask::moveExists $move]} {
      ::tree::mask::addToMask $move
    }
    if {$op != "addToMask"} {
      eval $op $move $args
    }
    if {$refresh} {
      ::tree::refresh
    }
  }
  set ::tree::mask::controlButton 0
}

proc ::tree::mask::contextMenu {control win move x y xc yc} {
  update idletasks
  
  set ::tree::mask::controlButton $control

  set mctxt $win.ctxtMenu
  if { [winfo exists $mctxt] } {
    destroy $mctxt
  }
  
  menu $mctxt
  $mctxt add command -label [tr AddToMask] -command [list ::tree::mask::op addToMask 1 $move]
  $mctxt add command -label [tr RemoveFromMask] -command [list ::tree::mask::op removeFromMask 1 $move]
  $mctxt add separator

  foreach j { 0 1 } {
    menu $mctxt.image$j
    $mctxt add cascade -label "[tr Marker] [expr $j +1]" -menu $mctxt.image$j
    foreach e { Include Exclude MainLine Bookmark White Black NewLine ToBeVerified ToTrain Dubious ToRemove } {
      set i  $::tree::mask::marker2image($e)

      $mctxt.image$j add command -label [ tr $e ] -image $i -compound left -command [list ::tree::mask::op setImage 1 $move $i $j]
    }
    $mctxt.image$j add command -label [tr NoMarker] -command [list ::tree::mask::op setImage 1 $move {} $j]
  }
  menu $mctxt.color
  $mctxt add cascade -label [tr ColorMarker] -menu $mctxt.color
  foreach c { "White" "Green" "Yellow" "Blue" "Red"} {
    $mctxt.color add command -label [ tr "${c}Mark" ] -background $c -command [list ::tree::mask::op setColor 1 $move $c]
  }
  
  menu $mctxt.nag
  $mctxt add cascade -label [tr Nag] -menu $mctxt.nag

  foreach nag [ list "!!" " !" "!?" "?!" " ?" "??" " ~" [::tr "None"]  ] {
    $mctxt.nag add command -label $nag -command [list ::tree::mask::op setNag 1 $move $nag]
  }
  
  $mctxt add command -label [tr CommentMove] -command [list ::tree::mask::op addComment 0 $move $win]

  $mctxt add separator

  $mctxt add command -label [ tr CommentPosition] -command [list ::tree::mask::addComment {} $win]
  
  set lMatchMoves [sc_pos matchMoves ""]

  # remove "OO" from move list
  set extracastling [lsearch -exact $lMatchMoves "OO"]
  if {$extracastling > -1} {
    set lMatchMoves [lreplace $lMatchMoves $extracastling $extracastling]
  }

  menu $mctxt.matchmoves
  $mctxt add cascade -label [ tr AddThisMoveToMask ] -menu $mctxt.matchmoves
  set row 0
  foreach m [sc_pos matchMoves ""] {
    if {$m == "OK"} { set m "O-O" }
    if {$m == "OQ"} { set m "O-O-O" }
    if {$row % 10 == 0} {
      $mctxt.matchmoves add command -label [::trans $m] -command "::tree::mask::addToMask $m ; ::tree::refresh" -columnbreak 1
    } else {
      $mctxt.matchmoves add command -label [::trans $m] -command "::tree::mask::addToMask $m ; ::tree::refresh"
    }
    incr row
  }

  # Adding a trailing Mask menu doesn't work ? - S.A.
  # $mctxt add separator
  # $mctxt add cascade -label [tr Mask] -menu .treeWin1.menu.mask

  tk_popup $mctxt [winfo pointerx .] [winfo pointery .]

}

################################################################################

proc ::tree::mask::addToMask { move {fen ""} } {
  global ::tree::mask::mask

  if {[::tree::mask::moveExists $move]} {return}

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if {![info exists mask($fen)]} {
    set mask($fen) { {} {} }
  }
  set ::tree::mask::dirty 1
  set moves [ lindex $mask($fen) 0 ]
  if {[lsearch $moves $move] == -1} {
    lappend moves [list $move {} $::tree::mask::defaultColor {} {} {}]
    set newpos [lreplace $mask($fen) 0 0 $moves]
    set mask($fen) $newpos
  }
}

################################################################################

proc ::tree::mask::removeFromMask { move {fen ""} } {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if {![info exists mask($fen)]} {
    return
  }
  set ::tree::mask::dirty 1

  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  if { $idxm != -1} {
    set moves [lreplace $moves $idxm $idxm]
    lset mask($fen) 0 $moves
  }

  # if the position has no move left and no comment, unset it
  if { [llength [lindex $mask($fen) 0] ] == 0 && [lindex $mask($fen) 1] == "" } {
    array unset mask $fen
  }
}

################################################################################
# returns 1 if the move is already in mask

proc ::tree::mask::moveExists { move {fen ""} } {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }
  if {![info exists mask($fen)] || $move == "\[end\]" } {
    return 0
  }
  set moves [ lindex $mask($fen) 0 ]

  if {[lsearch -regexp $moves "^$move\\+* "] == -1} {
    return 0
  }
  return 1
}

################################################################################
# return the list of moves with their data

proc ::tree::mask::getAllMoves {} {
  global ::tree::mask::mask
  if {![info exists mask($::tree::mask::cacheFenIndex)]} {
    return ""
  }
  set moves [ lindex $mask($::tree::mask::cacheFenIndex) 0 ]
  return $moves
}

################################################################################

proc ::tree::mask::getColor { move {fen ""}} {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if {![info exists mask($fen)]} {
    return $::tree::mask::defaultColor
  }

  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  if { $idxm == -1} {
    return $::tree::mask::defaultColor
  }
  set col [ lindex $moves $idxm 2 ]

  return $col
}

################################################################################

proc ::tree::mask::setColor { move color {fen ""}} {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  set ::tree::mask::dirty 1
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  set newmove [lreplace [lindex $moves $idxm] 2 2 $color ]
  set moves [lreplace $moves $idxm $idxm $newmove ]
  set mask($fen) [ lreplace $mask($fen) 0 0 $moves ]
}

################################################################################
# defaults to "  " (2 spaces)

proc ::tree::mask::getNag { move { fen "" }} {
  global ::tree::mask::mask ::tree::mask::emptyNag

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if {![info exists mask($fen)]} {
    return $emptyNag
  }
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  if { $idxm == -1} {
    return $emptyNag
  }
  set nag [ lindex $moves $idxm 1 ]
  if {$nag == ""} {
    set nag $emptyNag
  }
  if { [string length $nag] == 1} { set nag " $nag" }
  return $nag
}

################################################################################

proc ::tree::mask::setNag { move nag {fen ""} } {
  global ::tree::mask::mask

  if { $nag == [::tr "None"] } {
    set nag ""
  }

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  set ::tree::mask::dirty 1
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  set newmove [lreplace [lindex $moves $idxm] 1 1 $nag ]
  set moves [lreplace $moves $idxm $idxm $newmove ]
  set mask($fen) [ lreplace $mask($fen) 0 0 $moves ]
}

################################################################################

proc ::tree::mask::getComment { move { fen "" } } {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if {![info exists mask($fen)] || $move == "" || $move == "\[end\]" } {
    return ""
  }

  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  if { $idxm == -1} {
    return ""
  }
  set comment [ lindex $moves $idxm 3 ]
  if {$comment == ""} {
    set comment "  "
  }
  return $comment
}

################################################################################

proc ::tree::mask::setComment { move comment { fen "" } } {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  set comment [string trim $comment]

  set ::tree::mask::dirty 1
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  set newmove [lreplace [lindex $moves $idxm] 3 3 $comment ]
  set moves [lreplace $moves $idxm $idxm $newmove ]
  set mask($fen) [ lreplace $mask($fen) 0 0 $moves ]
  ::tree::refresh
}

################################################################################

proc ::tree::mask::getPositionComment {{fen ""}} {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }

  if { ! [ info exists mask($fen) ] } {
    return ""
  }

  set comment [ lindex $mask($fen) 1 ]
  set comment [ string trim $comment ]

  return $comment
}

################################################################################

proc ::tree::mask::setPositionComment { comment {fen ""} } {
  global ::tree::mask::mask

  if {$fen == ""} { set fen $::tree::mask::cacheFenIndex }
  set comment [ string trim $comment ]
  set ::tree::mask::dirty 1
  # add position automatically
  if {![info exists mask($fen)]} {
    set mask($fen) { {} {} }
  }

  set newpos [ lreplace $mask($fen) 1 1 $comment ]
  set mask($fen) $newpos
  ::tree::refresh
}

################################################################################

proc ::tree::mask::setImage { move img nmr } {
  global ::tree::mask::mask
  set fen $::tree::mask::cacheFenIndex
  set ::tree::mask::dirty 1
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  set loc [expr 4 + $nmr]
  set newmove [lreplace [lindex $moves $idxm] $loc $loc $img ]
  set moves [lreplace $moves $idxm $idxm $newmove ]
  set mask($fen) [ lreplace $mask($fen) 0 0 $moves ]
}

################################################################################
# nmr = 0 or 1 (two images per line)

proc ::tree::mask::getImage { move nmr } {
  global ::tree::mask::mask

  set fen $::tree::mask::cacheFenIndex
  if {![info exists mask($fen)]} {
    return ::tree::mask::emptyImage
  }
  set moves [ lindex $mask($fen) 0 ]
  set idxm [lsearch -regexp $moves "^$move\\+* "]
  if { $idxm == -1} {
    return ::tree::mask::emptyImage
  }
  set loc [expr 4 + $nmr]
  set img [lindex $moves $idxm $loc]
  if {$img == ""} { set img ::tree::mask::emptyImage }
  return $img
}

################################################################################

proc ::tree::mask::addComment { {move ""} {parent .} } {
  
  if {[string match *.f.tl $parent]} {
    # remove trailing .f.tl
    set parent [string range $parent 0 end-5]
  }

  set w .treeMaskAddComment
  if {[winfo exists $w]} {
    raiseWin $w
    return
  }

  toplevel $w
  placeWinOverParent $w $parent

  ### If move is null, addComment to the position

  if {$move == ""} {
    set oldComment [::tree::mask::getPositionComment]
    wm title $w [::tr CommentPosition]
  } else  {
    set oldComment [::tree::mask::getComment $move ]
    wm title $w [::tr CommentMove]\ $move
  }
  set oldComment [ string trim $oldComment ]
  autoscrollframe $w.f text $w.f.e -width 40 -height 5 -wrap word -setgrid 1
  $w.f.e insert end $oldComment
  pack  $w.f  -side top -expand 1 -fill both -padx 3 -pady 3
  pack [frame $w.buttons] -side bottom -pady 2

  dialogbutton $w.buttons.cancel -textvar ::tr(Cancel) -command "destroy $w"
  dialogbutton $w.buttons.ok -text OK -command "::tree::mask::updateComment $move ; destroy $w ; ::tree::refresh"
  pack  $w.buttons.ok     -side left  -padx 10
  pack  $w.buttons.cancel -side right -padx 10

  bind $w <Escape> "destroy $w"
  bind $w <Control-Return> "$w.buttons.ok invoke"
  focus $w.f.e
}


proc ::tree::mask::updateComment { { move "" } } {
  set e .treeMaskAddComment.f.e
  set newComment [$e get 1.0 end]
  set newComment [ string trim $newComment ]
  set ::tree::mask::dirty 1
  if {$move == ""} {
    ::tree::mask::setPositionComment $newComment
  } else  {
    ::tree::mask::setComment $move $newComment
  }
}


################################################################################

proc ::tree::mask::fillWithLine {{op {}} {move {}} {args {}}} {

  set ::tree::mask::controlButton 0

  if {$::tree::mask::maskFile == ""} {
    tk_messageBox -title Scid -type ok -icon warning -message [ tr OpenAMaskFileFirst]
    return
  }

  if {[sc_var level] > 0} {
    tk_messageBox -title Scid -type ok -icon warning -message "Can't add lne from inside a variation."
    return
  }

  if {$op == ""} {
    set reply [tk_dialog .booktune $::tr(AddLine) \
      {Add all/white/black moves (to current position) to mask ?} \
      question 0 \
      {  All  } $::tr(White) $::tr(Black) $::tr(Cancel) ]

    if {$reply == 3} {return}
    if {$reply == 1} {set reply white}
    if {$reply == 2} {set reply black}
  }

  sc_game push copy

  if {$op == "removeFromMask"} {
    set direction forward
  } else {
    set direction back
  }

  while {1} {
      if {$op == ""} {
	if {![sc_move back]} {
          break
        }
	set fen [sc_pos fen]
	sc_move forward
	if {$reply != [sc_pos side]} {
	    ::tree::mask::feedMask $fen
	}
	sc_move back
      } else {
	set ::tree::mask::cacheFenIndex [::tree::mask::toShortFen [sc_pos fen]]
        eval ::tree::mask::op $op 0 $move $args
        if {![sc_move $direction]} {
          break
        }
        set move [sc_game info nextMove]
        if {$move == ""} {
          break
        }
      }
  }
  set ::tree::mask::dirty 1
  sc_game pop
  ::tree::refresh
}

proc ::tree::mask::fillWithGame {} {
  if {$::tree::mask::maskFile == ""} {
    tk_messageBox -title Scid -type ok -icon warning -message [ tr OpenAMaskFileFirst]
    return
  }
  # primeWithGame is actually filling the tree cache also, slowing this proc down
  # though it would be possible to avoid if desired
  ::tree::primeWithGame 1
  set ::tree::mask::dirty 1
}

################################################################################

proc ::tree::mask::fillWithBase {base} {
  if {$::tree::mask::maskFile == ""} {
    tk_messageBox -title Scid -type ok -icon warning -message [ tr OpenAMaskFileFirst]
    return
  }
  ::tree::primeWithBase $base 1
  set ::tree::mask::dirty 1
}

################################################################################
# Take current position information and fill the mask (move, nag, comments, etc)

proc ::tree::mask::feedMask { fen } {
  set stdNags { "!!" "!" "!?" "?!" "??" "~"}
  set fen [toShortFen $fen]
  set move [sc_game info previousMoveNT]
  set comment [sc_pos getComment $fen ]
  
  if {$move == ""} {
    set move "null"
  }
  
  # add move if not in mask
  if { ![moveExists $move $fen]} {
    addToMask $move $fen
  }
  
  if {$move == "null"} {
    set comment "$comment [getPositionComment]"
    setPositionComment $comment $fen
    return
  }
  
  # NAG
  set nag [string trim [sc_pos getNags]]
  if {$nag == 0} { set nag "" }
  if {$nag != ""} {
    # append the NAGs to comment if not standard
    if {[lsearch $stdNags $nag ] == -1 } {
      set comment "$nag $comment"
      set nag ""
    } else  {
      set oldNag [getNag $move]
      if {$oldNag != $::tree::mask::emptyNag && $oldNag != $nag} {
        set comment "<$oldNag>(?!?) $comment"
      }
      setNag $move $nag $fen
    }
  }
  
  # append comment
  set oldComment [getComment $move $fen]
  if { $oldComment != "" && $oldComment != $comment } {
    set comment "$oldComment\n$comment"
  }
  setComment $move $comment $fen
  
}

################################################################################
#  trim the fen to keep position data only

proc ::tree::mask::toShortFen {fen} {
  set ret [lreplace $fen end-1 end]
  return $ret
}

### Show mask content in a tree view widget
### with the current position as the reference base

proc ::tree::mask::displayMask {} {
  global ::tree::mask::mask
  
  set w .displaymask
  if { [winfo exists $w] } {
    focus $w
    return
  }
  toplevel $w
  setWinLocation $w
  setWinSize $w
  
  frame $w.f
  
  frame $w.fcb
  pack $w.fcb -fill x -side bottom

  checkbutton $w.fcb.unfold -font font_Small -text Unfold -variable ::tree::mask::displayMask_unfold \
    -command ::tree::mask::updateDisplayMask
  checkbutton $w.fcb.nag -font font_Small -text Nags/Markers -variable ::tree::mask::displayMask_showNag \
    -command ::tree::mask::updateDisplayMask
  checkbutton $w.fcb.comment -font font_Small -text [::tr Comments] -variable ::tree::mask::displayMask_showComment \
    -command ::tree::mask::updateDisplayMask

  dialogbutton $w.fcb.bupdate -font font_Small -text [::tr Update] -command ::tree::mask::updateDisplayMask
  dialogbutton $w.fcb.close   -font font_Small -text [::tr Close]  -command {destroy .displaymask}

  pack $w.fcb.unfold $w.fcb.nag $w.fcb.comment -side left
  pack $w.fcb.close $w.fcb.bupdate -side right -padx 2 -pady 2

  pack $w.f -fill both -expand 1
  
  ttk::treeview $w.f.tree -yscrollcommand "$w.f.ybar set" -xscrollcommand "$w.f.xbar set" -show tree -selectmode browse
  # workaround for a bug in treeview (xscrollbar does not get view size)
  $w.f.tree column #0 -minwidth 1200
  scrollbar $w.f.xbar -command "$w.f.tree xview" -orient horizontal
  scrollbar $w.f.ybar -command "$w.f.tree yview"
  
  pack $w.f.xbar -side bottom -fill x
  pack $w.f.ybar -side right -fill y
  pack $w.f.tree -side left -expand 1 -fill both
  
  bind $w <Escape> {destroy .displaymask}
  bind $w <Configure>  {recordWinSize .displaymask}
  
  $w.f.tree tag bind dblClickTree <Double-Button-1> "::tree::mask::maskTreeUnfold $w.f.tree"
  
  updateDisplayMask
}

proc ::tree::mask::updateDisplayMask {} {
  global ::tree::mask::mask
  
  set w .displaymask
  if { ![winfo exists $w] } {
    return
  }

  wm title $w "[::tr DisplayMask] [file tail $::tree::mask::maskFile], [array size mask] [::tr positions]"

  set tree  $w.f.tree
  $tree delete [$tree children {}]
  set fen [toShortFen [sc_pos fen]]
  # use clipbase to enter a dummy game
  set currentbase [sc_base current]
  sc_base switch clipbase
  sc_game push copyfast
  
  if {[catch {sc_game startBoard $fen} err]} {
    puts "sc_game startBoard $fen => $err"
  }
  if { [info exists mask($fen) ] } {
    set moves [lindex $mask($fen) 0]
    ::tree::mask::populateDisplayMask $moves {} $fen {} [lindex $mask($fen) 1]
  }
  sc_game pop
  
  sc_base switch $currentbase
}

################################################################################
# creates a new image whose name is name1name2, and concatenates two images.
# parameters are the markers, not the images names

proc ::tree::mask::createImage {marker1 marker2} {
  
  if {[lsearch [image names] "$marker1$marker2" ] != -1} {
    return
  }
  set img1 $::tree::mask::marker2image($marker1)
  set img2 $::tree::mask::marker2image($marker2)
  set w1 [image width $img1]
  set w2 [image width $img2]
  set h1 [image height $img1]
  set h2 [image height $img2]
  set margin 2
  image create photo $marker1$marker2 -height $h1 -width [expr $w1 + $w2 + $margin]
  $marker1$marker2 copy $img1 -from 0 0 -to 0 0
  $marker1$marker2 copy $img2 -from 0 0 -to [expr $w1 +$margin] 0
}

################################################################################

proc  ::tree::mask::maskTreeUnfold {t} {
  
  proc unfold {t id} {
    foreach c [$t children $id] {
      $t item $c -open true
      unfold $t $c
    }
  }
  
  unfold $t [$t selection]
}

# returns the first line of multi-line string (separated with \n)

proc ::tree::mask::trimToFirstLine {s} {
  set s [ lindex [ split $s "\n" ] 0 ]
  return $s
}


proc ::tree::mask::populateDisplayMask {moves parent fen fenSeen posComment} {
  global ::tree::mask::mask
  
  set posComment [ trimToFirstLine $posComment ]
  
  if { $posComment != ""} {
    set posComment "\[$posComment\] "
  }
  
  set tree .displaymask.f.tree
  
  foreach m $moves {
    set move [lindex $m 0]
    if {$move == "null"} { continue }
  if { $::tree::mask::displayMask_showNag } {
    set img ""
    if {[lindex $m 4] != "" && [lindex $m 5] == ""} {
      set img [lindex $m 4]
    }
    if {[lindex $m 4] == "" && [lindex $m 5] != ""} {
      set img [lindex $m 5]
    }
    if {[lindex $m 4] != "" && [lindex $m 5] != ""} {
      set l [array get ::tree::mask::marker2image]
      set idx [ lsearch $l [lindex $m 4] ]
      set mark1 [lindex $l [expr $idx -1 ] ]
      set idx [ lsearch $l [lindex $m 5] ]
      set mark2 [lindex $l [expr $idx -1 ] ]
      createImage $mark1 $mark2
      set img $mark1$mark2
    }
    
    set nag [lindex $m 1]
  }
    
    if {[lindex $m 3] != "" && $::tree::mask::displayMask_showComment} {
      set move_comment " ([trimToFirstLine [lindex $m 3]])"
    } else  {
      set move_comment ""
    }
    if { ! $::tree::mask::displayMask_showComment} {
      set posComment ""
    }
    if { $::tree::mask::displayMask_showNag } {
      set id [ $tree insert $parent end -text "$posComment[::trans $move][set nag]$move_comment" -image $img -tags dblClickTree -open $::tree::mask::displayMask_unfold]
    } else {
      set id [ $tree insert $parent end -text "$posComment[::trans $move]$move_comment" -tags dblClickTree -open $::tree::mask::displayMask_unfold]
    }

    if {[catch {sc_game startBoard $fen} err]} {
      puts "ERROR sc_game startBoard $fen => $err"
    }
    sc_move addSan $move
    
    set newfen [toShortFen [sc_pos fen] ]
    if {[lsearch $fenSeen $newfen] != -1} { return }
    if { [info exists mask($newfen) ] } {
      set newmoves [lindex $mask($newfen) 0]
      
      while { [llength $newmoves] == 1 } {
        lappend fenSeen $newfen
        sc_move addSan [ lindex $newmoves { 0 0 } ]
        set newfen [toShortFen [sc_pos fen] ]
        if {[lsearch $fenSeen $newfen] != -1} { return }
        lappend fenSeen $newfen
        if {[lindex $newmoves 0 3] != "" && $::tree::mask::displayMask_showComment } {
	  set move_comment " ([trimToFirstLine [lindex $newmoves 0 3]])"
        } else  {
          set move_comment ""
        }
        
        if {[lindex $newmoves 1] != "" && $::tree::mask::displayMask_showComment } {
          set pos_comment " \[[lindex $newmoves 1]\]"
          set pos_comment [ trimToFirstLine $pos_comment ]
        } else  {
          set pos_comment ""
        }
        if { $::tree::mask::displayMask_showNag } {
          set nag [ lindex $newmoves { 0 1 }  ]
        } else {
	  set nag ""
        }
        $tree item $id -text "[ $tree item $id -text ] $pos_comment[::trans [ lindex $newmoves { 0 0 }  ] ][ set nag  ]$move_comment"
        if { ! [info exists mask($newfen) ] } {
          break
        }
        set newmoves [lindex $mask($newfen) 0]
      }
      
      if { [info exists mask($newfen) ] } {
        set newmoves [lindex $mask($newfen) 0]
        ::tree::mask::populateDisplayMask $newmoves $id $newfen $fenSeen [lindex $mask($newfen) 1]
      }
    }
  }
  
}


proc ::tree::mask::searchMask {baseNumber} {
  
  set w .searchmask
  if { [winfo exists $w] } {
    # in case we are trying to open two search masks for different trees, best close the old one first
    destroy $w
  }

  toplevel $w
  wm title $w "[::tr SearchMask] \[[file tail [sc_base filename $baseNumber]]\]"

  frame $w.f1
  frame $w.f2
  pack $w.f1 -side top -fill both -expand 0 -padx 5 -pady 3
  pack $w.f2 -side top -fill both -expand 1 -padx 2 -pady 3
  
  ttk::button $w.f1.search -text [tr Search] -command "::tree::mask::performSearch $baseNumber"
  grid $w.f1.search -column 0 -row 0 -rowspan 2 -padx 5
  
  # NAG selection
  checkbutton $w.f1.nagl -font font_Small -text [tr Nag] -variable ::tree::mask::searchMask_usenag
  menu $w.f1.nagmenu
  ttk::menubutton $w.f1.nag -textvariable ::tree::mask::searchMask_nag -menu $w.f1.nagmenu 
  set ::tree::mask::searchMask_nag  [::tr "None"]
  foreach nag [ list "!!" " !" "!?" "?!" " ?" "??" " ~" [::tr "None"]  ] {
    $w.f1.nagmenu add command -label $nag -command "
      set ::tree::mask::searchMask_nag $nag
      set ::tree::mask::searchMask_usenag 1
    "
  }
  grid $w.f1.nagl -column 1 -row 0 -pady 2
  grid $w.f1.nag  -column 1 -row 1 -padx 2
  
  # Markers 1 & 2
  foreach j { 0 1 } {
    checkbutton $w.f1.ml$j -font font_Small -text "[tr Marker] [expr $j +1]" -variable ::tree::mask::searchMask_usemarker$j
    menu $w.f1.menum$j
    ttk::menubutton $w.f1.m$j -image $::tree::mask::marker2image(Include) -menu $w.f1.menum$j 
    set ::tree::mask::searchMask_m$j $::tree::mask::marker2image(Include)
    foreach e { Include Exclude MainLine Bookmark White Black NewLine ToBeVerified ToTrain Dubious ToRemove } {
      set i $::tree::mask::marker2image($e)
      $w.f1.menum$j add command -label [ tr $e ] -image $i -compound left -command "
         set ::tree::mask::searchMask_m$j $i
         $w.f1.m$j configure -image $i
         set ::tree::mask::searchMask_usemarker$j 1
      "
      # I don't think menubuttons can use image AND text at the same time
    }
    grid $w.f1.ml$j -column [expr 2 + $j] -row 0 -pady 2
    grid $w.f1.m$j  -column [expr 2 + $j] -row 1 -padx 2
  }
  
  # Color
  checkbutton $w.f1.colorl -font font_Small -text [tr ColorMarker] -variable ::tree::mask::searchMask_usecolor
  menu $w.f1.colormenu
  ttk::menubutton $w.f1.color -textvariable ::tree::mask::searchMask_trcolor -menu $w.f1.colormenu 
  set ::tree::mask::searchMask_trcolor  [::tr "White"]
  set ::tree::mask::searchMask_color "White"
  foreach c { "White" "Green" "Yellow" "Blue" "Red"} {
    $w.f1.colormenu add command -label [ tr "${c}Mark" ] -command "
      set ::tree::mask::searchMask_trcolor [ tr ${c}Mark ]
      set ::tree::mask::searchMask_color $c
      set ::tree::mask::searchMask_usecolor 1
    "
  }
  grid $w.f1.colorl -column 4 -row 0 -pady 2
  grid $w.f1.color  -column 4 -row 1 -padx 2
  
  # Move comment
  checkbutton $w.f1.movecommentl -font font_Small -text "Move comment" -variable ::tree::mask::searchMask_usemovecomment
  entry $w.f1.movecomment -font font_Small -textvariable ::tree::mask::searchMask_movecomment -width 12
  grid $w.f1.movecommentl -column 5 -row 0 -padx 2 -pady 2
  grid $w.f1.movecomment  -column 5 -row 1 -padx 2
  
  # Position comment
  checkbutton $w.f1.poscommentl -font font_Small -text "Position comment" -variable ::tree::mask::searchMask_useposcomment
  entry $w.f1.poscomment -font font_Small -textvariable ::tree::mask::searchMask_poscomment -width 12
  grid $w.f1.poscommentl -column 6 -row 0 -padx 2 -pady 2
  grid $w.f1.poscomment  -column 6 -row 1 -padx 2
  
  # display search result

  set tree $w.f2.text
  set headings [list [string totitle [tr moves]] [string totitle [tr comment]] FEN]
  ttk::treeview $tree -columns $headings -show headings \
    -yscrollcommand "$w.f2.ybar set" -xscrollcommand "$w.f2.xbar set" -selectmode browse

  # fuck, treeview is a c* of a widget
  $tree tag bind click2 <Double-Button-1> "::tree::mask::searchClick $baseNumber \[%W set \[%W focus\] FEN\]"

  foreach col $headings width {50 150 250} anchor {center w w} {
    $tree heading $col -text $col -anchor center
    $tree column  $col -width $width -anchor $anchor
  }

  scrollbar $w.f2.ybar -command "$tree yview"
  scrollbar $w.f2.xbar -command "$tree xview" -orient horizontal
  pack $w.f2.ybar -side right -fill y
  pack $w.f2.xbar -side bottom -fill x
  pack $tree -side left -fill both -expand yes

  setWinLocation $w
  setWinSize $w
  
  bind $w <Escape> {destroy .searchmask}
  bind $w <Configure> "recordWinSize $w"
  bind $w <F1> {helpWindow TreeMasks}
}

proc ::tree::mask::performSearch  { baseNumber } {
  global ::tree::mask::mask
  set t .searchmask.f2.text

  # contains the search result (FEN)
  set res {}
  
  set pos_count 0
  set move_count 0
  set pos_total 0
  set move_total 0
  
  $t delete [$t children {}]
  
  # Display FEN + moves and comments. Clicking on a line starts filtering current base
  foreach fen [array names mask] {
    incr pos_total
    
    # Position comment
    set poscomment [ lindex $mask($fen) 1 ]
    if { $::tree::mask::searchMask_useposcomment  } {
      if { [string match -nocase "*$::tree::mask::searchMask_poscomment*"  $poscomment] } {
	# lappend res [format "%6s %-20s %s" {} [string range [string map {"\n" ""} $poscomment] 0 19] $fen]
	lappend res [list {} $poscomment $fen]
        incr pos_count
      } else  {
        continue
      }
    }
    
    set moves [ lindex $mask($fen) 0 ]
    foreach m $moves {
      incr move_total
      
      # NAG
      if { $::tree::mask::searchMask_usenag } {
        set nag $::tree::mask::searchMask_nag
        if { $nag == [::tr "None"] } {  set nag ""  }
        if { [ string trim [lindex $m 1] ] != $nag } {
          continue
        }
      }
      
      # Markers 1 & 2
      if { $::tree::mask::searchMask_usemarker0 } {
        if { $::tree::mask::searchMask_m0 != [lindex $m 4] } {
          continue
        }
      }
      if { $::tree::mask::searchMask_usemarker1 } {
        if { $::tree::mask::searchMask_m1 != [lindex $m 5] } {
          continue
        }
      }
      
      # Color
      if { $::tree::mask::searchMask_usecolor } {
        if { [ string compare -nocase $::tree::mask::searchMask_color [lindex $m 2] ] != 0 } {
          continue
        }
      }
      
      # Move annotation
      set movecomment [lindex $m 3]
      if { $::tree::mask::searchMask_usemovecomment } {
        if {  ! [string match -nocase "*$::tree::mask::searchMask_movecomment*"  $movecomment]  } {
          continue
        }
      }
      
      # lappend res [format "%6s %-20s %s" [::trans [lindex $m 0]] [string range [string map {"\n" ""} $movecomment] 0 19] $fen]
      lappend res [list [::trans [lindex $m 0]] $movecomment $fen]
      incr move_count
    }
  }
  
  # output the result
  foreach l $res {
    $t insert {} end -values $l -tags click2
  }
  wm title .searchmask "[::tr SearchMask] \[[file tail [sc_base filename $baseNumber]]\] [::tr positions] $pos_count/$pos_total - [::tr moves] $move_count/$move_total"
}


proc  ::tree::mask::searchClick {baseNumber fen} {
  global tree

  if {[llength $fen] < 4} { return }
  
  # load the position in a temporary game (in clipbase), update the Trees then switch to Tree's base
  sc_base switch clipbase
  sc_game push copyfast
  
  if {[catch {sc_game startBoard $fen} err]} {
    puts "sc_game startBoard $fen => $err"
  } else  {
    # todo - call sc_search board maybe wiser ?
    # was  ::tree::refresh

    sc_tree search -cancel all
    sc_tree search -hide $tree(training$baseNumber) -sort $tree(order$baseNumber) -base $baseNumber \
      -fastmode $tree(fastmode$baseNumber) -adjust 1

    # updateBoard -pgn
  }
  
  sc_game pop
  sc_base switch $baseNumber

  # load the first best game 
  if {[sc_filter first != 0]} {
    ::game::Load [sc_filter first]
  } else  {
    updateBoard -pgn
  }

  set game [sc_filter first]
  # set game [lindex [sc_tree best $baseNumber 1 All] 0]
  # if {[string is integer -strict $game]}
  if {$game != 0} {
    ::game::Load $game
  } else  {
    updateBoard -pgn
  }
  
}


image create photo ::tree::mask::emptyImage -data {
R0lGODlhEAAQAIAAAP///////yH5BAEKAAEALAAAAAAQABAAAAIOjI+py+0P
o5y02ouzPgUAOw==
}
image create photo ::tree::mask::imageWhite -data {
  R0lGODlhEQARAMIEAAAAAD8/P39/f7+/v////////////////yH5BAEKAAcALAAAAAARABEA
  AANBeLrcrkOI8RwYA9QGCNHbAkhgGAieEISq551b60rhmJaV0BHwFgQu3uohC6oeu6AHB0Ep
  U4KG5AmVAq7YbDS0SQAAOw==
}
image create photo ::tree::mask::imageBlack -data {
  R0lGODlhEQARAMIEAAAAAD8/P39/f7+/v////////////////yH5BAEKAAQALAAAAAARABEA
  AAM0SLrcrkOI8Ry4oDac9eKeEnCBJ3CXoJ2oqqHdyrnViJYPC+MbjDkDH4bC0PloCiMMGWok
  AAA7
}

if {!$png_image_support} {
  image create photo ::tree::mask::imageMainLine -data {
    R0lGODlhEQARAOfzAAAAAAIAAAMAAAYAAAUFBRIMCw4ODisLBBQUFCUSDiIXFR8fHygoKDg4
    OE9BFVpQLlxQK2FWL2JWN2FXOGVZMGZaMrs3GWxfNGFhYWdjWcBGK8FGKm9rY8NMMd9CHsRU
    O3R0cnV0cs9SNcdXPtxQMN9PLnx4b3p6d9xWOHx7echhSslkS4CAf4GAf4KBfuNdP4OCgN9f
    QYODgYSDgYaFgt9jRsxtWIiIhZCKgeVpTuJrUN9yWNB4ZZOTkJSUkd94X916Y5qVipuVit96
    YpuWipiXlJeXl5iXl52Xi5mYkeh5YJ2XjJmYl56Yjed7Y5uZl5+ZjZ+Zjpqal5qamZual5+a
    jqCajpubmaGbj6GbkJycnKGckOeBa6OdkaOdkp6enp+enKOekueDbaSek5+fnqGfnKGgnaGh
    oKGhodeQfaWjoKSko+qMd+KPfamppqqppquqp6urqqyrqKurq6yrqa2rqa2sqe2kPq+vrrCv
    rbCvrrGwrrOyr+eejbOysfCpP7Ozs7SzsbSzsrS0steudLW0srW0s7W1s7W1tLW1tba1tLe2
    tbi3tPOvQrm3tri4trm4uLm5ubq5t/SyRO+0Tbu7ufe1RPK2Tfe1Rb29vO6rm8C/vMDAwMPC
    vsXEwcnJx8rKyM3LyPbSNs3My83Nzc/OytDOyvjYN9DQz9LRzdHR0dPSzvncONTTz9PT0tPT
    09XTztbU0PnfOdfV0dfW0dbW1tjW0djW0tnX09nX1PrkOtrZ1dvZ1fvnO9za1tza2Nzb2Nzb
    2fzpO9zc2t3c2N3c2t7d2fzrPd/e2uDe2t/f3eDf2+Hf2+Hf3OHg3ODg3+Hg3eLh3ePi4OTj
    4OXj4OXk4eTk5Obl4ufm4+jn5Ofn5+np6evq6Ozr6e3s6u3t6+3t7e/v7vDw7vDw8PHw7vLy
    8vPy8fTz8vT09Pb19Pb29vj39vj49/n5+Pn5+fr6+fv7+/z8+/7+/v//////////////////
    /////////////////////////////////yH5BAEKAP8ALAAAAAARABEAAAj7AP8J/JdAwIAD
    AxMOBPBKnaY+QFbUctdOm7UFCQGomyfmx44Rtea1w7MNUIOF8+ZxqVGjAxpOmdaMQzeHgEAA
    KZV48GCBTKZMZxzNAADg5jx5OnmiWtfu2S8AvS4ZfccmRw4Vo86dMwcA04Wi/3CyY8ODh40p
    jxAB0DWBqNFzAFgwAXBkEABKFZ6YAIvznLJP5IoFA3CKAgA7OPjOE4fokCBBAETdAQDCUxDF
    3PboyUPHAVEXPXZlUYzt2jVqwAAUodJpFS4ofMFBc7bMWCo+m0LxwjULCV9VzJAZI5bLVCxe
    vm7BEsI3SRgvXbZgsWIlC5QlRDKAVchdYUAAOw==
  }
} else {
  image create photo ::tree::mask::imageMainLine -data {
    iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
    WXMAAAsSAAALEgHS3X78AAAAB3RJTUUH0wkWEisFOaTQ6wAAAB10RVh0Q29tbWVudABDcmVhdGVk
    IHdpdGggVGhlIEdJTVDvZCVuAAABqklEQVR42oWTz0sbQRTHP6alPy49BBfM0VuuvQiN6G5zlFIP
    8Q/w0EPBsxbZP6B/gaciVbQklIoNHpdslkAOkUJLdSEHQeKyjI2HQjY1ypodD3a32bWuDx7z3sx7
    n5n5MgP/TD4AmQH5CCR3+6uRHsZGAaeri1Ey8X6DIAhuFqTEcRw6nQ6qqgIsADsAGRI2aJkMWiYA
    nufheR79fh/HcSgUClQqFYAv4UkekmKmaUZxEATouo4QAk3TsCxrDxhLBRSLxegKvV6PdruNbR9g
    WVZY8joVUKvVYnk+n0fXdXwxzeB7lmdze9VUgKZpsTybzXJ1NoO//5ilD8fcq0G9Xo/iUqnE1a9p
    /P0nLH/+zdbXQ4DnqQBVVZFSoigKl8cvuGg95d3ukLXNb2HJj8x9GiiKwvnPKc7tcd6uC9Y+mhiG
    EdXcAkyaJxz98WMadI5mWfnksF21EULcuaEEZKPRiD3d+ZdKFJfLZem6rjQMI5yLizgcDul2uwgh
    yOVyAFTrZ7iuG70HKWVs11sihkXJpmTjfwHNZhPf92Ow0TG0v3A7CVsi/Rsn/Q3ANdGG5Icao+xt
    AAAAAElFTkSuQmCC
  }
}

### Extra images in tcl/tools/reper.tcl

### end of tree.tcl
