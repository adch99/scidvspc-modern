
### crosstab.tcl

namespace eval ::crosstab {}

foreach var   {sort type ages colors ratings countries tallies titles groups breaks deleted cnumbers text threewin tiewin tiehead} \
        value {score auto +ages +colors +ratings +countries +tallies +titles -groups -breaks -deleted -numcolumns hypertext -threewin -tiewin -tiehead} {
  if {![info exists crosstab($var)]} {
    set crosstab($var) $value
  }
}

proc ::crosstab::ConfigMenus {{lang ""}} {
  global spellCheckFileExists

  if {! [winfo exists .crosstabWin]} { return }
  if {$lang == ""} { set lang $::language }
  set m .crosstabWin.menu
  foreach idx {0 1 2 3 4} tag {File Edit Sort Opt Help} {
    configMenuText $m $idx Crosstab$tag $lang
  }
  foreach idx {0 1 2 4} tag {Text Html LaTeX Close} {
    configMenuText $m.file $idx CrosstabFile$tag $lang
  }
  foreach idx {0 1 2} tag {Event Site Date} {
    configMenuText $m.edit $idx CrosstabEdit$tag $lang
  }
  ### Scid menus are the biggest steaming pile of shit S.A
  ### We have to skip over numbers for "separators"
  foreach idx   {1 2 3 4 6 7 9 10 11 12 13 14 15 16 17 19 20} tag {All Swiss Knockout Auto ColorPlain ColorHyper Ages Nats Tallies Ratings Titles Breaks Deleted Colors ColumnNumbers ThreeWin Group} {
    configMenuText $m.opt $idx CrosstabOpt$tag $lang
  }

  # Disable the Ages, Nats, Titles items if spellcheck not enabled. S.A
  if {!$::spellCheckFileExists} {
    $m.opt entryconfig 9 -state disabled -variable {}
    $m.opt entryconfig 10 -state disabled -variable {}
    $m.opt entryconfig 13 -state disabled -variable {}
  }

  foreach idx {0 1 2 3 5 6} tag {Name Rating Score Country TieHead TieWin} {
    configMenuText $m.sort $idx CrosstabSort$tag $lang
  }
  foreach idx {0 1} tag {Cross Index} {
    configMenuText $m.help $idx CrosstabHelp$tag $lang
  }
}


