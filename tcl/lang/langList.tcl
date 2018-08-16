# Common array settings for 

array set codes {
  czech C
  deutsch D
  finnish L
  francais F
  greek G
  hungary H
  italian I
  nederlan N
  norsk O
  polish P
  portbr B
  port U
  russian R
  serbian Y
  spanish S
  swedish W
  turkish T
}

array set encodings {
  czech iso8859-2
  deutsch iso8859-1
  finnish iso8859-1
  francais iso8859-1
  greek utf-8
  hungary iso8859-2
  italian utf-8
  nederlan iso8859-1
  norsk utf-8
  polish utf-8
  portbr iso8859-1
  port iso8859-1
  russian utf-8
  serbian iso8859-2
  spanish iso8859-1
  swedish iso8859-1
  turkish utf-8
}

set languages [array names encodings]

set languageList {}

foreach i $languages {
  lappend languageList $i.tcl
}

