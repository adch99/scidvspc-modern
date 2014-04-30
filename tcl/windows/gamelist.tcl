### gamelist.tcl

# 27/06/2009
# Rewritten to use the ttk::treeview widget (man ttk_treeview) by Steven Atkinson

set ::windows::gamelist::isOpen 0
set glstart 1
set ::windows::gamelist::findtext {}
set ::windows::gamelist::goto {}

### This trace messes up some other widgets i think S.A.
# trace variable ::windows::gamelist::goto w {::utils::validate::Regexp {^[0-9]*$}}

# glistFields: Layout of the GameList window fields.

# b:  Black player name.
# B:  Black Elo. Prints in width of 4, ignoring specified width.
# e:  Event name.
# f:  Game number, filtered (e.g. 1 = first game in filter).
# g:  Game number, actual (ignoring filter).
# m:  Number of moves. Prints "##" if width < 3 and numMoves > 99.
# M:  Final position material, e.g. "r1:r" for Rook+Pawn vs Rook.
# n:  Round name.
# o:  ECO code.
# r:  Result. Prints as 1 byte (1/0/=*) or as 3 bytes (1-0, etc).
# s:  Site name.
# S:  Start position flag. Prints "S" or " " (1 byte) ignoring width.
# w:  White player name.
# W:  White Elo. Prints in width of 4, ignoring specified width.
# y:  Year. Prints in width of 4, ignoring specified width.

#    Note that the "g" (game number) field MUST appear somewhere. (Mebbee ?)
#    The field order is how they are appear in the widget.
#    See the comments at the start of the function "PrintGameInfo" in
#    src/index.cpp for a list of available field codes.

# code  name  anchor  width

set glistFields {
  g Number	e 7
  w White	w 14
  b Black	w 14
  r Result	e 5
  m Length	e 5
  d Date	w 10
  e Event	w 10
  W WElo	e 5
  B BElo	e 5
  n Round	e 5
  s Site	w 10
  D Deleted	e 3
  V Variations	e 3
  C Comments	e 3
  A Annos	e 3
  o ECO		e 5
  O Opening	w 6
  U Flags	e 3
  S Start	e 3
}

set glistCodes {} 
set glistNames {}

## If you wish to enable these fields, please make sure a default field width is set S.A.
# append glistFields { c Country   e  3 } ; # Country (last 3 chars of Site Name)
# append glistFields { E EventDate e  7 } ; # Event Date
# append glistFields { F EndMaterial e  7 } ; # Final position material


foreach {code title anchor null} $glistFields {
  # Unusual glistCodes format is needed for [sc_game list ...]
  # SCID uses - append cformat "*\n" - but appending a space works too

  lappend glistCodes "$code* "
  lappend glistNames $title
}

### glistCodes is a printf format style string. A \n is used to split the main "sc_game list"
# string into a proper list for processing. It is now appended in sc_game_list

# glistNames is set from glistFields (above)
# Number White Black Result Length Event Round Date WElo BElo Site ECO Deleted Opening Flags Variations Comments Annos Start

# These fields are used by "sc_base sort $col {}" in proc SortBy
# (ECO/Eco case seems to differ, but not matter)
# src/index.cpp: static const char * sortCriteriaNames[] = 
# Date, Event, Site, Round, White, Black, Eco, Result, Length, Rating, WElo, BElo, Country, Month, Deleted, Eventdate, Variations, Comments

proc ::windows::gamelist::FilterText {} {
  global glstart
  variable findtext

  ::utils::history::AddEntry ::windows::gamelist::findtext $findtext
  # clear highlighted text in widget
  .glistWin.b.find selection range end end

  busyCursor .glistWin
  update

  foreach needle [split $findtext +] {
    # temp is number of items removed - currently unused
    #         sc_filter textfilter CASE_FLAG                      TEXT
    set temp [sc_filter textfilter $::windows::gamelist::findcase [string trim $needle]]
  }

  set glstart 1
  ::windows::gamelist::Refresh first
  .glistWin.tree selection set [lindex [.glistWin.tree children {}] 0]

  unbusyCursor .glistWin
}

### Rewrote this ... again. S.A
#
# Find text only matches against White/Black/Event/Site
#
# Previously it would treat "+" as a logical AND... but it's just too slow for tcl.

proc ::windows::gamelist::FindText {} {
  global glstart
  variable findtext

  ::utils::history::AddEntry ::windows::gamelist::findtext $findtext
  .glistWin.b.find selection range end end

  busyCursor .glistWin 
  update
  set temp [sc_filter textfind $::windows::gamelist::findcase $glstart $findtext]
  unbusyCursor .glistWin

  if {$temp < 1} {
    set glstart 1
    ::windows::gamelist::Refresh first
    bell
  } else {
    set glstart $temp
    ::windows::gamelist::Refresh first
    .glistWin.tree selection set [lindex [.glistWin.tree children {}] 0]
  }
}