proc ::crosstab::Open {} {
  global crosstab 

  set w .crosstabWin
  if {[winfo exists $w]} {
    ::crosstab::Refresh
    raiseWin $w
    return
  }

  ::createToplevel $w
  ::setTitle $w "[tr WindowsCross]"
  wm minsize $w 10 5
  setWinLocation $w
  setWinSize $w

  menu $w.menu
  ::setMenu $w $w.menu
  $w.menu add cascade -label CrosstabFile -menu $w.menu.file
  $w.menu add cascade -label CrosstabEdit -menu $w.menu.edit
  $w.menu add cascade -label CrosstabSort -menu $w.menu.sort
  $w.menu add cascade -label CrosstabOpt -menu $w.menu.opt
  $w.menu add cascade -label CrosstabHelp -menu $w.menu.help
  foreach i {file edit sort opt help} {
    menu $w.menu.$i
  }
  $w.menu.opt configure -tearoff 1

  $w.menu.file add command -label CrosstabFileText -command {
    set ftype {
      { "Text files" {".txt"} }
      { "All files"  {"*"}    }
    }
    set fname [tk_getSaveFile -initialdir $::env(HOME) -filetypes $ftype  -title "Save Crosstable" -parent .crosstabWin]
    if {$fname != ""} {
      if {[catch {set tempfile [open $fname w]}]} {
        tk_messageBox -title "Scid: Error saving file" \
          -type ok -icon warning -parent .crosstabWin \
          -message "Unable to save the file: $fname\n\n"
      } else {
        puts -nonewline $tempfile [.crosstabWin.f.text get 1.0 end]
        close $tempfile
      }
    }
  }
  $w.menu.file add command -label CrosstabFileHtml -command {
    set ftype {
      { "HTML files" {".html" ".htm"} }
      { "All files"  {"*"}    }
    }
    set fname [tk_getSaveFile -initialdir $::initialDir(html) -filetypes $ftype  -title "Save Crosstable as HTML" -parent .crosstabWin]
    if {$fname != ""} {
      if {[catch {set tempfile [open $fname w]}]} {
        tk_messageBox -title "Scid: Error saving file" \
          -type ok -icon warning -parent .crosstabWin \
          -message "Unable to save the file: $fname\n\n"
      } else {
        catch {sc_game crosstable html $crosstab(sort) $crosstab(type) \
                 $crosstab(ratings) $crosstab(countries) $crosstab(tallies) $crosstab(titles) \
                 $crosstab(colors) $crosstab(groups) $crosstab(ages) \
                 $crosstab(breaks) $crosstab(cnumbers) $crosstab(deleted) $crosstab(threewin) $crosstab(tiewin) $crosstab(tiehead)} \
          result
        puts $tempfile $result
        close $tempfile
      }
    }
  }
  $w.menu.file add command -label CrosstabFileLaTeX -command {
    set ftype {
      { "LaTeX files" {".tex" ".ltx"} }
      { "All files"  {"*"}    }
    }
    set fname [tk_getSaveFile -initialdir $::initialDir(tex) -filetypes $ftype  -title "Save Crosstable as LaTeX" -parent .crosstabWin]
    if {$fname != ""} {
      if {[catch {set tempfile [open $fname w]}]} {
        tk_messageBox -title "Scid: Error saving file" \
          -type ok -icon warning -parent .crosstabWin \
          -message "Unable to save the file: $fname\n\n"
      } else {
        catch {sc_game crosstable latex $crosstab(sort) $crosstab(type) \
                 $crosstab(ratings) $crosstab(countries) $$crosstab(tallies) $crosstab(titles) \
                 $crosstab(colors) $crosstab(groups) $crosstab(ages) \
                 $crosstab(breaks) $crosstab(cnumbers) $crosstab(deleted) $crosstab(threewin) $crosstab(tiewin) $crosstab(tiehead)} \
          result
        puts $tempfile $result
        close $tempfile
      }
    }
  }
  $w.menu.file add separator
  $w.menu.file add command -label CrosstabFileClose \
    -command { .crosstabWin.b.cancel invoke } -accelerator Esc

  $w.menu.edit add command -label CrosstabEditEvent -command {
    nameEditor
    setNameEditorType event
    set editName [sc_game info event]
    set editNameNew $editName
    set editNameSelect crosstable
  }
  $w.menu.edit add command -label CrosstabEditSite -command {
    nameEditor
    setNameEditorType site
    set editName [sc_game info site]
    set editNameNew $editName
    set editNameSelect crosstable
  }
  $w.menu.edit add command -label CrosstabEditDate -command {
    nameEditor
    setNameEditorType date
    set editNameNew " "
    set editDate [sc_game info date]
    set editDateNew [sc_game info date]
    set editNameSelect crosstable
  }

  $w.menu.opt add radiobutton -label CrosstabOptAll \
    -variable crosstab(type) -value allplay -command ::crosstab::Refresh
  $w.menu.opt add radiobutton -label CrosstabOptSwiss \
    -variable crosstab(type) -value swiss -command ::crosstab::Refresh
  $w.menu.opt add radiobutton -label CrosstabOptKnockout \
    -variable crosstab(type) -value knockout -command ::crosstab::Refresh
  $w.menu.opt add radiobutton -label CrosstabOptAuto \
    -variable crosstab(type) -value auto -command ::crosstab::Refresh

  $w.menu.opt add separator

  # todo : put this menu item into the Display menu
  $w.menu.opt add radiobutton -label CrosstabOptColorPlain \
    -variable crosstab(text) -value plain -command ::crosstab::Refresh
  $w.menu.opt add radiobutton -label CrosstabOptColorHyper \
    -variable crosstab(text) -value hypertext -command ::crosstab::Refresh

  $w.menu.opt add separator
  $w.menu.opt add checkbutton -label CrosstabOptAges \
    -variable crosstab(ages) -onvalue "+ages" \
    -offvalue "-ages" -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptNats \
    -variable crosstab(countries) -onvalue "+countries" \
    -offvalue "-countries" -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptTallies \
    -variable crosstab(tallies) -onvalue "+tallies" \
    -offvalue "-tallies" -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptRatings \
    -variable crosstab(ratings) -onvalue "+ratings" -offvalue "-ratings" \
    -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptTitles \
    -variable crosstab(titles) -onvalue "+titles" -offvalue "-titles" \
    -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptBreaks \
    -variable crosstab(breaks) -onvalue "+breaks" \
    -offvalue "-breaks" -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptDeleted \
    -variable crosstab(deleted) -onvalue "+deleted" \
    -offvalue "-deleted" -command ::crosstab::Refresh

  $w.menu.opt add checkbutton -label CrosstabOptColors \
    -underline 0 -variable crosstab(colors) \
    -onvalue "+colors" -offvalue "-colors" -command ::crosstab::Refresh
  $w.menu.opt add checkbutton -label CrosstabOptColumnNumbers \
    -underline 0 -variable crosstab(cnumbers) \
    -onvalue "+numcolumns" -offvalue "-numcolumns" -command ::crosstab::Refresh
  $w.menu.opt add separator
  $w.menu.opt add checkbutton -label CrosstabOptThreeWin \
    -variable crosstab(threewin) -command ::crosstab::Refresh  \
    -onvalue "+threewin" -offvalue "-threewin"
  $w.menu.opt add checkbutton -label CrosstabOptGroup \
    -underline 0 -variable crosstab(groups) \
    -onvalue "+groups" -offvalue "-groups" -command ::crosstab::Refresh

  $w.menu.sort add radiobutton -label CrosstabSortName \
    -variable crosstab(sort) -value name -command ::crosstab::Refresh
  $w.menu.sort add radiobutton -label CrosstabSortRating \
    -variable crosstab(sort) -value rating -command ::crosstab::Refresh
  $w.menu.sort add radiobutton -label CrosstabSortScore \
    -variable crosstab(sort) -value score -command ::crosstab::Refresh
  $w.menu.sort add radiobutton -label CrosstabSortCountry \
    -variable crosstab(sort) -value country -command ::crosstab::Refresh

  $w.menu.sort add separator

  $w.menu.sort add checkbutton -label CrosstabSortTieHead \
    -variable crosstab(tiehead) -command ::crosstab::Refresh -onvalue "+tiehead" -offvalue "-tiehead"
  $w.menu.sort add checkbutton -label CrosstabSortTieWin \
    -variable crosstab(tiewin) -command ::crosstab::Refresh -onvalue "+tiewin" -offvalue "-tiewin"

  $w.menu.help add command -label CrosstabHelpCross \
    -accelerator F1 -command {helpWindow Crosstable}
  $w.menu.help add command -label CrosstabHelpIndex \
     -command {helpWindow Index}

  ::crosstab::ConfigMenus

  # packing this here makes the text widget resize nicely ? S.A.
  frame $w.b
  pack $w.b -side bottom -fill x

  frame $w.f
  pack $w.f -side top -fill both -expand true
  # Causes flicker when updated
  # -width $::winWidth($w) -height $::winHeight($w) &&&
  set text $w.f.text
  text $text -wrap none -font font_Fixed -setgrid 1 -cursor top_left_arrow \
     -yscroll "$w.f.ybar set" -xscroll "$w.f.xbar set"
  ::htext::init $text
  $text tag configure bgGray -background {}
  # Crosstable will have striped appearance if {} is replaced by another colour
  scrollbar $w.f.ybar -command "$text yview"
  scrollbar $w.f.xbar -orient horizontal -command "$text xview"
  grid $text -row 0 -column 0 -sticky nesw
  grid $w.f.ybar -row 0 -column 1 -sticky nesw
  grid $w.f.xbar -row 1 -column 0 -sticky nesw
  grid rowconfig $w.f 0 -weight 1 -minsize 0
  grid columnconfig $w.f 0 -weight 1 -minsize 0

  button $w.b.stop -textvar ::tr(Stop) -state disabled -font font_Small \
    -command { set ::htext::interrupt 1 }
  menubutton $w.b.type -text "" -font font_Small -menu $w.b.type.menu \
    -relief raised -bd 1 -indicatoron 1
  menu $w.b.type.menu
  $w.b.type.menu add radiobutton -label [tr CrosstabOptAll] \
    -variable crosstab(type) -value allplay -command ::crosstab::Refresh
  $w.b.type.menu add radiobutton -label [tr CrosstabOptSwiss] \
    -variable crosstab(type) -value swiss -command ::crosstab::Refresh
  $w.b.type.menu add radiobutton -label [tr CrosstabOptKnockout] \
    -variable crosstab(type) -value knockout -command ::crosstab::Refresh
  $w.b.type.menu add radiobutton -label [tr CrosstabOptAuto] -font font_Small \
    -variable crosstab(type) -value auto -command ::crosstab::Refresh
  button $w.b.update -textvar ::tr(Update) -font font_Small -command ::crosstab::Refresh

  entry $w.b.find -width 10 -textvariable crosstab(find) -font font_Small -highlightthickness 0
  configFindEntryBox $w.b.find crosstab .crosstabWin.f.text

  button $w.b.cancel -textvar ::tr(Close) -font font_Small -command {
    focus .main
    destroy .crosstabWin
  }
  button $w.b.setfilter -textvar ::tr(SetFilter) -font font_Small -command {::crosstab::setFilter 0}
  button $w.b.addfilter -textvar ::tr(AddToFilter) -font font_Small -command {::crosstab::setFilter}

  button $w.b.font -textvar ::tr(Font) -font font_Small -command {FontDialogFixed .crosstabWin}

  pack $w.b.cancel $w.b.find $w.b.update -side right -pady 3 -padx 5
  pack $w.b.setfilter $w.b.addfilter $w.b.type $w.b.font -side left -pady 3 -padx 5

  standardShortcuts $w

  bind $w <F1>       "helpWindow Crosstable"
  bind $w <Escape>   ".crosstabWin.b.cancel invoke"
  bind $w <Up>       "$text yview scroll -1 units"
  bind $w <Down>     "$text yview scroll 1 units"
  bind $w <Prior>    "$text yview scroll -1 pages"
  bind $w <Next>     "$text yview scroll 1 pages"
  bind $w <Left>     "$text xview scroll -1 units"
  bind $w <Right>    "$text xview scroll 1 units"
  bind $w <Key-Home> "$text yview moveto 0"
  bind $w <Key-End>  "$text yview moveto 0.99"

  # MouseWheel Bindings:
  if {$::windowsOS || $::macOS} {
    bind $w <Shift-MouseWheel> {break}
    bind $w <MouseWheel> { .crosstabWin.f.text yview scroll [expr {- (%D / 120)}] units}
  } else {
    bind $text <Shift-Button-4> "$text xview scroll -5 units ; break"
    bind $text <Shift-Button-5> "$text xview scroll 5 units ; break"
    bind $text <Button-4> "$text yview scroll -1 units"
    bind $text <Button-5> "$text yview scroll  1 units"
  }

  bind $w <Destroy> {}
  ::crosstab::Refresh

  bind $w <Configure> "recordWinSize $w"
  ::createToplevelFinalize $w
  update
}

