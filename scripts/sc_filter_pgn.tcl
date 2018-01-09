#!/bin/sh

# sc_filter_pgn
#     Using several PGN files, copy games matching position <fen> to a database
#
# Usage:  sc_filter_pgn <database> <fen> <pgn-files....>
#
# Modified by stevenaaus, Jan 4, 2018
# from the ScidvsPC script "sc_import.tcl"

# The next line restarts using tcscid: \
exec tcscid "$0" "$@"

set args [llength $argv]
if {$args < 3} {
    puts stderr "Usage: sc_filter_pgn <database> <fen> <pgn-files...>"
    exit 1
}

# Open the database:
set basename [lindex $argv 0]

if {[catch {sc_base open $basename} result]} {
    puts "Creating database $basename"
    if {[catch {sc_base create $basename} result]} {
	puts stderr "Error creating database \"$basename\": $result"
	exit 1
    }
} else {
    puts "Opening database $basename"
}

if {[sc_base isReadOnly]} {
    puts stderr "Error: database \"$basename\" is read-only."
    exit 1
}

set position [lindex $argv 1]

if {[catch {sc_game startBoard $position}]} {
    puts stderr "Error: position \"$position\" invalid"
    exit 1
}

puts "Search position is \"$position\""

set pgns [lrange $argv 2 end]

puts "Using [llength $pgns] pgn(s) \"$pgns\""

foreach pgnfile $pgns {
    # probably needs some error handling
    sc_base create $pgnfile true
    sc_base import file $pgnfile

    # switch back to results db
    sc_base switch 1

    set result [sc_search board 2 Exact 0 0 2]
    puts "File $pgnfile has [lindex $result 0] matches"
    sc_filter copy 2 1
    sc_base close 2
    sc_base switch 1
}

puts "Database $basename has [sc_filter count] games."
sc_base close