proc ::windows::gamelist::Load {number} {
  # for some reason, number has a trailing "\n"

  set number [string trim $number "\n"]
  set ::windows::gamelist::goto $number
  ::game::Load $number
}

proc ::windows::gamelist::showCurrent {} {
  # Ooops. [sc_game number] returns 0 after sorting, making this widget useless after sorting

  set index [sc_game number]
  set ::windows::gamelist::goto $index
  ::windows::gamelist::showNum $index
}

proc ::windows::gamelist::showNum {index {bell 1}} {
  global glstart glistSize
  set result [sc_filter locate $index]

  # First, check that requested game is not filtered
  if  { [sc_filter index $result] != $index \
     || $result < 1 \
     || $result > [sc_filter count]} {
    if {$bell==1} {
      # I dont think [bell] works, so make our own
      set bg [.glistWin.c.goto cget -background]
      set fg [.glistWin.c.goto cget -foreground]
      .glistWin.c.goto configure -background $fg -foreground $bg
      after 200 ".glistWin.c.goto configure -background $bg -foreground $fg"
    }
    .glistWin.tree selection set {}
  } else {
    # See if it's already on the screen
    set found 0
    foreach item [.glistWin.tree children {}] {
      if {[.glistWin.tree set $item Number] == $index} {
	set found 1
	break
      }
    }
    if {$found} {
      .glistWin.tree selection set $item
    } else {
      set glstart $result

      set totalSize [sc_filter count]
      set lastEntry [expr $totalSize - $glistSize]
      if {$lastEntry < 1} {
	set lastEntry 1
      }
      if {$glstart > $lastEntry} {
	set glstart $lastEntry
      }

      # Highlights CURRENT game if on screen, otherwise game "index"
      # Even when we'd prefer just to highlight "index" :<

      set current_item [::windows::gamelist::Refresh first]
      if {$current_item == {}} {
	# Nasty, nasty recursive call... "found" above will now trigger and highlight this game
	::windows::gamelist::showNum $result $bell
      } else {
	.glistWin.tree selection set $current_item
      }
    }
  }
}

proc ::windows::gamelist::recordWidths {} {
  global glistNames
  catch {
    # Save column widths
    set ::windows::gamelist::widths {}
    foreach column $glistNames {
      lappend ::windows::gamelist::widths [.glistWin.tree column $column -width]
    }
  }
}

proc ::windows::gamelist::Close {window} {
  # Just do this once. Using .glistWin.tree breaks recordWidths for some reason.
  if {$window == {.glistWin.f}} {
    ::windows::gamelist::recordWidths
    # bind .glistWin <Destroy> {}
    set ::windows::gamelist::isOpen 0
  } 
}

