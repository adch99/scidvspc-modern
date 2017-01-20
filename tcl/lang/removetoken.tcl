#!/bin/sh
# The next line restarts using tkscid: \
exec tclsh "$0" "$@"

###
### removetoken.tcl
###

# (C) Pascal Georges 2007
#
# Will remove a line containing the token in argument
# NB - must be manually removed from english.tcl first.

source langList.tcl

proc remove {langfile enc token} {
  # Read the language file

  set f [open $langfile.tcl r]
  fconfigure $f -encoding $enc
  set data [read $f]
  close $f
  set langData [split $data "\n"]

  if {[lindex $langData end] == ""} {
    set langData [lrange $langData 0 end-1]
  }

  set fnew [open $langfile.tcl.new w]
  fconfigure $fnew -encoding $enc

  foreach line $langData {
    set fields [split $line]
    set command [lindex $fields 0]
    set lang [lindex $fields 1]
    set name [lindex $fields 2]
    if {$name != $token} {
      puts $fnew $line
    }
  }
  close $fnew
}
################################################################################

set token $argv
if {$token == "" || [llength $token] > 1} {
  puts "usage: removetoken.tcl ARG"
} else {
  foreach language $languages {
    remove $language $encodings($language) $token
  }
}

# end of file
