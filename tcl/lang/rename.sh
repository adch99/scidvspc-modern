#!/bin/sh

for i in czech.tcl deutsch.tcl finnish.tcl francais.tcl greek.tcl hungary.tcl italian.tcl nederlan.tcl norsk.tcl polish.tcl portbr.tcl port.tcl russian.tcl serbian.tcl spanish.tcl swedish.tcl ; do 
if [ -e $i.new ] ; then
  mv $i $i.bak
  mv $i.new $i
fi
done