proc ::windows::gamelist::Open {} {

  ### ttk::style theme use alt
  # default classic alt clam

  global highcolor helpMessage
  global glistNames glistFields glistSortedBy glSortReversed glistSize
  global maintFlags maintFlaglist

  set w .glistWin

  if {[winfo exists $w]} {
    raiseWin $w
    return
  }

  ::createToplevel $w

  wm iconname $w "[tr WindowsGList]"
  wm minsize $w 300 160

  ### Hmmm - throws errors on OSX, windows
  if {!$::docking::USE_DOCKING || !$::macOS}  {
    catch {wm withdraw $w}
  }

  setWinLocation $w
  setWinSize $w
  ::windows::gamelist::SetSize

  standardShortcuts $w
  bind $w <F1> { helpWindow GameList }
  bind $w <Destroy> { ::windows::gamelist::Close %W}
  bind $w <Control-Tab> {::file::SwitchToNextBase ; break}
  catch {
    if {$::windowsOS} {
      bind $w <Shift-Tab> {::file::SwitchToNextBase -1 ; break}
    } else {
      bind $w <ISO_Left_Tab> {::file::SwitchToNextBase -1 ; break}
    }
  }
  bind $w <Control-Key-quoteleft> {::file::SwitchToBase 9}
  bind $w <Escape> "destroy $w"

  set ::windows::gamelist::isOpen 1

  ### Frames

  frame $w.c
  frame $w.b
  frame $w.f
  ttk::treeview $w.tree -columns $glistNames -show headings -xscroll "$w.hsb set"
    # -yscroll "$w.vsb set" -xscroll "$w.hsb set"


  if { $::windows::gamelist::widths == {} } {
    # initialise field widths
    set fontwidth [font measure [ttk::style lookup [$w.tree cget -style] -font] "X"]
    foreach {nulla nullb nullc i} $glistFields {
	lappend ::windows::gamelist::widths [expr $fontwidth * $i]
    }
  }

  # title font isn't working &&& I don't think it's configurable !
  $w.tree tag configure treetitle -font font_H1

  # this font is working, but doesn't affect how many entries fit on a screen, and isn't enabled
  $w.tree tag configure treefont -font font_Regular
  bind $w.tree <Button-2> {
    set ::windows::gamelist::showButtons [expr {!$::windows::gamelist::showButtons}]
    ::windows::gamelist::displayButtons
  }
  bind $w.tree <Button-3> {
    ::windows::gamelist::Popup %W %x %y %X %Y
  }
  $w.tree tag bind click2 <Double-Button-1> {::windows::gamelist::Load [%W set [%W focus] Number]}
  $w.tree tag configure deleted -foreground gray50
  $w.tree tag configure error -foreground red
  # bind $w.tree <ButtonRelease-1> { parray ::ttk::treeview::State}

  # Hmm... seems no way to change the deafult blue bg colour for selected items
  # without using (extra) tags. So this colour must look ok with a blue background

  ::windows::gamelist::checkAltered

  # $w.tree tag configure colour -background $::defaultBackground
  # $w.tree tag bind click1 <Button-1> {}

  if {$::buggyttk} {
    # Using tk::scale has a hiccup because the line "set glstart $::glistStart($b)" in gamelist::Reload fails
    # So switching between bases with wish-8.5.10 doesn't remember which games we're looking at
    # Also, "find" doesn't find things on the last page.
    scale  $w.vsb -from 1 -orient vertical -variable glstart -showvalue 0 -command ::windows::gamelist::SetStart -bigincrement $glistSize -relief flat
  } else {
    ttk::scale $w.vsb -orient vertical -command ::windows::gamelist::SetStart -from 1 -variable glstart
    # -sliderlength 200  ; It'd be nice to make the slider big sometimes, but unsupported in ttk::scale
  }

  # -borderwidth 0
  ttk::scrollbar $w.hsb -orient horizontal -command "$w.tree xview"

  # SCID:
  #  scale $w.scale -from 1 -length 250 -orient horiz -variable glstart -showvalue 0 -command ::windows::gamelist::SetStart \ -bigincrement $glistSize -takefocus 0 -width 10 -troughcolor $buttoncolor


  pack $w.f -fill both -expand 1
  ::windows::gamelist::displayButtons 

  grid $w.tree $w.vsb -in $w.f -sticky nsew
  grid $w.hsb         -in $w.f -sticky nsew
  grid column $w.f 0 -weight 1
  grid row    $w.f 0 -weight 1

  ### Init the ttk_treeview column titles

  set font [ttk::style lookup [$w.tree cget -style] -font]
  foreach {code col anchor null} $glistFields width $::windows::gamelist::widths {
      if {[info exists ::tr(Glist$col)]} {
        set name $::tr(Glist$col)
      } else {
        set name $col
      }

      # No sort implemented for these columns
      if {[lsearch {Number Opening Flags Annos Start} $col] == -1} {
	$w.tree heading $col -text  $name  -command [list SortBy $w.tree $col]
      } else {
	$w.tree heading $col -text  $name
      }
      $w.tree column  $col -width $width -anchor $anchor -stretch 0
  }

  set glistSortedBy {}
  set glSortReversed 0

  bind $w <Left>  {}
  bind $w <Right> {}
  bind $w <Up>    {::windows::gamelist::Scroll -1}
  bind $w <Down>  {::windows::gamelist::Scroll  1}
  bind $w <Prior> {::windows::gamelist::Scroll -$glistSize}
  bind $w <Control-a> {.glistWin.tree selection set [.glistWin.tree children {}]}
  bind $w <Home> {
    set glstart 1
    ::windows::gamelist::Refresh first
  }
  bind $w <End> {
    set totalSize [sc_filter count]
    set glstart $totalSize
    set lastEntry [expr $totalSize - $glistSize]
    if {$lastEntry < 1} {
      set lastEntry 1
    }
    if {$glstart > $lastEntry} {
      set glstart $lastEntry
    }
    ::windows::gamelist::Refresh last
  }
  bind $w <Next>  {
    incr glstart $glistSize
    set totalSize [sc_filter count]
    set lastEntry [expr $totalSize - $glistSize]
    if {$lastEntry < 1} {
      set lastEntry 1
    }
    if {$glstart > $lastEntry} {
      set glstart $lastEntry
    }
    ::windows::gamelist::Refresh first
  }
  # MouseWheel bindings:
  # bind $w <MouseWheel> {::windows::gamelist::Scroll [expr {- (%D / 120)}]}
  if {$::windowsOS || $::macOS} {
    # Does this work fine on OSX ?
    # http://sourceforge.net/tracker/?func=detail&aid=2931538&group_id=12997&atid=112997
    bind $w <MouseWheel> {
      if {[expr -%D] < 0} { ::windows::gamelist::Scroll -1}
      if {[expr -%D] > 0} { ::windows::gamelist::Scroll 1}
    }
    bind $w <Control-MouseWheel> {
      if {[expr -%D] < 0} { ::windows::gamelist::Scroll -$glistSize}
      if {[expr -%D] > 0} { ::windows::gamelist::Scroll $glistSize}
    }
  } else {
    bind $w <Button-4> {::windows::gamelist::Scroll -1}
    bind $w <Button-5> {::windows::gamelist::Scroll 1}
    bind $w <Control-Button-4> {::windows::gamelist::Scroll -$glistSize}
    bind $w <Control-Button-5> {::windows::gamelist::Scroll $glistSize}
  }

  bind $w <Control-F> ::search::filter::reset
  bind $w <Control-N> ::search::filter::negate

  foreach i { <Control-Home> <Control-End> <Control-Down> <Control-Up> <Control-question>} {
    bind .glistWin $i +::windows::gamelist::showCurrent
  }

  set ::windows::gamelist::findtextprev {}
  set ::windows::gamelist::finditems {}

  ### Top row of buttons, etc

  button $w.b.save -image tb_save -relief flat -command {
    if {[sc_game number] != 0} {
      gameReplace
    } else {
      gameAdd
    }
  }
  # Quick save is right click
  bind $w.b.save <Button-3> gameQuickSave

  button $w.b.bkm -relief flat -image tb_bkm
  bind   $w.b.bkm <ButtonPress-1> "tk_popup .main.tb.bkm.menu %X %Y ; break"

  button $w.b.gfirst -image tb_gfirst -command "
    event generate $w.tree <Home>
    ::game::LoadNextPrev first 0" -relief flat
  button $w.b.gprev -image tb_gprev -command {::game::LoadNextPrev previous 0} -relief flat
  button $w.b.gnext -image tb_gnext -command {::game::LoadNextPrev next 0} -relief flat
  button $w.b.glast -image tb_glast -command "
    event generate $w.tree <End>
   ::game::LoadNextPrev last 0" -relief flat

  set ::windows::gamelist::goto {}

  button $w.b.select -textvar ::tr(SetFilter) -font font_Small -relief flat -command {
    set items [.glistWin.tree selection]
    if { "$items" == "" } {
      bell
    } else {
      sc_filter reset
      # remove the select items (Hmmm... will reset ply value though :-( )
      foreach i $items {
	sc_filter remove [.glistWin.tree set $i Number]
      }
      sc_filter negate
      set glstart 1
      ::windows::gamelist::Refresh
    }
  }

  ### Filter items
  button $w.b.remove -textvar ::tr(GlistRemoveThisGameFromFilter) -font font_Small -relief flat -command ::windows::gamelist::Remove
  # Trim extra space from this crowded frame
  if {!$::windowsOS} {
    $w.b.remove configure -width 5
    $w.b.select configure -width 5
  }
  bind $w.tree <Delete> "::windows::gamelist::Remove 1"
  bind $w.tree <Control-Delete> "$w.c.delete invoke"

  button $w.b.removeabove -text Rem -image arrow_up -compound right -font font_Small -relief flat -command {::windows::gamelist::removeFromFilter up}
  button $w.b.removebelow -text Rem -image arrow_down -compound right -font font_Small -relief flat -command {::windows::gamelist::removeFromFilter down}
  button $w.b.reset -textvar ::tr(Reset) -font font_Small -relief flat -command ::search::filter::reset
  button $w.b.negate -text [lindex [tr SearchNegate] 0] -font font_Small -relief flat -command ::search::filter::negate

  ### Filter items against the find entry widget
  button $w.b.filter -font font_Small -relief flat -textvar ::tr(Filter) \
    -command {::windows::gamelist::FilterText}

  # button $w.b.findlabel -font font_Small -relief flat -textvar ::tr(GlistFindText) \
  #   -command {::windows::gamelist::FindText}

  # button $w.b.findall -font font_Small -relief flat -text "Find All" \
  #   -command {::windows::gamelist::FindText}

  ttk::combobox $w.b.find -width 10 -font font_Small -textvariable ::windows::gamelist::findtext
  ::utils::history::SetCombobox ::windows::gamelist::findtext $w.b.find
  bind $w <Control-f> "focus $w.b.find"

  # didn't use to work
  # ::utils::history::SetLimit ::windows::gamelist::findtext 5
  # ::utils::history::PruneList ::windows::gamelist::findtext

  bind $w.b.find <Control-Return> "$w.c.load invoke"
  bind $w.b.find <Return> {::windows::gamelist::FindText}
  bind $w.b.find <Home> "$w.b.find icursor 0; break"
  bind $w.b.find <End> "$w.b.find icursor end; break"

  checkbutton $w.b.findcase -textvar ::tr(IgnoreCase) -font font_Small \
    -variable ::windows::gamelist::findcase -onvalue 1 -offvalue 0

  pack $w.b.findcase -side right
  pack $w.b.find -side right ; # -expand 1 -fill x
  pack $w.b.filter $w.b.reset $w.b.negate -side right 
  pack $w.b.save $w.b.bkm $w.b.gfirst $w.b.gprev $w.b.gnext $w.b.glast -side left

  ### Bottom row of buttons , etc

  entry $w.c.goto -width 8 -justify right -textvariable ::windows::gamelist::goto -font font_Small
  bind $w.c.goto <Return> {
    ::windows::gamelist::showNum $::windows::gamelist::goto
  }
  dialogbutton $w.c.browse -text $::tr(Browse) -font font_Small -command {
    set selection [.glistWin.tree selection]
    if { $selection != {} } {
      ::gbrowser::new 0 [.glistWin.tree set [lindex $selection 0] Number]
    }
  }

  dialogbutton $w.c.current -font font_Small -textvar ::tr(Current) -command ::windows::gamelist::showCurrent

  # no longer packed, but still used as Control-Enter binding
  dialogbutton $w.c.load -text Load -font font_Small -command {
    set selection [.glistWin.tree selection]
    if { $selection != {} } {
      ::windows::gamelist::Load [.glistWin.tree set [lindex $selection 0] Number]
    }
  }

  dialogbutton $w.c.delete -text $::tr(Delete) -font font_Small -command {
    ::windows::gamelist::ToggleFlag D
    ::windows::gamelist::Refresh
    configDeleteButtons
    updateGameinfo
  }

  dialogbutton $w.c.compact -text {Compact} -font font_Small -command "compactGames $w ; configDeleteButtons"

  # Flag Menubutton
  menubutton $w.c.title -menu $w.c.title.m -indicatoron 1 -relief raised -font font_Small
  menu $w.c.title.m -font font_Small

  foreach flag $maintFlaglist  {
    # dont translate CustomFlag (todo)
    if { [lsearch -exact { 1 2 3 4 5 6 } $flag ] == -1 } {
      set tmp $::tr($maintFlags($flag))
    } else {
      set tmp [sc_game flag $flag description]
      if {$tmp == "" } {
        set tmp "Custom $flag"
      } else {
        set tmp "$tmp ($flag)"
      }
    }
    $w.c.title.m add command -label "$tmp" -command "
      set glistFlag $flag
      $w.c.title configure -text \"$tmp\"
      refreshCustomFlags
      "
  }
  # only need to call this now to init the menubutton "-text"
  refreshCustomFlags

  dialogbutton $w.c.flag -text $::tr(Flag) -font font_Small -command {
    ::windows::gamelist::ToggleFlag $glistFlag
    updateGameinfo
  }

  configDeleteButtons

  dialogbutton $w.c.help  -textvar ::tr(Help) -width 5 -font font_Small -command { helpWindow GameList }
  dialogbutton $w.c.close -textvar ::tr(Close) -font font_Small -command { focus .main ; destroy .glistWin }

  pack $w.c.close $w.c.compact -side right -padx 3 ; # $w.c.help
  pack $w.c.current $w.c.goto $w.c.title -side left -padx 3

  if {$::windowsOS} {
    # cant focus entry combo on windows as it hogs the wheelmouse
    focus $w.tree
  } else {
    # focus entry box
    focus $w.b.find
  }

  # hacks to disable the down/page-down keys for combobox
  bind  $w.b.find <Down> "focus $w.tree ; event generate $w.tree <Down> ; break"
  bind  $w.b.find <End>  "focus $w.tree ; event generate $w.tree <End> ; break"

  # Try to show the current game if opening for the first time - but not working yet.
  # (Also look at how bookmakrs are opened)
  if {0} {
    if {$::windows::gamelist::goto == {}} {
      ::windows::gamelist::showCurrent
    } else {
      set ::windows::gamelist::goto 1
    }
  }

  set ::windows::gamelist::goto 1

  update

  ::windows::gamelist::Refresh
  ::windows::switcher::Open
  catch {wm state $w normal}
  ::createToplevelFinalize $w

  bind $w <Configure> {::windows::gamelist::Configure %W }
}

