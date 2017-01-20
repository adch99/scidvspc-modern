#!/bin/sh
# The next line restarts using tkscid: \
exec tclsh "$0" "$@"

source langList.tcl

foreach i  $languageList {
  if {[file exists $i.new]} {
    file rename -force $i $i.bak
    file rename -force $i.new $i
  }
}