proc ::crosstab::setFilter {{round {}}} {
  global crosstab glstart
  if {$round == {}} {
    sc_game crosstable filter $crosstab(deleted)
  } else {
    sc_game crosstable filter -round $round $crosstab(deleted) 
  }
  set glstart 1
  ::windows::gamelist::Refresh
  updateStatusBar
}

proc ::crosstab::Refresh {} {
  global crosstab
  set w .crosstabWin
  if {! [winfo exists $w]} { return }

  switch $crosstab(type) {
    allplay  { $w.b.type configure -text [tr CrosstabOptAll] }
    swiss    { $w.b.type configure -text [tr CrosstabOptSwiss] }
    knockout { $w.b.type configure -text [tr CrosstabOptKnockout] }
    auto     { $w.b.type configure -text [tr CrosstabOptAuto] }
  }
  $w.f.text configure -state normal
  $w.f.text delete 1.0 end
  busyCursor .
  $w.f.text configure -state disabled
  ### Stop button is broken currently - S.A.
  ### And any purpose for these two updates ??
  # update idle
  # $w.b.stop configure -state normal
  foreach button {update cancel font setfilter addfilter type} {
    $w.b.$button configure -state disabled
  }
  # pack $w.b.stop -side right -padx 5 -pady 3
  # catch {grab $w.b.stop}
  # update
  catch {sc_game crosstable $crosstab(text) $crosstab(sort) $crosstab(type) \
         $crosstab(ratings) $crosstab(countries) $crosstab(tallies) $crosstab(titles) \
         $crosstab(colors) $crosstab(groups) $crosstab(ages) \
         $crosstab(breaks) $crosstab(cnumbers) $crosstab(deleted) $crosstab(threewin) $crosstab(tiewin) $crosstab(tiehead)} result
  $w.f.text configure -state normal
  if {$crosstab(text) == "plain"} {
    $w.f.text insert end $result
  } else {
    ::htext::display $w.f.text $result
  }
  # Shade every second line to help readability:
  set lastLineNum [expr {int([$w.f.text index end])}]
  for {set i 2} {$i <= $lastLineNum} {incr i 2} {
    $w.f.text tag add bgGray $i.0 "$i.0 lineend +1c"
  }
  unbusyCursor .
  # catch {grab release $w.b.stop}
  # $w.b.stop configure -state disabled
  ### We cant use forget on this because of a bug in the windows packer
  # pack forget $w.b.stop
  foreach button {update cancel font setfilter addfilter type} {
    $w.b.$button configure -state normal
  }
  $w.f.text configure -state disabled
}

### end of crosstable.tcl