proc ::windows::gamelist::Popup {w x y X Y} {

  set row [$w identify row $x $y]
  set selection [$w selection]

  if {$row == "" } {
    return
  }

  if {[lsearch $selection $row] == -1 || [llength $selection] == 1} {
    set menutype full
    event generate $w <ButtonPress-1> -x $x -y $y
  } else {
    set menutype short
  }

  # set number [$w set [$w focus] Number]
  # set number [string trim $number "\n"]

  ### nb - redefined $w here

  set w .glistWin
  set menu .glistWin.context

  if { [winfo exists $menu] } {
    destroy $menu
  }

  menu $menu -tearoff 0

  if {$menutype == "short"} {
  $menu add command -label $::tr(GlistRemoveThisGameFromFilter) -command ::windows::gamelist::Remove
  $menu add command -label $::tr(GlistDeleteField) -command "$w.c.delete invoke"
  $menu add command -label $::tr(Flag)      -command "$w.c.flag invoke"
  $menu add command -label $::tr(SetFilter) -command "$w.b.select invoke"
  $menu add separator
  $menu add command -label $::tr(Reset) -command "$w.b.reset invoke"
  } else {
  $menu add command -label $::tr(LoadGame) -command "$w.c.load invoke"
  $menu add command -label $::tr(Browse) -command "$w.c.browse invoke"
  $menu add command -label $::tr(GlistDeleteField) -command "$w.c.delete invoke"
  $menu add command -label $::tr(Flag)      -command "$w.c.flag invoke"
  $menu add command -label $::tr(SetFilter) -command "$w.b.select invoke"
  $menu add separator
  $menu add command -label $::tr(GlistRemoveThisGameFromFilter) -command ::windows::gamelist::Remove
  $menu add command -label $::tr(GlistRemoveGameAndAboveFromFilter) -command "$w.b.removeabove invoke"
  $menu add command -label $::tr(GlistRemoveGameAndBelowFromFilter) -command "$w.b.removebelow invoke"
  $menu add command -label $::tr(Reset) -command "$w.b.reset invoke"
  }

  tk_popup $menu [winfo pointerx .] [winfo pointery .]
}

proc ::windows::gamelist::Remove {{shownext 0}} {
  set w .glistWin.tree
  set items [$w selection]
  foreach i $items {
    sc_filter remove [$w set $i Number]
  }
  set gl_num [$w set [$w next [lindex $items end]] Number]
  $w delete $items

  ::windows::stats::Refresh
  ::windows::gamelist::Refresh
  if {$shownext} {
    ::windows::gamelist::showNum $gl_num nobell
  }

  set ::windows::gamelist::finditems {}
  setGamelistTitle
}

proc ::windows::gamelist::displayButtons {} {
  set w .glistWin
  if {$::windows::gamelist::showButtons} {
    pack $w.b -side bottom -fill x -padx 5 -before $w.f
    pack $w.c -side bottom -fill x -padx 5 -before $w.b
  } else {
    pack forget $w.b $w.c
  }
}

proc ::windows::gamelist::Configure {window} {
  recordWidths
  recordWinSize .glistWin
  if {$window == {.glistWin.tree}} {
    recordWinSize .glistWin
    ::windows::gamelist::Refresh
  }
}

proc ::windows::gamelist::checkAltered {} {
  set w .glistWin.tree
  if {![winfo exists $w]} {
    return
  }
  if {[sc_game number] == 0} {
    catch {
      # wish <= 8.5.8 doesnt have treeview tag remove
      $w tag remove current
    }
  }
  if {[sc_game altered]} {
    # It is impossible to signify the current game with a red foreground and blue background
    # because internally it is part of treeviews "selection", which may span multiple childs
    $w tag configure current -foreground red
  } else {
    if {$::macOS} {
      # OSX treeview selection colour is different
      $w tag configure current -foreground steelblue3
    } else {
      $w tag configure current -foreground blue2
    }
  }
}

proc configDeleteButtons {} {
  # also check the Flag button
  set w .glistWin
  # debug puts [sc_base current] &&&
  if {[sc_base current] == [sc_info clipbase]} {
    ### Can't compact clipbase
    $w.c.compact configure -state disabled
    $w.c.flag configure -state normal
    $w.c.title configure -state normal
    $w.c.delete configure -state normal
  } elseif {[sc_base isReadOnly]} {
    $w.c.flag configure -state disabled
    $w.c.title configure -state disabled
    $w.c.delete configure -state disabled
    $w.c.compact configure -state disabled
  } else {

    ### do we want to always check the delete and flag buttons ? &&&
    #  if {[.glistWin.tree selection] == ""} disable delete, flag
    # $w.tree tag bind click <Button-1> {configDeleteButtons}

    $w.c.flag configure -state normal
    $w.c.title configure -state normal
    $w.c.delete configure -state normal
    $w.c.compact configure -state normal

    ### too slow!
    # if {[compactGamesNull]} 
    #  $w.c.compact configure -state disabled
    # else 
    #  $w.c.compact configure -state normal
  }
}

proc ::windows::gamelist::Scroll {nlines} {
  global glstart

  incr glstart $nlines
  if {$nlines < 0} {
  ::windows::gamelist::Refresh last
  } else {
  ::windows::gamelist::Refresh first
  }
}

proc ::windows::gamelist::SetSize {} {
  global glistSize glFontHeight 

  ### Figure out how many lines of text in the treeview widget
  ### This is probably broke on some platforms

  ### "treeview configure -rowheight" might work better, but is only in cvs
  ### also consider "[$w bbox [lindex [$w children {}] 0]]" 

  set w .glistWin.tree
  if {![winfo exists $w]} {return}

if {0} {
  if {![info exists glFontHeight]} {
    set fontspace [font metrics [ttk::style lookup [$w cget -style] -font] -linespace]
    # Nasty hack to make things work
    if {$::windowsOS} {
      set glFontHeight [expr $fontspace*125/72]
    } elseif {$::macOS} {
      set glFontHeight [expr $fontspace*92/72]
    } else {
      set glFontHeight [expr $fontspace*106/72]
    }
  }
  # $glFontHeight ~ 22 linux

  # set glistSize [expr {[winfo height $w] / $glFontHeight +([winfo height $w]-300)/200}]
}
  # hardcoded in ttkTreeview.c to (20 pixels high + 1 pixel padding ) - 1 row for title.
  set glistSize [expr {int([winfo height $w] / 21)-1}]

  # debugging voodoo
  # puts "glistSize $glistSize , winfo height [winfo height $w]"
  # 700 = +2 # 100 = -1
}

image create photo arrow_up -format gif -data {
R0lGODlhCgAKAIABAAAAAP///yH5BAEKAAEALAAAAAAKAAoAAAIPjI+pq8AA
G4xnWmMz26gAADs=
}

image create photo arrow_down -format gif -data {
R0lGODlhCgAKAIABAAAAAP///yH5BAEKAAEALAAAAAAKAAoAAAIPjI+pa+D/
GnRoqrgA26wAADs=
}

image create photo arrow_close -format gif -data {
R0lGODlhDAAMAIABAAAAAP///yH5BAEKAAEALAAAAAAMAAwAAAIVjI+pCQjt
4FtvrmBp1SYf2IHXSI4FADs=
}

### Array recording which databases have been sorted, and which field and order

array set glistSortColumn {}
array set glistStart {}
array set glistFlipped {} ; # should actually be named isFlipped... but is used similarly to glistStart
set glistFlipped([sc_info clipbase]) 0

# There is no other mechanism to remember last database sort, but there should
# probably be one in "tkscid.h::struct scidBaseT".
# "glistSortColumn" is currently not persistent.  It could be done, but isn't
# trivial as a problem with having a history is that it gets complicated when
# handling read-only PGNs

proc SortBy {tree col} {
    global glistSortedBy glstart glSortReversed glistSortColumn

    set w .glistWin

    # hmmm. a few fields are not valid sorting.

    # if {[sc_base numGames] > 200000} 
    if {![sc_base isReadOnly] && [sc_base current] != [sc_info clipbase]} {
      set answer [tk_messageBox -parent $w -title "Scid" -type yesno -default yes -icon question \
          -message "Do you wish to sort database \"[file tail [sc_base filename]]\" containing [sc_base numGames] games by \"$col\""]
      if {$answer != "yes"} { return }
    }

    set ::windows::gamelist::finditems {}
  
    if {$col == $glistSortedBy} {
      set glSortReversed [expr !$glSortReversed]
    } else {
      set glSortReversed 0

      # clear previous arrows
      if {$glistSortedBy != {} } {
	$w.tree heading $glistSortedBy -image {}
      }

      set glistSortedBy $col
    }

    set glistSortColumn([sc_base current]) [list $col $glSortReversed ]

    if {$glSortReversed} {
      sc_base sortdown
    } else {
      sc_base sortup
    }

    busyCursor .
    update

    # This catch is annoying, but if we remove it, how do we unbusyCursor when sort fails ?
    catch {sc_base sort $col {}}

    unbusyCursor .
    updateBoard
    set glstart 1
    ::windows::gamelist::Refresh
}


proc setGamelistTitle {} {
  set fname [file tail [sc_base filename]]
  if {![string match {\[*\]} $fname]} {
    set fname "\[$fname\]"
  }

  setTitle .glistWin "[tr WindowsGList]: $fname [sc_filter count]/[sc_base numGames] $::tr(games)" 
}

# called by file.tcl when db is changed

proc ::windows::gamelist::Reload {} {
  global glistSortedBy glstart

  set b [sc_base current]

  if {[info exists ::glistStart($b)]} {
    set glstart $::glistStart($b)
  }
  if {[info exists ::glistFlipped($b)]} {
    if {$::glistFlipped($b) != [::board::isFlipped .main.board]} {
      toggleRotateBoard
    }
  } else {
    # should not happen
    puts "Oops - glistFlipped($b) not intialised"
  }

  set w .glistWin
  if {![winfo exists $w]} {return}

  if {$glistSortedBy != {} } {
    $w.tree heading $glistSortedBy -image {}
  }

  set glistSortedBy {}
  sc_base sortup
  ::windows::gamelist::Refresh
}

# Returns the treeview item for current game (if it is shown in widget)

proc ::windows::gamelist::Refresh {{see {}}} {
  global glistCodes glstart glistSize glistSortColumn glistSortedBy glistStart

  set w .glistWin
  if {![winfo exists $w]} {return}

  set b [sc_base current]

  if {[info exists glistSortColumn($b)]} {

    foreach {col glSortReversed} $glistSortColumn($b) {}
    set glistSortedBy $col
    if {$glSortReversed} {
	$w.tree heading $col -image arrow_down
    } else {
	$w.tree heading $col -image arrow_up
    }
  } else {
    # clear previous arrows
    if {$glistSortedBy != {} } {
      $w.tree heading $glistSortedBy -image {}
    }
  }

  ::windows::gamelist::SetSize

  set ::windows::gamelist::finditems {}
  updateStatusBar
  $w.tree delete [$w.tree children {}]

  # check boundries !
  set totalSize [sc_filter count]

  if {$glstart < 1} {
    set glstart 1
  }
  if {$glstart == 1} {
    set see first
  }
  if {$glstart > $totalSize} {
    set glstart $totalSize
  }
  set glistStart($b) $glstart

  set glistEnd [expr $glstart + $glistSize]
  if { $glistEnd > $totalSize} {
    set glistEnd $totalSize
  }

  set current_item {}
  set current [sc_game number]

  ### sc_game_list now returns a string with NEWLINES which we use to split into a list
  ### It will probably break/misbehave if somehow a NEWLINE gets into the database.

  if {$glistEnd < $glstart} {
    set glistEnd $glstart
  }

  set c [expr $glistEnd - $glstart + 1]

  set chunk [sc_game list $glstart $c $glistCodes]
  # remove trailing "\n"
  set chunk [string range $chunk 0 end-1]

  set  VALUES [split $chunk "\n"]
  set i [llength $VALUES]

  # reverse insert for speed-up

  for {set line $glistEnd} {$line >= $glstart} {incr line -1} {
    incr i -1
    set values [encoding convertfrom [lindex $VALUES $i]]

    if {[catch {set thisindex [lindex $values 0]}]} {
      ### Mismatched brace in game values. Bad!
      # Scid's gamelist handles it ok, but game causes errors in other places
      set thisindex [string range $values 1 [string first " " $values]]
      $w.tree insert {} 0 -values [list $thisindex {Unmatched brace} {in game}] -tag [list click2 error]
    } else {
      if {$thisindex == "$current "} {
	set current_item [$w.tree insert {} 0 -values $values -tag [list click2 current]]
      } elseif {[lindex $values 11] == {D }} {
	$w.tree insert {} 0 -values $values -tag [list click2 deleted] ;#treefont
      } else {
	$w.tree insert {} 0 -values $values -tag click2
      }
    }
  }

  ## first and last attempts to work around it's hard to know how many lines fit in ttk::treeview
  ## but isnt working properly S.A
  # if {$see == {first}} 

  $w.tree see [lindex [.glistWin.tree children {}] 0]

  # if {$see == {last}} { $w.tree see [lindex [.glistWin.tree children {}] end] } 

  setGamelistTitle

  set to [expr $totalSize - $glistSize]
  if {$to < 1} {
    set to 1
  }
  $w.vsb configure -to $to

  configDeleteButtons
  ::windows::switcher::Refresh
}

proc ::windows::gamelist::SetStart {unit} {
  global glstart

  set glstart [expr {int($unit)}]

  after cancel {::windows::gamelist::Refresh first}
  after idle {::windows::gamelist::Refresh first}
}

proc ::windows::gamelist::ToggleFlag {flag} {

  set sel [.glistWin.tree selection]
  if { "$sel" == "" } {
    bell
  } else {
    foreach item $sel {
      # mark item as "flag"
      # (very slow doing them one at a time)
      # (todo: change sc_game_flag to allow multiple games (?))
      set number [.glistWin.tree set $item Number]
      catch {sc_game flag $flag $number invert}

      if {$flag == {D}} {
	# toggle treeview delete field
	set deleted [.glistWin.tree set $item Deleted]
	if {$deleted == {D }} {
	  set deleted {  }
	} else {
	  set deleted {D }
	}
	.glistWin.tree set $item Deleted $deleted
      } else {
	.glistWin.tree set $item Flags "[string map {D {}} [sc_flags $number]] "
      }
    }
    # ::windows::gamelist::Refresh
  }
}

### Remove from filter all games above or below the selected item(s)

proc ::windows::gamelist::removeFromFilter {dir} {

  set i [.glistWin.tree selection]

  set gl_num [.glistWin.tree set $i Number]

  if {$gl_num < 1} { return }
  if {$gl_num > [sc_base numGames]} { return }
  if {$dir == {up}} {
    sc_filter remove 1 [expr $gl_num - 1]
  } else {
    sc_filter remove [expr $gl_num + 1] $::MAX_GAMES
  }

  ::windows::stats::Refresh
  ::windows::gamelist::Refresh
  ::windows::gamelist::showNum $gl_num nobell

  set ::windows::gamelist::finditems {}
  setGamelistTitle
}


### end of gamelist.tcl
